return {
  {
    'Exafunction/windsurf.vim',
    event = 'BufEnter',
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set('i', '<C-y>', function()
        return vim.fn['codeium#Accept']()
      end, { expr = true, silent = true })
    end,
  },
}
