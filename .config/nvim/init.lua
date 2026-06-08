vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

--      ==========================================
--      =====      Configuracion global      =====
--      ==========================================

vim.opt.number = true               -- Números fijos tradicionales
vim.opt.showcmd = true              -- Ver comandos a medias
vim.opt.showmatch = true            -- Parpadeo de paréntesis
vim.opt.termguicolors = true        -- Colores reales
vim.opt.relativenumber = false      -- Desactivar relativos :
vim.opt.encoding = "utf-8"          -- Codificación UTF-8
vim.opt.mouse = "a"                 -- Activar el ratón
vim.o.clipboard = "unnamedplus"
vim.opt.clipboard = "unnamedplus"



vim.api.nvim_set_keymap('v', 'y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'yy', '"+yy', { noremap = true, silent = true })
-- Mover líneas con Shift + Flechas
vim.keymap.set('n', '<S-Down>', ':m .+1<CR>==', { silent = true })
vim.keymap.set('n', '<S-Up>', ':m .-2<CR>==', { silent = true })
vim.keymap.set('v', '<S-Down>', ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set('v', '<S-Up>', ":m '<-2<CR>gv=gv", { silent = true })


-- ==========================================
-- 2. INSTALADOR DE PLUGINS (LAZY.NVIM)
-- ==========================================
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- ==========================================
-- 3. LISTA DE PLUGINS A INSTALAR
-- ==========================================
require("lazy").setup({
  -- Iconos para la barra
  { "nvim-tree/nvim-web-devicons" },

  -- La barra Lualine Personalizada
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto",
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
        },
        sections = {
          lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
          lualine_b = { 'filename', 'branch' },
          lualine_c = { 'diagnostics' },
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { { 'location', separator = { right = '' }, left_padding = 2 } },
        },
      })
    end
  }
})
