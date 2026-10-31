--- vim configuration
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true 
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.pumheight = 20
vim.opt.pumblend = 10

--- enable recursive search for :find
vim.opt.path:append("**")

-- prevent :find from searching unneded directories
vim.opt.wildignore:append({
  "**/.git/**",
  "**/node_modules/**",
  "**/dist/**",
  "**/build/**",
  "**/target/**",
  "**/.venv/**",
})

--- theme setup
vim.cmd("colorscheme retrobox")

--- lsp setup
vim.lsp.config('*', {
  capabilities = {
    textDocument = {
      semanticTokens = {
        multilineTokenSupport = true,
      },
    },
  },
})

vim.lsp.config('clangd', {
  cmd = { 'clangd' },
  filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
  root_markers = { '.clangd', 'compile_commands.json', 'compile_flags.txt', '.git' },
})

vim.lsp.enable('clangd', {})

-- disable by default
vim.lsp.enable('clangd', false)

--- keymaps
vim.keymap.set("i", "<C-Space>", "<C-x><C-o>")
