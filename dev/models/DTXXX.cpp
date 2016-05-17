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
 * @file XXX.cpp
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

#include <boost/program_options/options_description.hpp>
#include <boost/program_options/parsers.hpp>
#include <boost/program_options/variables_map.hpp>
///////////////////////////////////////////////////////////////////////////////
using namespace std;
using namespace DGtal;
///////////////////////////////////////////////////////////////////////////////
namespace po = boost::program_options;


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
  // parse command line -------------------------------------------------------
  po::options_description general_opt("Allowed options are");
  general_opt.add_options()
    ("help,h", "display this message")
    ("input,i", po::value<std::string >(), "an input file... " )
    ("parameter,p", po::value<double>()->default_value(1.0), "a double parameter... " );

  bool parseOK=true;
  po::variables_map vm;
  try
    {
      po::store(po::parse_command_line(argc, argv, general_opt), vm);
    }
  catch(const std::exception& ex)
    {
      parseOK=false;
      trace.info()<< "Error checking program options: "<< ex.what()<< endl;
    }
  

  // check if min arguments are given and tools description ------------------
  po::notify(vm);
  if( !parseOK || vm.count("help")||argc<=1)
    {
      std::cout << "Usage: " << argv[0] << " [input]\n"
                << "The tools description with typical use example... "
                << general_opt << "\n"
                << "Example of use:\n \t  ... \n";
      return 0;
    }  
  if(! vm.count("input"))
    {
      trace.error() << " The file name was not defined" << endl;
      return 1;
    }



  //  recover the  args ----------------------------------------------------
  string inputFileName = vm["input"].as<string>();
  double parameter =  vm["parameter"].as<double>();

  
  
  // Some nice processing  --------------------------------------------------
  
  

  

  return 0;
}

