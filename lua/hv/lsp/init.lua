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

-- Rust specific
require('rust-tools').setup({
    tools = {
        autoSetHints = true,
        hover_with_actions = true,
        inlay_hints = {
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = ""
        }
    },

    server = {
        settings = {
            ["rust-analyzer"] = {
                checkOnSave = {
                    command = "clippy"
                }
            }
        }
    }
})

require("autosave").setup(
    {
        debounce_delay = 350
    }
)
