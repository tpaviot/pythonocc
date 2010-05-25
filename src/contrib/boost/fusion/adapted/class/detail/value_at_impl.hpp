/*=============================================================================
    Copyright (c) 2001-2009 Joel de Guzman
    Copyright (c) 2005-2006 Dan Marsden

    Distributed under the Boost Software License, Version 1.0. (See accompanying
    file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
==============================================================================*/
#if !defined(BOOST_FUSION_VALUE_AT_IMPL_OCTOBER_4_2009_918PM)
#define BOOST_FUSION_VALUE_AT_IMPL_OCTOBER_4_2009_918PM

#include <boost/mpl/if.hpp>
#include <boost/static_assert.hpp>

namespace boost { namespace fusion
{
    struct class_tag;

    namespace extension
    {
        template<typename T>
        struct value_at_impl;

        template <typename Class, int N>
        struct class_member;

        template <typename Class>
        struct class_size;

        template <>
        struct value_at_impl<class_tag>
        {
            template <typename Sequence, typename N>
            struct apply
            {
                static int const n_value = N::value;
                BOOST_MPL_ASSERT_RELATION(
                    n_value, <=, extension::class_size<Sequence>::value);

                typedef typename
                    extension::class_member<Sequence, N::value>::type
                type;
            };
        };
    }
}}

#endif
