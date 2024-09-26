return {
  "mistricky/codesnap.nvim",
  build = "make",
  version = "^1",
  init = function()
    require("codesnap").setup {
      save_path = "/home/zach/Downloads/codesnap.png",
      watermark = "",
      bg_color = "#535c68",
      --bg_theme = "bamboo",
    }
  end,
}
