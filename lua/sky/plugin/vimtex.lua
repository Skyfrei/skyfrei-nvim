return {
    'lervag/vimtex',
    lazy = false,     -- load during startup
    init = function()
        -- This enables Vim's and neovim's syntax-related features
        -- Most plugin managers will do this automatically
        vim.cmd('syntax enable')
        vim.cmd('filetype plugin indent on')

        -- Viewer options
        vim.g.vimtex_view_method = 'skim'

        -- Generic viewer interface
        vim.g.vimtex_view_general_viewer = 'okular'
        vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]


        vim.g.vimtex_compiler_method = 'latexmk'
            

    end,
    config = function()
        -- Additional VimTeX configuration can be added here if needed
    end
}
