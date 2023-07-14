## Screenshots

<div style="display: flex; align-content: center;">
  <img src="https://drive.google.com/uc?export=view&id=16qAaJD2fM-kxnp40lKSLlhjoSnABdT-v" alt="Config preview. Terminal" width="400" border="10" />
  <img src="http://drive.google.com/uc?export=view&id=1JEvsD9bn6OrTh7mJfuZBrFNgIVZb8BjO" alt="Config preview. Debugger" width="400" border="10" />
  <img src="http://drive.google.com/uc?export=view&id=1beSxHLCaKnCdbc-sx-YXS-ZNt8sYBrC1" alt="Config preview. Keybindings menu" width="413" border="10" />
  <img src="http://drive.google.com/uc?export=view&id=1WoQe1j0qUMCMfd2psa-c5nzfq7hQUQjY" alt="Config preview. Git diff" width="400" border="10" />
</div>

## Try out this config

This config requires >= [Neovim v0.9.0](https://github.com/neovim/neovim/releases).

Clone the repository into the correct location (make a backup your current `nvim` directory if you want to keep it).

```
git clone https://github.com/cuqmbr/nvim-config.git ~/.config/nvim
```

Run `nvim` in your terminal and wait for the plugins to be installed. Reopen nvim

**NOTE**: [Mason](https://github.com/williamboman/mason.nvim) is used to install and manage [LSP](https://microsoft.github.io/language-server-protocol/) servers, [DAP](https://microsoft.github.io/debug-adapter-protocol/) servers, [linters](https://en.wikipedia.org/wiki/Lint_(software)), and [formatters](https://en.wikipedia.org/wiki/Prettyprint) via the `:Mason` command.  

**NOTE**: [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) is used to install and manager code highlighting. Refer to the project's [README](https://github.com/nvim-treesitter/nvim-treesitter#readme) to view installation instructions and list of supported languages

This config assumes that you have Nerd Fonts v3.0.0 or higher. If you are using an older version then please update your [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) otherwise there will be missing or wrong glyphs

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

If you noticed that you don't have support for copy/paste also that python and node haven't been setup follow advice:

Copy/paste fix:

- On mac `pbcopy` should be builtin

- On GNU/Linux install [xsel](https://vergenet.net/~conrad/software/xsel/) or [wl-clipboard](https://github.com/bugaevc/wl-clipboard) for X11 or Wayland accordingly

Python and node Neovim support:

  ```
  pip install pynvim
  ```

  ```
  npm i -g neovim
  ```
---

**NOTE**: Make sure you have [node](https://nodejs.org/) and [python](https://www.python.org/) installed
