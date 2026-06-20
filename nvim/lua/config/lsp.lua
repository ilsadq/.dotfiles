vim.lsp.config('*', {
  capabilities = {
    textDocument = {
      semanticTokens = {
        multilineTokenSupport = true,
      }
    }
  },
  root_markers = { '.git' },
})

vim.lsp.enable({ 'lua', 'zls', 'go', 'ocaml', 'rust' })

vim.diagnostic.config({
  virtual_lines = true
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    local map = function(keys, func, desc, mode)
      mode = mode or 'n'
      vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
    end

    map('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
    map('gr', vim.lsp.buf.references, '[G]oto [R]eferences')
    map('gi', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
    map('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

    map('<S-r>', vim.lsp.buf.rename, '[R]e[n]ame')
    map('<Tab>', vim.lsp.buf.code_action, '[G]oto Code [A]ction', { 'n', 'x' })
    map('<S-K>', vim.lsp.buf.hover, '[H]over action', { 'n' })

    -- <leader>l — LSP actions
    map('<leader>lr', vim.lsp.buf.rename, 'Rename')
    map('<leader>la', vim.lsp.buf.code_action, 'Code action', { 'n', 'x' })
    map('<leader>lh', vim.lsp.buf.hover, 'Hover')
    map('<leader>lf', vim.lsp.buf.format, 'Format')
    map('<leader>ld', vim.lsp.buf.definition, 'Definition')
    map('<leader>lD', vim.lsp.buf.declaration, 'Declaration')
    map('<leader>li', vim.lsp.buf.implementation, 'Implementation')
    map('<leader>lR', vim.lsp.buf.references, 'References')
    map('<leader>lt', vim.lsp.buf.type_definition, 'Type definition')
    map('<leader>ls', vim.lsp.buf.document_symbol, 'Document symbols')
    map('<leader>lS', vim.lsp.buf.workspace_symbol, 'Workspace symbols')
    map('<leader>le', vim.diagnostic.open_float, 'Show diagnostic')
    map('<leader>ln', vim.diagnostic.goto_next, 'Next diagnostic')
    map('<leader>lp', vim.diagnostic.goto_prev, 'Prev diagnostic')
    map('<leader>lI', function()
      vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = event.buf }), { bufnr = event.buf })
    end, 'Toggle inlay hints')

    vim.lsp.inlay_hint.enable(true, { bufnr = event.buf })
  end,
})
