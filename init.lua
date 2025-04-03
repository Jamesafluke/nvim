local kinesis = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.undofile = true

--James Added stuff

if kinesis then
	-- Normal mode
	vim.keymap.set("n", "h", "<Left>", { noremap = true, silent = true })
	vim.keymap.set("n", "n", "<Down>", { noremap = true, silent = true })
	vim.keymap.set("n", "e", "<Up>", { noremap = true, silent = true })
	vim.keymap.set("n", "i", "<Right>", { noremap = true, silent = true })
	vim.keymap.set("n", "l", "i", { noremap = true, silent = true })
	vim.keymap.set("n", "m", "n", { noremap = true, silent = true })
	vim.keymap.set("n", "M", "N", { noremap = true, silent = true })
	vim.keymap.set("n", "L", "I", { noremap = true, silent = true })

	-- Visual mode
	vim.keymap.set("v", "h", "<Left>", { noremap = true, silent = true })
	vim.keymap.set("v", "n", "<Down>", { noremap = true, silent = true })
	vim.keymap.set("v", "e", "<Up>", { noremap = true, silent = true })
	--This one is reserved deep down. I haven't tried too hard to fix. Guess I'll live with it. Why can't people respect alternate keyboard layouts?
	--vim.keymap.set("v", "i", "<Right>", { noremap = true, silent = true })

	vim.keymap.set("v", "l", "i", { noremap = true, silent = true })
	vim.keymap.set("v", "m", "n", { noremap = true, silent = true })
	vim.keymap.set("v", "M", "N", { noremap = true, silent = true })
	vim.keymap.set("v", "L", "I", { noremap = true, silent = true })
	

	vim.keymap.set("v", "N", ":m '>+1<CR>gv-gv")
	vim.keymap.set("v", "E", ":m '<-2<CR>gv-gv")
else
end

vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

--Keep cursor centered while jumping.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")


vim.opt.ignorecase = true
vim.opt.smartcase = true


vim.opt.scrolloff = 18


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)
