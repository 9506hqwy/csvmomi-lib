#!/bin/bash

set -euo pipefail

SHDIR=$(cd "$(dirname "$0")"; pwd)

FILENAME=PbmService.cs
NAMESPACE=PbmService
OUTPUTDIR=${SHDIR}/../PbmStubSlim

rm -f "${OUTPUTDIR}/${FILENAME}"
dotnet-svcutil --outputDir "${OUTPUTDIR}" --noLogo --verbosity Debug --outputFile ${FILENAME} --namespace "*,${NAMESPACE}" --serializer XmlSerializer --wrapped --targetFramework netstandard2.0 "${SHDIR}/wsdl/"*.wsdl "${SHDIR}/wsdl/"*.xsd
