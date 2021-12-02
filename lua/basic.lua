vim.g.mapleader = " "
vim.o.number  =true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.expandtab = true
vim.o.incsearch = true
vim.o.tabstop = 2
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 3
vim.o.errorbells = false
vim.o.shiftwidth = 2
vim.o.numberwidth = 4
vim.o.termguicolors = true
vim.o.colorcolumn = '80'
vim.o.showmode = false
vim.o.showtabline = 2
vim.o.signcolumn = 'yes'
vim.o.mouse = 'a'



-- key maps
vim.api.nvim_set_keymap('n', 'vs', ':vs<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'sp', ':sp<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-w>', ':bd!<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-t>', ':tabnew<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true })

-- emmet commands

vim.cmd([[let g:user_emmet_mode='a' ]])
vim.cmd([[let g:user_emmet_leader_key=',']])
vim.cmd([[let g:user_emmet_install_global = 0]])
vim.cmd([[autocmd FileType html,css EmmetInstall]])



-- move highlighted text above and down
vim.cmd([[vnoremap J :m '>+1<CR>gv=gv]])
vim.cmd([[vnoremap K :m '<-2<CR>gv=gv]])

-- autoclose 
vim.cmd([[inoremap " ""<left>]])
vim.cmd([[inoremap ' ''<left>]])
vim.cmd([[inoremap ( ()<left>]])
vim.cmd([[inoremap [ []<left>]])
vim.cmd([[inoremap { {}<left>]])
vim.cmd([[inoremap {<CR> {<CR>}<ESC>O]])
vim.cmd([[inoremap {;<CR> {<CR>};<ESC>O]])

