--
-- Globals
vim.g.mapleader=","
vim.cmd("set noexpandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.o.smartindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set nowrap")

--
-- Insert Mode
--
vim.cmd("imap jj <Esc>")

--
-- Normal Mode
--

-- Navegation
vim.cmd("noremap <leader>h <C-w>h") -- Move to left pane
vim.cmd("noremap <leader>j <C-w>j") -- Move to down pane
vim.cmd("noremap <leader>k <C-w>k") -- Move to up pane
vim.cmd("noremap <leader>l <C-w>l") -- Move to right pane

-- Tabs
vim.cmd("noremap <Tab> :tabnext<CR>")
vim.cmd("noremap <S-Tab> :tabprevious<CR>")

-- windows
vim.cmd("noremap <leader>nv :vs<cr>") -- Create new vertical window
vim.cmd("noremap <leader>nh :sp<cr>") -- Create new horizonl window
vim.cmd("noremap <leader>= <C-w>=") -- Create new horizonl window

-- Code
vim.cmd("noremap <A-/> :Commentary<cr>") -- Create new horizonl window
