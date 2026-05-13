$ErrorActionPreference = 'Stop'

$packageName = 'aws-env'

$url64 = 'https://github.com/Petwag/aws-env/releases/download/{{VERSION}}/aws-env.exe'

$checksum64 = '{{CHECKSUM}}'

Install-ChocolateyPackage `
  -PackageName $packageName `
  -FileType 'exe' `
  -SilentArgs '/S' `
  -Url64bit $url64 `
  -Checksum64 $checksum64 `
  -ChecksumType64 'sha256'