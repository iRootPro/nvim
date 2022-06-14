local telescope = require("telescope")
local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup{
  defaults = {
    file_ignore_patterns = {
      "node_modules"
    }
  },
  pickers = {
    find_files = {
      theme = "ivy",
    }
  }
}

require("telescope").setup {
  extensions = {
    file_browser = {
      -- theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          ["<S-N>"] = fb_actions.create,
          ["<S-R>"] = fb_actions.rename,
          ["<S-D>"] = fb_actions.remove
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
}

telescope.load_extension("git_worktree")
telescope.load_extension("file_browser")

vim.api.nvim_set_keymap('n', '<C-P>', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-F>', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-B>', "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-T>', "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-G>', "<cmd>lua require('telescope.builtin').git_branches()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fb', ":Telescope file_browser<CR>", { noremap = true })

