#!/bin/bash

set -euo pipefail

SHDIR=$(cd "$(dirname "$0")"; pwd)

FILENAME=VslmService.cs
NAMESPACE=VslmService
OUTPUTDIR=${SHDIR}/../VslmStubSlim

rm -f "${OUTPUTDIR}/${FILENAME}"
dotnet-svcutil --outputDir "${OUTPUTDIR}" --noLogo --verbosity Debug --outputFile ${FILENAME} --namespace "*,${NAMESPACE}" --serializer XmlSerializer --wrapped --targetFramework netstandard2.0 "${SHDIR}/wsdl/"*.wsdl "${SHDIR}/wsdl/"*.xsd
