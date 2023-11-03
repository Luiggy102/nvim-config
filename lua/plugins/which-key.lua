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
                c = { ":lua require('code-shot').shot()<cr>", "tomar captura" },
            },
            b = {
                name = "buffer (pestañas)",
                p = { ":BufferMovePrevious<cr>", "mover a la izquierda" },
                n = { ":BufferMoveNext<cr>", "mover a la derecha" },
                f = { ":BufferPin<cr>", "fijar" },
                d = { ":BufferOrderByDirectory<CR>", "ordenar por directorio" },
                l = { ":BufferOrderByLanguage<CR>", "ordenar por lenguage" },
            },
            g = {
                name = "git",
                -- gitsigns
                h = {
                    name = "hunk (cambios)",
                    p = { ":Gitsigns prev_hunk<cr>", "cambio anterior" },
                    n = { ":Gitsigns next_hunk<cr>", "siguiente cambio" },
                    v = { ":Gitsigns preview_hunk<cr>", "previsualizar cambio" },
                    r = { ":Gitsigns reset_hunk<cr>", "revertir cambio" },
                },
                b = { ":Gitsigns blame_line<cr>", "ver quien realizó cambio en esa línea" },
                -- vim fugitive
                s = { ":G status<cr>", "status" },
                o = { ":G log<cr>", "log" },
                d = { ":G diff<cr>", "diff" },
                a = { ":G add .<cr>", "add (todo)" },
                e = { ":G restore --staged .<cr>", "restore (todo)" },
                c = { ":G commit<cr>", "commit" },
                l = { ":G pull origin main<cr>", "pull (origin/maim)" },
                p = { ":G push origin main<cr>", "push (origin/main)" },
            },
            i = {
                name = "íconos",
                i = { ":IconPickerInsert<cr>", "insertar" },
                n = { ":IconPickerNormal<cr>", "insertar en normal" },
                y = { ":IconPickerYank<cr>", "copiar" },
            }
        },
    })
}
