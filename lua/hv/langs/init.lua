-- This is shamelessly copied from something I saw online lmfao

-- How it works:
-- Each language specified here will register B and E commands to Build and Execute
-- It will call whatever command is in build and exec
local lang_maps = {
    rust = { build = "cargo build", exec = "cargo run" },
    --TODO: Probably add other languages
}

for lang, data in pairs(lang_maps) do
    if data.build ~= nil then
        vim.api.nvim_create_autocmd(
            "FileType",
            { command = "nnoremap <Leader>b :!" .. data.build .. "<CR>", pattern = lang }
        )
    end

    vim.api.nvim_create_autocmd(
        "FileType",
        { command = "nnoremap <Leader>e :split<CR>:ter " .. data.exec .. "<CR>", pattern = lang }
    )
end

-- autoformat the file on save
vim.api.nvim_create_autocmd("BufWritePre", {
    command = "lua vim.lsp.buf.formatting_sync(nil, 1000)",
    pattern = "*.lua,*.rs"
})
