/*=============================================================================
    Copyright (c) 2001-2010 Joel de Guzman
    Copyright (c) 2001-2010 Hartmut Kaiser

    Distributed under the Boost Software License, Version 1.0. (See accompanying
    file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
==============================================================================*/
#if !defined(BOOST_SPIRIT_ATTRIBUTES_JANUARY_29_2007_0954AM)
#define BOOST_SPIRIT_ATTRIBUTES_JANUARY_29_2007_0954AM

#if defined(_MSC_VER)
#pragma once
#endif

#include <boost/spirit/home/support/unused.hpp>
#include <boost/spirit/home/support/has_semantic_action.hpp>
#include <boost/spirit/home/support/attributes_fwd.hpp>
#include <boost/spirit/home/support/detail/as_variant.hpp>
#include <boost/optional/optional.hpp>
#include <boost/fusion/include/transform.hpp>
#include <boost/fusion/include/filter_if.hpp>
#include <boost/fusion/include/as_vector.hpp>
#include <boost/fusion/include/push_front.hpp>
#include <boost/fusion/include/pop_front.hpp>
#include <boost/fusion/include/is_sequence.hpp>
#include <boost/fusion/include/for_each.hpp>
#include <boost/utility/value_init.hpp>
#include <boost/type_traits/is_same.hpp>
#include <boost/type_traits/is_convertible.hpp>
#include <boost/mpl/eval_if.hpp>
#include <boost/mpl/end.hpp>
#include <boost/mpl/find_if.hpp>
#include <boost/mpl/identity.hpp>
#include <boost/variant.hpp>
#include <vector>
#include <utility>

///////////////////////////////////////////////////////////////////////////////
namespace boost { namespace spirit { namespace traits
{
    ///////////////////////////////////////////////////////////////////////////
    // This file deals with attribute related functions and metafunctions
    // including generalized attribute transformation utilities for Spirit
    // components.
    ///////////////////////////////////////////////////////////////////////////

    template <typename T>
    struct not_is_variant
      : mpl::true_ 
    {};

    template <BOOST_VARIANT_ENUM_PARAMS(typename T)>
    struct not_is_variant<boost::variant<BOOST_VARIANT_ENUM_PARAMS(T)> >
      : mpl::false_ 
    {};

    template <typename T>
    struct not_is_variant<boost::optional<T> >
      : not_is_variant<T>
    {};

    // we treat every type as if it where the variant (as this meta function is
    // invoked for variant types only)
    template <typename T>
    struct variant_type
      : mpl::identity<T> 
    {};

    template <typename T>
    struct variant_type<boost::optional<T> >
      : variant_type<T>
    {};

    ///////////////////////////////////////////////////////////////////////////
    template <typename T>
    struct not_is_optional
      : mpl::true_ 
    {};

    template <typename T>
    struct not_is_optional<boost::optional<T> >
      : mpl::false_ 
    {};

    ///////////////////////////////////////////////////////////////////////////
    // attribute_of
    //
    // Get the component's attribute
    ///////////////////////////////////////////////////////////////////////////
    template <typename Component
      , typename Context = unused_type, typename Iterator = unused_type>
    struct attribute_of
    {
        typedef typename Component::template
            attribute<Context, Iterator>::type type;
    };

    ///////////////////////////////////////////////////////////////////////////
    // attribute_not_unused
    //
    // An mpl metafunction class that determines whether a component's
    // attribute is not unused.
    ///////////////////////////////////////////////////////////////////////////
    template <typename Context, typename Iterator = unused_type>
    struct attribute_not_unused
    {
        template <typename Component>
        struct apply
          : not_is_unused<typename
                attribute_of<Component, Context, Iterator>::type>
        {};
    };

    ///////////////////////////////////////////////////////////////////////////
    // pass_attribute
    //
    // Determines how we pass attributes to semantic actions. This
    // may be specialized. By default, all attributes are wrapped in
    // a fusion sequence, because the attribute has to be treated as being
    // a single value in any case (even if it actually already is a fusion
    // sequence in its own).
    ///////////////////////////////////////////////////////////////////////////
    template <typename Component, typename Attribute, typename Enable/* = void*/>
    struct pass_attribute
    {
        typedef fusion::vector1<Attribute&> type;
    };

    ///////////////////////////////////////////////////////////////////////////
    // Subclass a pass_attribute specialization from this to wrap
    // the attribute in a tuple only IFF it is not already a fusion tuple.
    ///////////////////////////////////////////////////////////////////////////
    template <typename Attribute, typename Force = mpl::false_>
    struct wrap_if_not_tuple 
      : mpl::if_<
            fusion::traits::is_sequence<Attribute>
          , Attribute&, fusion::vector1<Attribute&> >
    {};

    template <typename Attribute>
    struct wrap_if_not_tuple<Attribute, mpl::true_>
    {
        typedef fusion::vector1<Attribute&> type;
    };

    template <>
    struct wrap_if_not_tuple<unused_type, mpl::false_>
    {
        typedef unused_type type;
    };

    template <>
    struct wrap_if_not_tuple<unused_type const, mpl::false_>
    {
        typedef unused_type type;
    };

    ///////////////////////////////////////////////////////////////////////////
    // build_optional
    //
    // Build a boost::optional from T. Return unused_type if T is unused_type.
    ///////////////////////////////////////////////////////////////////////////
    template <typename T>
    struct build_optional
    {
        typedef optional<T> type;
    };

    template <>
    struct build_optional<unused_type>
    {
        typedef unused_type type;
    };

    ///////////////////////////////////////////////////////////////////////////
    // build_std_vector
    //
    // Build a std::vector from T. Return unused_type if T is unused_type.
    ///////////////////////////////////////////////////////////////////////////
    template <typename T>
    struct build_std_vector
    {
        typedef std::vector<T> type;
    };

    template <>
    struct build_std_vector<unused_type>
    {
        typedef unused_type type;
    };

    ///////////////////////////////////////////////////////////////////////////
    // filter_unused_attributes
    //
    // Remove unused_types from a sequence
    ///////////////////////////////////////////////////////////////////////////

    // Compute the list of all *used* attributes of sub-components
    // (filter all unused attributes from the list)
    template <typename Sequence>
    struct filter_unused_attributes
      : fusion::result_of::filter_if<Sequence, not_is_unused<mpl::_> >
    {};

    ///////////////////////////////////////////////////////////////////////////
    // build_fusion_vector
    //
    // Build a fusion vector from a fusion sequence. All unused attributes
    // are filtered out. If the result is empty after the removal of unused
    // types, return unused_type. If the input sequence is an unused_type,
    // also return unused_type.
    ///////////////////////////////////////////////////////////////////////////
    template <typename Sequence>
    struct build_fusion_vector
    {
        // Remove all unused attributes
        typedef typename
            filter_unused_attributes<Sequence>::type
        filtered_attributes;

        // Build a fusion vector from a fusion sequence (Sequence),
        // But *only if* the sequence is not empty. i.e. if the
        // sequence is empty, our result will be unused_type.

        typedef typename
            mpl::eval_if<
                fusion::result_of::empty<filtered_attributes>
              , mpl::identity<unused_type>
              , fusion::result_of::as_vector<filtered_attributes>
            >::type
        type;
    };

    template <>
    struct build_fusion_vector<unused_type>
    {
        typedef unused_type type;
    };

    ///////////////////////////////////////////////////////////////////////////
    // build_attribute_sequence
    //
    // Build a fusion sequence attribute sequence from a sequence of
    // components. Transform<T>::type is called on each element.
    ///////////////////////////////////////////////////////////////////////////
    template <typename Sequence, typename Context
      , template <typename T> class Transform, typename Iterator = unused_type>
    struct build_attribute_sequence
    {
        struct element_attribute
        {
            template <typename T>
            struct result;

            template <typename F, typename Element>
            struct result<F(Element)>
            {
                typedef typename
                    Transform<
                        typename attribute_of<Element, Context, Iterator>::type
                    >::type
                type;
            };

            // never called, but needed for decltype-based result_of (C++0x)
            template <typename Element>
            typename result<element_attribute(Element)>::type
            operator()(Element&) const;
        };

        // Compute the list of attributes of all sub-components
        typedef typename
            fusion::result_of::transform<Sequence, element_attribute>::type
        type;
    };

    ///////////////////////////////////////////////////////////////////////////
    // has_no_unused
    //
    // Test if there are no unused attributes in Sequence
    ///////////////////////////////////////////////////////////////////////////
    template <typename Sequence>
    struct has_no_unused
      : is_same<
            typename mpl::find_if<Sequence, is_same<mpl::_, unused_type> >::type
          , typename mpl::end<Sequence>::type>
    {};
        
    namespace detail
    {
        template <typename Sequence, bool no_unused
            , int size = mpl::size<Sequence>::value>
        struct build_collapsed_variant;

        // N element case, no unused
        template <typename Sequence, int size>
        struct build_collapsed_variant<Sequence, true, size>
            : spirit::detail::as_variant<Sequence> {};

        // N element case with unused
        template <typename Sequence, int size>
        struct build_collapsed_variant<Sequence, false, size>
        {
            typedef optional<
                typename spirit::detail::as_variant<
                    typename fusion::result_of::pop_front<Sequence>::type
                >::type
            > type;
        };

        // 1 element case, no unused
        template <typename Sequence>
        struct build_collapsed_variant<Sequence, true, 1>
            : mpl::front<Sequence> {};

        // 1 element case, with unused
        template <typename Sequence>
        struct build_collapsed_variant<Sequence, false, 1>
            : mpl::front<Sequence> {};

        // 2 element case, no unused
        template <typename Sequence>
        struct build_collapsed_variant<Sequence, true, 2>
            : spirit::detail::as_variant<Sequence> {};

        // 2 element case, with unused
        template <typename Sequence>
        struct build_collapsed_variant<Sequence, false, 2>
        {
            typedef optional<
                typename mpl::deref<
                    typename mpl::next<
                        typename mpl::begin<Sequence>::type
                    >::type
                >::type
            >
            type;
        };
    }

    ///////////////////////////////////////////////////////////////////////////
    // build_variant
    //
    // Build a boost::variant from a fusion sequence. build_variant makes sure
    // that 1) all attributes in the variant are unique 2) puts the unused
    // attribute, if there is any, to the front and 3) collapses single element
    // variants, variant<T> to T.
    ///////////////////////////////////////////////////////////////////////////       
    template <typename Sequence>
    struct build_variant
    {
        // Remove all unused attributes.
        typedef typename
            filter_unused_attributes<Sequence>::type
        filtered_attributes;

        typedef has_no_unused<Sequence> no_unused;

        // If the original attribute list does not contain any unused
        // attributes, it is used, otherwise a single unused_type is
        // pushed to the front of the list. This is to make sure that if
        // there is an unused_type in the list, it is the first one.
        typedef typename
            mpl::eval_if<
                no_unused,
                mpl::identity<Sequence>,
                fusion::result_of::push_front<filtered_attributes, unused_type>
            >::type
        attribute_sequence;

        // Make sure each of the types occur only once in the type list
        typedef typename
            mpl::fold<
                attribute_sequence, mpl::vector<>,
                mpl::if_<
                    mpl::contains<mpl::_1, mpl::_2>,
                    mpl::_1, mpl::push_back<mpl::_1, mpl::_2>
                >
            >::type
        no_duplicates;

        // If there is only one type in the list of types we strip off the
        // variant. IOTW, collapse single element variants, variant<T> to T.
        // Take note that this also collapses variant<unused_type, T> to T.
        typedef typename
            traits::detail::build_collapsed_variant<
                no_duplicates, no_unused::value>::type
        type;
    };

    ///////////////////////////////////////////////////////////////////////////
    // transform_attribute
    //
    // Sometimes the user needs to transform the attribute types for certain
    // attributes. This template can be used as a customization point, where 
    // the user is able specify specific transformation rules for any attribute
    // type.
    //
    // The default attribute transformation (where the exposed attribute type is
    // different from the required transformed attribute type) relies on the
    // convertibility 'exposed type' --> 'transformed type', which has to exist 
    // in order to successfully execute the pre transform step.
    ///////////////////////////////////////////////////////////////////////////
    template <typename Exposed, typename Transformed, typename Enable/* = void*/>
    struct transform_attribute
    {
        typedef Transformed type;

        static Transformed pre(Exposed& val) { return Transformed(val); }

        // By default do post transformation only if types are convertible, 
        // otherwise we assume no post transform is required (i.e. the user 
        // utilizes nview et.al.). 
        static void post(Exposed&, Transformed const&, mpl::false_) 
        {
        }
        static void post(Exposed& val, Transformed const& attr, mpl::true_) 
        {
            assign_to(attr, val); 
        }

        static void post(Exposed& val, Transformed const& attr) 
        { 
            post(val, attr, is_convertible<Transformed, Exposed>());
        }
    };

    template <typename Exposed, typename Transformed>
    struct transform_attribute<Exposed const, Transformed>
    {
        typedef Transformed type;
        static Transformed pre(Exposed const& val) { return Transformed(val); }
        // Karma only, no post() required
    };

    // handle case where no transformation is required as the types are the same
    template <typename Attribute>
    struct transform_attribute<Attribute, Attribute>
    {
        typedef Attribute& type;
        static Attribute& pre(Attribute& val) { return val; }
        static void post(Attribute&, Attribute const&) {}
    };

    template <typename Attribute>
    struct transform_attribute<Attribute const, Attribute>
    {
        typedef Attribute const& type;
        static Attribute const& pre(Attribute const& val) { return val; }
        // Karma only, no post() required
    };

    // reference types need special handling
    template <typename Exposed, typename Transformed>
    struct transform_attribute<Exposed&, Transformed>
      : transform_attribute<Exposed, Transformed>
    {};

    template <typename Attribute>
    struct transform_attribute<Attribute&, Attribute>
    {
        typedef Attribute& type;
        static Attribute& pre(Attribute& val) { return val; }
        static void post(Attribute&, Attribute const&) {}
    };

    template <typename Attribute>
    struct transform_attribute<Attribute const&, Attribute>
      : transform_attribute<Attribute const, Attribute>
    {};

    // unused_type needs some special handling as well
    template <>
    struct transform_attribute<unused_type, unused_type>
    {
        typedef unused_type type;
        static unused_type pre(unused_type) { return unused; }
        static void post(unused_type, unused_type) {}
    };

    template <>
    struct transform_attribute<unused_type const, unused_type>
      : transform_attribute<unused_type, unused_type>
    {};

    template <typename Attribute>
    struct transform_attribute<unused_type, Attribute>
      : transform_attribute<unused_type, unused_type>
    {};

    template <typename Attribute>
    struct transform_attribute<unused_type const, Attribute>
      : transform_attribute<unused_type, unused_type>
    {};

    template <typename Attribute>
    struct transform_attribute<Attribute, unused_type>
      : transform_attribute<unused_type, unused_type>
    {};

    template <typename Attribute>
    struct transform_attribute<Attribute const, unused_type>
      : transform_attribute<unused_type, unused_type>
    {};

    ///////////////////////////////////////////////////////////////////////////
    template <typename Transformed, typename Exposed>
    typename spirit::result_of::pre_transform<Exposed, Transformed>::type
    pre_transform(Exposed& attr BOOST_PROTO_DISABLE_IF_IS_CONST(Exposed))
    {
        return transform_attribute<Exposed, Transformed>::pre(attr);
    }

    template <typename Transformed, typename Exposed>
    typename spirit::result_of::pre_transform<Exposed const, Transformed>::type
    pre_transform(Exposed const& attr)
    {
        return transform_attribute<Exposed const, Transformed>::pre(attr);
    }

    ///////////////////////////////////////////////////////////////////////////
    template <typename Exposed, typename Transformed>
    void post_transform(Exposed& dest, Transformed const& attr)
    {
        return transform_attribute<Exposed, Transformed>::post(dest, attr);
    }

    ///////////////////////////////////////////////////////////////////////////
    // make_attribute
    //
    // All parsers and generators have specific attribute types.
    // Spirit parsers and generators are passed an attribute; these are either 
    // references to the expected type, or an unused_type -- to flag that we do 
    // not care about the attribute. For semantic actions, however, we need to 
    // have a real value to pass to the semantic action. If the client did not
    // provide one, we will have to synthesize the value. This class takes care 
    // of that.
    ///////////////////////////////////////////////////////////////////////////
    template <typename Attribute, typename ActualAttribute>
    struct make_attribute
    {
        typedef typename
            mpl::if_<
                is_same<typename remove_const<ActualAttribute>::type, unused_type>
              , typename remove_const<Attribute>::type
              , ActualAttribute&>::type
        type;

        typedef typename
            mpl::if_<
                is_same<typename remove_const<ActualAttribute>::type, unused_type>
              , typename remove_const<Attribute>::type
              , ActualAttribute>::type
        value_type;

        static Attribute call(unused_type)
        {
             // synthesize the attribute/parameter
            return boost::get(value_initialized<Attribute>());
        }

        template <typename T>
        static T& call(T& value)
        {
            return value; // just pass the one provided
        }
    };

    template <typename Attribute, typename ActualAttribute>
    struct make_attribute<Attribute&, ActualAttribute>
      : make_attribute<Attribute, ActualAttribute>
    {};

    template <typename Attribute, typename ActualAttribute>
    struct make_attribute<Attribute const&, ActualAttribute>
      : make_attribute<Attribute, ActualAttribute>
    {};

    template <typename ActualAttribute>
    struct make_attribute<unused_type, ActualAttribute>
    {
        typedef unused_type type;
        typedef unused_type value_type;
        static unused_type call(unused_type)
        {
            return unused;
        }
    };

    ///////////////////////////////////////////////////////////////////////////
    // swap_impl
    //
    // Swap (with proper handling of unused_types)
    ///////////////////////////////////////////////////////////////////////////
    template <typename A, typename B>
    void swap_impl(A& a, B& b)
    {
        A temp = a;
        a = b;
        b = temp;
    }

    template <typename T>
    void swap_impl(T& a, T& b)
    {
        using namespace std;
        swap(a, b);
    }

    template <typename A>
    void swap_impl(A& a, unused_type)
    {
    }

    template <typename A>
    void swap_impl(unused_type, A& a)
    {
    }

    inline void swap_impl(unused_type, unused_type)
    {
    }

    ///////////////////////////////////////////////////////////////////////////
    //  Strips single element fusion vectors into its 'naked'
    //  form: vector<T> --> T
    ///////////////////////////////////////////////////////////////////////////
    template <typename T>
    struct strip_single_element_vector
    {
        typedef T type;
    };

    template <typename T>
    struct strip_single_element_vector<fusion::vector1<T> >
    {
        typedef T type;
    };

    template <typename T>
    struct strip_single_element_vector<fusion::vector<T> >
    {
        typedef T type;
    };

    ///////////////////////////////////////////////////////////////////////////
    // meta function to return whether the argument is a one element fusion 
    // sequence
    ///////////////////////////////////////////////////////////////////////////
    template <typename T>
    struct one_element_sequence 
      : mpl::false_ 
    {};

    template <typename T>
    struct one_element_sequence<fusion::vector1<T> > 
      : mpl::true_ 
    {};

    template <typename T>
    struct one_element_sequence<fusion::vector<T> > 
      : mpl::true_ 
    {};

    ///////////////////////////////////////////////////////////////////////////
    // clear
    //
    // Clear data efficiently
    ///////////////////////////////////////////////////////////////////////////
    template <typename T>
    void clear(T& val);

    namespace detail
    {
        // this is used by the variant and fusion sequence dispatch
        struct clear_visitor : static_visitor<>
        {
            template <typename T>
            void operator()(T& val) const
            {
                clear(val);
            }
        };

        // default
        template <typename T>
        void clear_impl2(T& val, mpl::false_)
        {
            val = T();
        }

        // for fusion sequences
        template <typename T>
        void clear_impl2(T& val, mpl::true_) 
        {
            fusion::for_each(val, clear_visitor());
        }

        // dispatch default or fusion sequence
        template <typename T>
        void clear_impl(T& val, mpl::false_) 
        {
            clear_impl2(val, fusion::traits::is_sequence<T>());
        }

        // STL containers
        template <typename T>
        void clear_impl(T& val, mpl::true_)
        {
            val.clear();
        }
    }

    template <typename T, typename Enable/* = void*/>
    struct clear_value
    {
        static void call(T& val)
        {
            detail::clear_impl(val, typename is_container<T>::type());
        }
    };

    // optionals
    template <typename T>
    struct clear_value<optional<T> >
    {
        static void call(optional<T>& val)
        {
            if (val) 
                val = none_t();   // leave optional uninitialized
        }
    };

    // variants
    template <BOOST_VARIANT_ENUM_PARAMS(typename T)>
    struct clear_value<variant<BOOST_VARIANT_ENUM_PARAMS(T)> >
    {
        static void call(variant<BOOST_VARIANT_ENUM_PARAMS(T)>& val)
        {
            apply_visitor(detail::clear_visitor(), val);
        }
    };

    // main dispatch
    template <typename T>
    void clear(T& val)
    {
        clear_value<T>::call(val);
    }

    // for unused
    inline void clear(unused_type)
    {
    }
}}}

///////////////////////////////////////////////////////////////////////////////
namespace boost { namespace spirit { namespace result_of
{
    template <typename Exposed, typename Transformed>
    struct pre_transform
      : traits::transform_attribute<Exposed, Transformed>
    {};
}}}


#endif
