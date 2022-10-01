local status_ok, mason = pcall(require, "mason")
if not status_ok then
	return
end

local status_ok_1, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok_1 then
	return
end

local servers = {
	"cssls",
	"cssmodules_ls",
	"emmet_ls",
	"html",
	"tsserver",
	"pyright",
	"tailwindcss",
}

mason.setup({})
mason_lspconfig.setup({
	ensure_installed = servers,
})
