local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = {
		"bash",
		"c",
		"javascript",
		"json",
		"lua",
		"python",
		"typescript",
		"tsx",
		"css",
		"rust",
		"java",
		"yaml",
		"markdown",
		"markdown_inline",
	}, -- one of "all" or a list of languages
	ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "css" }, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css" } },
	rainbow = {
		enable = true,
		-- list of languages you want to disable the plugin for
		disable = { "jsx" },
		-- Which query to use for finding delimiters
		query = "rainbow-parens",
		-- Highlight the entire buffer all at once
		strategy = require("ts-rainbow").strategy.global,
	},
})
