// Boost uuid_generators.hpp header file  ----------------------------------------------//

// Copyright 2006 Andy Tompkins.
// Distributed under the Boost Software License, Version 1.0. (See
// accompanying file LICENSE_1_0.txt or copy at
// http://www.boost.org/LICENSE_1_0.txt)

// Revision History
//  06 Feb 2006 - Initial Revision

#ifndef BOOST_UUID_GENERATORS_HPP
#define BOOST_UUID_GENERATORS_HPP

#include <boost/uuid/uuid.hpp>
#include <boost/uuid/sha1.hpp>
#include <boost/uuid/seed_rng.hpp>
#include <algorithm>
#include <string>
#include <limits>
#include <cstring>
#include <cwchar>
#include <iterator> // for distance
#include <boost/cstdint.hpp>
#include <boost/assert.hpp>
#include <boost/shared_ptr.hpp>
#include <boost/random/uniform_int.hpp>
#include <boost/random/variate_generator.hpp>
#include <boost/random/mersenne_twister.hpp>

#ifdef BOOST_NO_STDC_NAMESPACE
namespace std {
    using ::strlen;
    using ::wcslen;
} //namespace std
#endif //BOOST_NO_STDC_NAMESPACE

namespace boost {
namespace uuids {

// generate a nil uuid
struct nil_generator {
    typedef uuid result_type;
    
    uuid operator()() const {
        // initialize to all zeros
        uuid u = {{0}};
        return u;
    }
};

inline uuid nil_uuid() {
    return nil_generator()();
}

// generate a uuid from a string
// lexical_cast works fine using uuid_io.hpp
// but this generator should accept more forms
// and be more efficient
// would like to accept the following forms:
// 0123456789abcdef0123456789abcdef
// 01234567-89ab-cdef-0123456789abcdef
// {01234567-89ab-cdef-0123456789abcdef}
// {0123456789abcdef0123456789abcdef}
// others?
struct string_generator {
    typedef uuid result_type;
    
    template <typename ch, typename char_traits, typename alloc>
    uuid operator()(std::basic_string<ch, char_traits, alloc> const& s) const {
        return operator()(s.begin(), s.end());
    };

    uuid operator()(char const*const s) const {
        return operator()(s, s+std::strlen(s));
    }

    uuid operator()(wchar_t const*const s) const {
        return operator()(s, s+std::wcslen(s));
    }

    template <typename CharIterator>
    uuid operator()(CharIterator begin, CharIterator end) const
    {
        typedef typename std::iterator_traits<CharIterator>::value_type char_type;

        // check open brace
        char_type c = get_next_char(begin, end);
        bool has_open_brace = is_open_brace(c);
        char_type open_brace_char = c;
        if (has_open_brace) {
            c = get_next_char(begin, end);
        }

        bool has_dashes = false;

        uuid u;
        int i=0;
        for (uuid::iterator it_byte=u.begin(); it_byte!=u.end(); ++it_byte, ++i) {
            if (it_byte != u.begin()) {
                c = get_next_char(begin, end);
            }
            
            if (i == 4) {
                has_dashes = is_dash(c);
                if (has_dashes) {
                    c = get_next_char(begin, end);
                }
            }
            
            if (has_dashes) {
                if (i == 6 || i == 8 || i == 10) {
                    if (is_dash(c)) {
                        c = get_next_char(begin, end);
                    } else {
                        throw_invalid();
                    }
                }
            }

            *it_byte = get_value(c);

            c = get_next_char(begin, end);
            *it_byte <<= 4;
            *it_byte |= get_value(c);
        }

        // check close brace
        if (has_open_brace) {
            c = get_next_char(begin, end);
            check_close_brace(c, open_brace_char);
        }
        
        return u;
    }
    
private:
    template <typename CharIterator>
    typename std::iterator_traits<CharIterator>::value_type
    get_next_char(CharIterator& begin, CharIterator end) const {
        if (begin == end) {
            throw_invalid();
        }
        return *begin++;
    }

    unsigned char get_value(char c) const {
        static char const*const digits_begin = "0123456789abcdefABCDEF";
        static char const*const digits_end = digits_begin + 22;

        static unsigned char const values[] =
            { 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,10,11,12,13,14,15
            , static_cast<unsigned char>(-1) };

        char const* d = std::find(digits_begin, digits_end, c);
        return values[std::distance(digits_begin, d)];
    }

    unsigned char get_value(wchar_t c) const {
        static wchar_t const*const digits_begin = L"0123456789abcdefABCDEF";
        static wchar_t const*const digits_end = digits_begin + 22;
        
        static unsigned char const values[] =
            { 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,10,11,12,13,14,15
            , static_cast<unsigned char>(-1) };

        wchar_t const* d = std::find(digits_begin, digits_end, c);
        return values[std::distance(digits_begin, d)];
    }

    bool is_dash(char c) const {
        return c == '-';
    }
    
    bool is_dash(wchar_t c) const {
        return c == L'-';
    }
    
    // return closing brace
    bool is_open_brace(char c) const {
        return (c == '{');
    }
    
    bool is_open_brace(wchar_t c) const {
        return (c == L'{');
    }
    
    void check_close_brace(char c, char open_brace) const {
        if (open_brace == '{' && c == '}') {
            //great
        } else {
            throw_invalid();
        }
    }
    
    void check_close_brace(wchar_t c, wchar_t open_brace) const {
        if (open_brace == L'{' && c == L'}') {
            // great
        } else {
            throw_invalid();
        }
    }
    
    void throw_invalid() const {
        throw std::runtime_error("invalid uuid string");
    }
};

// generate a name-based uuid
// TODO: add in common namesspace uuids
class name_generator {
public:
    typedef uuid result_type;

    explicit name_generator(uuid const& namespace_uuid)
        : namespace_uuid(namespace_uuid)
    {}

    uuid operator()(const char* name) {
        reset();
        process_characters(name, std::strlen(name));
        return sha_to_uuid();
    }

    uuid operator()(const wchar_t* name) {
        reset();
        process_characters(name, std::wcslen(name));
        return sha_to_uuid();
    }

    template <typename ch, typename char_traits, typename alloc>
    uuid operator()(std::basic_string<ch, char_traits, alloc> const& name) {
        reset();
        process_characters(name.c_str(), name.length());
        return sha_to_uuid();
    }
    
    uuid operator()(void const* buffer, std::size_t byte_count) {
        reset();
        sha.process_bytes(buffer, byte_count);
        return sha_to_uuid();
    };

private:
    // we convert all characters to uint32_t so that each
    // character is 4 bytes reguardless of sizeof(char) or
    // sizeof(wchar_t).  We want the name string on any
    // platform / compiler to generate the same uuid
    // except for char
    template <typename char_type>
    void process_characters(char_type const*const characters, size_t count) {
        BOOST_ASSERT(sizeof(uint32_t) >= sizeof(char_type));

        for (size_t i=0; i<count; i++) {
            uint32_t c = characters[i];
            sha.process_byte( (c >> 0) && 0xFF );
            sha.process_byte( (c >> 8) && 0xFF );
            sha.process_byte( (c >> 16) && 0xFF );
            sha.process_byte( (c >> 24) && 0xFF );
        }
    }
    
    void process_characters(char const*const characters, size_t count) {
        sha.process_bytes(characters, count);
    }

    void reset()
    {
        sha.reset();
        sha.process_bytes(namespace_uuid.begin(), namespace_uuid.size());
    }
    
    uuid sha_to_uuid()
    {
        unsigned int digest[5];

        sha.get_digest(digest);

        uuid u;
        for (int i=0; i<4; ++i) {
            *(u.begin() + i*4+0) = ((digest[i] >> 24) & 0xFF);
            *(u.begin() + i*4+1) = ((digest[i] >> 16) & 0xFF);
            *(u.begin() + i*4+2) = ((digest[i] >> 8) & 0xFF);
            *(u.begin() + i*4+3) = ((digest[i] >> 0) & 0xFF);
        }

        // set variant
        // must be 0b10xxxxxx
        *(u.begin()+8) &= 0xBF;
        *(u.begin()+8) |= 0x80;

        // set version
        // must be 0b0101xxxx
        *(u.begin()+6) &= 0x5F; //0b01011111
        *(u.begin()+6) |= 0x50; //0b01010000

        return u;
    }

private:
    uuid namespace_uuid;
    detail::sha1 sha;
};

// generate a random-based uuid
template <typename UniformRandomNumberGenerator>
class basic_random_generator {
private:
    typedef uniform_int<unsigned long> distribution_type;
    typedef variate_generator<UniformRandomNumberGenerator*, distribution_type> generator_type;

    struct null_deleter
    {
        void operator()(void const *) const {}
    };

public:
    typedef uuid result_type;
    
    // default constructor creates the random number generator
    basic_random_generator()
        : pURNG(new UniformRandomNumberGenerator)
        , generator
          ( pURNG.get()
          , distribution_type
            ( (std::numeric_limits<unsigned long>::min)()
            , (std::numeric_limits<unsigned long>::max)()
            )
          )
    {
        // seed the random number generator
        detail::seed(*pURNG);
    }
    
    // keep a reference to a random number generator
    // don't seed a given random number generator
    explicit basic_random_generator(UniformRandomNumberGenerator& gen)
        : pURNG(&gen, null_deleter())
        , generator
          ( pURNG.get()
          , distribution_type
            ( (std::numeric_limits<unsigned long>::min)()
            , (std::numeric_limits<unsigned long>::max)()
            )
          )
    {}
    
    // keep a pointer to a random number generator
    // don't seed a given random number generator
    explicit basic_random_generator(UniformRandomNumberGenerator* pGen)
        : pURNG(pGen, null_deleter())
        , generator
          ( pURNG.get()
          , distribution_type
            ( (std::numeric_limits<unsigned long>::min)()
            , (std::numeric_limits<unsigned long>::max)()
            )
          )
    {
        BOOST_ASSERT(pURNG);
    }
    
    uuid operator()()
    {
        uuid u;
        
        int i=0;
        unsigned long random_value = generator();
        for (uuid::iterator it=u.begin(); it!=u.end(); ++it, ++i) {
            if (i==sizeof(unsigned long)) {
                random_value = generator();
            }

            *it = ((random_value >> (i*8)) & 0xFF);
        }

        // set variant
        // must be 0b10xxxxxx
        *(u.begin()+8) &= 0xBF;
        *(u.begin()+8) |= 0x80;

        // set version
        // must be 0b0100xxxx
        *(u.begin()+6) &= 0x4F; //0b01001111
        *(u.begin()+6) |= 0x40; //0b01000000

        return u;
    }

private:
    shared_ptr<UniformRandomNumberGenerator> pURNG;
    generator_type generator;
};

typedef basic_random_generator<mt19937> random_generator;

//TODO add native_generator

}} //namespace boost::uuids

#endif //BOOST_UUID_GENERATORS_HPP
