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

/**
 * @file
 * @ingroup YYY
 * @author AUTHOR (\c EMAIL )
 * INSTITUTION
 *
 * @date 2000/??/??
 *
 * Source file of the tool XXX
 *
 * This file is part of the DGtal library/ZZZ Project.
 */

///////////////////////////////////////////////////////////////////////////////
#include "DGtal/base/Common.h"
#include "DGtal/helpers/StdDefs.h"

#include "CLI11.hpp"

///////////////////////////////////////////////////////////////////////////////
using namespace std;
using namespace DGtal;
///////////////////////////////////////////////////////////////////////////////


/**
 @page XXX XXX
 
 @brief  Description of the tool...

 @b Usage:   XXX [input]

 @b Allowed @b options @b are :
 
 @code
  -h [ --help ]           display this message
  -i [ --input ] arg      an input file...
  -p [ --parameter] arg   a double parameter...
 @endcode

 @b Example:

 @code
     XXX -i  $DGtal/examples/samples/....
 @endcode

 @image html resXXX.png "Example of result. "

 @see
 @ref XXX.cpp

 */


int main( int argc, char** argv )
{

  double parameter {1.0};
  std::string inputFileName;
  std::string outputFileName;
  std::stringstream usage;
  usage << "Usage: " << argv[0] << " [input]\n"
        << "Typical use example:\n \t XXX -i ... \n";
  // parse command line using CLI-------------------------------------------------------
  CLI::App app;
  app.description("Your program description.\n" + usage.str() );
  app.add_option("--input,-i,1", inputFileName, "Input file")->required()->check(CLI::ExistingFile);
  app.add_option("--output,-o,2", outputFileName, "Output SDP filename")->required();
  app.add_option("--parameter,-p", parameter, "a double parameter", true);

  app.get_formatter()->column_width(40);
  CLI11_PARSE(app, argc, argv);
  // END parse command line using CLI ----------------------------------------------

  
  // Some nice processing  --------------------------------------------------
  
  
 trace.info() << "Starting " << argv[0]  << "with input: " <<  inputFileName
              << " and output :" << outputFileName
              << " param: " << parameter <<std::endl;
  

  return 0;
}


