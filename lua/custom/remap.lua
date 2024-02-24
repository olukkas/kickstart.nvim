local function nmap(key, command, opts)
	opts = opts or {}
	vim.keymap.set('n', key, command, opts)
end

local function vmap(key, command, opts)
	opts = opts or {}
	vim.keymap.set('v', key, command, opts)
end

vmap("J", ":m '>+1<CR>gv=gv")
vmap("K", ":m '<-2<CR>gv=gv")
nmap('J', "mzJ`z")
nmap("<C-d>", "<C-d>zz")
nmap("<C-u>", "<C-u>zz")
nmap("n", "nzzzv")
nmap("N", "Nzzzv")
nmap('<leader>ww', '<cmd>w<cr>', { desc = "Write the changes made in current buffer" })
nmap('<leader>qq', '<cmd>q<cr>', { desc = "Quit" })

-- OIL
nmap("-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Fugitive
nmap('<leader>gc', '<cmd>Git commit<cr>', { desc = '[G]it [C]ommit' })
nmap('<leader>gp', '<cmd>Git push<cr>', { desc = '[G]it [P]ush' })
