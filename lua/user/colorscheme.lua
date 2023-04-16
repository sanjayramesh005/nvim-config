local colorscheme = "tokyonight"

-- tokyonight config
local status_ok, config = pcall(require, "tokyonight")
if status_ok then
	config.setup({
		transparent = true,
		sidebars = { "qf", "vista_kind" },
		floats = { "packer", "terminal" },
		styles = {
			sidebars = "transparent", -- style for sidebars, see below
			floats = "dark", -- style for floating windows
		},
	})
end

-- catppuccin config
status_ok, _ = pcall(require, "catppuccin")
if status_ok then
	local catppuccin_config
	status_ok, catppuccin_config = pcall(require, "trouble.config")
	if status_ok then
		catppuccin_config.setup({
			flavour = "macchiato",
			background = {
				-- :h background
				light = "latte",
				dark = "macchiato",
			},
			transparent_background = true,
		})
	end
end

status_ok, config = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
