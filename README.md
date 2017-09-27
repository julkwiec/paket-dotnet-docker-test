### Steps to reproduce
- Run `run.ps1` to build the image and run an interactive shell prompt
- `mono paket.exe restore`
- `dotnet restore` 
- `cd /nuget` - NuGet package cache is moved there
Note that there are two folders - `AutoMapper` created by Paket and `automapper` created by dotnet's NuGet client.
