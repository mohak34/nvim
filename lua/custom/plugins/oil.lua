return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {default_file_explorer = false, view_options = { show_hidden = true },},
    -- Optional: Add a keymap to open oil
    keys = {
      { '-', '<CMD>Oil<CR>', desc = 'Open parent directory' },
      { '\\', '<CMD>Oil<CR>', desc = 'Open oil in current directory' },
    },
    -- Optional dependencies
    dependencies = {
      { 'echasnovski/mini.icons', opts = {} },
      -- { 'nvim-tree/nvim-web-devicons', opts = {} },
    },
    lazy = false,
  },
}
