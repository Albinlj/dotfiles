function Prompt
{
    $mywd = (Get-Location).Path
    $mywd = $mywd.Replace( $HOME, '~' )
    Write-Host "PS " -NoNewline -ForegroundColor DarkGreen
    Write-Host ("" + $mywd + ">") -NoNewline -ForegroundColor Green
    return " "
}

Set-Alias psconf Edit-PowershellProfile
function Edit-PowershellProfile
{
    chezmoi edit $Profile
    chezmoi apply
    . $Profile
}

Set-Alias vimconf Edit-NeovimConfig
function Edit-NeovimConfig
{
    chezmoi edit ~/.local/share/chezmoi/.chezmoitemplates/init.vim
    chezmoi apply
}

oh-my-posh --init --shell pwsh --config $env:POSH_THEMES_PATH/mt.omp.json | Invoke-Expression
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
