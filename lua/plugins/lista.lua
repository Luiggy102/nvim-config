return {

    -- lsp
    {
        'williamboman/mason.nvim',
        dependencies = 'williamboman/mason-lspconfig.nvim'
    },
    {
        'neovim/nvim-lspconfig',
        event = { 'BufReadPre', 'BufNewFile' },
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            { 'antosha417/nvim-lsp-file-operations', config = true },
        }
    },

    -- autocompletado
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp",
        dependencies = { 'rafamadriz/friendly-snippets' },
    },
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',       -- para lsp
            'saadparwaiz1/cmp_luasnip',   -- para snippets
            'hrsh7th/cmp-buffer',         -- para los bufers
            'hrsh7th/cmp-path',           -- para rutas
            'hrsh7th/cmp-cmdline',        -- para los comandos
            'micangl/cmp-vimtex',         -- para latex
            'ray-x/cmp-treesitter',       -- para treesitter
            'hrsh7th/cmp-nvim-lua',       -- para lua
            'f3fora/cmp-spell',           -- para español
            'kdheepak/cmp-latex-symbols', -- symbolos latex
            {
                "David-Kunz/cmp-npm",     -- para node
                dependencies = { 'nvim-lua/plenary.nvim' },
                ft = "json",
                config = function()
                    require('cmp-npm').setup({})
                end
            },
        },
    },

    -- Ide
    { 'akinsho/toggleterm.nvim',             version = "*",                   config = true },
    { "lukas-reineke/indent-blankline.nvim", main = "ibl",                    opts = {}, },
    { 'numToStr/Comment.nvim',               lazy = false,                    opts = {} },
    { 'nvim-lualine/lualine.nvim',           opts = { theme = 'iceber_dark' } },
    { "nvim-treesitter/nvim-treesitter",     build = ":TSUpdate", },
    { 'stevearc/dressing.nvim',              opts = {}, },
    { 'lewis6991/gitsigns.nvim',             opts = {} },
    { 'tpope/vim-fugitive' },
    { 'karb94/neoscroll.nvim',               opts = {} },
    {
        'nvimdev/lspsaga.nvim',
        dependencies = {
            'nvim-treesitter/nvim-treesitter',
            'nvim-tree/nvim-web-devicons',
        },
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {},
    },
    'windwp/nvim-autopairs',
    'romgrk/barbar.nvim',

    -- navegacion
    { 'nvim-telescope/telescope.nvim', tag = '0.1.4', dependencies = { 'nvim-lua/plenary.nvim', }, },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons", },
    },
    'alexghergh/nvim-tmux-navigation',

    -- esquema de color
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            vim.cmd([[colorscheme tokyonight-night]])
        end,
    },

}
