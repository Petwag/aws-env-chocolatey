$ErrorActionPreference = 'Stop'

$packageName = 'aws-env'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$url64 = 'https://github.com/Petwag/aws-env/releases/download/v{{VERSION}}/aws-env.exe'
$checksum64 = '{{CHECKSUM}}'

Get-ChocolateyWebFile `
  -PackageName $packageName `
  -FileFullPath "$toolsDir\aws-env.exe" `
  -Url64bit $url64 `
  -Checksum64 $checksum64 `
  -ChecksumType64 'sha256'

Install-BinFile `
  -Name 'aws-env' `
  -Path "$toolsDir\aws-env.exe"