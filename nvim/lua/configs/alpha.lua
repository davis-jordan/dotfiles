-- local bookmarks = [{}];

require("alpha").setup(astronvim.user_plugin_opts("plugins.alpha", {
  layout = {
    { type = "padding", val = vim.fn.max { 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) } },
    {
      type = "text",
      val = astronvim.user_plugin_opts("header", {
        "███    ██ ██    ██ ██ ███    ███",
        "████   ██ ██    ██ ██ ████  ████",
        "██ ██  ██ ██    ██ ██ ██ ████ ██",
        "██  ██ ██  ██  ██  ██ ██  ██  ██",
        "██   ████   ████   ██ ██      ██",
      }, false),
      opts = { position = "center", hl = "DashboardHeader" },
    },
    { type = "padding", val = 5 },
    {
      type = "group",
      val = {
        astronvim.alpha_button("LDR f f", "  Find File  "),
        astronvim.alpha_button("LDR f o", "  Recents  "),
        astronvim.alpha_button("LDR f w", "  Find Word  "),
        astronvim.alpha_button("LDR f n", "  New File  "),
        astronvim.alpha_button("LDR f m", "  Bookmarks  "),
        astronvim.alpha_button("LDR S l", "  Last Session  "),
      },
      opts = { spacing = 1 },
    },
    { type = "padding", val = 1 },
    {
      type = "group",
      val = {
        astronvim.bookmark_button("w", "  Taiv Web  ",
          ":cd ~/Documents/Taiv/Code/TaiV/TaiV_Web_App | :e ~/Documents/Taiv/Code/TaiV/TaiV_Web_App/src/index.js"),
        astronvim.bookmark_button("t", "  Taiv TV  ",
          ":cd ~/Documents/Taiv/Code/TaiV/TaiV_TV_Client | :e ~/Documents/Taiv/Code/TaiV/TaiV_TV_Client/screens/MainScreen.js"),
        astronvim.bookmark_button("s", "  Taiv Server  ",
          ":cd ~/Documents/Taiv/Code/TaiV/TaiV_Server/functions | :e ~/Documents/Taiv/Code/TaiV/TaiV_Server/functions/index.js"),
        astronvim.bookmark_button("d", "  Taiv Dashboard  ",
          ":cd ~/Documents/Taiv/Code/TaiV/taiv_utilities_dashboard | :e ~/Documents/Taiv/Code/TaiV/taiv_utilities_dashboard/src/App.js"),
        astronvim.bookmark_button("a", "  Taiv Ad Manager  ",
          ":cd ~/Documents/Taiv/Code/TaiV/TaiV_Ad_Manager | :e ~/Documents/Taiv/Code/TaiV/TaiV_Ad_Manager/src/screens/Create.js"),
        astronvim.bookmark_button("c", "  Taiv Web Common  ",
          ":cd ~/Documents/Taiv/Code/TaiV/Taiv_Web_Common | :e ~/Documents/Taiv/Code/TaiV/Taiv_Web_Common/package.json"),
        astronvim.bookmark_button("l", "  Taiv Landing Page  ",
          ":cd ~/Documents/Taiv/Code/TaiV/taiv_landing_page | :e ~/Documents/Taiv/Code/TaiV/taiv_landing_page/pages/_app.tsx"),
      },
      opts = { spacing = 1 },
    },
  },
}))
