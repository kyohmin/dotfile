-- Set colorscheme
vim.cmd("colorscheme catppuccin-mocha")

-- Enable true color support
vim.opt.termguicolors = true

-- Make main UI elements transparent
-- vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
-- vim.cmd("highlight NormalNC guibg=NONE ctermbg=NONE")
-- vim.cmd("highlight EndOfBuffer guibg=NONE ctermbg=NONE")
-- vim.cmd("highlight VertSplit guibg=NONE ctermbg=NONE")

-- Make NvimTree and floating windows transparent
-- vim.cmd("highlight NvimTreeNormal guibg=NONE ctermbg=NONE")
-- vim.cmd("highlight NvimTreeNormalNC guibg=NONE ctermbg=NONE")
-- vim.cmd("highlight NormalFloat guibg=NONE ctermbg=NONE")
-- vim.cmd("highlight FloatBorder guibg=NONE ctermbg=NONE")

-- Optional: Make bufferline transparent too
-- vim.cmd("highlight BufferLineFill guibg=NONE")
-- vim.cmd("highlight TabLineFill guibg=NONE")

-- Plugins
require("bufferline").setup{}

