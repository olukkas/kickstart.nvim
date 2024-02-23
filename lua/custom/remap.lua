local function nmap(key, command, opts)
  opts = opts or {}
	vim.keymap.set('n', key, command,opts)
end

local function vmap(key, command, opts)
  opts = opts or {}
	vim.keymap.set('v', key, command,opts)
end

vmap("J", ":m '>+1<CR>gv=gv")
vmap("K", ":m '<-2<CR>gv=gv")
nmap('J', "mzJ`z")
nmap("<C-d>", "<C-d>zz")
nmap("<C-u>", "<C-u>zz")
nmap("n", "nzzzv")
nmap("N", "Nzzzv")

-- OIL
nmap("-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
