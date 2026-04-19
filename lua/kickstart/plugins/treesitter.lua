return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = { 'neovim-treesitter/treesitter-parser-registry' },
    lazy = false,
    build = ':TSUpdate',
    init = function()
      -- Install parsers
      local parsers = {
        'bash',
        'c',
        'comment',
        'cpp',
        'css',
        'diff',
        'go',
        'gomod',
        'gosum',
        'gotmpl',
        'gowork',
        'html',
        'java',
        'javascript',
        'json',
        'lua',
        'markdown',
        'markdown_inline',
        'python',
        'rust',
        'sql',
        'svelte',
        'toml',
        'tsx',
        'typescript',
        'vim',
        'vimdoc',
        'yaml',
      }
      local ts = require('nvim-treesitter')
      if ts.install then
        ts.install(parsers)
      end

      -- Enable treesitter highlighting and indentation per filetype
      vim.api.nvim_create_autocmd('FileType', {
        callback = function()
          pcall(vim.treesitter.start)
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
