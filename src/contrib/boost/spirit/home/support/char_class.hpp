/*=============================================================================
    Copyright (c) 2001-2010 Joel de Guzman
    Copyright (c) 2001-2010 Hartmut Kaiser

    Distributed under the Boost Software License, Version 1.0. (See accompanying
    file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
=============================================================================*/
#if !defined(BOOST_SPIRIT_CHAR_CLASS_NOVEMBER_10_2006_0907AM)
#define BOOST_SPIRIT_CHAR_CLASS_NOVEMBER_10_2006_0907AM

#if defined(_MSC_VER)
#pragma once
#endif

#include <string>

#include <boost/proto/proto.hpp>
#include <boost/config.hpp>
#include <boost/mpl/bool.hpp>
#include <boost/spirit/home/support/unused.hpp>

#if defined(BOOST_MSVC)
# pragma warning(push)
# pragma warning(disable: 4800) // 'int' : forcing value to bool 'true' or 'false' warning
#endif

namespace boost { namespace spirit { namespace tag
{
    struct char_ {};
    struct string {};

    ///////////////////////////////////////////////////////////////////////////
    // classification tags
    struct alnum {};
    struct alpha {};
    struct digit {};
    struct xdigit {};
    struct cntrl {};
    struct graph {};
    struct print {};
    struct punct {};
    struct space {};
    struct blank {};

    ///////////////////////////////////////////////////////////////////////////
    // classification/conversion tags
    struct no_case {};
    struct lower {};
    struct upper {};
    struct lowernum {};
    struct uppernum {};
    struct ucs4 {};

    ///////////////////////////////////////////////////////////////////////////
    // This composite tag type encodes both the character
    // set and the specific char tag (used for classification
    // or conversion). char_code_base can be used to test for
    // modifier membership (see modifier.hpp)
    template <typename CharClass>
    struct char_code_base {};

    template <typename CharClass, typename CharEncoding>
    struct char_code : char_code_base<CharClass>
    {
        typedef CharEncoding char_encoding; // e.g. ascii
        typedef CharClass char_class;       // e.g. tag::alnum
    };

}}}

namespace boost { namespace spirit { namespace char_class
{
    ///////////////////////////////////////////////////////////////////////////
    // Test characters for classification
    template <typename CharEncoding>
    struct classify
    {
        typedef typename CharEncoding::char_type char_type;

        template <typename Char>
        static bool
        is(tag::char_, Char ch)
        {
            return CharEncoding::ischar(char_type(ch));
        }

        template <typename Char>
        static bool
        is(tag::alnum, Char ch)
        {
            return CharEncoding::isalnum(char_type(ch));
        }

        template <typename Char>
        static bool
        is(tag::alpha, Char ch)
        {
            return CharEncoding::isalpha(char_type(ch));
        }

        template <typename Char>
        static bool
        is(tag::digit, Char ch)
        {
            return CharEncoding::isdigit(char_type(ch));
        }

        template <typename Char>
        static bool
        is(tag::xdigit, Char ch)
        {
            return CharEncoding::isxdigit(char_type(ch));
        }

        template <typename Char>
        static bool
        is(tag::cntrl, Char ch)
        {
            return CharEncoding::iscntrl(char_type(ch));
        }

        template <typename Char>
        static bool
        is(tag::graph, Char ch)
        {
            return CharEncoding::isgraph(char_type(ch));
        }

        template <typename Char>
        static bool
        is(tag::lower, Char ch)
        {
            return CharEncoding::islower(char_type(ch));
        }

        template <typename Char>
        static bool
        is(tag::lowernum, Char ch)
        {
            return CharEncoding::islower(char_type(ch)) || 
                   CharEncoding::isdigit(char_type(ch));
        }

        template <typename Char>
        static bool
        is(tag::print, Char ch)
        {
            return CharEncoding::isprint(char_type(ch));
        }

        template <typename Char>
        static bool
        is(tag::punct, Char ch)
        {
            return CharEncoding::ispunct(char_type(ch));
        }

        template <typename Char>
        static bool
        is(tag::space, Char ch)
        {
            return CharEncoding::isspace(char_type(ch));
        }

        template <typename Char>
        static bool
        is(tag::blank, Char ch)
        {
            return CharEncoding::isblank
                BOOST_PREVENT_MACRO_SUBSTITUTION (char_type(ch));
        }

        template <typename Char>
        static bool
        is(tag::upper, Char ch)
        {
            return CharEncoding::isupper(char_type(ch));
        }

        template <typename Char>
        static bool
        is(tag::uppernum, Char ch)
        {
            return CharEncoding::isupper(char_type(ch)) || 
                   CharEncoding::isdigit(char_type(ch));
        }
    };

    ///////////////////////////////////////////////////////////////////////////
    // Convert characters
    template <typename CharEncoding>
    struct convert
    {
        typedef typename CharEncoding::char_type char_type;

        template <typename Char>
        static Char
        to(tag::lower, Char ch)
        {
            return static_cast<Char>(CharEncoding::tolower(char_type(ch)));
        }

        template <typename Char>
        static Char
        to(tag::upper, Char ch)
        {
            return static_cast<Char>(CharEncoding::toupper(char_type(ch)));
        }

        template <typename Char>
        static Char
        to(tag::ucs4, Char ch)
        {
            return static_cast<Char>(CharEncoding::toucs4(char_type(ch)));
        }

        template <typename Char>
        static Char
        to(unused_type, Char ch)
        {
            return ch;
        }
    };

    ///////////////////////////////////////////////////////////////////////////
    // Info on character classification
    template <typename CharEncoding>
    struct what
    {
        static char const* is(tag::char_)
        {
            return "char";
        }

        static char const* is(tag::alnum)
        {
            return "alnum";
        }

        static char const* is(tag::alpha)
        {
            return "alpha";
        }

        static char const* is(tag::digit)
        {
            return "digit";
        }

        static char const* is(tag::xdigit)
        {
            return "xdigit";
        }

        static char const* is(tag::cntrl)
        {
            return "cntrl";
        }

        static char const* is(tag::graph)
        {
            return "graph";
        }

        static char const* is(tag::lower)
        {
            return "lower";
        }

        static char const* is(tag::lowernum)
        {
            return "lowernum";
        }

        static char const* is(tag::print)
        {
            return "print";
        }

        static char const* is(tag::punct)
        {
            return "punct";
        }

        static char const* is(tag::space)
        {
            return "space";
        }

        static char const* is(tag::blank)
        {
            return "blank";
        }

        static char const* is(tag::upper)
        {
            return "upper";
        }

        static char const* is(tag::uppernum)
        {
            return "uppernum";
        }

        static char const* is(tag::ucs4)
        {
            return "ucs4";
        }
    };
}}}

namespace boost { namespace spirit { namespace traits 
{
    ///////////////////////////////////////////////////////////////////////////
    // This meta-function evaluates to mpl::true_ if the function 
    // char_encoding::ischar() needs to be called to ensure correct matching.
    // This happens mainly if the character type returned from the underlying
    // iterator is larger than the character type of the used character 
    // encoding. Additionally, this meta-function provides a customization 
    // point for the lexer library to enforce this behavior while parsing
    // a token stream.
    template <typename Char, typename BaseChar>
    struct mustcheck_ischar 
      : mpl::bool_<(sizeof(Char) > sizeof(BaseChar)) ? true : false> {};

    ///////////////////////////////////////////////////////////////////////////
    // The following template calls char_encoding::ischar, if necessary
    template <typename CharParam, typename CharEncoding
      , bool MustCheck = mustcheck_ischar<
            CharParam, typename CharEncoding::char_type>::value>
    struct ischar
    {
        static bool call(CharParam)
        {
            return true;
        }
    };

    template <typename CharParam, typename CharEncoding>
    struct ischar<CharParam, CharEncoding, true>
    {
        static bool call(CharParam const& ch)
        {
            return CharEncoding::ischar(int(ch));
        }
    };

}}}

#if defined(BOOST_MSVC)
# pragma warning(pop)
#endif

#endif


