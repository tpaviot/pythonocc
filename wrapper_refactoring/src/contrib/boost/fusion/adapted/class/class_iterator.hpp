/*=============================================================================
    Copyright (c) 2001-2009 Joel de Guzman
    Copyright (c) 2005-2006 Dan Marsden

    Distributed under the Boost Software License, Version 1.0. (See accompanying
    file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
==============================================================================*/
#if !defined(FUSION_CLASS_ITERATOR_OCTOBER_4_2009_839M)
#define FUSION_CLASS_ITERATOR_OCTOBER_4_2009_839M

#include <boost/fusion/iterator/iterator_facade.hpp>
#include <boost/fusion/adapted/class/extension.hpp>
#include <boost/type_traits/is_const.hpp>
#include <boost/type_traits/add_reference.hpp>
#include <boost/mpl/assert.hpp>
#include <boost/mpl/identity.hpp>
#include <boost/mpl/if.hpp>
#include <boost/mpl/int.hpp>
#include <boost/mpl/minus.hpp>
#include <boost/config/no_tr1/utility.hpp>

namespace boost { namespace fusion
{
    struct random_access_traversal_tag;

    template <typename Class, int N_>
    struct class_iterator
        : iterator_facade<class_iterator<Class, N_>, random_access_traversal_tag>
    {
        BOOST_MPL_ASSERT_RELATION(N_, >=, 0);
        BOOST_MPL_ASSERT_RELATION(N_, <=, extension::class_size<Class>::value);

        typedef mpl::int_<N_> index;
        typedef Class class_type;

        class_iterator(Class& class_)
            : class_(class_) {}
        Class& class_;

        template <typename Iterator>
        struct value_of
            : extension::class_member<Class, N_>
        {
        };

        template <typename Iterator>
        struct deref
        {
            typedef typename
                mpl::if_<
                    is_const<Class>
                  , typename extension::class_member<Class, N_>::get_type
                  , typename extension::class_member<Class, N_>::proxy
                >::type
            type;

            static type
            call(Iterator const& iter)
            {
                return extension::class_member<Class, N_>::
                    call(iter.class_);
            }
        };

        template <typename Iterator, typename N>
        struct advance
        {
            typedef typename Iterator::index index;
            typedef typename Iterator::class_type class_type;
            typedef class_iterator<class_type, index::value + N::value> type;

            static type
            call(Iterator const& iter)
            {
                return type(iter.class_);
            }
        };

        template <typename Iterator>
        struct next : advance<Iterator, mpl::int_<1> > {};

        template <typename Iterator>
        struct prior : advance<Iterator, mpl::int_<-1> > {};

        template <typename I1, typename I2>
        struct distance : mpl::minus<typename I2::index, typename I1::index>
        {
            typedef typename
                mpl::minus<
                    typename I2::index, typename I1::index
                >::type
            type;

            static type
            call(I1 const&, I2 const&)
            {
                return type();
            }
        };
    };
}}

#endif


