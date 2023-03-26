-- 基础配置
require('basic')
-- 快捷键
require('keybindings')
-- Packer 插件管理
require("plugins")
-- 主题设置
require("plugin-config.tokyonight")
require("colorscheme")
-- 自动执行命令
require("autocmds")
-- 插件配置
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
require("plugin-config.telescope")
require("plugin-config.dashboard")
require("plugin-config.nvim-treesitter")
require("lsp.setup")
require("lsp.cmp")
require("plugin-config.indent-blankline")
require("lsp.formatter")
require("plugin-config.comment")
require("utils.im-select")
require("plugin-config.barbecue")
