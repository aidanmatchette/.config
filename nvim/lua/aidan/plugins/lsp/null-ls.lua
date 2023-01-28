-- import null-ls plugin safely
local setup, null_ls = pcall(require, "null-ls")
if not setup then
    return
end

-- for conciseness
local formatting = null_ls.builtins.formatting -- to setup formatters
local diagnostics = null_ls.builtins.diagnostics -- to setup linters

-- configure null_ls
-- setup formatters & linters
local sources = {
    --  to disable file types use
    --  "formatting.prettier.with({disabled_filetypes: {}})" (see null-ls docs)
    formatting.prettierd, -- js/ts formatter
    formatting.stylua, -- lua formatter
    formatting.black.with({ extra_args = { "--fast" } }),
    formatting.google_java_format, -- java formatter
}
local M = {}
M.setup = function(on_attach)
    null_ls.setup({
        -- debug = true,
        sources = sources,
        on_attach = on_attach,
    })
end

return M
