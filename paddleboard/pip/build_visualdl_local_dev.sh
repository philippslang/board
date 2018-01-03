#!/usr/bin/env bash

set -e

function main() {
  CURRENT_DIR=`pwd`
  TMPDIR=$(mktemp -d -t tmp.XXXXXXXXXX)
  BUILD_DIR="${TMPDIR}/build"
  SCRIPT_DIR="$(cd "$(dirname "${0}")"; echo "$(pwd)")"
  PADDLEBOARD_SRC_DIR="${SCRIPT_DIR}/../python/paddleboard"

  VISUALDL_SRC="${SCRIPT_DIR}/../external/VisualDL"
  PYTHON_PATH=`which python`

  cp -R "${SCRIPT_DIR}/../external/VisualDL/" "${TMPDIR}"
  mkdir "${BUILD_DIR}"
  pushd ${BUILD_DIR}
  cmake -DPYTHON_EXECUTABLE=PYTHON_PATH --build ..
  make core

  find . -name \*.so -exec cp {} ${PADDLEBOARD_SRC_DIR} \;

  echo $(date) : "*** Building VisualDL ***"
  echo $(pwd)
  popd
  rm -rf ${TMPDIR}
  echo $(date) : "*** Copied VisualDL SDK library to: ${PADDLEBOARD_SRC_DIR} ***"
}

main "$@"
