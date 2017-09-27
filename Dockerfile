FROM julkwiec/dotnet-mono-fsharp-paket-powershell:1.0.0

RUN dotnet --version

WORKDIR /nuget
ENV NUGET_PACKAGES=/nuget NuGetCachePath=/nuget
RUN dotnet --version

WORKDIR /warmup
COPY ["*.*", "./"]
ENTRYPOINT [ "/bin/bash" ]
