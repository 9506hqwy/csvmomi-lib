#!/bin/bash

set -euo pipefail

SHDIR=$(cd "$(dirname "$0")"; pwd)

FILENAME=EamService.cs
NAMESPACE=EamService
OUTPUTDIR=${SHDIR}/../EamStubSlim

rm -f "${OUTPUTDIR}/${FILENAME}"
dotnet-svcutil --outputDir "${OUTPUTDIR}" --noLogo --verbosity Debug --outputFile ${FILENAME} --namespace "*,${NAMESPACE}" --serializer XmlSerializer --wrapped --targetFramework netstandard2.0 "${SHDIR}/wsdl/"*.wsdl "${SHDIR}/wsdl/"*.xsd
