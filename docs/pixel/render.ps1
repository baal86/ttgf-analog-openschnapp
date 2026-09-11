& "$env:LOCALAPPDATA\Programs\CalcpadCE\cli\Cli.exe" calculations.cpd .temp.html -s

$InputFile = '.temp.html'
$CalcFile = 'calculations.md'
$OutputFile = 'README.md'

$content = Get-Content $InputFile -Raw -Encoding UTF8
$content = $content -replace '(?s)^.*?<body[^>]*>', ''
$content = $content -replace '(?s)</body>.*$', ''
$content = $content -replace '(?is)<script[^>]*>.*?</script>', ''
$content = $content.Trim()

# UTF8 without BOM to match typical HTML file expectations
$utf8NoBom = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllText($CalcFile, $content, $utf8NoBom)

$lines = Get-Content $OutputFile
$replacement = Get-Content $CalcFile

$result = New-Object System.Collections.Generic.List[string]
$inSection = $false
$sectionFound = $false

foreach ($line in $lines) {
    if (-not $inSection -and $line -match '^###\s+Calculations\s*$') {
        # Keep the heading itself
        $result.Add($line)
        # Insert replacement content, then a blank line
        $result.AddRange([string[]]$replacement)
        $result.Add("")

        $inSection = $true
        $sectionFound = $true
        continue
    }

    if ($inSection) {
        if ($line -match '^#{1,6}\s') {
            # Reached the next heading of any level — stop skipping, keep this line
            $inSection = $false
            $result.Add($line)
        }
        # else: still inside the old section, skip the line
    }
    else {
        $result.Add($line)
    }
}

if (-not $sectionFound) {
    Write-Warning "Section '### Calculations' was not found in $targetFile"
} else {
    $result | Set-Content $OutputFile
    Write-Host "Done. Section replaced."
}