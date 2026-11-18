vim.filetype.add({
  extension = {
    tpp = "cpp",
  },
})
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard:append("unnamedplus")
vim.opt.wrap = false

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local line = vim.fn.line("'\"")
    if
      line > 1
      and line <= vim.fn.line("$")
      and vim.bo.filetype ~= "commit"
      and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
    then
      vim.cmd('normal! g`"')
    end
  end,
})
vim.opt.scrolloff = 999
