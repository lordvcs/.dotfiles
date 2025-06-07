return {
  "folke/snacks.nvim",
  opts = {
    terminal = {
      win = {
        position = "float",
      },
    },
    -- picker = {
    --   enabled = true,
    --   actions = {
    --     confirm_and_close = function(picker)
    --       picker:action("confirm")
    --       picker:action("close")
    --     end,
    --     confirm_nofocus = function(picker)
    --       picker:action("confirm")
    --       picker:focus()
    --     end,
    --   },
    --   sources = {
    --     explorer = {
    --       auto_close = true,
    --       win = {
    --         list = {
    --           keys = {
    --             ["L"] = "confirm_and_close",
    --             ["l"] = "confirm_nofocus",
    --           },
    --         },
    --       },
    --       layout = {
    --         cycle = true,
    --         layout = {
    --           box = "horizontal",
    --           position = "float",
    --           height = 0.95,
    --           width = 0,
    --           border = "rounded",
    --           {
    --             box = "vertical",
    --             width = 40,
    --             min_width = 40,
    --             { win = "input", height = 1, title = "{title} {live} {flags}", border = "single" },
    --             { win = "list" },
    --           },
    --           { win = "preview", width = 0, border = "left" },
    --         },
    --       },
    --     },
    --   },
    -- },
  },
}
