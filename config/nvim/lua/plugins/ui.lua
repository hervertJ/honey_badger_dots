return {
  -- MODOFICAR EL ASPECTO DE LA BARRA DE COMANDOS
  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        view = "cmdline",
      },
    },
  },

  -- ASPECTO DE LA L BARRA DE COMANDOS
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.options.theme = "kanagawa"
      --Ingresa un emoji
      table.insert(opts.sections.lualine_x, {
        function()
          return " "
        end,
      })
    end,
  },

  -- AYUDA PARA LOS COMANDOS
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "classic",
      win = { border = "single" },
    },
  },

  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        gitsigns = true,
        tmux = true,
        kitty = { enabled = false, font = "+2" },
      },
    },
    keys = { { "<leader>z", "<cmd>ZenMode<CR>", desc = "Zen Mode" } },
    enabled = false,
  },

  -- LOGO
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[

          ]],
        },
        sections = {
          { section = "header" },
          { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 2 },
          { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          { section = "startup" },
        },
      },
    },
  },
}
