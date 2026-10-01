#!/bin/bash

set -euo pipefail

SHDIR=$(cd "$(dirname "$0")"; pwd)

pushd "${SHDIR}"

STUB_FILENAME=PbmService.cs
SRC_STUB_PATH=${SHDIR}/${STUB_FILENAME}
DEST_STUB_PATH=${SHDIR}/../PbmService/${STUB_FILENAME}

SERDE_FILENAME=PbmService.XmlSerializers.cs
SRC_SERDE_PATH=${SHDIR}/obj/Release/net8.0/${SERDE_FILENAME}
DEST_SERDE_PATH=${SHDIR}/../PbmService/${SERDE_FILENAME}

rm -f "${DEST_SERDE_PATH}"
dotnet build -c Release
cp -f "${SRC_SERDE_PATH}" "${DEST_SERDE_PATH}"

cp -f "${SRC_STUB_PATH}" "${DEST_STUB_PATH}"

popd
