#!/usr/bin/env bash

set -e

function main() {
  CURRENT_DIR=`pwd`
  DEST=$CURRENT_DIR/dist
  TMPDIR=$(mktemp -d -t tmp.XXXXXXXXXX)
  SCRIPT_DIR=$(dirname "$0")

  echo $(date) : "=== Using tmpdir: ${TMPDIR}"

  cp "${SCRIPT_DIR}/setup.py" "${TMPDIR}"
  cp "${SCRIPT_DIR}/MANIFEST.in" "${TMPDIR}"
  cp -R "${SCRIPT_DIR}/../python/paddleboard" "${TMPDIR}/paddleboard"
  cp "${SCRIPT_DIR}/../python/manage.py" "${TMPDIR}/paddleboard/server/manage.py"

  pushd ${TMPDIR}

  echo $(date) : "*** Building paddleboard wheel ***"
  echo $(pwd)
  python setup.py bdist_wheel
  mkdir -p ${DEST}
  cp dist/* ${DEST}
  popd
  rm -rf ${TMPDIR}
  echo $(date) : "*** Wrote paddleboard wheel to: ${DEST} ***"
}

main "$@"
