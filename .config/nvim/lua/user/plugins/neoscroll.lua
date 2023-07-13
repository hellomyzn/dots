require("neoscroll").setup()
local t = {}

t["<C-u>"] = { "scroll", { "-vim.wo.scroll", "true", "50" } }
t["<C-d>"] = { "scroll", { "vim.wo.scroll", "true", "50" } }

require("neoscroll.config").set_mappings({
  ["<C-u>"] = { "scroll", { "-vim.wo.scroll", "true", "50" } },
  ["<C-d>"] = { "scroll", { "vim.wo.scroll", "true", "50" } },
})
