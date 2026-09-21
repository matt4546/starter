-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- go lint
vim.keymap.set("n", "<leader>gl", function()
  vim.cmd("!golangci-lint run --fix")
end, { desc = "Run golangci-lint with --fix" })

-- Go fill struct
vim.keymap.set("n", "<leader>gas", vim.cmd.GoFillStruct, { desc = "Go Fill Struct" })
-- Go add tags
vim.keymap.set("n", "<leader>gat", vim.cmd.GoAddTag, { desc = "Go Add Tags" })
-- Go iferr
vim.keymap.set("n", "<leader>gae", vim.cmd.GoIfErr, { desc = "Go handle error" })

vim.keymap.set("n", "<leader>gmt", vim.cmd.GoModTidy, { desc = "GoModTidy" })
vim.keymap.set("n", "<leader>gmv", vim.cmd.GoModVendor, { desc = "GoModVendor" })

-- Go Test Current Package
vim.keymap.set("n", "<leader>tt", vim.cmd.GoTestPkg, { desc = "Go Test Current Package" })
-- Go Test Current File
vim.keymap.set("n", "<leader>tf", vim.cmd.GoTestFile, { desc = "Go Test Current File" })
-- Go Test Current subtest
vim.keymap.set("n", "<leader>tc", vim.cmd.GoTestSubCase, { desc = "Go Test Current subtest" })

vim.keymap.set("n", "<C-l>", vim.cmd.GoCodeAction, { desc = "Code Actions" })
vim.keymap.set("n", "<M-o>", vim.cmd.GoCodeAction, { desc = "Code Actions" })

vim.keymap.set("n", "<leader>ci", vim.cmd.Gen, { desc = "Ollama chat" })
vim.keymap.set("v", "<leader>ci", vim.cmd.Gen, { desc = "Ollama chat" })

vim.keymap.set("n", "<leader>ga", ":GoMemoryAnalyze<CR>", { desc = "Analyze Go struct memory" })
vim.keymap.set("n", "<leader>go", ":GoMemoryOptimize<CR>", { desc = "Optimize Go struct" })
vim.keymap.set("n", "<leader>gr", ":GoMemoryReport<CR>", { desc = "Show memory report" })
vim.keymap.set("n", "<leader>gt", ":GoMemoryToggleArch<CR>", { desc = "Toggle architecture" })

vim.keymap.set("n", "<leader>db", vim.cmd.GoBreakToggle, { desc = "Toggle Breakpoint" })
vim.keymap.set("n", "<leader>dc", vim.cmd.GoDbgContinue, { desc = "Start/Continue Debug" })
vim.keymap.set("n", "<leader>du", ":DapUiToggle<CR>", { desc = "Toggle UI" })
