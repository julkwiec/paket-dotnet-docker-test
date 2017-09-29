### Steps to reproduce
- Run `run.ps1` to build the image and run an interactive shell prompt
- `mono paket.exe restore`
- `dotnet restore` 
- `cd ~/.nuget/packages`
- `ls | grep [aA]uto`
Note that there are two folders - `AutoMapper` created by Paket and `automapper` created by dotnet's NuGet client.
You can check if `dotnet` is using cached package by running `dotnet restore -s /empty`.

The files in `logs` directory contain changes made by Paket and dotnet to the filesystem (separately).
