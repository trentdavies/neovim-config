-- Clear highlights on search
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- get out of terminal mode
vim.keymap.set('t', '<Esc><Esc>', [[<C-\><C-N>]], { silent = true })

-- custom mappings
vim.keymap.set('n', '<leader>q', ':close<CR>', { desc = 'Quit window' })
vim.keymap.set('n', '<leader>t', ':tabnew<CR>', { desc = 'New [T]ab' })
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', { desc = 'New [V]ertical Window' })
vim.keymap.set('n', '<leader>h', ':split<CR>', { desc = 'New [H]oriz Window' })

vim.keymap.set('n', '<S-C-l>', 'gt', { desc = 'go to next tab' })
vim.keymap.set('n', '<S-C-h>', 'gT', { desc = 'go to prev tab' })

vim.keymap.set('i', 'jj', '<Esc>', { silent = true })
vim.keymap.set('i', 'jk', '<Esc>', { silent = true })
vim.keymap.set('c', 'jj', '<C-c>', { silent = true })
vim.keymap.set('c', 'jk', '<C-c>', { silent = true })

-- Diagnostic keymaps
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
-- resize windows
vim.keymap.set('n', '<A-h>', '<C-w><')
vim.keymap.set('n', '<A-l>', '<C-w>>')
vim.keymap.set('n', '<A-k>', '<C-w>+')
vim.keymap.set('n', '<A-j>', '<C-w>-')
--

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
