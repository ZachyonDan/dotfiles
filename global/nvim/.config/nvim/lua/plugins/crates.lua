return {
  "saecki/crates.nvim",
  tag = "stable",
  init = function()
    require("crates").setup()
  end,
}
