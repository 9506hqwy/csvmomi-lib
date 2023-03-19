@ECHO OFF

REM EamService
CALL "%~dp0EamStubGen\GenStub.bat"
CALL "%~dp0EamStubSlim\SlimStub.bat"

REM PbmService
CALL "%~dp0PbmStubGen\GenStub.bat"
CALL "%~dp0PbmStubSlim\SlimStub.bat"

REM SmsService
CALL "%~dp0SmsStubGen\GenStub.bat"
CALL "%~dp0SmsStubSlim\SlimStub.bat"

REM StsService
CALL "%~dp0StsStubGen\GenStub.bat"

REM VimService
CALL "%~dp0VimStubGen\GenStub.bat"
CALL "%~dp0VimStubSlim\SlimStub.bat"

REM VslmService
CALL "%~dp0VslmStubGen\GenStub.bat"
CALL "%~dp0VslmStubSlim\SlimStub.bat"

REM Build Binary
dotnet build -c Release -o artifacts
