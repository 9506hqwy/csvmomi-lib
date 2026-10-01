#!/bin/bash

set -euo pipefail

SHDIR=$(cd "$(dirname "$0")"; pwd)

FILENAME=VimService.cs
NAMESPACE=VimService
OUTPUTDIR=${SHDIR}/../VimStubSlim

rm -f "${OUTPUTDIR}/${FILENAME}"
dotnet-svcutil --outputDir "${OUTPUTDIR}" --noLogo --verbosity Debug --outputFile ${FILENAME} --namespace "*,${NAMESPACE}" --serializer XmlSerializer --wrapped --targetFramework netstandard2.0 "${SHDIR}/wsdl/vim25/vimService.wsdl" "${SHDIR}/wsdl/vim25/vim.wsdl" "${SHDIR}/wsdl/vim25/"*.xsd
