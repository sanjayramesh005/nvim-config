local status_ok, _ = pcall(require, "trouble")
if not status_ok then
	return
end
local ok, config = pcall(require, "trouble.config")
if not ok then
	return
end

config.setup({
})
