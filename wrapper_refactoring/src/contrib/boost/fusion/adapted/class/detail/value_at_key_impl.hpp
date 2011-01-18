/*=============================================================================
    Copyright (c) 2001-2009 Joel de Guzman
    Copyright (c) 2005-2007 Dan Marsden

    Distributed under the Boost Software License, Version 1.0. (See accompanying
    file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
==============================================================================*/
#if !defined(BOOST_FUSION_VALUE_AT_KEY_IMPL_OCTOBER_4_2009_918PM)
#define BOOST_FUSION_VALUE_AT_KEY_IMPL_OCTOBER_4_2009_918PM

#include <boost/mpl/if.hpp>

namespace boost { namespace fusion
{
    struct class_tag;

    namespace extension
    {
        template<typename T>
        struct value_at_key_impl;

        template <typename Class, typename Key>
        struct class_assoc_member;

        template <>
        struct value_at_key_impl<class_tag>
        {
            template <typename Sequence, typename Key>
            struct apply
            {
                typedef typename
                    extension::class_assoc_member<Sequence, Key>::type
                type;
            };
        };
    }
}}

#endif
