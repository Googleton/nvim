local nnoremap = require("hv.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>") -- File explore
nnoremap("<leader>q", "<cmd>q<CR>") -- Shortcut close... may remove later
nnoremap("<leader>w", "<cmd>w<CR>") -- Shortcut save... may also remove

nnoremap("<leader>ff", "<cmd>Telescope git_files<CR>") -- I use git files instead of find files cuz it avoids .gitignored stuff and .git folder :) 
nnoremap("<leader>gf", "<cmd>Telescope find_files<CR>") -- In the unlikely case I'm outside of a git repo...
nnoremap("<leader>fb", "<cmd>Telescope file_browser<CR>") 

nnoremap("<leader>h", "<cmd>tabp<CR>")
nnoremap("<leader>l", "<cmd>tabn<CR>")

nnoremap("<leader>s", "<cmd>vsplit | lua vim.lsp.buf.definition()<CR>")
