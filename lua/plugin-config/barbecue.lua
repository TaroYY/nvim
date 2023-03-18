local status, barbecue = pcall(require, "barbecue")
if not status then
  vim.notify("没有找到 barbecue")
  return
end

barbecue.setup(
  {
    theme = "tokyonight"
  }
)
