vim.keymap.set('n', '<leader>p', '<cmd>!open -a "Google Chrome" "%"<CR>')
vim.keymap.set('n', '<leader>o', '<cmd>!pandoc -s -N -o "%:r.html" "%" && open "%:r.html"<CR>')
vim.keymap.set('n', '<leader>r', '<cmd>!pandoc -s -N -o "%:r.html" "%"')
vim.bo.formatprg = 'pandoc -f gfm -t gfm --columns 100'
vim.api.nvim_create_autocmd({ 'TextChanged', 'InsertLeave' }, {
  pattern = { '*.md' },
  command = 'silent update',
})
