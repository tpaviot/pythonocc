/*=============================================================================
    Copyright (c) 2001-2010 Joel de Guzman

    Distributed under the Boost Software License, Version 1.0. (See accompanying
    file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
==============================================================================*/
#if !defined(BOOST_SPIRIT_DEBUG_HANDLER_DECEMBER_05_2008_0734PM)
#define BOOST_SPIRIT_DEBUG_HANDLER_DECEMBER_05_2008_0734PM

#if defined(_MSC_VER)
#pragma once
#endif

#include <boost/spirit/home/support/unused.hpp>
#include <boost/spirit/home/qi/nonterminal/rule.hpp>
#include <boost/spirit/home/qi/operator/expect.hpp>
#include <boost/function.hpp>
#include <boost/fusion/include/at.hpp>
#include <boost/fusion/include/vector.hpp>
#include <boost/fusion/include/out.hpp>
#include <iostream>

namespace boost { namespace spirit { namespace qi
{
    enum debug_handler_state
    {
        pre_parse
      , successful_parse
      , failed_parse
    };

    template <
        typename Iterator, typename Context
      , typename Skipper, typename F>
    struct debug_handler
    {
        typedef function<
            bool(Iterator& first, Iterator const& last
              , Context& context
              , Skipper const& skipper
            )>
        function_type;

        debug_handler(
            function_type subject
          , F f
          , std::string const& rule_name)
          : subject(subject)
          , f(f)
          , rule_name(rule_name)
        {
        }

        bool operator()(
            Iterator& first, Iterator const& last
          , Context& context, Skipper const& skipper) const
        {
            f(first, last, context, pre_parse, rule_name);
            try // subject might throw an exception
            {
                if (subject(first, last, context, skipper))
                {
                    f(first, last, context, successful_parse, rule_name);
                    return true;
                }
                f(first, last, context, failed_parse, rule_name);
            }
            catch (expectation_failure<Iterator> const& e)
            {
                f(first, last, context, failed_parse, rule_name);
                boost::throw_exception(e);
            }
            return false;
        }

        function_type subject;
        F f;
        std::string rule_name;
    };

    template <
        typename Iterator, typename T0, typename T1, typename T2
      , typename F>
    void debug(rule<Iterator, T0, T1, T2>& r, F f)
    {
        typedef rule<Iterator, T0, T1, T2> rule_type;

        typedef
            debug_handler<
                Iterator
              , typename rule_type::context_type
              , typename rule_type::skipper_type
              , F>
        debug_handler;
        r.f = debug_handler(r.f, f. r.name());
    }

    struct simple_trace;

    template <typename Iterator, typename T0, typename T1, typename T2>
    void debug(rule<Iterator, T0, T1, T2>& r)
    {
        typedef rule<Iterator, T0, T1, T2> rule_type;

        typedef
            debug_handler<
                Iterator
              , typename rule_type::context_type
              , typename rule_type::skipper_type
              , simple_trace>
        debug_handler;
        r.f = debug_handler(r.f, simple_trace(), r.name());
    }

}}}

///////////////////////////////////////////////////////////////////////////////
//  Utility macro for easy enabling of rule and grammar debugging
#if defined(BOOST_SPIRIT_DEBUG)
#define BOOST_SPIRIT_DEBUG_NODE(r)  r.name(#r); debug(r)
#else
#define BOOST_SPIRIT_DEBUG_NODE(r)
#endif

#endif
