-- plugins/solidity.lua
return {
  -- LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        solidity = {
          cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
          filetypes = { "solidity" },
        },
      },
    },
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "solidity" })
    end,
  },

  -- Linting with solhint
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = { solidity = { "solhint" } },
    },
    config = function(_, opts)
      require("lint").linters_by_ft = opts.linters_by_ft
      vim.api.nvim_create_autocmd({ "BufEnter", "InsertLeave", "TextChanged" }, {
        pattern = "*.sol",
        callback = function()
          require("lint").try_lint()
        end,
      })
    end,
  },
}
