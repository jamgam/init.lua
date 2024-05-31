return {
  'akinsho/bufferline.nvim', -- https://github.com/akinsho/bufferline.nvim
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  event = 'VeryLazy',
  opts = { -- :h bufferline-configuration
    options = {
      -- stylua: ignore
      close_command = function(n) require('util.ui').bufremove(n) end,
      -- stylua: ignore
      right_mouse_command = function(n) require('util.ui').bufremove(n) end,
      diagnostics = 'nvim_lsp',
      always_show_bufferline = false,
      show_close_icon = false,
      offsets = {
        {
          filetype = 'neo-tree',
          text = 'Neo-tree',
          highlight = 'Directory',
          text_align = 'left',
        },
      },
    },
  },
  keys = {
    { '<leader>bp', ':BufferLineTogglePin<CR>', desc = 'Toggle [P]in' },
    { '<leader>bP', ':BufferLineGroupClose ungrouped<CR>', desc = 'Delete Non-[P]inned Buffers' },
    { '<leader>bo', ':BufferLineCloseOthers<CR>', desc = 'Delete [O]ther Buffers' },
    { '<leader>br', ':BufferLineCloseRight<CR>', desc = 'Delete Buffers to the [R]ight' },
    { '<leader>bl', ':BufferLineCloseLeft<CR>', desc = 'Delete Buffers to the [L]eft' },
    { '<A-1>', ':BufferLineGoToBuffer 1<CR>', desc = 'Goto BufferLine 1' },
    { '<A-2>', ':BufferLineGoToBuffer 2<CR>', desc = 'Goto BufferLine 2' },
    { '<A-3>', ':BufferLineGoToBuffer 3<CR>', desc = 'Goto BufferLine 3' },
    { '<A-4>', ':BufferLineGoToBuffer 4<CR>', desc = 'Goto BufferLine 4' },
    { '<A-5>', ':BufferLineGoToBuffer 5<CR>', desc = 'Goto BufferLine 5' },
    { '<A-6>', ':BufferLineGoToBuffer 6<CR>', desc = 'Goto BufferLine 6' },
    { '<A-7>', ':BufferLineGoToBuffer 7<CR>', desc = 'Goto BufferLine 7' },
    { '<A-8>', ':BufferLineGoToBuffer 8<CR>', desc = 'Goto BufferLine 8' },
    { '<A-9>', ':BufferLineGoToBuffer 9<CR>', desc = 'Goto BufferLine 9' },
    { '<A-w>', require('util.ui').bufremove, desc = 'Delete Current Buffer' },
  },
  config = function(_, opts)
    require('bufferline').setup(opts)

    -- Fix bufferline when restoring a session
    vim.api.nvim_create_autocmd({ 'BufAdd', 'BufDelete' }, {
      callback = function()
        vim.schedule(function()
          pcall(nvim_bufferline)
        end)
      end,
    })
  end,
}
