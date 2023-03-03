require("keymaps")
require("plugins")
require("markdown-preview")
require("user/options")
-- require("highlight")

-- Auto cmpile
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = { "plugins.lua" },
    command = "PackerCompile",
})
