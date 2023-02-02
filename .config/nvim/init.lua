require("keymaps")
require("plugins")
require("nvim-orgmode")
require("markdown-preview")
-- require("highlight")

-- Auto cmpile
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = { "plugins.lua" },
    command = "PackerCompile",
})
