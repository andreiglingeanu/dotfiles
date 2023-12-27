local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)


-- require("autoclose").setup()
require("nvim-autopairs").setup {}


