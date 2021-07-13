-- load all plugins
require "pluginList"
require "options"
require "plugins.bufferline"

local g = vim.g

g.mapleader = " "
g.auto_save = false

-- colorscheme related stuff

g.nvchad_theme = "gruvbox"
local base16 = require "base16"
base16(base16.themes["nvchad-softgruv"], true)

require "highlights"
require "mappings"

-- hide line numbers , statusline in specific buffers!
vim.api.nvim_exec(
    [[
   au BufEnter term://* setlocal nonumber
   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif
   au BufEnter term://* set laststatus=0 
]],
    false
)

require('orgmode').setup({
    org_agenda_files = {'~/OneDrive/Desktop/org/agenda/*'},
    org_default_notes_file = '~/OneDrive/Desktop/org/notes.org',
})  
local neogit = require('neogit')

neogit.setup {}
--require'lspconfig'.tsserver.setup{}
--require'lspconfig'.html.setup{}
--require'lspconfig'.cssls.setup{}
--require'lspconfig'.jsonls.setup{}
require("utils").hideStuff()
