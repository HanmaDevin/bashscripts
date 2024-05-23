return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.erb_lint,
				null_ls.builtins.formatting.black,
				null_ls.builtins.diagnostics.pylint,
      },
    })

    vim.keymap.set("n", "<C-l>", vim.lsp.buf.format, {})
  end,
}
