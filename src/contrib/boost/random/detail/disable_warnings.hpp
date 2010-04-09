/* boost random/detail/disable_warnings.hpp header file
 *
 * Copyright Steven Watanabe 2009
 * Distributed under the Boost Software License, Version 1.0. (See
 * accompanying file LICENSE_1_0.txt or copy at
 * http://www.boost.org/LICENSE_1_0.txt)
 *
 * See http://www.boost.org for most recent version including documentation.
 *
 * $Id: disable_warnings.hpp 58649 2010-01-02 21:23:17Z steven_watanabe $
 *
 */

// No #include guard.  This header is intended to be included multiple times.

#include <boost/config.hpp>

#ifdef BOOST_MSVC
#pragma warning(push)
#pragma warning(disable:4512)
#pragma warning(disable:4127)
#endif
