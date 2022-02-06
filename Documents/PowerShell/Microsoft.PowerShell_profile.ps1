# test


function Prompt
{
    $mywd = (Get-Location).Path
    $mywd = $mywd.Replace( $HOME, '~' )
    Write-Host "PS " -NoNewline -ForegroundColor DarkGreen
    Write-Host ("" + $mywd + ">") -NoNewline -ForegroundColor Green
    return " "
}

#test34

Set-Alias psconf Edit-PowershellProfile
function Edit-PowershellProfile
{
    chezmoi edit $Profile
}

oh-my-posh --init --shell pwsh --config $env:POSH_THEMES_PATH/hunk.omp.json | Invoke-Expression
