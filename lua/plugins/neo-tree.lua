return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false, -- show dotfiles like .env, .gitignore
        hide_gitignored = false, -- show files ignored by git
      },
    },
  },
}
