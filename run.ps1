Push-Location $PSScriptRoot
docker build --no-cache .
if (-not $?) { exit 1 }
$lastImage = docker images -q | Select-Object -First 1
docker run -it $lastImage
