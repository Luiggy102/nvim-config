local mapeado = vim.keymap.set

-- basicos
mapeado("n", "<leader>pv", vim.cmd.Ex)
mapeado("n", ";", ":")
mapeado("n", "<leader>w", vim.cmd.w)
mapeado("n", "<leader>q", vim.cmd.q)
mapeado("n", "<leader>wq", vim.cmd.wq)
mapeado("n", "<C-w>", vim.cmd.w)
mapeado("n", "<C-q>", vim.cmd.q)
-- mapeado("i", "fj", "<Esc>")

-- plugins
-- nvim-tree
mapeado("", "<C-n>", vim.cmd.NvimTreeToggle)
-- telescope
mapeado("", "<leader>ff", ":Telescope find_files<cr>")
mapeado("", "<leader>h", ":Telescope oldfiles<cr>")
mapeado("", "<leader>fg", ":Telescope live_grep<cr>")
mapeado("", "<leader>ds", ":Telescope lsp_document_symbols<cr>")
-- Lsp saga
-- mapeado("n", "tt", ":Lspsaga term_toogle<cr>")
-- nvim bar
local optsBar = { noremap = true, silent = true }
mapeado('n', '<C-,>', '<Cmd>BufferPrevious<CR>', optsBar)
mapeado('n', '<C-.>', '<Cmd>BufferNext<CR>', optsBar)
mapeado('n', 'H', '<Cmd>BufferPrevious<CR>', optsBar)
mapeado('n', 'L', '<Cmd>BufferNext<CR>', optsBar)
mapeado('n', '<C-<>', '<Cmd>BufferMovePrevious<CR>', optsBar)
mapeado('n', '<C->>', '<Cmd>BufferMoveNext<CR>', optsBar)
mapeado('n', '<C-1>', '<Cmd>BufferGoto 1<CR>', optsBar)
mapeado('n', '<C-2>', '<Cmd>BufferGoto 2<CR>', optsBar)
mapeado('n', '<C-3>', '<Cmd>BufferGoto 3<CR>', optsBar)
mapeado('n', '<C-4>', '<Cmd>BufferGoto 4<CR>', optsBar)
mapeado('n', '<C-5>', '<Cmd>BufferGoto 5<CR>', optsBar)
mapeado('n', '<C-6>', '<Cmd>BufferGoto 6<CR>', optsBar)
mapeado('n', '<C-7>', '<Cmd>BufferGoto 7<CR>', optsBar)
mapeado('n', '<C-8>', '<Cmd>BufferGoto 8<CR>', optsBar)
mapeado('n', '<C-9>', '<Cmd>BufferGoto 9<CR>', optsBar)
mapeado('n', '<C-0>', '<Cmd>BufferLast<CR>', optsBar)
mapeado('n', '<C-p>', '<Cmd>BufferPin<CR>', optsBar)
mapeado('n', '<C-c>', '<Cmd>BufferClose<CR>', optsBar)
mapeado('n', '<C-w>', '<Cmd>BufferClose<CR>', optsBar)
mapeado('n', '<C-p>', '<Cmd>BufferPick<CR>', optsBar)
mapeado('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', optsBar)
mapeado('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', optsBar)
mapeado('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', optsBar)
mapeado('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', optsBar)
