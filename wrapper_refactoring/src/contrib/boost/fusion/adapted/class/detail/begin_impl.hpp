/*=============================================================================
    Copyright (c) 2001-2009 Joel de Guzman
    Copyright (c) 2005-2006 Dan Marsden

    Distributed under the Boost Software License, Version 1.0. (See accompanying
    file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
==============================================================================*/
#if !defined(BOOST_FUSION_BEGIN_IMPL_OCTOBER_4_2009_920PM)
#define BOOST_FUSION_BEGIN_IMPL_OCTOBER_4_2009_920PM

#include <boost/fusion/adapted/class/class_iterator.hpp>

namespace boost { namespace fusion
{
    struct class_tag;

    namespace extension
    {
        template<typename T>
        struct begin_impl;

        template <>
        struct begin_impl<class_tag>
        {
            template <typename Sequence>
            struct apply
            {
                typedef class_iterator<Sequence, 0> type;

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
