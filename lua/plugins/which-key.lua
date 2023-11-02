local wk = require("which-key")
return {
    wk.register({
        ["<leader>"] = {
            f = {
                name = "files (archivos)",
                f = { ":Telescope find_files<cr>", "buscar archivo" },
                h = { ":Telescope oldfiles<cr>", "buscar archivos recientes" },
                n = { ":enew<cr>", "nuevo archivo" },
                g = { ":Telescope live_grep<cr>", "buscar texto en archivos" },
                t = { ":NvimTreeToggle<cr>", "árbol de archivos" },
                w = { ":w<cr>", "guardar" },
                q = { ":q<cr>", "salir" },
                Q = { ":wq<cr>", "guardar y salir" },
                s = { ":Telescope lsp_document_symbols<cr>", "Símbolos del archivo" },
                o = { function() vim.lsp.buf.format { async = true } end, "Formatear" },
            },
            c = {
                name = "código",
                a = { vim.lsp.buf.code_action, "acción" },
                r = { vim.lsp.buf.rename, "renombar" },
            },
            b = {
                name = "buffer (pestañas)",
                p = {":BufferMovePrevious<cr>", "mover a la izquierda"},
                n = {":BufferMoveNext<cr>", "mover a la derecha"},
                f = {":BufferPin<cr>", "fijar"},
                d = {":BufferOrderByDirectory<CR>", "ordenar por directorio"},
                l = {":BufferOrderByLanguage<CR>", "ordenar por lenguage"},
            }
        },
    })
}
