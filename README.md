## Try out this config

This config requires >= [Neovim v0.9.0](https://github.com/neovim/neovim/releases).

Clone the repository into the correct location (make a backup your current `nvim` directory if you want to keep it).
The following command makes it all automatically:

```
cp -r ~/.config/nvim ~/.config/nvim_old && \
rm -rf ~/.cache/nvim ~/.local/share/nvim ~/.local/state/nvim ~/.config/nvim && \
git clone git@gitea.cuqmbr.xyz:cuqmbr/nvim-config.git ~/.config/nvim && \
echo "cuqmbr's NeoVIM config installation completed successfuly" || \
echo "Failed to install cuqmbr's NeoVIM config"
```

Run `nvim` in your terminal and wait for the plugins to be installed. It should take less than a minute. Reopen nvim

**NOTE**: [Mason](https://github.com/williamboman/mason.nvim) is used to install and manage [LSP](https://microsoft.github.io/language-server-protocol/) servers, [DAP](https://microsoft.github.io/debug-adapter-protocol/) servers, [linters](https://en.wikipedia.org/wiki/Lint_(software)), and [formatters](https://en.wikipedia.org/wiki/Prettyprint) via the `:Mason` command.  

**NOTE**: [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) is used to install and manager code highlighting. Refer to the project's [README](https://github.com/nvim-treesitter/nvim-treesitter#readme) to view installation instructions and list of supported languages

This config assumes that you have Nerd Fonts v3.0.0 or higher. If you are using an older version then please update your [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) otherwise there will be missing or wrong glyphs

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

If you noticed that you don't have support for copy/paste:

- On mac `pbcopy` should be builtin
- On GNU/Linux install [xsel](https://vergenet.net/~conrad/software/xsel/) or [wl-clipboard](https://github.com/bugaevc/wl-clipboard) for X11 or Wayland accordingly

## Credits

- [FixVim](https://github.com/Krator3/FixVim) - base configuration
- [NeoVim From Scratch by LunarVim](https://github.com/LunarVim/Neovim-from-scratch) - Additional configuration pieces and a good learning experience
- Documentation of all installed plugins - a lot of configs are default ones with minor tweaks
