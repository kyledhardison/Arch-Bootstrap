
---- helper functions ----
local scopes = {o = vim.o, b = vim.bo, w = vim.wo, g = vim.g}
local function opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end

local SHIFT = 4

opt('o', 'tabstop', SHIFT)
opt('o', 'shiftwidth', SHIFT)
opt('o', 'expandtab', true)
-- opt('o', 'background', "dark")
opt('o', 'number', true)
opt('o', 'relativenumber', true)
opt('o', 'scrolloff', 1)
opt('o', 'cursorline', true)
opt('o', 'autoindent', true)

-- Ignore case if search is all lowercase
opt('o', 'ignorecase', true)
opt('o', 'smartcase', true)

-- vsplits split right, splits split below
opt('o', 'splitright', true)
opt('o', 'splitbelow', true)

-- Use <space> as leader
opt('g', 'mapleader', " ")
opt('g', 'mouse', "a")

vim.opt.matchpairs:append {"<:>"}

--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.optshortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300)

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error
-- Show inlay_hints more frequently
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

