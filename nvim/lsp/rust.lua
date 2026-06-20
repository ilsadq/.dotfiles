return {
  cmd = { 'rust-analyzer' },
  filetypes = { 'rust' },
  root_markers = { 'Cargo.toml', 'Cargo.lock' },
  settings = {
    ['rust-analyzer'] = {
      cargo = {
        allFeatures = true,
        buildScripts = { enable = true },
      },
      procMacro = { enable = true },
      checkOnSave = true,
      check = { command = 'clippy' },
    }
  }
}
