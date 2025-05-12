return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
    build = ":MasonUpdate",
    opts = {
      ensure_installed = {
        "clang-format",       -- C/C++ formatter
        "rust-analyzer",      -- Rust
        "black",             -- Python formatter
        "stylua",            -- Lua formatter
        "lua-language-server", -- Lua
        "pylsp",        -- Python
      },
        automatic_installation = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        vim.diagnostic.config({
        virtual_text = false,  -- Disable inline diagnostics
        signs = false,         -- Disable gutter signs
        underline = false,     -- Disable underline
        update_in_insert = false,
        severity_sort = false,
        refreshSupport = false,
      })

      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local on_attach = function(client)
        client.server_capabilities.diagnosticProvider = false  -- Disable diagnostics
      end

      -- Python
      lspconfig.pylsp.setup({
        capabilities = capabilities,
      })
      -- Rust
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
      })
    end
  },
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    }
  },
}
