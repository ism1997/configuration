
# Table of Contents

1.  [Steps to achieve this from scratch](#orgb7cf482)
2.  [Replicate this configuration on other machines](#org62377a8)
3.  [In PowerShell](#org1511510)
4.  [References](#org2412e1a)



<a id="orgb7cf482"></a>

# Steps to achieve this from scratch

    git init --bare $HOME/.configuration
    alias cfg='/usr/bin/git --git-dir=$HOME/.configuration/ --work-tree=$HOME'
    cfg config --local status.showUntrackedFiles no
    echo "alias cfg='/usr/bin/git --git-dir=$HOME/.configuration/ --work-tree=$HOME'" >> $HOME/.bashrc


<a id="org62377a8"></a>

# Replicate this configuration on other machines

    echo ".configuration" >> .gitignore
    git clone --bare https://github.com/ism1997/configuration $HOME/.configuration
    alias cfg='/usr/bin/git --git-dir=$HOME/.configuration/ --work-tree=$HOME'
    cfg checkout
    cfg config --local status.showUntrackedFiles no

Taken straight from Atlassian<sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup><sup>, </sup><sup><a id="fnr.2" class="footref" href="#fn.2">2</a></sup>.


<a id="org1511510"></a>

# In PowerShell

    git init --bare $HOME/.configuration
    function Get-Configuration { & git-dir=$HOME/.configuration/ --work-tree=$HOME $args }
    New-Alias -Name cfg -Value Get-Configuration
    cfg config --local status.showUntrackedFiles no


<a id="org2412e1a"></a>

# References


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> [The best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles)

<sup><a id="fn.2" href="#fnr.2">2</a></sup> <https://www.ackama.com/blog/posts/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained>
