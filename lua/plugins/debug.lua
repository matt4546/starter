return {
  "leoluz/nvim-dap-go",
  ft = "go", -- Only load this plugin when editing a Go file
  dependencies = {
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui", -- Optional but highly recommended
  },
  config = function()
    require("dap-go").setup({
      -- Optional: Configure the dlv executable path if it's not in your PATH
      -- dlv_config = {
      --   path = "dlv",
      -- },
      dap_configurations = {
        {
          type = "go",
          name = "Attach remote",
          mode = "remote",
          request = "attach",
        },
      },
      -- delve configurations
      delve = {
        path = "dlv",
        initialize_timeout_sec = 20,
        port = "${port}",
        args = {},
        build_flags = "",
      },
    })
  end,
}
