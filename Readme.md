# Neovim

Personal Neovim configuration for macOS, built on [lazy.nvim](https://github.com/folke/lazy.nvim).

- Catppuccin Frappé
- Native LSP via Mason and nvim-lspconfig
- Telescope, Treesitter, blink.cmp
- Neo-tree lazy-loaded on demand
- Formatting and linting on save

## Requirements

- Neovim 0.12+ (required by blink.cmp)
- Git, `make`, and a C compiler
- A [Nerd Font](https://www.nerdfonts.com/) for icons
- `ripgrep` for Telescope live grep
- Node.js for Prettier/ESLint and some language servers

## Install

```bash
mv ~/.config/nvim ~/.config/nvim.backup  # optional
git clone https://github.com/arekko/nvimconfig.git ~/.config/nvim
nvim
```

lazy.nvim bootstraps itself and installs plugins on first launch. Use `:Lazy` to manage plugins and `:Mason` to install language servers.

## Structure

```
~/.config/nvim
├── init.lua
├── lazy-lock.json
└── lua
    ├── core
    │   ├── settings.lua
    │   ├── keybindings.lua
    │   └── lazy.lua
    └── plugins/*.lua
```

## Keymaps

Leader is `Space`. Only the main custom mappings are listed.

### General

| Key | Action |
| --- | --- |
| `jj` | Exit insert mode |
| `<D-s>` | Save (macOS) |
| `<C-t>` | Toggle terminal |
| `<C-s>` / `<C-s><C-h>` | Vertical / horizontal split |
| `<C-h>` `<C-j>` `<C-k>` `<C-l>` | Move between windows |
| `<leader>zz` | Toggle no-neck-pain |

### Files and search

| Key | Action |
| --- | --- |
| `<leader>1` | Neo-tree (left) |
| `<leader>e` | Neo-tree (float) |
| `<leader>sf` | Find files |
| `<leader>sg` | Live grep |
| `<leader>sw` | Grep current word |
| `<leader>sh` | Help tags |
| `<leader>sd` | Diagnostics |
| `<leader><space>` | Buffers |
| `<leader>?` | Recent files |
| `<leader>/` | Fuzzy search current buffer |
| `<leader>hl` | Harpoon marks in Telescope |

### Harpoon and buffers

| Key | Action |
| --- | --- |
| `<leader>H` | Add file to Harpoon |
| `<leader>h` | Open Harpoon menu |
| `<leader>2`–`9` | Jump to Harpoon file (`1` is Neo-tree) |
| `<Tab>` / `<S-Tab>` | Next / previous buffer |
| `<leader>w` | Pick buffer to close |
| `<C-w>` | Close other buffers |

### LSP

| Key | Action |
| --- | --- |
| `gd` / `gr` / `gi` | Definition / references / implementation |
| `K` | Hover documentation |
| `<C-h>` (insert) | Signature help |
| `<leader>ca` | Code action |
| `<leader>vrn` | Rename symbol |
| `<leader>fo` | Format buffer |
| `<leader>vd` / `<leader>vh` | Diagnostic float |
| `[d` / `]d` | Next / previous diagnostic |
| `<leader>vs` / `<leader>df` | Workspace / document symbols |
| `<leader>ic` / `<leader>oc` | Incoming / outgoing calls |

### Trouble

| Key | Action |
| --- | --- |
| `<leader>qq` | Diagnostics |
| `<leader>xX` | Buffer diagnostics |
| `<leader>cs` | Symbols |
| `<leader>cl` | LSP panel |
| `<leader>xL` / `<leader>xQ` | Location / quickfix list |

## Plugins

**Theme and UI** — catppuccin, lualine, bufferline, noice, nvim-notify, mini.icons, nvim-web-devicons, no-neck-pain.

**Navigation** — telescope, telescope-fzf-native, neo-tree, harpoon.

**LSP and completion** — nvim-lspconfig, mason, mason-lspconfig, blink.cmp, LuaSnip, friendly-snippets, typescript-tools, lazydev.

**Parsing** — nvim-treesitter, treesitter-textobjects, treesitter-context, nvim-ts-autotag, treesitter-modules.

**Editing and quality** — nvim-autopairs, Comment.nvim, conform.nvim, nvim-lint, trouble.nvim, which-key.

**Git** — gitsigns, vim-fugitive, vim-flog, git-blame, gitlinker.

**Terminal** — toggleterm.

## Notes

- Conform formats on save; nvim-lint lints on save. Use `:Format` to format manually.
- Neo-tree does not open at startup; it lazy-loads with `<leader>1` or `<leader>e`.
- Edit options in `lua/core/settings.lua`, mappings in `lua/core/keybindings.lua`, and the theme in `lua/plugins/colorschema.lua`.
