# Dotfiles

## Installation
 
Use [stow](https://www.gnu.org/software/stow/) to install config from selected directory.

### Examples

Configure nvim:

```bash
cd ~
git clone https://github.com/marcinwilkdev/dotfiles .dotfiles
cd .dotfiles
stow nvim
```

Configure everything (high conflict chance):

```bash
cd ~
git clone https://github.com/marcinwilkdev/dotfiles .dotfiles
cd .dotfiles
stow *
```

## Dependencies

### Neovim

You need neovim version 0.9.0 for this config to work.

I recommend using [bob](https://github.com/MordechaiHadad/bob) for installing and managing neovim versions.

### Font

I recommend using [JetBrainsMono](https://github.com/ryanoasis/nerd-fonts/tree/v2.3.3/patched-fonts/JetBrainsMono/Ligatures) or other nerd font to get nice font with icons for neovim.

Be careful not to use version v3 or greater of nerd fonts as there are some [conflicts](https://github.com/ryanoasis/nerd-fonts/issues/1190) and some icons will not work.

### Mason

Formatters, linters and separately managed LSPs have to be installed manually using Mason. List of configured but not installed servers:

- flake8
- black
- rust_analyzer

### DIInstall

DAPs have to be installed manually using `:DIInstall <DAP_name>`. You can use `<TAB>` autocomplete. List of configured but not installed DAPs:

- dnetcs
- ccppr_vsc

### Clipboard

There is high probability that your system clipboard will not work with neovim. You can fix that by running `:checkhealth` inside of neovim and finding clipboard program that has to be installed.
