return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      json = { "prettier" },
      markdown = { "prettier" },
      yaml = { "prettier" },
      cpp = { "clang-format" },
      c = { "clang-format" },
      solidity = { "prettier" },
      php = { "pint" },
      blade = { "blade-formatter" },
    },
  },
}
