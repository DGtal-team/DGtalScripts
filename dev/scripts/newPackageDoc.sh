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
    echo "       - creates a doxygen package documentation skeleton file in the appropriate doc folder."
    echo "       - example: 'newPackageDoc.sh Graph graph/doc' will generate packageGraph.dox and "
    echo "         packageGraphConcepts.dox in the src/DGtal/graph/doc folder."
    exit 1
fi


if test -w "${DGtal}/src/DGtal/$2/package$1.dox" ;
then
    echo "File ${DGtal}/src/DGtal/$2/package$1.dox exists and is writable. Please remove it before." ;
    exit 2;
fi
if test -w "${DGtal}/src/DGtal/$2/package$1Concepts.dox" ;
then
    echo "File ${DGtal}/src/DGtal/$2/package$1Concepts.dox exists and is writable. Please remove it before." ;
    exit 2;
fi

echo "--- Creating files ${DGtal}/src/DGtal/$2/package$1.dox"
echo "--- Creating files ${DGtal}/src/DGtal/$2/package$1Concepts.dox"

ename="s@XXX@$1@g"
etoday='s@2000/??/??@'"${today}"'@g'
eauthor="s@AUTHOR@${author}@g"
eemail="s/EMAIL/${email}/g"
einstitution="s@INSTITUTION@${institution}@g"



if test ! -r "${MODELS_DIR}/packageXXXConcepts.dox"; then
    echo "Missing model packageXXX.dox in ${MODELS_DIR}."
    exit 2
fi

if test ! -r "${MODELS_DIR}/packageXXXConcepts.dox"; then
    echo "Missing model packageXXX.dox in ${MODELS_DIR}."
    exit 2
fi

cat "${MODELS_DIR}/packageXXX.dox" | sed -e "${enspace}" -e "${esubdir}" -e "${ename}" -e "${etoday}" -e "${eauthor}" -e "${eemail}" -e "${einstitution}"  > "${DGtal}/src/DGtal/$2/package$1.dox"

cat "${MODELS_DIR}/packageXXXConcepts.dox" | sed -e "${enspace}" -e "${esubdir}" -e "${ename}" -e "${etoday}" -e "${eauthor}" -e "${eemail}" -e "${einstitution}"  > "${DGtal}/src/DGtal/$2/package$1Concepts.dox"

echo "--> done."
