/*=============================================================================
    Copyright (c) 2001-2009 Joel de Guzman
    Copyright (c) 2005-2006 Dan Marsden

    Distributed under the Boost Software License, Version 1.0. (See accompanying
    file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
==============================================================================*/
#if !defined(BOOST_FUSION_SIZE_IMPL_OCTOBER_4_2009_919PM)
#define BOOST_FUSION_SIZE_IMPL_OCTOBER_4_2009_919PM

#include <boost/mpl/int.hpp>

namespace boost { namespace fusion
{
    namespace extension
    {
        template <typename Class>
        struct class_size;
    }

    struct class_tag;

    namespace extension
    {
        template<typename T>
        struct size_impl;

        template <>
        struct size_impl<class_tag>
        {
            template <typename Sequence>
            struct apply : extension::class_size<Sequence> {};
        };
    }
}}

#endif
