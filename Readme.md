# 🚀 Personal Neovim Configuration

A modern, feature-rich Neovim configuration built with [Lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager. This setup provides a powerful IDE-like experience with excellent performance and beautiful UI.

## ✨ Features

- **🎨 Beautiful UI**: Catppuccin colorscheme with custom lualine configuration
- **🔍 Fuzzy Finding**: Telescope integration for files, buffers, and live grep
- **📝 LSP Support**: Full Language Server Protocol support with Mason
- **🤖 AI Assistance**: GitHub Copilot integration
- **🌳 File Explorer**: Neo-tree with floating window support
- **📚 Project Navigation**: Harpoon for quick file switching
- **🔧 Code Formatting**: Automatic formatting with Conform
- **🐛 Debugging & Diagnostics**: Trouble integration for better error handling
- **📖 Git Integration**: Comprehensive git support with multiple plugins
- **⚡ Performance**: Optimized for speed with lazy loading

## 📦 Installation

### Prerequisites

- Neovim >= 0.9.0
- Git
- A [Nerd Font](https://www.nerdfonts.com/) for icons
- Node.js (for LSP servers and formatters)
- Make (for telescope-fzf-native)

### Quick Setup

```bash
# Backup existing config (if any)
mv ~/.config/nvim ~/.config/nvim.backup

# Clone this configuration
git clone <your-repo-url> ~/.config/nvim

# Start Neovim - plugins will install automatically
nvim
```

## 🎯 Key Bindings

### General

| Key                 | Description      |
| ------------------- | ---------------- |
| `<Space>`           | Leader key       |
| `jj`                | Exit insert mode |
| `<D-s>` / `<Cmd-s>` | Save file        |

### Window Navigation

| Key     | Description          |
| ------- | -------------------- |
| `<C-h>` | Move to left window  |
| `<C-j>` | Move to down window  |
| `<C-k>` | Move to up window    |
| `<C-l>` | Move to right window |

### Splits

| Key          | Description      |
| ------------ | ---------------- |
| `<C-s>`      | Vertical split   |
| `<C-s><C-h>` | Horizontal split |

### File Explorer

| Key         | Description             |
| ----------- | ----------------------- |
| `<leader>1` | Toggle Neo-tree sidebar |
| `<leader>e` | Toggle Neo-tree float   |

### Telescope (Fuzzy Finder)

| Key               | Description              |
| ----------------- | ------------------------ |
| `<leader>sf`      | Find files               |
| `<leader>sg`      | Live grep                |
| `<leader>sw`      | Search current word      |
| `<leader><space>` | Find buffers             |
| `<leader>?`       | Recent files             |
| `<leader>/`       | Search in current buffer |

### LSP

| Key           | Description            |
| ------------- | ---------------------- |
| `gd`          | Go to definition       |
| `gr`          | Go to references       |
| `K`           | Show hover information |
| `<leader>ca`  | Code actions           |
| `<leader>vrn` | Rename                 |
| `<leader>fo`  | Format code            |
| `<leader>vh`  | Show diagnostics float |

### Harpoon

| Key           | Description              |
| ------------- | ------------------------ |
| `<leader>H`   | Add file to harpoon      |
| `<leader>h`   | Toggle harpoon menu      |
| `<leader>1-9` | Jump to harpoon file 1-9 |

### Bookmarks

| Key          | Description      |
| ------------ | ---------------- |
| `<leader>bc` | Toggle bookmark  |
| `<leader>bl` | List bookmarks   |
| `<leader>bj` | Jump to bookmark |

### Buffer Management

| Key         | Description          |
| ----------- | -------------------- |
| `<Tab>`     | Next buffer          |
| `<S-Tab>`   | Previous buffer      |
| `<leader>w` | Pick buffer to close |
| `<C-w>`     | Close other buffers  |

## 🔌 Installed Plugins

### 🎨 UI & Themes

- **[catppuccin/nvim](https://github.com/catppuccin/nvim)** - Beautiful, soothing pastel theme
- **[nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** - Blazing fast statusline
- **[akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)** - Snazzy buffer line
- **[nvimdev/dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)** - Fancy start screen
- **[nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)** - File icons

### 🔍 Navigation & Search

- **[nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder over lists
- **[nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)** - FZF sorter for telescope
- **[nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)** - Modern file explorer
- **[ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon)** - Quick file navigation
- **[ggandor/leap.nvim](https://github.com/ggandor/leap.nvim)** - Lightning-fast motions
- **[LintaoAmons/bookmarks.nvim](https://github.com/LintaoAmons/bookmarks.nvim)** - Persistent bookmarks

### 💻 LSP & Completion

- **[neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** - LSP configurations
- **[williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)** - LSP server manager
- **[williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)** - Mason-lspconfig bridge
- **[saghen/blink.cmp](https://github.com/saghen/blink.cmp)** - Fast completion engine
- **[L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)** - Snippet engine
- **[rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)** - Snippet collection

### 🤖 AI & Productivity

- **[zbirenbaum/copilot.lua](https://github.com/zbirenbaum/copilot.lua)** - GitHub Copilot integration
- **[folke/which-key.nvim](https://github.com/folke/which-key.nvim)** - Key binding help
- **[windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)** - Auto close brackets
- **[numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)** - Smart commenting

### 🔧 Code Quality & Formatting

- **[stevearc/conform.nvim](https://github.com/stevearc/conform.nvim)** - Code formatting
- **[mfussenegger/nvim-lint](https://github.com/mfussenegger/nvim-lint)** - Linting support
- **[folke/trouble.nvim](https://github.com/folke/trouble.nvim)** - Diagnostics list
- **[nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Syntax highlighting

### 🌿 Git Integration

- **[lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)** - Git decorations
- **[tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)** - Git commands
- **[rbong/vim-flog](https://github.com/rbong/vim-flog)** - Git branch viewer
- **[f-person/git-blame.nvim](https://github.com/f-person/git-blame.nvim)** - Git blame information

### 🔗 Terminal & Utilities

- **[akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)** - Terminal management
- **[folke/lazydev.nvim](https://github.com/folke/lazydev.nvim)** - Development utilities
- **[nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)** - Lua utilities
- **[MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)** - UI components
- **[echasnovski/mini.icons](https://github.com/echasnovski/mini.icons)** - Icon provider

### 📚 Dependencies & Helpers

- **[kkharji/sqlite.lua](https://github.com/kkharji/sqlite.lua)** - SQLite bindings
- **[stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)** - Better UI elements
- **[GeorgesAlkhouri/nvim-aider](https://github.com/GeorgesAlkhouri/nvim-aider)** - AI development assistant

## 📁 Configuration Structure

```
~/.config/nvim/
├── init.lua                 # Main entry point
├── lazy-lock.json          # Plugin version lockfile
├── lua/
│   ├── core/               # Core configuration
│   │   ├── settings.lua    # Vim settings and options
│   │   ├── keybindings.lua # Custom key mappings
│   │   └── lazy.lua        # Lazy.nvim setup
│   └── plugins/            # Plugin configurations
│       ├── autopairs.lua
│       ├── blink.lua
│       ├── bookmarks.lua
│       ├── bufferline.lua
│       ├── colorschema.lua
│       ├── conform.lua
│       ├── copilot.lua
│       ├── dashboard-nvim.lua
│       ├── figitive.lua
│       ├── gc.lua
│       ├── git-blame.lua
│       ├── gitsigns.lua
│       ├── harpoon.lua
│       ├── leap.lua
│       ├── lsp.lua
│       ├── lualine.lua
│       ├── mason.lua
│       ├── neo-tree.lua
│       ├── nvim-lint.lua
│       ├── telescope.lua
│       ├── toggleterm.lua
│       ├── treesitter.lua
│       ├── trouble.lua
│       └── which-key.lua
└── README.md               # This file
```

## ⚙️ Customization

### Adding New Plugins

Create a new file in `lua/plugins/` or add to an existing file:

```lua
return {
    {
        "author/plugin-name",
        config = function()
            -- Plugin configuration
        end
    }
}
```

### Modifying Key Bindings

Edit `lua/core/keybindings.lua` to add or modify key mappings:

```lua
local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true, noremap = true })
end

map("n", "<your-key>", "<your-command>")
```

### Changing Colorscheme

Edit `lua/plugins/colorschema.lua` to switch themes or modify the current one.

## 🐛 Troubleshooting

### Common Issues

1. **Icons not displaying**: Install a Nerd Font and configure your terminal
2. **LSP not working**: Run `:Mason` to install language servers
3. **Slow startup**: Check `:Lazy profile` for plugin loading times
4. **Key binding conflicts**: Check `:checkhealth` for conflicts

### Getting Help

- Use `:checkhealth` to diagnose issues
- Check `:Lazy` for plugin status
- Use `:WhichKey` to see available key bindings
- Check individual plugin documentation for specific issues

## 📄 License

This configuration is open source and available under the MIT License.

---

**Enjoy coding with Neovim! 🎉**
