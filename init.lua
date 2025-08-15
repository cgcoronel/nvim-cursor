local map = vim.keymap.set
local opts = { silent = true, noremap = true }

-- Helper para comandos de VSCode
local function vscode_command(command)
	return function()
		vim.cmd('call VSCodeNotify("' .. command .. '")')
	end
end

-- Configuración básica
vim.g.mapleader = " "

-- File operations
map("n", "<leader>w", vim.cmd.w, opts)

-- Line navigation (más eficiente)
local line_nav_opts = { noremap = true }
map("n", "gl", "$", line_nav_opts)
map("n", "gh", "0", line_nav_opts)
map("v", "gl", "$", line_nav_opts)
map("v", "gh", "0", line_nav_opts)

-- Move lines up and down
map("n", "<S-k>", ":m .-2<CR>==", opts)
map("n", "<S-j>", ":m .+1<CR>==", opts)
map("v", "<S-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<S-k>", ":m '<-2<CR>gv=gv", opts)

-- Split management
map("n", "S", vscode_command("workbench.action.splitEditorDown"), opts)
map("n", "s", vscode_command("workbench.action.splitEditorRight"), opts)

-- Navigate between editors
map("n", "<C-h>", vscode_command("workbench.action.navigateLeft"), opts)
map("n", "<C-l>", vscode_command("workbench.action.navigateRight"), opts)
map("n", "<C-j>", vscode_command("workbench.action.navigateDown"), opts)
map("n", "<C-k>", vscode_command("workbench.action.navigateUp"), opts)

-- Editor management
map("n", "<leader>q", vscode_command("workbench.action.closeActiveEditor"), opts)
map("n", ";", vscode_command("editor.action.wordHighlight.next"), opts)

-- File explorer
map("n", "<leader>e", vscode_command("vsnetrw.open"), opts)

-- Go to implementation
map("n", "gi", vscode_command("editor.action.goToImplementation"), opts)

-- Clipboard (sistema)
map("n", "yy", '"+yy', { noremap = true })
map("v", "y", '"+y', { noremap = true })

-- Git changes navigation
map("n", "<cr>", vscode_command("workbench.action.editor.nextChange"), opts)
map("n", "<bs>", vscode_command("workbench.action.editor.previousChange"), opts)