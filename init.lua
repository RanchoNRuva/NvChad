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

require("utils").hideStuff()

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

