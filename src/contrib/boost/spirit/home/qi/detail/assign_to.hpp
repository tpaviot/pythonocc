/*=============================================================================
    Copyright (c) 2001-2010 Joel de Guzman
    Copyright (c) 2001-2010 Hartmut Kaiser
    http://spirit.sourceforge.net/

    Distributed under the Boost Software License, Version 1.0. (See accompanying
    file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
=============================================================================*/
#if !defined(BOOST_SPIRIT_ASSIGN_TO_APR_16_2006_0812PM)
#define BOOST_SPIRIT_ASSIGN_TO_APR_16_2006_0812PM

#if defined(_MSC_VER)
#pragma once
#endif

#include <boost/spirit/home/qi/detail/construct.hpp>
#include <boost/spirit/home/support/unused.hpp>
#include <boost/spirit/home/support/attributes_fwd.hpp>
#include <boost/spirit/home/support/container.hpp>
#include <boost/spirit/home/phoenix/core/actor.hpp>
#include <boost/ref.hpp>
#include <boost/range/iterator_range.hpp>

namespace boost { namespace spirit { namespace traits
{
    ///////////////////////////////////////////////////////////////////////////
    //  This file contains assignment utilities. The utilities provided also
    //  accept spirit's unused_type; all no-ops. Compiler optimization will
    //  easily strip these away.
    ///////////////////////////////////////////////////////////////////////////
    template <typename Attribute, typename Iterator, typename Enable>
    struct assign_to_attribute_from_iterators
    {
        static void 
        call(Iterator const& first, Iterator const& last, Attribute& attr)
        {
            if (traits::is_empty(attr))
                attr = Attribute(first, last);
            else {
                for (Iterator i = first; i != last; ++i)
                    push_back(attr, *i);
            }
        }
    };

    template <typename Attribute, typename Iterator>
    struct assign_to_attribute_from_iterators<
        reference_wrapper<Attribute>, Iterator>
    {
        static void 
        call(Iterator const& first, Iterator const& last
          , reference_wrapper<Attribute> attr)
        {
            if (traits::is_empty(attr))
                attr = Attribute(first, last);
            else {
                for (Iterator i = first; i != last; ++i)
                    push_back(attr, *i);
            }
        }
    };

    template <typename Iterator>
    struct assign_to_attribute_from_iterators<
        iterator_range<Iterator>, Iterator>
    {
        static void 
        call(Iterator const& first, Iterator const& last
          , iterator_range<Iterator>& attr)
        {
            attr = iterator_range<Iterator>(first, last);
        }
    };

    template <typename Iterator, typename Attribute>
    inline void
    assign_to(Iterator const& first, Iterator const& last, Attribute& attr)
    {
        assign_to_attribute_from_iterators<Attribute, Iterator>::
            call(first, last, attr);
    }

    template <typename Iterator>
    inline void
    assign_to(Iterator const&, Iterator const&, unused_type)
    {
    }

    ///////////////////////////////////////////////////////////////////////////
    template <typename Attribute, typename T, typename Enable>
    struct assign_to_attribute_from_value
    {
        static void 
        call(T const& val, Attribute& attr)
        {
            attr = static_cast<Attribute>(val);
        }
    };

    template <typename Attribute, typename T>
    struct assign_to_attribute_from_value<reference_wrapper<Attribute>, T>
    {
        static void 
        call(T const& val, reference_wrapper<Attribute> attr)
        {
            attr = static_cast<Attribute>(val.get());
        }
    };

    template <typename Attribute>
    struct assign_to_attribute_from_value<optional<Attribute>, unused_type>
    {
        static void 
        call(unused_type, optional<Attribute> const&)
        {
        }
    };

    template <typename T, typename Attribute>
    inline void
    assign_to(T const& val, Attribute& attr)
    {
        assign_to_attribute_from_value<Attribute, T>::call(val, attr);
    }

    template <typename T>
    inline void
    assign_to(T const&, unused_type)
    {
    }

}}}

#endif
