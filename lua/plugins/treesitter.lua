return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "make",
      "cpp",
      "css",
      "gitignore",
      "graphql",
      "http",
      "python",
      "sql",
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)

    -- MDX
    vim.filetype.add({
      extension = {
        mdx = "mdx",
      },
    })
    vim.treesitter.language.register("markdown", "mdx")
  end,
}
