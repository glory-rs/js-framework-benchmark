$ErrorActionPreference='Stop'
& "$PSScriptRoot/../../../../glory/scripts/build-js-framework-benchmark.ps1" -Frameworks glory
if($LASTEXITCODE -ne 0){exit $LASTEXITCODE}
