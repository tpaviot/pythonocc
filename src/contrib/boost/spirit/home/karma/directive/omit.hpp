//  Copyright (c) 2001-2010 Hartmut Kaiser
//
//  Distributed under the Boost Software License, Version 1.0. (See accompanying
//  file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)

#if !defined(SPIRIT_KARMA_OMIT_JUL_20_2009_1008AM)
#define SPIRIT_KARMA_OMIT_JUL_20_2009_1008AM

#if defined(_MSC_VER)
#pragma once
#endif

#include <boost/spirit/home/karma/meta_compiler.hpp>
#include <boost/spirit/home/karma/generator.hpp>
#include <boost/spirit/home/karma/domain.hpp>
#include <boost/spirit/home/support/unused.hpp>
#include <boost/spirit/home/support/info.hpp>
#include <boost/spirit/home/support/common_terminals.hpp>
#include <boost/spirit/home/support/attributes.hpp>

namespace boost { namespace spirit
{
    ///////////////////////////////////////////////////////////////////////////
    // Enablers
    ///////////////////////////////////////////////////////////////////////////
    template <>
    struct use_directive<karma::domain, tag::omit> // enables omit
      : mpl::true_ {};

}}

namespace boost { namespace spirit { namespace karma
{
    using spirit::omit;
    using spirit::omit_type;

    ///////////////////////////////////////////////////////////////////////////
    // omit_directive consumes the attribute of subject generator without
    // generating anything
    ///////////////////////////////////////////////////////////////////////////
    template <typename Subject>
    struct omit_directive : unary_generator<omit_directive<Subject> >
    {
        typedef Subject subject_type;

        typedef mpl::int_<
            generator_properties::disabling | subject_type::properties::value
        > properties;

        omit_directive(Subject const& subject)
          : subject(subject) {}

        template <typename Context, typename Iterator = unused_type>
        struct attribute
          : traits::attribute_of<subject_type, Context, Iterator>
        {};

        template <typename OutputIterator, typename Context, typename Delimiter
          , typename Attribute>
        bool generate(OutputIterator& sink, Context& ctx, Delimiter const& d
          , Attribute const& attr) const
        {
            // We need to actually execute the output operation as we don't 
            // have any other means to verify, whether the passed attribute is 
            // compatible with the subject. As soon as we will have a
            // traits::is_compatible_attribute<> meta-function, this can be 
            // replaced by a compile-time assertion and a runtime no-op.

            // wrap the given output iterator to avoid output
            detail::disable_output<OutputIterator> disable(sink);
            subject.generate(sink, ctx, d, attr);
            return true;
        }

        template <typename Context>
        info what(Context& context) const
        {
            return info("omit", subject.what(context));
        }

        Subject subject;
    };

    ///////////////////////////////////////////////////////////////////////////
    // Generator generators: make_xxx function (objects)
    ///////////////////////////////////////////////////////////////////////////
    template <typename Subject, typename Modifiers>
    struct make_directive<tag::omit, Subject, Modifiers>
    {
        typedef omit_directive<Subject> result_type;
        result_type operator()(unused_type, Subject const& subject
          , unused_type) const
        {
            return result_type(subject);
        }
    };

}}}

namespace boost { namespace spirit { namespace traits
{
    template <typename Subject>
    struct has_semantic_action<karma::omit_directive<Subject> >
      : unary_has_semantic_action<Subject> {};

}}}

#endif
