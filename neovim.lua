return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Core backgrounds
                base00 = "#0d0f1a", -- Deep night background
                base01 = "#1a1d2e", -- Panels / splits (more separation)
                base02 = "#2a2f4a", -- Cursorline / selection (CLEARLY visible)
                base03 = "#4a4f73", -- Comments (finally readable)

                -- Foregrounds
                base04 = "#8f94b8", -- Line numbers / non-focus text
                base05 = "#d7dbf0", -- Main text
                base06 = "#f1f3ff", -- Emphasis
                base07 = "#ffffff", -- White

                -- Accents (unchanged vibe, more clarity)
                base08 = "#e07a7a", -- Red
                base09 = "#e3a873", -- Orange
                base0A = "#eadf8a", -- Yellow
                base0B = "#8db8a4", -- Green
                base0C = "#9bd6e6", -- Cyan
                base0D = "#9aa0e0", -- Blue
                base0E = "#c9b0e6", -- Purple
                base0F = "#d6c69a", -- Warm tone
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")
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
