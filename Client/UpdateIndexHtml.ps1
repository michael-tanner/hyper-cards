param (
    [string]$InputFile,
    [string]$OutputFile
)

# Generate a new GUID
$guid = [guid]::NewGuid().ToString()

# Read the content of the input file
$content = Get-Content -Path $InputFile -Raw

# Replace the placeholder with the new GUID
$content = $content -replace 'dynamic-guid', $guid

# Write the updated content to the output file
Set-Content -Path $OutputFile -Value $content