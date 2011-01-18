/*=============================================================================
    Copyright (c) 2001-2007 Joel de Guzman
    Copyright (c) 2009-2010 Hartmut Kaiser
    Copyright (c) 2010 Christopher Schmidt

    Distributed under the Boost Software License, Version 1.0. (See accompanying
    file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
==============================================================================*/

#ifndef BOOST_FUSION_ADAPTED_STRUCT_ADAPT_STRUCT_NAMED_HPP
#define BOOST_FUSION_ADAPTED_STRUCT_ADAPT_STRUCT_NAMED_HPP

#include <boost/fusion/adapted/struct/adapt_struct.hpp>
#include <boost/fusion/adapted/struct/detail/proxy_type.hpp>
#include <boost/preprocessor/empty.hpp>

#define BOOST_FUSION_ADAPT_STRUCT_NAMED_C(                                      \
    TEMPLATE_PARAMS_SEQ, NAME_SEQ, I, ATTRIBUTE)                                \
                                                                                \
    BOOST_FUSION_ADAPT_STRUCT_C_BASE(                                           \
        TEMPLATE_PARAMS_SEQ,NAME_SEQ, I, obj., ATTRIBUTE, 2)

#define BOOST_FUSION_ADAPT_STRUCT_NAMED_NS(                                     \
    WRAPPED_TYPE, NAMESPACE_SEQ, NAME, ATTRIBUTES)                              \
                                                                                \
    BOOST_FUSION_ADAPT_STRUCT_DEFINE_PROXY_TYPE_IMPL(                           \
        WRAPPED_TYPE,(0)NAMESPACE_SEQ,NAME)                                     \
                                                                                \
    BOOST_FUSION_ADAPT_STRUCT_BASE(                                             \
        (0),                                                                    \
        (0)(BOOST_FUSION_ADAPT_STRUCT_NAMESPACE_DECLARATION(                    \
            (0)NAMESPACE_SEQ)NAME),                                             \
        struct_tag,                                                             \
        BOOST_PP_CAT(BOOST_FUSION_ADAPT_STRUCT_FILLER_0 ATTRIBUTES,_END),       \
        BOOST_FUSION_ADAPT_STRUCT_NAMED_C)

#define BOOST_FUSION_ADAPT_STRUCT_NAMED(WRAPPED_TYPE, NAME, ATTRIBUTES)         \
    BOOST_FUSION_ADAPT_STRUCT_NAMED_NS(                                         \
        WRAPPED_TYPE,(boost)(fusion)(adapted),NAME,ATTRIBUTES)

#endif
