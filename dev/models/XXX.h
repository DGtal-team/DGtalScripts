/**
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU Lesser General Public License as
 *  published by the Free Software Foundation, either version 3 of the
 *  License, or  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 **/

#pragma once

/**
 * @file
 * @author AUTHOR (\c EMAIL )
 * INSTITUTION
 *
 * @date 2000/??/??
 *
 * Header file for module XXX.cpp
 *
 * This file is part of the DGtal library.
 */

#if defined(XXX_RECURSES)
#error Recursive header files inclusion detected in XXX.h
#else // defined(XXX_RECURSES)
/** Prevents recursive inclusion of headers. */
#define XXX_RECURSES

#if !defined XXX_h
/** Prevents repeated inclusion of headers. */
#define XXX_h

//////////////////////////////////////////////////////////////////////////////
// Inclusions
#include <iostream>
#include "YYY/base/Common.h"
//////////////////////////////////////////////////////////////////////////////

namespace YYY
{

/////////////////////////////////////////////////////////////////////////////
// class XXX
/**
 * Description of class 'XXX' <p>
 * \brief Aim:
 */
class XXX
{
    // ----------------------- Standard services ------------------------------
public:

    /* TODO: The following special members are currently deleted.
     * TODO: Replace `= delete` by `= default` if you want to use the compiler-
     * TODO: generated version of the operation, or implement your own version
     * TODO: in XXX.cpp.
     */

    /**
     * Default constructor.
     */
    XXX() = delete;

    /**
     * Destructor.
     */
    ~XXX() = delete;

    /**
     * Copy constructor.
     * @param other the object to clone.
     */
    XXX ( const XXX & other ) = delete;

    /**
     * Move constructor.
     * @param other the object to move.
     */
    XXX ( XXX && other ) = delete;

    /**
     * Copy assignment operator.
     * @param other the object to copy.
     * @return a reference on 'this'.
     */
    XXX & operator= ( const XXX & other ) = delete;

    /**
     * Move assignment operator.
     * @param other the object to move.
     * @return a reference on 'this'.
     */
    XXX & operator= ( XXX && other ) = delete;

    // ----------------------- Interface --------------------------------------
public:

    /**
     * Writes/Displays the object on an output stream.
     * @param out the output stream where the object is written.
     */
    void selfDisplay ( std::ostream & out ) const;

    /**
     * Checks the validity/consistency of the object.
     * @return 'true' if the object is valid, 'false' otherwise.
     */
    bool isValid() const;

    // ------------------------- Protected Datas ------------------------------
protected:

    // ------------------------- Private Datas --------------------------------
private:

    // ------------------------- Hidden services ------------------------------
protected:

    // ------------------------- Internals ------------------------------------
private:

}; // end of class XXX


/**
 * Overloads 'operator<<' for displaying objects of class 'XXX'.
 * @param out the output stream where the object is written.
 * @param object the object of class 'XXX' to write.
 * @return the output stream after the writing.
 */
std::ostream&
operator<< ( std::ostream & out, const XXX & object );

} // namespace YYY


///////////////////////////////////////////////////////////////////////////////
// Includes inline functions.
#if !defined(BUILD_INLINE)
#include "YYY/ZZZ/XXX.ih"
#endif


//                                                                           //
///////////////////////////////////////////////////////////////////////////////

#endif // !defined XXX_h

#undef XXX_RECURSES
#endif // else defined(XXX_RECURSES)
