#!/bin/bash
# Bertrand Kerautret (\c bertrand.kerautret@univ-lorraine.fr) 
#  LORIA (CNRS, UMR 7503), University of Lorraine, France
# & Jacques-Olivier Lachaud (\c jacques-olivier.lachaud@univ-savoie.fr )
# Laboratory of Mathematics (CNRS, UMR 5807), University of Savoie, France

if ! test -d "${DGtalScripts}"; then
    echo "Environment variable DGtalScripts is undefined."
    exit 1
fi


SCRIPTS_DIR=${DGtalScripts}/dev/scripts
source ${SCRIPTS_DIR}/common.sh

usage(){
    echo "usage: $0 tool_name subdir [contrib]" ;
    echo "       - creates a new C++ skeleton files (.cpp) designed"
    echo "         for a tool located in the DGtalTools project. You can"
    echo "         also define the tool to belong to the DGTalTools-contrib project by using [contrib] option."
}

CONTRIB=false
if test  \( "$#" != "3" \) -a  \( "$#" != "2" \) ;
then
   usage
   exit 1;
fi

if test \( "$#" == "3" \) -a  \( "$3" != "contrib" \) ;
then
    echo "unknow option $3" ;
    usage
    exit 1
elif test \( "$#" == "3" \);
then
    CONTRIB=true
fi

TOOLS_DIR=""
if ! $CONTRIB;
then
  if ! test -d "${DGtalTools}" 
      then
         echo "Environment variable DGtalTools is undefined."
         exit 1
  else
        TOOLS_DIR=${DGtalTools}
        TOOLS_PROJ_NAME="DGtalTools"
  fi 
else
  if ! test -d "${DGtalToolsContrib}" 
      then
         echo "Environment variable DGtalToolsContrib is undefined."
         exit 1
  else
        TOOLS_DIR=${DGtalToolsContrib}
        TOOLS_PROJ_NAME="DGtalTools-contrib"
  fi 
fi


if test -w "${TOOLS_DIR}/$2/$1.cpp" ;
then
    echo "File ${TOOLS_DIR}/$2/$1.cpp exists and is writable. Please remove it before." ;
    exit 2;
fi

echo "--- Creating files ${TOOLS_DIR}/$2/$1.cpp"

etypetoolproj="s@ZZZ@${TOOLS_PROJ_NAME}@g"
esubdir="s@YYY@$2@g"
ename="s@XXX@$1@g"
etoday='s@2000/??/??@'"${today}"'@g'
eauthor="s@AUTHOR@${author}@g"
eemail="s/EMAIL/${email}/g"
einstitution="s@INSTITUTION@${institution}@g"



if test ! -r "${MODELS_DIR}/DTXXX.cpp"; then
    echo "Missing model DTXXX.cpp in ${MODELS_DIR}."
    exit 2
fi

cat "${MODELS_DIR}/DTXXX.cpp" | sed -e "${esubdir}" -e "${ename}" -e "${etoday}" -e "${eauthor}" -e "${eemail}" -e "${einstitution}" -e "${etypetoolproj}" > "${TOOLS_DIR}/$2/$1.cpp"
echo "--> done."

