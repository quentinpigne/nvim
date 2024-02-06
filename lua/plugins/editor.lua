return {
  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- Automatically add closing tags for HTML and JSX
  {
    'windwp/nvim-ts-autotag',
    event = { 'BufReadPost', 'BufNewFile', 'BufWritePre' },
    opts = {},
  },

  -- Automatically close brackets
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
  },

  -- Rename a variable
  {
    'smjonas/inc-rename.nvim',
    config = function()
      require("inc_rename").setup()
    end,
  },
}
