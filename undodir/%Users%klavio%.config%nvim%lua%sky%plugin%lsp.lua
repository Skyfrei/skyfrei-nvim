Vim�UnDo� <M\�zG{5
��t.CM�RejE�&��&��   N   N    vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)                             f�T�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             f��~    �                 ,  capabilities = require('cmp_nvim_lsp').def�               �                   �               5��                       ,                   �      �       ,                 �              �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f���     �              .   $local lsp_zero = require('lsp-zero')       *local lsp_attach = function(client, bufnr)     local opts = {buffer = bufnr}       D  vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)   J  vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)   K  vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)   N  vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)   O  vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)   J  vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)   N  vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)   H  vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)   ]  vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)   M  vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)   end       lsp_zero.extend_lspconfig({     sign_text = true,     lsp_attach = lsp_attach,   ?  capabilities = require('cmp_nvim_lsp').default_capabilities()   })       require('mason').setup({})   "require('mason-lspconfig').setup({     handlers = {       function(server_name)   1      require('lspconfig')[server_name].setup({})       end,     }   })       local cmp = require('cmp')       cmp.setup({     sources = {       {name = 'nvim_lsp'},     },     snippet = {       expand = function(args)   1      -- You need Neovim v0.10 to use vim.snippet   #      vim.snippet.expand(args.body)       end,     },   *  mapping = cmp.mapping.preset.insert({}),   })5��            .                      �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f���    �   9              "require('luasnip.loaders.from_vsco�   :            �                   end,�               �                   �               5��                                          �      �                  *   "   �              �      �    9   "                 �              %      5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             f�T�     �   	      N      N    vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)5��    	                                          �    	                                        5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f�T�    �   
      N      N    vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)5��    
                     V                     5��