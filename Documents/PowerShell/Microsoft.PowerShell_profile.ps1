Set-Alias rc Edit-PowershellProfile
# test


function Prompt
{
    $mywd = (Get-Location).Path
    $mywd = $mywd.Replace( $HOME, '~' )
    Write-Host "PS " -NoNewline -ForegroundColor DarkGreen
    Write-Host ("" + $mywd + ">") -NoNewline -ForegroundColor Green
    return " "
}

function Edit-PowershellProfile
{
    nvim $Profile
}

oh-my-posh --init --shell pwsh --config $env:POSH_THEMES_PATH/hunk.omp.json | Invoke-Expression
