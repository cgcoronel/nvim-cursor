local map = vim.keymap.set
local opts = { silent = true, noremap = true }

vim.g.mapleader = " "
map({ "n", "v" }, "<Space>", "<NOP>", opts)

map("i", "kj", "<Esc>", opts)
map("n", "<leader>w", vim.cmd.w, opts)

-- move between windows
map("n", "<C-L>", "<C-W><C-L>")
map("n", "<C-H>", "<C-W><C-H>")
map("i", "<C-L>", "<Esc><C-W><C-L>")
map("i", "<C-H>", "<Esc><C-W><C-H>")

map("n", "<C-J>", "<C-W><C-J>")
map("n", "<C-K>", "<C-W><C-K>")
map("i", "<C-J>", "<Esc><C-W><C-J>")
map("i", "<C-K>", "<Esc><C-W><C-K>")

-- move start and end of line
map("n", "gl", "$")
map("n", "gh", "0")
map("v", "gl", "$")
map("v", "gh", "0")

-- clean search
map("n", "<leader><space>", ":noh<CR>", opts)

-- move lines up and down
map("n", "<S-k>", ":m .-2<CR>==", opts)
map("n", "<S-j>", ":m .+1<CR>==", opts)
map("v", "<S-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<S-k>", ":m '<-2<CR>gv=gv", opts)

map("n", "S", function()
	vim.cmd('call VSCodeNotify("workbench.action.splitEditorDown")')
end)

map("n", "s", function()
	vim.cmd('call VSCodeNotify("workbench.action.splitEditorRight")')
end)

-- Mover entre editores (como en tmux o Vim)
map("n", "<C-h>", function()
	vim.cmd('call VSCodeNotify("workbench.action.navigateLeft")')
end)

map("n", "<C-l>", function()
	vim.cmd('call VSCodeNotify("workbench.action.navigateRight")')
end)

map("n", "<C-j>", function()
	vim.cmd('call VSCodeNotify("workbench.action.navigateDown")')
end)

map("n", "<C-k>", function()
	vim.cmd('call VSCodeNotify("workbench.action.navigateUp")')
end)

map("n", "<leader>f", function()
	vim.cmd('call VSCodeNotify("workbench.action.quickOpen")')
end)

map("n", "<leader>q", function()
	vim.cmd('call VSCodeNotify("workbench.action.closeActiveEditor")')
end)

map("n", ";", function()
	vim.cmd('call VSCodeNotify("editor.action.wordHighlight.next")')
end, { silent = true })

map("n", "<leader>e", function()
	vim.cmd('call VSCodeNotify("vsnetrw.open")')
end, { silent = true })

map("n", "<leader>d", function()
	vim.cmd('call VSCodeNotify("workbench.view.scm")')
end)

map("n", "gi", function()
	vim.cmd('call VSCodeNotify("editor.action.goToImplementation")')
end)

map("n", "yy", '"+yy')
map("v", "y", '"+y')

vim.keymap.set("n", "<leader>pr", function()
	vim.cmd('edit /Users/Cristian/projects/xepelin/temp/pr.diff')
  end)

