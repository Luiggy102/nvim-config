return {
    require('telescope').setup{
         pickers = {
            -- find_files = { theme = "dropdown", },
            -- oldfiles = { theme = "dropdown", }
         },
    },
    require("telescope").load_extension("package_info")
}
