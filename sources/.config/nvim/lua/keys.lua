

---- helper functions ----
local scopes = {o = vim.o, b = vim.bo, w = vim.wo, g = vim.g}
local function opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end


vim.keymap.set('n', '<F5>', ':NERDTreeToggle<CR>')
vim.keymap.set('n', '<F6>', ':NERDTreeFind<CR>')
-- wikivim
vim.keymap.set('n', '<leader><CR>', ':VimwikiTabnewLink<CR>')
vim.keymap.set('n', '<leader>v<CR>', ':VimwikiVSplitLink<CR>')
vim.keymap.set('n', '<leader>s<CR>', ':VimwikiSplitLink<CR>')

-- Tab navigation
vim.keymap.set('n', '<c-L>', 'gt')
vim.keymap.set('n', '<c-H>', 'gT')

-- Command remappings
vim.api.nvim_create_user_command('W', 'w', {})
vim.api.nvim_create_user_command('WQ', 'wq', {})
vim.api.nvim_create_user_command('Wq', 'wq', {})
vim.api.nvim_create_user_command('W', 'w', {})
vim.api.nvim_create_user_command('Q', 'q', {})
vim.api.nvim_create_user_command('WA', 'wa', {})
vim.api.nvim_create_user_command('Wa', 'wa', {})

-- Auto-strip trailing whitespace
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

