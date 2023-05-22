local plugins = {
  -- {
  --   "vim-crystal/vim-crystal", -- 使用 vim-crystal 插件
  --   ft = "crystal" -- 对 crystal 后缀的文件类型(fileType)生效
  --   config = function(_) -- 启用 crystal 自动格式化
  --       vim.g.crystal_auto_format = 1
  --   end
  -- }
  -- 之后再执行 :Lazy sync 命令来让插件懒加载, 这样只有在第一次打开 crystal 文件的时候才会加载这个插件,
  -- {
  --  "neovim/vim-lspconfig",
  --  config = function ()
  --    require "plugins.configs.lspconfig"
  --    require "custom.configs.lspconfig"
  --  end
  -- }
}
return plugins
