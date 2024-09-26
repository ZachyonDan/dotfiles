require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "x", "o" }, "s", "<Plug>(leap-forward)")
map({ "n", "x", "o" }, "S", "<Plug>(leap-backward)")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local function nmap(comb, cmd, desc)
  vim.api.nvim_set_keymap("n", comb, cmd, { noremap = true, silent = true, desc = desc })
end

nmap("<C-u>", "<C-u>zz")
nmap("<C-d>", "<C-d>zz")
nmap("<C-s>", ":w<CR>")
nmap("<Leader>b", ":RunCode<CR>")
nmap("<C-b>", ":RunCode<CR>")
nmap("<C-t>", ":!cargo test<CR>")
nmap("<Up>", "<Up>zz")
nmap("<Down>", "<Down>zz")
nmap("<leader>tt", ":Telescope<CR>", "Telescope default")
nmap("<leader>tf", ":Telescope find_files<CR>", "Telescope search files")
nmap("<leader>tg", ":Telescope live_grep<CR>", "Telescope ripgrep")
nmap("<leader>cC", ":!cargo clippy<CR>", "Cargo clippy")
nmap("<leader>ct", ":!cargo test<CR>", "Cargo test")
nmap("<leader>em", ":EditMarkdownTable<CR>", "Edit markdown table")
nmap("<leader>pi", ":PlugInstall<CR>", "Run PlugInstall")
nmap("<leader>tr", ":TableModeRealign<CR>", "Realign tables")
