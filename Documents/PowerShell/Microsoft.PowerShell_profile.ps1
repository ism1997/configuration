# My own functions
function Get-Configuration {
    & git --git-dir=$HOME/.configuration/ --work-tree=$HOME $args
}

# And aliases
Set-Alias cfg Get-Configuration

# Testing some shit
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -EditMode Emacs
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete