vim.o.number = true -- Make line numbers default
vim.o.relativenumber = true -- relative line numbers, to help with jumping.
vim.o.mouse = 'a' -- mouse mode
vim.o.showmode = false
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus' -- sync to mac
end)

vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = 'yes' -- Keep signcolumn on by default
vim.o.updatetime = 250 -- Decrease update time
vim.o.timeoutlen = 300 -- Decrease mapped sequence wait time
vim.o.backup = false -- creates a backup file
vim.o.writebackup = false
vim.o.swapfile = false -- creates a swapfile
-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.o.inccommand = 'split' -- Preview substitutions live, as you type!

vim.o.cursorline = true -- Show which line your cursor is on

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true

-- Soft wrap
-- vim.opt.wrap = true
-- vim.opt.linebreak = true
-- vim.opt.breakindent = true
-- vim.opt.showbreak = "↳ "
-- vim.opt.whichwrap:append("<,>,[,],h,l")

-- vim.o.numberwidth = 4 -- set number column width to 2 {default 4}
vim.o.smartindent = true -- make indenting smarter again
-- vim.o.showmode = false -- we don't need to see things like -- INSERT -- anymore
-- vim.o.showtabline = 1 -- show if there are at least two tabs
vim.o.backspace = 'indent,eol,start' -- allow backspace on
vim.o.pumheight = 10 -- pop up menu height
vim.o.conceallevel = 1 -- so that `` is visible in markdown files
vim.o.fileencoding = 'utf-8' -- the encoding written to a file
vim.o.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.o.autoindent = true -- copy indent from current line when starting new one
-- vim.opt.shortmess:append 'c' -- don't give |ins-completion-menu| messages
-- vim.opt.iskeyword:append '-' -- hyphenated words recognized by searches
vim.opt.formatoptions:remove { 'c', 'r', 'o' } -- don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode.
vim.g.have_nerd_font = true

-- vim: ts=2 sts=2 sw=2 et
