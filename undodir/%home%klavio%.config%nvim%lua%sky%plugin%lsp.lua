Vim�UnDo� b`I���-�#��%���`�#jq����{���   �                 "       "   "   "    g.1    _�                             ����                                                                                                                                                                                                                                                                                                                                                             g.w]    �                   �               5��                    $                      �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             g.wb    �          %      {5��                                                  5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             g.w�     �   	   
                "stylua",5��    	                      �                      5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             g.w�     �   	   
                "shfmt",5��    	                      �                      5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             g.w�     �   	      #          },5��    	                    �                      �    
                     �                     5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             g.w�     �   	      $          5��    	                     �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g.w�     �   
      $      
        },5��    
                     �                      5�_�      	              
       ����                                                                                                                                                                                                                                                                                                                                                             g.w�    �   	      $              5��    	                     �                      �    	                   �              	       �    
                     �                     �    
                      �                      �    	                     �                      5�_�      
           	   
       ����                                                                                                                                                                                                                                                                                                                                                             g.w�     �   	      $              "clangd",5��    	                    �               	       �    
                     �                     �    
                      �                      �    	                     �                      �    	                    �               	       �    
                     �                     �    
                      �                      �    	                     �                      5�_�   	              
   	       ����                                                                                                                                                                                                                                                                                                                                                             g.w�     �         $          ensure_installed = {5��                        �                      �    	                     �                     �    	                      �                      5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             g.w�     �   
      %              "clangd",5��    
                     �                      5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                             g.w�     �         %          ensure_installed = {    �   	      %       5��    	                      �                      �    	                      �                      �    	                      �                      �    
                      �                      �    
                      �                      �    	                      �                      �                         �                      �                        �                     �                        �                      �    	                     �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g.w�     �   
      %                  "clangd",5��    
                     �                      5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             g.w�     �   	      %                  "5��    	                     �                      5�_�                    
   	    ����                                                                                                                                                                                                                                                                                                                                                             g.w�     �   	      %      
         "5��    	                     �                      5�_�                    
   	    ����                                                                                                                                                                                                                                                                                                                                                             g.w�     �      
   %          ensure_installed = {    �   	      %      	        "5��    	           	           �       	               �                         �                      5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             g.w�     �   	      $              "clangd",5��    	                    �               	       �    
                     �                     �    
                    �                     5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             g.w�    �   
      %      
        ""5��    
   	                  �                      �    
                    �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g.w�     �   
      %              "lua_ls"5��    
                                   	       �                                              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g.w�     �         &          "5��                                               �    
                                           5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g.w�    �   
      %              "lua_ls"5��    
                                          �    
                                  	       �                                             �                     
                
       �                                      	       �                                             �                                            5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g.yF    �   
                     "lua_ls",5��    
                      �                      5�_�                          ����                                                                                                                                                                                                                                                                                                                                                             g.|P    �                '  opts_extend = { "ensure_installed" },5��                          �       (               5�_�                           ����                                                                                                                                                                                                                                                                                                                                      %          v   	    g.~�     �               %   return {         "williamboman/mason.nvim",     cmd = "Mason",   @  keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },     build = ":MasonUpdate",   
  opts = {       ensure_installed = {           "clangd",           "pyright",           "rust-analyzer"       },     },   =  ---@param opts MasonSettings | {ensure_installed: string[]}     config = function(_, opts)        require("mason").setup(opts)   (    local mr = require("mason-registry")   /    mr:on("package:install:success", function()         vim.defer_fn(function()   R        -- trigger FileType event to possibly load this newly installed LSP server   4        require("lazy.core.handler.event").trigger({             event = "FileType",   /          buf = vim.api.nvim_get_current_buf(),   
        })         end, 100)       end)           mr.refresh(function()   5      for _, tool in ipairs(opts.ensure_installed) do   &        local p = mr.get_package(tool)   $        if not p:is_installed() then             p:install()           end   	      end       end)     end,   }5��           $                     �              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v   	    g.~�     �                 return 5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v   	    g.~�    �                   �               5��                    P                      �      5�_�                             ����                                                                                                                                                                                                                                                                                                                                       Q           v        g.~�    �               Q   return {   7  -- Mason and mason-lspconfig must be before lspconfig     {       "williamboman/mason.nvim",       cmd = "Mason",   B    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },       build = ":MasonUpdate",       opts = {         ensure_installed = {           "stylua",           "shfmt",         },       },     },     {   (    "williamboman/mason-lspconfig.nvim",       opts = {         ensure_installed = {   7        -- Add the language servers you want installed:           "lua_ls",    -- for Lua   %        -- "pyright",   -- for Python   4        -- "tsserver",  -- for JavaScript/TypeScript           -- Add more as needed         },   $      automatic_installation = true,       },     },     {       "neovim/nvim-lspconfig",   +    event = { "BufReadPre", "BufNewFile" },       dependencies = {   9      "hrsh7th/cmp-nvim-lsp",  -- LSP source for nvim-cmp       },       config = function()   ,      local lspconfig = require("lspconfig")   I      local capabilities = require("cmp_nvim_lsp").default_capabilities()             -- Setup language servers         lspconfig.lua_ls.setup({   $        capabilities = capabilities,         })   2      -- Add more language server setups as needed       end     },     {       "hrsh7th/nvim-cmp",       event = "InsertEnter",       dependencies = {   ;      "hrsh7th/cmp-buffer",           -- Buffer completions   9      "hrsh7th/cmp-path",             -- Path completions   <      "hrsh7th/cmp-cmdline",          -- Cmdline completions   6      "L3MON4D3/LuaSnip",            -- Snippet engine   ;      "saadparwaiz1/cmp_luasnip",    -- Snippet completions       },       config = function()          local cmp = require("cmp")   (      local luasnip = require("luasnip")                  cmp.setup({           snippet = {   !          expand = function(args)   )            luasnip.lsp_expand(args.body)             end,   
        },   -        mapping = cmp.mapping.preset.insert({   2          ["<C-b>"] = cmp.mapping.scroll_docs(-4),   1          ["<C-f>"] = cmp.mapping.scroll_docs(4),   1          ["<C-Space>"] = cmp.mapping.complete(),   *          ["<C-e>"] = cmp.mapping.abort(),   <          ["<CR>"] = cmp.mapping.confirm({ select = true }),           }),   &        sources = cmp.config.sources({              { name = "nvim_lsp" },             { name = "luasnip" },             { name = "buffer" },             { name = "path" },           }),         })       end,     },   }5��            P                      �              5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                  v        g.~�    �                   �               5��                    �                      �      5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                             g.,     �                &        "pyright",           -- Python5��                          o      '               5�_�   !               "           ����                                                                                                                                                                                                                                                                                                                                                             g.0    �                !        "pyright",      -- Python5��                          �      "               5�_�                             ����                                                                                                                                                                                                                                                                                                                                                  v        g.~�     �              �              Q   return {   7  -- Mason and mason-lspconfig must be before lspconfig     {       "williamboman/mason.nvim",       cmd = "Mason",   B    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },       build = ":MasonUpdate",       opts = {         ensure_installed = {           "stylua",           "shfmt",         },       },     },     {   (    "williamboman/mason-lspconfig.nvim",       opts = {         ensure_installed = {   7        -- Add the language servers you want installed:           "lua_ls",    -- for Lua   %        -- "pyright",   -- for Python   4        -- "tsserver",  -- for JavaScript/TypeScript           -- Add more as needed         },   $      automatic_installation = true,       },     },     {       "neovim/nvim-lspconfig",   +    event = { "BufReadPre", "BufNewFile" },       dependencies = {   9      "hrsh7th/cmp-nvim-lsp",  -- LSP source for nvim-cmp       },       config = function()   ,      local lspconfig = require("lspconfig")   I      local capabilities = require("cmp_nvim_lsp").default_capabilities()             -- Setup language servers         lspconfig.lua_ls.setup({   $        capabilities = capabilities,         })   2      -- Add more language server setups as needed       end     },     {       "hrsh7th/nvim-cmp",       event = "InsertEnter",       dependencies = {   ;      "hrsh7th/cmp-buffer",           -- Buffer completions   9      "hrsh7th/cmp-path",             -- Path completions   <      "hrsh7th/cmp-cmdline",          -- Cmdline completions   6      "L3MON4D3/LuaSnip",            -- Snippet engine   ;      "saadparwaiz1/cmp_luasnip",    -- Snippet completions       },       config = function()          local cmp = require("cmp")   (      local luasnip = require("luasnip")                  cmp.setup({           snippet = {   !          expand = function(args)   )            luasnip.lsp_expand(args.body)             end,   
        },   -        mapping = cmp.mapping.preset.insert({   2          ["<C-b>"] = cmp.mapping.scroll_docs(-4),   1          ["<C-f>"] = cmp.mapping.scroll_docs(4),   1          ["<C-Space>"] = cmp.mapping.complete(),   *          ["<C-e>"] = cmp.mapping.abort(),   <          ["<CR>"] = cmp.mapping.confirm({ select = true }),           }),   &        sources = cmp.config.sources({              { name = "nvim_lsp" },             { name = "luasnip" },             { name = "buffer" },             { name = "path" },           }),         })       end,     },   }5��                    P                      �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v   	    g.~�     �              �                 return     5��                                                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g.{�   
 �         &      --          event = "FileType",5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             g.{�    �         &      --          event = "FileType",5��                          �                     5��