# Build vSphere Management SDK for .Net

This repository is build project for vSphere Management API C# bindings for .NET Standard 2.0.

This repository includes some bindings.

- [EamService](./EamService)

  This package is vSphere ESX Agent Manager API C# bindings.
  This package is stub that generated from WSDL by using [dotnet-svcuti](https://www.nuget.org/packages/dotnet-svcutil),
  and pre-generated XML serializer by using [dotnet-svcutil.xmlserializer](https://www.nuget.org/packages/dotnet-svcutil.xmlserializer).

- [PbmService](./PbmService)

  This package is VMware Storage Policy API C# bindings.
  This package is stub that generated from WSDL by using [dotnet-svcuti](https://www.nuget.org/packages/dotnet-svcutil),
  and pre-generated XML serializer by using [dotnet-svcutil.xmlserializer](https://www.nuget.org/packages/dotnet-svcutil.xmlserializer).

- [SmsService](./SmsService)

  This package is vCenter Storage Monitoring Service API C# bindings.
  This package is stub that generated from WSDL by using [dotnet-svcuti](https://www.nuget.org/packages/dotnet-svcutil),
  and pre-generated XML serializer by using [dotnet-svcutil.xmlserializer](https://www.nuget.org/packages/dotnet-svcutil.xmlserializer).

- [StsService](./StsService)

  This package is vCenter Single Sign-On API C# bindings.
  This package is stub that generated from WSDL by using [dotnet-svcuti](https://www.nuget.org/packages/dotnet-svcutil).

- [VimService](./VimService)

  This package is vSphere Web Services API C# bindings.
  This package is stub that generated from WSDL by using [dotnet-svcuti](https://www.nuget.org/packages/dotnet-svcutil),
  and pre-generated XML serializer by using [dotnet-svcutil.xmlserializer](https://www.nuget.org/packages/dotnet-svcutil.xmlserializer).

- [VslmService](./VslmService)

  This package is Virtual Storage Lifecycle Management API C# bindings.
  This package is stub that generated from WSDL by using [dotnet-svcuti](https://www.nuget.org/packages/dotnet-svcutil),
  and pre-generated XML serializer by using [dotnet-svcutil.xmlserializer](https://www.nuget.org/packages/dotnet-svcutil.xmlserializer).

## Build

1. Locate wsdl file to each service wsdl directory.

   - EamStubGen
   - PbmStubGen
   - SmsStubGen
   - StsStubGen
   - VimStubGen
   - VslmStubGen

2. Run `build.bat`, output to `artifacts` directory.

## Notes

If use .Net 6.0, need to use .Net 6.0.11 or later,
see [Allow for null XmlSerialziers when loading pre-gen from mappings](https://github.com/dotnet/runtime/pull/75638).

## References

- [Announcing deprecation of vSphere Management SDK for .Net (C#) (87965)](https://kb.vmware.com/s/article/87965)
- [vcf-api-specs](https://github.com/vmware/vcf-api-specs)
