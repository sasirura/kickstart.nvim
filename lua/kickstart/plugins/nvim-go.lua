return {
    'crispgm/nvim-go',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'neovim/nvim-lspconfig'
    },
    config = function()
     local go = require('go')
     go.setup{
        vim.keymap.set('n', '<leader>ge', ':GoIfErr<CR>', { desc = '[Go] [I]nsert error' })
     }
     go.config.update_tool('quicktype', function(tool)
        tool.pkg_mgr = 'pnpm'
     end)
    end,
}