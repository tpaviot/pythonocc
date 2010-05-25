/*=============================================================================
    Copyright (c) 2001-2009 Joel de Guzman
    Copyright (c) 2005-2006 Dan Marsden

    Distributed under the Boost Software License, Version 1.0. (See accompanying
    file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
==============================================================================*/
#if !defined(BOOST_FUSION_AT_IMPL_OCTOBER_4_2009_920PM)
#define BOOST_FUSION_AT_IMPL_OCTOBER_4_2009_920PM

#include <boost/fusion/support/detail/access.hpp>
#include <boost/mpl/assert.hpp>
#include <boost/mpl/int.hpp>

namespace boost { namespace fusion
{
    struct class_tag;

    namespace extension
    {
        template<typename T>
        struct at_impl;

        template <typename Class, int N>
        struct class_member;

        template <typename Class>
        struct class_size;

        template <>
        struct at_impl<class_tag>
        {
            template <typename Sequence, typename N>
            struct apply
            {
                static int const n_value = N::value;
                BOOST_MPL_ASSERT_RELATION(
                    n_value, <=, extension::class_size<Sequence>::value);

                typedef typename
                    extension::class_member<Sequence, N::value>
                element;

                typedef typename
                    mpl::if_<
                        is_const<Sequence>
                      , typename class_member<Sequence, N::value>::get_type
                      , typename class_member<Sequence, N::value>::proxy
                    >::type
                type;

                static type
                call(Sequence& seq)
                {
                    return extension::
                        class_member<Sequence, N::value>::call(seq);
                }
                
                //~ static typename class_member<Sequence, N::value>::get_type
                //~ call(Sequence const& seq)
                //~ {
                    //~ return extension::
                        //~ class_member<Sequence, N::value>::call(seq);
                //~ }
            };
        };
    }
}}

#endif
