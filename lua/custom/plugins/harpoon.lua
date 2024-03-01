return {
  {
    'ThePrimeagen/harpoon',
    config = function()
      local harpoon = require 'harpoon'

      harpoon.setup {}

      vim.keymap.set('n', '<leader>a', require('harpoon.mark').add_file, { desc = 'Harpoon [a]dd file.' })
      vim.keymap.set('n', '<C-e>', require('harpoon.ui').toggle_quick_menu, { desc = 'Harpoon toggle quick menu.' })

      vim.keymap.set('n', '<C-h>', function()
        require('harpoon.ui').nav_file(1)
      end, { desc = 'Harpoon navigate to [h]ome file.' })

      -- for i = 1, 5 do
      --   vim.keymap.set('n', string.format('<leader>%s', i), function()
      --     require('harpoon.ui').nav_file(i)
      --   end, { desc = 'Harpoon navigate to file number.' })
      -- end
    end,
  },
}
