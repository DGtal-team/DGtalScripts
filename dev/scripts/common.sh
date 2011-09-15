#!/bin/bash

if ! test -d "${DGtal}"; then
    echo "[$0] Environment variable DGtal is undefined."
    exit 1
fi
if ! test -d "${DGtalScripts}"; then
    echo "[$0] Environment variable DGtalScripts is undefined."
    exit 1
fi

# setting directories
MODELS_DIR=${DGtalScripts}/dev/models
PROFILES_DIR=${DGtalScripts}/dev/profiles
INCLUDE_DIR=${DGtal}/src/DGtal
SRC_DIR=${DGtal}/src/DGtal
TESTS_DIR=${DGtal}/tests
EXAMPLES_DIR=${DGtal}/examples

# system information
namespace=DGtal
profile=`whoami`
today=`date '+20%y/%m/%d'`

# default settings.
author="${profile} (login)"
email="Unknown"
institution="Unknown"

# reading profile settings if any.
if test -r "${PROFILES_DIR}/${profile}.defs"; then
    source "${PROFILES_DIR}/${profile}.defs"
    author="${AUTHOR}"
    email="${EMAIL}"
    institution="${INSTITUTION}"
fi

echo "--- today = ${today}"
echo "--- author = ${author}"
echo "--- email = ${email}"
echo "--- institution = ${institution}"
