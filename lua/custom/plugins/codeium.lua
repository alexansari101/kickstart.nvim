return {
  {
    'Exafunction/codeium.nvim',
    cmd = { 'CodeiumEnable' },
    dependencies = { 'nvim-lua/plenary.nvim', 'hrsh7th/nvim-cmp' },
    config = function()
      require('codeium').setup {}
      -- local config = require 'codeium.config'
      -- config.options.enable_chat = true
    end,
  },
}
