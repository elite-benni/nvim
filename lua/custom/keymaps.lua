-- [[ Basic keymaps ]]
--  See `:help vim.keymap.set()`
vim.keymap.set('n', '-', '<cmd>Oil --float<CR>', { desc = 'Open Parent Directory in Oil' })
vim.keymap.set('n', '<Leader>da', function()
  vim.cmd ':%d_'
end, { noremap = true, silent = true, desc = 'Delete all lines without yanking' })
vim.keymap.set('n', '<Leader>dy', function()
  vim.cmd ':%d'
end, { noremap = true, silent = true, desc = 'Delete all lines with yanking' })

vim.keymap.set('n', 'gl', function()
  vim.diagnostic.open_float()
end, { desc = 'Open Diagnostics in Float' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.keymap.set({ 'i', 'n', 'v', 's', 'o' }, '…', '<Esc>', opts)

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

-- 1. Map Ctrl + s to save the current file
-- In Normal mode
vim.keymap.set('n', '<C-s>', '<Cmd>write<CR>', {
  desc = 'Save file',
  noremap = true,
  silent = true,
})

-- In Insert mode (exits to Normal, saves, then returns to Insert)
vim.keymap.set('i', '<C-s>', '<Esc><Cmd>write<CR>', {
  desc = 'Save file',
  noremap = true,
  silent = true,
})

vim.keymap.set('n', 'K', '<CMD>Lspsaga hover_doc<CR>', { buffer = bufnr, desc = 'LSP Hover Docs' })
-- 2. Map Ctrl + Alt + s for "signature"
-- This is typically used in Insert mode
vim.keymap.set('i', '<C-A-s>', vim.lsp.buf.signature_help, {
  desc = 'LSP: Signature Help',
  noremap = true,
  silent = true,
})

vim.keymap.set('n', '<leader>p', '<cmd>pu<CR>', { desc = 'Paste one line below' })
