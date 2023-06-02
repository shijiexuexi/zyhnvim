local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set("n", "<Leader>v", "<C-w>v", opts)
--屏幕切换
vim.keymap.set("n", "<C-q>", "<C-w>q", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
--Esc替换
map("i", "jj", "<Esc>", opts)
--"j""k"的配置
vim.keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
vim.keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })
--Ctrl-o,Ctrl-e的配置
vim.keymap.set("n", "<Leader>[", "<C-O>", opts)
vim.keymap.set("n", "<Leader>]", "<C-I>", opts)
--打开侧边栏
map("n", "<A-m>", ":NvimTreeToggle<CR>", opts)
--module 'schemastore' not found: bufferline
-- bufferlinemodule 'schemastore' not found:
-- 左右Tab切换
map("n", "<A-h>", ":BufferLineCyclePrev<CR>", opts)
map("n", "<A-l>", ":BufferLineCycleNext<CR>", opts)
-- 关闭
--"moll/vim-bbye"
map("n", "<C-w>", ":bdelete!<CR>", opts)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opts)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opts)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opts)
-- lsp 回调函数快捷键设置
  -- rename
  --[[
  Lspsaga 替换 rn
  map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  --]]
  map("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
  -- code action
  --[[
  Lspsaga 替换 ca
  mapbuf("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
  --]]
  map("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
  -- go xx
  --[[
    mapbuf('n', 'gd', '<cmd>Lspsaga preview_definition<CR>', opt)
  --]]
  map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  --[[
  Lspsaga 替换 gh
  mapbuf("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
  --]]
  map("n", "gh", "<cmd>Lspsaga hover_doc<cr>", opts)
  --[[
  Lspsaga 替换 gr
  mapbuf("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
  --]]
  map("n", "gr", "<cmd>Lspsaga lsp_finder<CR>", opts)
  --[[
  Lspsaga 替换 gp, gj, gk
  mapbuf("n", "gp", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
  mapbuf("n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
  mapbuf("n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
  --]]
  -- diagnostic
  map("n", "gp", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
  map("n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
  map("n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
  map("n", "<leader>l", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  -- 未用
  -- mapbuf("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  -- mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  -- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
  -- mapbuf("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opt)
  -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
  -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)

-- nvim-cmp 自动补全
