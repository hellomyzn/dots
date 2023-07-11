-- local on_attach = function(client, bufnr)

-- nvim-cmp supports additional completion capabilities
-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Setup Mason to automatically install LSP servers
require("mason").setup()
require("mason-lspconfig").setup({ automatic_installation = true })
require("mason-lspconfig").setup_handlers({
  function(server_name)
    require("lspconfig")[server_name].setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })
  end,
})

local lspconfig = require("lspconfig")

-- python
lspconfig.pyright.setup({})

-- lua
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = "LuaJIT",
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {
          "vim",
          "require",
        },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
})

-- -- HTML
-- require('lspconfig').emmet_ls.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
-- })

-- require('lspconfig').html.setup({
--   capabilities = capabilities,
-- })

-- -- CSS
-- require'lspconfig'.cssls.setup {
--   capabilities = capabilities,
-- }

-- -- Java
-- require'lspconfig'.jdtls.setup{}

-- -- docker
-- require'lspconfig'.dockerls.setup{
--   capabilities = capabilities,
-- }

-- -- ruby
-- require'lspconfig'.solargraph.setup{}

-- -- go
-- require'lspconfig'.gopls.setup{}

-- -- Bash
-- require('lspconfig').bashls.setup({
--   capabilities = capabilities,
-- })

-- -- PHP
-- require('lspconfig').intelephense.setup({
--   capabilities = capabilities,
-- })

-- -- Vue, Javascript, TypeScript
-- require('lspconfig').volar.setup({
--   capabilities = capabilities,
--   filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
-- })

-- -- Tailwind CSS
-- require('lspconfig').tailwindcss.setup({
--   capabilities = capabilities,
-- })

-- -- JSON
-- require('lspconfig').jsonls.setup({
--   capabilities = capabilities,
--   settings = {
--     json = {
--       schemas = require('schemastore').json.schemas(),
--     },
--   },
-- })

require("mason-null-ls").setup({ automatic_installation = true })

-- -----------------------------------------------------------------------------
-- Keymaps
-- See `:help vim.lsp.*` for documentation on any of the below functions
-- -----------------------------------------------------------------------------
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
-- I don't know what is the difference between definition and declaration
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)

vim.keymap.set("n", "<leader>lf", function()
  vim.lsp.buf.format({ async = true })
end)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "gr", ":Telescope lsp_references")
vim.keymap.set("n", "K", vim.lsp.buf.hover)
-- -- TODO: this is not working
-- vim.keymap.set('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')

-- -- Commands
-- -- :TODO: this is not working maybe
-- vim.api.nvim_create_user_command('Format', vim.lsp.buf.format, {})

-- -- Diagnostic configuration
-- vim.diagnostic.config({
--   virtual_text = false,
--   severity_sort = true,
--   float = {
--     source = true,
--     focus = false,
--     format = function(diagnostic)
--       if diagnostic.user_data ~= nil and diagnostic.user_data.lsp.code ~= nil then
--         return string.format('%s: %s', diagnostic.user_data.lsp.code, diagnostic.message)
--       end
--       return diagnostic.message
--     end,
--   },
-- })

-- Sign configuration
vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "􀇿", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })
