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
    { 'ziontee113/icon-picker.nvim', opts = { disable_legacy_commands = true } },
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
    { 'akinsho/toggleterm.nvim',     version = "*",                            config = true },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = { exclude = { filetypes = { "dashboard", }, },
        },
    },
    {
        'numToStr/Comment.nvim',
        lazy = false,
        opts = {
            toggler = {
                line = 'gcc',
                block = 'gbc',
            },
            opleader = {
                line = 'gc',
                block = 'gb',
            },
            extra = {
                above = 'gcO',
                below = 'gco',
                eol = 'gcA',
            },
        }
    },
    { 'nvim-lualine/lualine.nvim',       opts = { theme = 'iceber_dark' } },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", },
    { 'stevearc/dressing.nvim',          opts = {}, },
    { 'lewis6991/gitsigns.nvim',         opts = {} },
    { 'tpope/vim-fugitive' },
    { 'karb94/neoscroll.nvim',           opts = {} },
    { 'pocco81/auto-save.nvim',          opts = { enable = false } },
    { 'niuiic/code-shot.nvim',           dependencies = { 'niuiic/core.nvim' },     opts = {} },
    { 'vuki656/package-info.nvim',       dependencies = { 'MunifTanjim/nui.nvim' }, opts = {} },
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
        opts = {
            plugins = {
                presets = {
                    operators = false,
                    motions = false,
                    text_objects = false,
                    windows = false,
                    nav = false,
                    z = false,
                    g = false,
                },
            },
            layout = { align = "center", },
            ignore_missing = true,
        },
    },
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                config = {
                    theme = 'hyper',
                    header = { " " },
                    packages = { enable = false },
                    footer = {},
                    shortcut = {
                        {
                            icon = ' ',
                            icon_hl = '@variable',
                            desc = 'manuales',
                            group = 'Label',
                            action = 'Telescope man_pages',
                            key = 'm',
                        },
                    },
                    project = { enable = true, limit = 5, label = 'Proyectos' },
                    mru = { limit = 5, label = 'Archivos recientes' },
                    disable_move = true,
                }
            }
        end,
        dependencies = { { 'nvim-tree/nvim-web-devicons' } }
    },
    {
        'ggandor/leap.nvim',
        dependencies = { 'tpope/vim-repeat' },
        config = function()
            require('leap').add_default_mappings()
        end,

        opts = {},
    },
    'windwp/nvim-autopairs',
    'romgrk/barbar.nvim',
    'folke/zen-mode.nvim',

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
