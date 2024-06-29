vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- for nvim tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.have_nerd_font = false
vim.opt.number = true
vim.opt.relativenumber = true
-- Enable mouse mode, can be useful for resizing splits for example!
--vim.opt.mouse = false
-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false
-- Enable break indent
vim.opt.breakindent = false
-- Save undo history
vim.opt.undofile = true
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300
-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true
-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true

vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"
-- Show which line your cursor is on
vim.opt.cursorline = true
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.opt.guicursor = ""
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard

vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
vim.opt.cursorlineopt = "number" -- highlight the current line

vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.pumheight = 19 -- pop up menu height
vim.opt.showtabline = 0 -- always show tabs
