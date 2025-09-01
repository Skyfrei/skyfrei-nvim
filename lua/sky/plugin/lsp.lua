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
    opts = {
      ensure_installed = {
        "clang-format",
        "rust-analyzer",
        "nixd",
        "lua_ls"
      },
    automatic_installation = true,
    },

    config = function()

    local lspconfig = require("lspconfig")
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

    lspconfig.pylsp.setup({
      capabilities = capabilities,
    })

    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      on_attach = on_attach
    })

    lspconfig.rust_analyzer.setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig.nixd.setup({
      capabilities = capabilities,
      on_attach = on_attach,
      formatting = {
          command = { "nixd" },
      },
    })
    end
  },
}
