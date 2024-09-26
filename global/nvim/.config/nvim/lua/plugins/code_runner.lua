return {
  "CRAG666/code_runner.nvim",
  init = function()
    require("code_runner.commands").get_filetype_command {}
    require("code_runner").setup {
      filetype = {
        python = 'python3 -u "$dir/$fileName"',
        rust = {
          "cargo run --release",
        },
        go = {
          'go build && go run "$dir/$fileName"',
        },
        lua = {
          "lua $dir/$fileName",
        },
        c = 'gcc $fileName -o $fileNameWithoutExt && "./$fileNameWithoutExt"',
        typescript = {
          "bun run $fileName",
        },
      },
    }
  end,
}
