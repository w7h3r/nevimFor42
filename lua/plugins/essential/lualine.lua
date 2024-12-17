return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        theme = 'auto',
        section_separators = {'', ''},
        component_separators = {'', ''},
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {'diagnostics', 'encoding', 'fileformat'},
        lualine_y = {'progress'},
        lualine_z = {'location'},
      },
      inactive_sections = {},
      extensions = {'fugitive', 'nvim-tree'}
    })
  end
}

