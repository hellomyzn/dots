require("keymaps")
require("plugins")
require("nvim-orgmode")
-- require("highlight")

-- Auto cmpile
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = { "plugins.lua" },
    command = "PackerCompile",
})