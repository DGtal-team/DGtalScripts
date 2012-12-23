#!/bin/bash
# David Coeurjolly

if ! test -d "${DGtalScripts}"; then
    echo "Environment variable DGtalScripts is undefined."
    exit 1
fi
SCRIPTS_DIR=${DGtalScripts}/dev/scripts
source ${SCRIPTS_DIR}/common.sh



if test  \( "$#" != "2" \);
then 
    echo "usage: $0 package_name subdir" ;
    echo "       - creates a doxygen module documentation skeleton file in the appropriate doc folder."
    echo "       - example: 'newPackageDoc.sh LinearGraph graph/doc' will generate moduleLinearGraph.dox"
    echo "         in the src/DGtal/graph/doc folder."
    exit 1
fi


if test -w "${DGtal}/src/DGtal/$2/module$1.dox" ;
then
    echo "File ${DGtal}/src/DGtal/$2/module$1.dox exists and is writable. Please remove it before." ;
    exit 2;
fi

echo "--- Creating files ${DGtal}/src/DGtal/$2/module$1.dox"

ename="s@XXX@$1@g"
etoday='s@2000/??/??@'"${today}"'@g'
eauthor="s@AUTHOR@${author}@g"
eemail="s/EMAIL/${email}/g"
einstitution="s@INSTITUTION@${institution}@g"


if test ! -r "${MODELS_DIR}/moduleXXX.dox"; then
    echo "Missing model moduleXXX.dox in ${MODELS_DIR}."
    exit 2
fi

echo 'cat "${MODELS_DIR}/moduleXXX.dox" | sed -e "${enspace}" -e "${esubdir}" -e "${ename}" -e "${etoday}" -e "${eauthor}" -e "${eemail}" -e "${einstitution}"  > "${DGtal}/src/DGtal/$2/module$1.dox"'

echo "--> done."
