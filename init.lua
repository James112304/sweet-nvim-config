local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  'stevearc/oil.nvim',
  config = function()
	vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end,
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
}
})
vim.opt.number = true
vim.opt.relativenumber = true
vim.keymap.set("n", "<space>n", function()
	--vim.opt.number = not vim.opt.number
	vim.opt.relativenumber =  notm.opt.relativenumber
end)
