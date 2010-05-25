/*=============================================================================
    Copyright (c) 2001-2009 Joel de Guzman
    Copyright (c) 2005-2007 Dan Marsden

    Distributed under the Boost Software License, Version 1.0. (See accompanying
    file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
==============================================================================*/
#if !defined(BOOST_FUSION_AT_KEY_IMPL_OCTOBER_4_2009_920PM)
#define BOOST_FUSION_AT_KEY_IMPL_OCTOBER_4_2009_920PM

#include <boost/fusion/support/detail/access.hpp>

namespace boost { namespace fusion
{
    struct class_tag;

    namespace extension
    {
        template<typename T>
        struct at_key_impl;

        template <typename Class, typename Key>
        struct class_assoc_member;

        template <>
        struct at_key_impl<class_tag>
        {
            template <typename Sequence, typename Key>
            struct apply
            {
                typedef typename
                extension::class_assoc_member<Sequence, Key>
                element;

                typedef typename
                    mpl::eval_if<
                        is_const<Sequence>
                      , detail::cref_result<element>
                      , detail::ref_result<element>
                    >::type
                type;

                static type
                call(Sequence& seq)
                {
                    return extension::
                        class_assoc_member<Sequence, Key>::call(seq);
                }
            };
        };
    }
}}

#endif
