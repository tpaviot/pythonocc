//  Copyright (c) 2001-2010 Hartmut Kaiser
//  Copyright (c) 2001-2010 Joel de Guzman
// 
//  Distributed under the Boost Software License, Version 1.0. (See accompanying 
//  file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)

#if !defined(BOOST_SPIRIT_GET_ENCODING_JANUARY_13_2009_1255PM)
#define BOOST_SPIRIT_GET_ENCODING_JANUARY_13_2009_1255PM

#if defined(_MSC_VER)
#pragma once
#endif

#include <boost/mpl/identity.hpp>

namespace boost { namespace spirit { namespace detail
{
    template <typename Modifiers, typename Encoding, bool case_modifier = false>
    struct get_encoding : mpl::identity<Encoding> {};

    template <typename Modifiers, typename Encoding>
    struct get_encoding<Modifiers, Encoding, true>
      : mpl::identity<typename Modifiers::char_encoding> {};

}}}

#endif
