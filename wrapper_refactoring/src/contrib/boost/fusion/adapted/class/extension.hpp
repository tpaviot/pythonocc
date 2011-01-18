/*=============================================================================
    Copyright (c) 2001-2009 Joel de Guzman
    Copyright (c) 2005-2006 Dan Marsden

    Distributed under the Boost Software License, Version 1.0. (See accompanying
    file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
==============================================================================*/
#if !defined(FUSION_CLASS_EXTENSION_OCTOBER_4_2009_839PM)
#define FUSION_CLASS_EXTENSION_OCTOBER_4_2009_839PM

#include <boost/type_traits/add_const.hpp>

namespace boost { namespace fusion { namespace extension
{
    template <typename Class, int N>
    struct class_member;

    template <typename Class>
    struct class_size;

    template <typename Class, int N>
    struct class_member<Class const, N> : class_member<Class, N> {};
    //~ {
        //~ typedef typename class_member<Class, N>::type type;
        //~ typedef typename class_member<Class, N>::get_type get_type;
        //~ typedef typename class_member<Class, N>::proxy proxy;

        //~ static get_type&
        //~ call(Class const& class_)
        //~ {
            //~ return class_member<Class, N>::call(
                //~ const_cast<Class&>(class_));
        //~ }
    //~ };

    template <typename Class>
    struct class_size<Class const>
        : class_size<Class>
    {};

    struct no_such_member;

    template<typename Class, typename Key>
    struct class_assoc_member
    {
        typedef no_such_member type;
    };

    template<typename Class, typename Key>
    struct class_assoc_member<Class const, Key>
    {
        typedef typename
            add_const<typename class_assoc_member<Class, Key>::type>::type
        type;

        static type&
        call(Class const& class_)
        {
            return class_assoc_member<Class, Key>::call(
                const_cast<Class&>(class_));
        }
    };

}}}

#endif


