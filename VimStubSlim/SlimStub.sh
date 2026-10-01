#!/bin/bash

set -euo pipefail

SHDIR=$(cd "$(dirname "$0")"; pwd)

pushd "${SHDIR}"

STUB_FILENAME=VimService.cs
SRC_STUB_PATH=${SHDIR}/${STUB_FILENAME}
DEST_STUB_PATH=${SHDIR}/../VimService/${STUB_FILENAME}

SERDE_FILENAME=VimService.XmlSerializers.cs
SRC_SERDE_PATH=${SHDIR}/obj/Release/net8.0/${SERDE_FILENAME}
DEST_SERDE_PATH=${SHDIR}/../VimService/${SERDE_FILENAME}

rm -f "${DEST_SERDE_PATH}"
dotnet build -c Release
cp -f "${SRC_SERDE_PATH}" "${DEST_SERDE_PATH}"
cp -f "HttpNfcLeaseInfo.cs" "${SHDIR}/../VimService/HttpNfcLeaseInfo.cs"
cp -f "HttpNfcLeaseState.cs" "${SHDIR}/../VimService/HttpNfcLeaseState.cs"

deno run --allow-read --allow-write ../Tools/SlimVimService.ts "${SRC_STUB_PATH}" "${DEST_STUB_PATH}"

popd
