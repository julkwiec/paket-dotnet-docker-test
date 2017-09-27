FROM julkwiec/dotnet-mono-fsharp-paket-powershell:1.0.0

RUN dotnet --version
WORKDIR /test
COPY ["*.*", "./"]
ENTRYPOINT [ "/bin/bash" ]
