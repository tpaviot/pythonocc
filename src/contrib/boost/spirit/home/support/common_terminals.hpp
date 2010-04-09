/*=============================================================================
  Copyright (c) 2001-2010 Joel de Guzman
  http://spirit.sourceforge.net/

  Distributed under the Boost Software License, Version 1.0. (See accompanying
  file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
=============================================================================*/
#ifndef BOOST_SPIRIT_COMMON_PLACEHOLDERS_OCTOBER_16_2008_0102PM
#define BOOST_SPIRIT_COMMON_PLACEHOLDERS_OCTOBER_16_2008_0102PM

#if defined(_MSC_VER)
#pragma once
#endif

#include <boost/spirit/home/support/terminal.hpp>
#include <boost/spirit/home/support/char_encoding/standard.hpp>
#include <boost/spirit/home/support/char_encoding/standard_wide.hpp>
#include <boost/spirit/home/support/char_encoding/ascii.hpp>
#include <boost/spirit/home/support/char_encoding/iso8859_1.hpp>
#include <boost/spirit/home/support/char_class.hpp>

namespace boost { namespace spirit
{
    // Our basic terminals
    BOOST_SPIRIT_DEFINE_TERMINALS(
        ( verbatim )
        ( lexeme )
        ( omit )
        ( raw )
        ( inf )
        ( eol )
        ( eoi )
        ( buffer )
        ( true_ )
        ( false_ )
        ( matches )
    )

    // Here we are reusing proto::lit
    using proto::lit;

    // Our extended terminals
    BOOST_SPIRIT_DEFINE_TERMINALS_EX(
        ( bin )
        ( oct )
        ( hex )
        ( bool_ )
        ( ushort_ )
        ( ulong_ )
        ( uint_ )
        ( short_ )
        ( long_ )
        ( int_ )
        ( ulong_long )
        ( long_long )
        ( float_ )
        ( double_ )
        ( long_double )
        ( repeat )
        ( eps )
        ( pad )
        ( byte_ )
        ( word )
        ( big_word )
        ( little_word )
        ( dword )
        ( big_dword )
        ( little_dword )
        ( qword )
        ( big_qword )
        ( little_qword )
        ( skip )
        ( delimit )
        ( stream )
        ( wstream )
        ( left_align )
        ( right_align )
        ( center )
        ( maxwidth )
        ( set_state )
        ( in_state )
        ( token )
        ( attr )
        ( columns )
        ( auto_ )
    )

    // special tags (used mainly for stateful tag types)
    namespace tag 
    { 
        struct attr_cast {}; 
    }

}}

///////////////////////////////////////////////////////////////////////////////
// Here we place the character-set sensitive placeholders. We have one set
// each for ascii, iso8859_1, standard and standard_wide. These placeholders
// are placed in its char-set namespace. For example, there exist a placeholder
// spirit::ascii::alnum for ascii versions of alnum.

#define BOOST_SPIRIT_TAG_CHAR_SPEC(charset)                                     \
    typedef tag::char_code<tag::char_, charset> char_;                          \
    typedef tag::char_code<tag::string, charset> string;                        \
    /***/

#define BOOST_SPIRIT_CHAR_SPEC(charset)                                         \
    typedef spirit::terminal<tag::charset::char_> char_type;                    \
    char_type const char_ = char_type();                                        \
                                                                                \
    inline void silence_unused_warnings_##char_() { (void) char_; }             \
                                                                                \
    typedef spirit::terminal<tag::charset::string> string_type;                 \
    string_type const string = string_type();                                   \
                                                                                \
    inline void silence_unused_warnings_##string() { (void) string; }           \
    /***/

#define BOOST_SPIRIT_CHAR_CODE(name, charset)                                   \
    typedef proto::terminal<tag::char_code<tag::name, charset> >::type          \
        name##_type;                                                            \
    name##_type const name = name##_type();                                     \
                                                                                \
    inline void silence_unused_warnings_##name() { (void) name; }               \
    /***/

#define BOOST_SPIRIT_DEFINE_CHAR_CODES(charset)                                 \
    namespace boost { namespace spirit { namespace tag { namespace charset      \
    {                                                                           \
        BOOST_SPIRIT_TAG_CHAR_SPEC(spirit::char_encoding::charset)              \
    }}}}                                                                        \
    namespace boost { namespace spirit { namespace charset                      \
    {                                                                           \
        BOOST_SPIRIT_CHAR_SPEC(charset)                                         \
                                                                                \
        BOOST_SPIRIT_CHAR_CODE(alnum, spirit::char_encoding::charset)           \
        BOOST_SPIRIT_CHAR_CODE(alpha, spirit::char_encoding::charset)           \
        BOOST_SPIRIT_CHAR_CODE(blank, spirit::char_encoding::charset)           \
        BOOST_SPIRIT_CHAR_CODE(cntrl, spirit::char_encoding::charset)           \
        BOOST_SPIRIT_CHAR_CODE(digit, spirit::char_encoding::charset)           \
        BOOST_SPIRIT_CHAR_CODE(graph, spirit::char_encoding::charset)           \
        BOOST_SPIRIT_CHAR_CODE(print, spirit::char_encoding::charset)           \
        BOOST_SPIRIT_CHAR_CODE(punct, spirit::char_encoding::charset)           \
        BOOST_SPIRIT_CHAR_CODE(space, spirit::char_encoding::charset)           \
        BOOST_SPIRIT_CHAR_CODE(xdigit, spirit::char_encoding::charset)          \
                                                                                \
        BOOST_SPIRIT_CHAR_CODE(no_case, spirit::char_encoding::charset)         \
        BOOST_SPIRIT_CHAR_CODE(lower, spirit::char_encoding::charset)           \
        BOOST_SPIRIT_CHAR_CODE(upper, spirit::char_encoding::charset)           \
        BOOST_SPIRIT_CHAR_CODE(lowernum, spirit::char_encoding::charset)        \
        BOOST_SPIRIT_CHAR_CODE(uppernum, spirit::char_encoding::charset)        \
    }}}                                                                         \
    /***/

BOOST_SPIRIT_DEFINE_CHAR_CODES(ascii)
BOOST_SPIRIT_DEFINE_CHAR_CODES(iso8859_1)
BOOST_SPIRIT_DEFINE_CHAR_CODES(standard)
BOOST_SPIRIT_DEFINE_CHAR_CODES(standard_wide)

#endif
