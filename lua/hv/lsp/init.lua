local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

local status_ok, handlers = pcall(require, "hv.lsp.handlers")
if not status_ok then
	return
end

require("hv.lsp.lsp-installer")
handlers.setup()
