-- My customized Obsidian installation and configuration
--
-- See the kickstart.nvim README for more information

vim.opt.conceallevel = 1

return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = 'markdown',
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',
    -- 'hrsh7th/nvim-cmp',
    -- 'nvim-telescope/telescope.nvim',
    -- 'nvim-treesitter/nvim-treesitter',
  },
  -- Key mappings that will also load the plugin if not loaded.
  keys = {
    { '<leader>so', '<cmd>ObsidianQuickSwitch<cr>', desc = '[S]earch [O]bsidian for note.' },
    { '<leader>nn', '<cmd>ObsidianNew<cr>', desc = 'Create a [n]ew [n]ote.' },
  },
  opts = {
    workspaces = {
      {
        name = 'personal',
        path = '/media/alex/Windows/Documents and Settings/alexr/Dropbox/backup/home/Documents/vimwiki',
      },
    },
    -- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
    completion = {
      -- Set to false to disable completion.
      nvim_cmp = true,
    },

    templates = {
      subdir = 'Templates',
      date_format = '%Y-%m-%d',
      time_format = '%H:%M',
      -- A map for custom variables, the key should be the variable and the value a function
      substitutions = {},
    },

    -- Customize how names/IDs for new notes are created.
    note_id_func = function(title)
      if title == nil then
        title = tostring(os.time())
      end
      return title
    end,
  },
}
