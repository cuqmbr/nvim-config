local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {

  -- Colorschemes
  { "rebelot/kanagawa.nvim" },
  { "Mofiqul/vscode.nvim" },

  -- Create and explore menus of keybindings
  {
    "folke/which-key.nvim",
    tag = "v1.6.0"
  },

  -- Fuzzy find everything and everywhere
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim", "BurntSushi/ripgrep" }
  },

  -- Git integration for buffers
  {
    "lewis6991/gitsigns.nvim",
    tag = "v0.7"
  },

  -- Better commenting
  {
    "numToStr/Comment.nvim",
    tag = "v0.8.0"
  },

  -- LSP and DAP plugin manager. DO NOT change installation order of the following three plugins!
  { "williamboman/mason.nvim" },
  -- Integration with lspconfig
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  -- Integration wiht dap
  { "mfussenegger/nvim-dap" },
  { "rcarriga/nvim-dap-ui" },
  -- dap dependency
  { "nvim-neotest/nvim-nio" },

  -- Completion
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  { "hrsh7th/cmp-nvim-lsp-signature-help" },
  { "hrsh7th/nvim-cmp" },
  -- vsnip and other snippet engines support
  { "hrsh7th/cmp-vsnip" },
  { "hrsh7th/vim-vsnip" },
  { "hrsh7th/vim-vsnip-integ" },
  { "rafamadriz/friendly-snippets" },

  -- Manage terminal windows inside neovim
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true
  },

  -- Manage the file system and other tree like structures
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim", }
  },

  -- Line at the top of the screen with all opened buffers
  {
    "akinsho/bufferline.nvim",
    tag = "v4.6.0",
    dependencies = "nvim-tree/nvim-web-devicons"
  },

  -- Line at the bottom of the screen with useful information about opened buffer
  { "nvim-lualine/lualine.nvim",
    dependencies = "nvim-tree/nvim-web-devicons"
  },

  { "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = "nvim-tree/nvim-web-devicons"
  },

  -- Text highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    tag = "v0.9.2",
    dependencies = "JoosepAlviste/nvim-ts-context-commentstring", build = ":TSUpdate"
  },

  -- Autopairs for different kind of brackets and other symbols
  { "windwp/nvim-autopairs" },

  -- Manipulations with colors
  { "max397574/colortils.nvim",
    cmd = "Colortils"
  },

  -- Highlight colorcodes
  { "NvChad/nvim-colorizer.lua" },

  -- Preview markdown
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end
  },

  { "folke/neodev.nvim" },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }
}
