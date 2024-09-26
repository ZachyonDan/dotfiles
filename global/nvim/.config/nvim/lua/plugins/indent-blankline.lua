return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  init = function()
    require("ibl").setup {
      scope = {
        enabled = false,
      },
    }
  end,
}
