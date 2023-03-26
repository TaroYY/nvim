-- 如果找不到lualine 组件，就不继续执行
local status, tokyonight = pcall(require, "tokyonight")
if not status then
  vim.notify("没有找到 tokyonight")
  return
end

tokyonight.setup({
  transparent = true,
})
