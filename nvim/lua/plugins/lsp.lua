require("lspconfig").tsserver.setup({
  on_attach = function(client, bufnr)
    -- Keybindings or custom settings can go here
  end,
  flags = {
    debounce_text_changes = 150, -- Optional: ensure LSP doesn't overfire
  },
  -- Ensure the language server starts on these file types
  filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
})
