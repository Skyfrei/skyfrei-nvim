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
        local buffer_stack = {}
        local on_attach =  function(client, bufnr)
            vim.keymap.set('n', 'gd', lsp.buf.declaration)
            vim.keymap.set('n', 'gD', lsp.buf.definition)
            vim.keymap.set('n', 'lr', lsp.buf.references)
        end

        local lsp_table = {'clangd'}
 
        for _, server_name in ipairs(lsp_table) do
            lsp.config[server_name] = {
                on_attach = on_attach,
            }
            
            lsp.enable(server_name)

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
