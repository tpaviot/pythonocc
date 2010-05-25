/*=============================================================================
    Copyright (c) 2001-2009 Joel de Guzman
    Copyright (c) 2005-2006 Dan Marsden

    Distributed under the Boost Software License, Version 1.0. (See accompanying
    file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
==============================================================================*/
#if !defined(BOOST_FUSION_END_IMPL_OCTOBER_4_2009_919PM)
#define BOOST_FUSION_END_IMPL_OCTOBER_4_2009_919PM

#include <boost/fusion/adapted/class/class_iterator.hpp>

namespace boost { namespace fusion
{
    struct class_tag;

    namespace extension
    {
        template <typename Tag>
        struct end_impl;

        template <typename Class>
        struct class_size;

        template <>
        struct end_impl<class_tag>
        {
            template <typename Sequence>
            struct apply
            {
                typedef
                    class_iterator<
                        Sequence
                      , class_size<Sequence>::value
                    >
                type;

                static type
                call(Sequence& v)
                {
                    return type(v);
                }
            };
        };
    }
}}

#endif
