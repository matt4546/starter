return {
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({
        -- ...
      })

      vim.cmd("colorscheme github_light")
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        styles = {
          bold = true,
          italic = true,
          transparency = true,
        },
      })
      -- Load the colorscheme here
      vim.cmd.colorscheme("rose-pine-moon")
    end,
  },
  {
    "folke/tokyonight.nvim",
    -- lazy = false, -- make sure we load this during startup if it is your main colorscheme
    -- priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- Load the colorscheme here
      -- You can configure highlights by doing something like
      -- vim.cmd.hi("Comment gui=none")
      -- vim.cmd.colorscheme("tokyonight-storm")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    -- priority = 1000,
    config = function()
      require("catppuccin").setup({
        integrations = {
          telescope = {
            enabled = true,
            -- style = "nvchad",
          },
        },
        -- transparent_background = true, -- disables setting the background color.
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { "italic" }, -- Change the style of comments
          keywords = { "bold" },
        },
      })
      -- vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
  {
    "ribru17/bamboo.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("bamboo").setup({
        -- optional configuration here
        colors = {
          bright_orange = "#ff8800", -- define a new color
          green = "#00ffaa", -- redefine an existing color
        },
        highlights = {
          -- make comments blend nicely with background, similar to other color schemes
          ["@comment"] = { fg = "$grey" },

          ["@keyword"] = { fg = "$green" },
          ["@string"] = { fg = "$bright_orange", bg = "#00ff00", fmt = "bold" },
          ["@function"] = { fg = "#0000ff", sp = "$cyan", fmt = "underline,italic" },
          ["@function.builtin"] = { fg = "#0059ff" },
        },
      })
      require("bamboo").load()
    end,
  },
}
