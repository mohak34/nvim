return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      {
        '<leader>a',
        function()
          require('harpoon'):list():add()
        end,
        desc = 'Harpoon add file',
      },
      {
        '<C-e>',
        function()
          require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())
        end,
        desc = 'Open harpoon window',
      },
      {
        '<leader>1',
        function()
          require('harpoon'):list():select(1)
        end,
        desc = 'Harpoon to file 1',
      },
      {
        '<leader>2',
        function()
          require('harpoon'):list():select(2)
        end,
        desc = 'Harpoon to file 2',
      },
      {
        '<leader>3',
        function()
          require('harpoon'):list():select(3)
        end,
        desc = 'Harpoon to file 3',
      },
      {
        '<leader>4',
        function()
          require('harpoon'):list():select(4)
        end,
        desc = 'Harpoon to file 4',
      },
      {
        '<C-S-P>',
        function()
          require('harpoon'):list():prev()
        end,
        desc = 'Harpoon previous',
      },
      {
        '<C-S-N>',
        function()
          require('harpoon'):list():next()
        end,
        desc = 'Harpoon next',
      },
    },
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup() -- REQUIRED
    end,
  },
}
