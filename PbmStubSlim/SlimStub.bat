@ECHO OFF
PUSHD %~dp0

SET STUB_FILENAME=PbmService.cs
SET SRC_STUB_PATH=%~dp0%STUB_FILENAME%
SET DEST_STUB_PATH=%~dp0..\PbmService\%STUB_FILENAME%

SET SERDE_FILENAME=PbmService.XmlSerializers.cs
SET SRC_SERDE_PATH=%~dp0obj\Release\netcoreapp2.1\%SERDE_FILENAME%
SET DEST_SERDE_PATH=%~dp0..\PbmService\%SERDE_FILENAME%

DEL "%DEST_SERDE_PATH%"
dotnet build -c Release
COPY "%SRC_SERDE_PATH%" "%DEST_SERDE_PATH%"

COPY "%SRC_STUB_PATH%" "%DEST_STUB_PATH%"

POPD