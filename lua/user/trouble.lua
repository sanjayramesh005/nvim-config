local status_ok, trouble = pcall(require, "trouble")
if not status_ok then
	return
end
local status_ok, config = pcall(require, "trouble.config")
if not status_ok then
	return
end

config.setup({

})
