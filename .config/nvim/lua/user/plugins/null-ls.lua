-- You can find checker builtin in the github below
-- https://github.com/jose-elias-alvarez/null-ls.nvim
local nls = require("null-ls")
local diagnostics = nls.builtins.diagnostics
local formatting = nls.builtins.formatting
local code_actions = nls.builtins.code_actions

local format = "#{m} (#{s}: #{c})"

local with_diagnostics_code = function(builtin)
	return builtin.with({
		virtual_text = false,
		diagnostics_format = format,
	})
end

local sources = {
	code_actions.eslint_d.with({
		condition = function(utils)
			return utils.root_has_file({ ".eslintrc.js" })
		end,
	}),
	code_actions.gitsigns,
	code_actions.proselint,

	diagnostics.pylint.with({
		extra_args = {
			-- Unable to import 'library' (pylint: import-error)
			-- even there is my own library in the same directory, a warning shows.
			"--init-hook=import sys; sys.path.append('.')",
			"--max-line-length=120",
			-- disable: Variable name "c" doesn't conform to snake_case pattern (pylint: invalid-name)
			-- it allows name such as "e" and "ex"
			-- +-------------------+---------------+-------------------------------------------+
			-- |       Type        |    Option     |        Default regular expression         |
			-- +-------------------+---------------+-------------------------------------------+
			-- | Argument          | argument-rgx  | [a-z_][a-z0-9_]{2,30}$                    |
			-- | Attribute         | attr-rgx      | [a-z_][a-z0-9_]{2,30}$                    |
			-- | Class             | class-rgx     | [A-Z_][a-zA-Z0-9]+$                       |
			-- | Constant          | const-rgx     | (([A-Z_][A-Z0-9_]*)|(__.*__))$            |
			-- | Function          | function-rgx  | [a-z_][a-z0-9_]{2,30}$                    |
			-- | Method            | method-rgx    | [a-z_][a-z0-9_]{2,30}$                    |
			-- | Module            | module-rgx    | (([a-z_][a-z0-9_]*)|([A-Z][a-zA-Z0-9]+))$ |
			-- | Variable          | variable-rgx  | [a-z_][a-z0-9_]{2,30}$                    |
			-- | Variable, inline1 | inlinevar-rgx | [A-Za-z_][A-Za-z0-9_]*$                   |
			-- +-------------------+---------------+-------------------------------------------+
			"--variable-rgx=[a-z0-9_]{1,30}$",
			"--argument-rgx=[a-z0-9_]{1,30}$",
		},
		diagnostics_format = format,
	}),
	with_diagnostics_code(diagnostics.jsonlint),
	with_diagnostics_code(diagnostics.yamllint),
	with_diagnostics_code(diagnostics.shellcheck),

	formatting.autopep8.with({
		extra_args = {
			"--max-line-length=120",
			"--aggressive",
		},
	}),
	formatting.fixjson,
	formatting.stylua,
}

nls.setup({
	sources = sources,
	-- sources = {
	-- require('null-ls').builtins.diagnostics.eslint_d.with({
	--   condition = function(utils)
	--     return utils.root_has_file({ '.eslintrc.js' })
	--   end,
	-- }),
	-- require('null-ls').builtins.diagnostics.proselint,
	-- require('null-ls').builtins.diagnostics.gitlint,
	-- require('null-ls').builtins.diagnostics.luacheck.with({
	--   extra_args = { '--config', vim.fn.stdpath('config') .. '/.luacheckrc' },
	-- }),
	-- -- require("null-ls").builtins.diagnostics.phpstan,
	-- require('null-ls').builtins.diagnostics.solhint,
	-- require('null-ls').builtins.diagnostics.trail_space.with({ disabled_filetypes = { 'NvimTree' } }),
	-- require('null-ls').builtins.formatting.eslint_d.with({
	--   condition = function(utils)
	--     return utils.root_has_file({ '.eslintrc.js' })
	--   end,
	-- }),
	-- require('null-ls').builtins.formatting.prettierd,
	-- require('null-ls').builtins.formatting.phpcsfixer,
	-- require('null-ls').builtins.formatting.jq,
	-- require('null-ls').builtins.formatting.rustywind,
	-- require('null-ls').builtins.formatting.stylua, require('null-ls').builtins.diagnostics.flake8, },
})
