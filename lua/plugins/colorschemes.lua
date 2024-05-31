return {
  'folke/tokyonight.nvim',
  init = function()
    -- Load the colorscheme here.
    -- Like many other themes, this one ha different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    vim.cmd.colorscheme 'tokyonight-night'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
  end,
}
