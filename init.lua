local map = vim.keymap.set
local opts = { silent = true, noremap = true }

vim.g.mapleader = " "
map({ "n", "v" }, "<Space>", "<NOP>", opts)

-- Escape mapping (ya configurado en settings.json)
map("i", "kj", "<Esc>", opts)

-- File operations
map("n", "<leader>w", vim.cmd.w, opts)

-- Line navigation
map("n", "gl", "$")
map("n", "gh", "0")
map("v", "gl", "$")
map("v", "gh", "0")

-- Move lines up and down
map("n", "<S-k>", ":m .-2<CR>==", opts)
map("n", "<S-j>", ":m .+1<CR>==", opts)
map("v", "<S-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<S-k>", ":m '<-2<CR>gv=gv", opts)

-- Split management
map("n", "S", function()
	vim.cmd('call VSCodeNotify("workbench.action.splitEditorDown")')
end)

map("n", "s", function()
	vim.cmd('call VSCodeNotify("workbench.action.splitEditorRight")')
end)

-- Navigate between editors
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

map("n", "<leader>q", function()
	vim.cmd('call VSCodeNotify("workbench.action.closeActiveEditor")')
end)

map("n", ";", function()
	vim.cmd('call VSCodeNotify("editor.action.wordHighlight.next")')
end, { silent = true })

-- File explorer
map("n", "<leader>e", function()
	vim.cmd('call VSCodeNotify("vsnetrw.open")')
end, { silent = true })

-- Git
map("n", "<leader>d", function()
	vim.cmd('call VSCodeNotify("workbench.view.scm")')
end)

-- Go to implementation
map("n", "gi", function()
	vim.cmd('call VSCodeNotify("editor.action.goToImplementation")')
end)

-- Clipboard
map("n", "yy", '"+yy')
map("v", "y", '"+y')

-- Git changes navigation
map("n", "<cr>", function()
	vim.cmd('call VSCodeNotify("workbench.action.editor.nextChange")')
end)

map("n", "<bs>", function()
	vim.cmd('call VSCodeNotify("workbench.action.editor.previousChange")')
end)


