vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.cmd("set nowrap")
vim.g.mapleader = " "

-- Better yank and paste
vim.keymap.set({"n", "v"}, "<leader>p", "\"+p") -- paste from clipboard
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y") -- yank to clipboard

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Map ctrl c to escape
vim.cmd("inoremap <c-c> <esc>")

-- Caseinsensitive search
vim.cmd("set ignorecase")
