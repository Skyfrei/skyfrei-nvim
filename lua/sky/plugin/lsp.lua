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
        "clang-format",       -- C/C++ formatter
        "rust-analyzer", 
        "nixd",
      },
        automatic_installation = true,
    },

    config = function()
    vim.diagnostic.config({
            virtual_text = true,
            signs = true,
            --underline = true,
            autocomplete = true,
        })

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

      -- Python
      lspconfig.pylsp.setup({
        capabilities = capabilities,
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
--  {
--    "williamboman/mason.nvim",
--    cmd = "Mason",
--    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
--    build = ":MasonUpdate",
--    opts = {
--      ensure_installed = {
--        "clang-format",       -- C/C++ formatter
--        "black",             -- Python formatter
--        "stylua",            -- Lua formatter
--        "lua-language-server", -- Lua
--        "rust-analyzer", 
--        "pylsp",        -- Python
--      },
--        automatic_installation = true,
--    },
--  },

}
