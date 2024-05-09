return {
  'EdenEast/nightfox.nvim',
  priority = 1000,
  config = function()
    require('nightfox').setup {
      options = {
        transparent = true, -- Disable setting background
        dim_inactive = true, -- Non focused panes set to alternative background
      },
    }
  end,
  init = function()
    vim.cmd.colorscheme 'nightfox'
  end,
}
