return {
  "ThePrimeagen/99",
  dependencies = { "nvim-lua/plenary.nvim", "saghen/blink.compat" },
  config = function()
    local _99 = require("99")

    local cwd = vim.uv.cwd()
    local basename = vim.fs.basename(cwd)
    _99.setup({
      provider = _99.Providers.ClaudeCodeProvider,
      logger = {
        level = _99.DEBUG,
        path = "/tmp/" .. basename .. ".99.debug",
        print_on_error = true,
      },
      completion = {
        source = "blink",
      },
      md_files = {
        "CLAUDE.md",
      },
    })

    vim.keymap.set("v", "<leader>av", function()
      _99.visual()
    end, { desc = "Prompt on Selection" })

    vim.keymap.set("n", "<leader>ax", function()
      _99.stop_all_requests()
    end, { desc = "Stop all requests" })

    vim.keymap.set("n", "<leader>as", function()
      _99.search()
    end, { desc = "Open Prompt" })
  end,
}
