Push-Location $PSScriptRoot
$imageId = docker build -q .
if (-not $?) { exit 1 }
docker run -it $imageId
