return {
  'ibhagwan/fzf-lua',
  -- optional for icon support
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    -- calling `setup` is optional for customization
    require('fzf-lua').setup {}
    local set = vim.keymap.set
    local fzf = require 'fzf-lua'

    set('n', '<leader>fp', fzf.builtin, { desc = '[F]ind [P]ickers' })
    set('n', '<leader><leader>', fzf.files, { desc = '[ ] Find Files' })
  end,
}
