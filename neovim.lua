return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades 
                base00 = "#0d0f1a", -- Deep night background
                base01 = "#161822", -- Slightly lighter (window frame tone)
                base02 = "#1e2030", -- Selection / subtle contrast
                base03 = "#2b2d3f", -- Comments / dim text
                base04 = "#c7cbe0", -- Soft grey-blue foreground
                base05 = "#d7dbf0", -- Default foreground (city lights reflection)
                base06 = "#eef1ff", -- Light, desaturated text
                base07 = "#ffffff", -- Pure white

                -- Accent colors 
                base08 = "#d46a6a", -- Soft red lights / building signals
                base09 = "#d89c66", -- Lamp-like warm orange
                base0A = "#e0d27d", -- Muted yellow (street reflections)
                base0B = "#7fa693", -- Desaturated green (books)
                base0C = "#8ec7d6", -- Cyan light reflections on glass
                base0D = "#8c92c8", -- Muted purple-blue (rainy sky tone)
                base0E = "#bba5d6", -- Purple/neon signs
                base0F = "#c9b88a", -- Soft brownish yellow (warm interior tone)
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
