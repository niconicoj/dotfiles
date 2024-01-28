lvim.format_on_save = true
lvim.colorscheme = "everforest"

vim.g.everforest_transparent_background = 1
vim.g.everforest_enable_italic = 1
vim.g.everforest_background = 'hard'

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.insert_mode["jk"] = "<Esc>"
lvim.keys.insert_mode["kj"] = "<Esc>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

lvim.builtin.treesitter.ignore_install = { "dart" }

lvim.builtin.dap.active = true

lvim.builtin.dap.on_config_done = function(dap)
  dap.adapters.dart = {
    type = 'executable',
    command = 'flutter',
    args = { 'debug_adapter' },
  }
  dap.configurations.dart = {
    {
      type = 'dart',
      request = 'launch',
      name = 'launch Flutter Program',
      program = "lib/main.dart",
      cwd = "${workspaceFolder}",
      toolArgs = {}
    },
  }
end

lvim.builtin.which_key.mappings["dT"] = {
  "<cmd>lua require('dap').terminate()<CR>", "Terminate"
}

lvim.plugins = {
  { "sainnhe/everforest" },
  {
    "zbirenbaum/copilot-cmp",
    event = "InsertEnter",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup()
        require("copilot_cmp").setup()
      end, 100)
    end,
  },
  {
    "nvim-lua/plenary.nvim",
    config = function()
      require("plenary.async")
    end,
  },
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require("flutter-tools").setup {
        settings = {
          enableSnippets = true,
        },
        lsp = {
          on_attach = require("lvim.lsp").common_on_attach
        },
        closing_tags = {
          prefix = "> "
        }
      }
    end,
    ft = "dart",
  }
}
