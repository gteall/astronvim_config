local utils = require "astronvim.utils"

-- vim.api.nvim_create_autocmd({ "InsertEnter" }, {
--   pattern = "*",
--   callback = function()
--     vim.opt.formatoptions = vim.opt.formatoptions - "o"
--   end,
-- })

-- vim.api.nvim_create_autocmd({ "BufEnter" }, {
--   pattern = "*",
--   callback = function()
--     vim.opt.formatoptions = vim.opt.formatoptions - "o"
--     utils.notify("BufEnter", vim.log.levels.WARN)
--   end,
-- })

-- 用o换行不要延续注释
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"cpp", "c"},
  callback = function()
    vim.opt.formatoptions = vim.opt.formatoptions - "o"
    -- utils.notify("FileType", vim.log.levels.WARN)
  end,
})

