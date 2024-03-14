return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { "css", "html", "javascript", "json", "lua", "markdown", "rust", "scss", "typescript", "vue", "yaml" },
        auto_install = true,
      })
    end
  },
}
