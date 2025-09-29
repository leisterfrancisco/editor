-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("telescope").setup({
  defaults = {
    -- Show files even if they are in .gitignore
    file_ignore_patterns = {}, -- don’t filter anything
  },
  pickers = {
    find_files = {
      no_ignore = true, -- always include gitignored files
      hidden = true, -- also show dotfiles
    },
  },
})

vim.opt.wrap = true
