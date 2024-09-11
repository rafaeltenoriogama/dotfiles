-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Usar Ctrl + a para selecionar todo o arquivo
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", { noremap = true })
-- usar CTRL + x para substituir o :x que é salvar e sair.
vim.api.nvim_set_keymap("n", "<C-x>", ":wq<CR>", { noremap = true })
-- Salvar sem ter que ficar dando :w toda hora
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true })
-- --
