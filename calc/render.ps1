& "$env:LOCALAPPDATA\Programs\CalcpadCE\cli\Cli.exe" calculations.cpd .temp.html -s

$InputFile = '.temp.html'
$OutputFile = 'README.md'

$content = Get-Content $InputFile -Raw -Encoding UTF8
$content = $content -replace '(?s)^.*?<body[^>]*>', ''
$content = $content -replace '(?s)</body>.*$', ''
$content = $content -replace '(?is)<script[^>]*>.*?</script>', ''
$content = $content.Trim()

# UTF8 without BOM to match typical HTML file expectations
$utf8NoBom = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllText($OutputFile, $content, $utf8NoBom)