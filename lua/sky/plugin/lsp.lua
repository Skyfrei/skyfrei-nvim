return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },

    config = function()
    local lsp = vim.lsp
    local lsp_table = {'clangd'}
 
    for _, server_name in ipairs(lsp_table) do
        lsp.enable(server_name)
--        lsp.config[server_name] = {
--            cmd = {server_name},
--        }
    end

    local cmp = require('cmp')
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    cmp.setup({
        snippet = {
            expand = function(args)
                require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            end,
        },
        mapping = cmp.mapping.preset.insert({
            ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
            ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
        }),
        sources = cmp.config.sources({
            { name = 'nvim_lsp' },
        })
    })

    end
  },
}
