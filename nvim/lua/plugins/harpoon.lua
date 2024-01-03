return {
    "ThePrimeagen/harpoon",
    branch = "harpoon3",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("harpoon"):setup()
    end,
    keys = {
        { "<leader>a", function() require("harpoon"):list():append() end, desc = "harpoon file", },
        { "<C-e>", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, desc = "harpoon quick menu", },
        { "<C-j>", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
        { "<C-k>", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
        { "<C-l>", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
        { "<C-;>", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", },
    },
}
