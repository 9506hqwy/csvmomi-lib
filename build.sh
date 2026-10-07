#!/bin/bash

set -euo pipefail

VERSION="9.1.1.0"
SPEC_URL="https://github.com/vmware/vcf-api-specs.git"

SHDIR=$(cd "$(dirname "$0")"; pwd)

WORKDIR=$(mktemp -d)
trap 'rm -rf ${WORKDIR}' EXIT

pushd "${WORKDIR}"

git clone --depth 1 --branch "${VERSION}" "${SPEC_URL}"

# Copy WSDL files to each service's wsdl directory
## EamService
cp -rf vcf-api-specs/specifications/vsphere/wsdl/eam/* "${SHDIR}/EamStubGen/wsdl"
## PbmService
cp -rf vcf-api-specs/specifications/vsphere/wsdl/pbm/* "${SHDIR}/PbmStubGen/wsdl"
## SmsService
cp -rf vcf-api-specs/specifications/vsphere/wsdl/sms/* "${SHDIR}/SmsStubGen/wsdl"
## StsService
cp -rf vcf-api-specs/specifications/vsphere/wsdl/ssoclient/* "${SHDIR}/StsStubGen/wsdl"
## VimService
cp -rf vcf-api-specs/specifications/vsphere/wsdl/vim/* "${SHDIR}/VimStubGen/wsdl/vim25"
## VslmService
cp -rf vcf-api-specs/specifications/vsphere/wsdl/vslm/* "${SHDIR}/VslmStubGen/wsdl"

popd

# Build each service's stub
## EamService
./EamStubGen/GenStub.sh
./EamStubSlim/SlimStub.sh
## PbmService
./PbmStubGen/GenStub.sh
./PbmStubSlim/SlimStub.sh
## SmsService
./SmsStubGen/GenStub.sh
./SmsStubSlim/SlimStub.sh
## StsService
./StsStubGen/GenStub.sh
## VimService
./VimStubGen/GenStub.sh
./VimStubSlim/SlimStub.sh
## VslmService
./VslmStubGen/GenStub.sh
./VslmStubSlim/SlimStub.sh
