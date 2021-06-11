# Steps to achieve this from scratch

```bash
    git init --bare $HOME/.configuration
    alias cfg='/usr/bin/git --git-dir=$HOME/.configuration/ --work-tree=$HOME'
    cfg config --local status.showUntrackedFiles no
    echo "alias cfg='/usr/bin/git --git-dir=$HOME/.configuration/ --work-tree=$HOME'" >> $HOME/.bashrc
```


# Replicate this configuration on other machines

```bash
    echo ".configuration" >> .gitignore
    git clone --bare https://github.com/ism1997/configuration $HOME/.configuration
    alias cfg='/usr/bin/git --git-dir=$HOME/.configuration/ --work-tree=$HOME'
    cfg checkout
    cfg config --local status.showUntrackedFiles no
```

Taken straight from Atlassian<sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup><sup>, </sup><sup><a id="fnr.2" class="footref" href="#fn.2">2</a></sup>.


# In PowerShell

```powershell
    git init --bare $HOME/.configuration
    function Get-Configuration { & git-dir=$HOME/.configuration/ --work-tree=$HOME $args }
    New-Alias -Name cfg -Value Get-Configuration
    cfg config --local status.showUntrackedFiles no
```

## Footnotes

<sup><a id="fn.1" class="footnum" href="#fnr.1">1</a></sup> [The best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles)

<sup><a id="fn.2" class="footnum" href="#fnr.2">2</a></sup> [The best way to store your dotfiles: A bare Git repository ****EXPLAINED****](https://www.ackama.com/blog/posts/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained)
