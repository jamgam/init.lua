local set = vim.keymap.set

set('n', '<leader>l', ':Lazy<cr>', { desc = 'Lazy' })
set('n', '<leader>qq', ':qa<cr>', { desc = 'Quit' })

set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- save file
set({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save File' })
set({ 'i', 'x', 'n', 's' }, '<A-s>', '<cmd>w<cr><esc>', { desc = 'Save File' })

-- vertical movement
set('n', '<C-d>', '15j', { desc = 'Move down 15 lines' })
set('n', '<C-u>', '15k', { desc = 'Move up 15 lines' })

-- move lines
set('n', '<A-Down>', '<cmd>m .+1<cr>==', { desc = 'Move Down' })
set('n', '<A-Up>', '<cmd>m .-2<cr>==', { desc = 'Move Up' })
set('i', '<A-Down>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move Down' })
set('i', '<A-Up>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move Up' })
set('v', '<A-Down>', ":m '>+1<cr>gv=gv", { desc = 'Move Down' })
set('v', '<A-Up>', ":m '<-2<cr>gv=gv", { desc = 'Move Up' })
set('n', '<A-j>', '<cmd>m .+1<cr>==', { desc = 'Move Down' })
set('n', '<A-k>', '<cmd>m .-2<cr>==', { desc = 'Move Up' })
set('i', '<A-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move Down' })
set('i', '<A-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move Up' })
set('v', '<A-j>', ":m '>+1<cr>gv=gv", { desc = 'Move Down' })
set('v', '<A-k>', ":m '<-2<cr>gv=gv", { desc = 'Move Up' })

-- move intuitive search word under cursor
set('n', '*', '*N', { desc = 'Search word under cursor staying on word', remap = true })

-- buffers
set('n', '<S-Tab>', ':bprev<CR>', { noremap = true, silent = true })
set('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })

-- easy commenting
set('n', '<A-/>', 'gcc', { remap = true })
set('v', '<A-/>', 'gc', { remap = true })
set('i', '<A-/>', '<cmd>normal gc<CR>i', { remap = true })

-- fix weird behavior with shift + arrow keys
set('', '<S-Down>', '<Down>')
set('', '<S-Up>', '<Up>')
set('', '<S-Left>', '<Left>')
set('', '<S-Right>', '<Right>')

-- move to window using the <ctrl> hjkl keys
set('n', '<C-Left>', '<C-w>h', { desc = 'Go to Left Window', remap = true })
set('n', '<C-Down>', '<C-w>j', { desc = 'Go to Lower Window', remap = true })
set('n', '<C-Up>', '<C-w>k', { desc = 'Go to Upper Window', remap = true })
set('n', '<C-Right>', '<C-w>l', { desc = 'Go to Right Window', remap = true })

-- resize window using <ctrl> arrow keys
set('n', '<C-k>', '<cmd>resize +2<cr>', { desc = 'Increase Window Height' })
set('n', '<C-j>', '<cmd>resize -2<cr>', { desc = 'Decrease Window Height' })
set('n', '<C-h>', '<cmd>vertical resize -2<cr>', { desc = 'Decrease Window Width' })
set('n', '<C-l>', '<cmd>vertical resize +2<cr>', { desc = 'Increase Window Width' })

-- replace
set('v', '<leader>rr', ':s/<c-r>"//g<Left><Left>', { desc = 'Replace' })

-- saner behavior of n and N, n always serach forward and N always search backward
-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
set('n', 'n', "'Nn'[v:searchforward].'zv'", { expr = true, desc = 'Next Search Result' })
set('x', 'n', "'Nn'[v:searchforward]", { expr = true, desc = 'Next Search Result' })
set('o', 'n', "'Nn'[v:searchforward]", { expr = true, desc = 'Next Search Result' })
set('n', 'N', "'nN'[v:searchforward].'zv'", { expr = true, desc = 'Prev Search Result' })
set('x', 'N', "'nN'[v:searchforward]", { expr = true, desc = 'Prev Search Result' })
set('o', 'N', "'nN'[v:searchforward]", { expr = true, desc = 'Prev Search Result' })

-- better indenting
set('v', '<', '<gv')
set('v', '>', '>gv')
