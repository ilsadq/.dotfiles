return {
  cmd = { 'ocamllsp' },
  filetypes = {
    "ocaml",
    "ocaml.menhir",
    "ocaml.interface",
    "ocaml.ocamllex",
    "dune"
  },
  root_markers = {
    "*.opam",
    "esy.json",
    "package.json",
    ".git",
    "dune-project",
    "dune-workspace"
  },
  capabilities = {
    textDocument = {
      inlayHint = {
        dynamicRegistration = true,
      },
    },
  },
  settings = {
    codelens = { enabled = true },
    inlayHints = { enabled = true },
    extendedHover = { enabled = true },
    syntaxDocumentation = { enabled = true },
    merlinJumpCodeActions = { enabled = true },
    duneDiagnostics = { enabled = true }
  },
}
