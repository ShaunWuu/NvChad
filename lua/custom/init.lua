-- 换行线长度80
vim.opt.colorcolumn = "120"
-- 文件编码
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- 行号高亮当前行
vim.wo.cursorline = true
-- 换行线长度为 80
-- vim.wo.colorcolumn = "80"
-- 缩进默认 4 个空格
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
-- << >> 缩进命令长度
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
-- 新行对齐当前行，空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true
-- 禁止折行
vim.o.wrap = false
vim.wo.wrap = false
-- 行结尾可以跳到下一行
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
-- 鼠标支持
vim.o.mouse = "a"
-- 不可见字符的显示，这里只把空格显示为一个点
vim.o.list = true
vim.o.listchars = "space:·"
-- always show tabline
vim.o.showtabline = 2

-- shell
-- vim.o.shell = "pwsh.exe"

-- neovide 字体
vim.opt.guifont = {"JetBrainsMono Nerd Font", ":h11"}

-- 支持操作系统复制粘贴
if vim.g.neovide then
  -- vim.g.neovide_input_use_logo = 1 -- enable use of the logo (cmd) key
  vim.keymap.set('v', '<C-Insert>', '"+y') -- Copy
  vim.keymap.set('n', '<S-Insert>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<S-Insert>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<S-Insert>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<S-Insert>', '<ESC>l"+Pli') -- Paste insert mode
end

-- Allow clipboard copy paste in neovim
-- vim.g.neovide_input_use_logo = 1
vim.api.nvim_set_keymap('', '<S-Insert>', '+p<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('!', '<S-Insert>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<S-Insert>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<S-Insert>', '<C-R>+', { noremap = true, silent = true})

