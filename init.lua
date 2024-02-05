-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Install Lazy vim ]]
require 'lazy-bootstrap'

-- [[ Configure plugins ]]
require 'lazy-plugins'

-- [[ Setting options ]]
require 'options'

-- [[ Keymaps ]]
require 'keymaps'

-- [[ Telescope Setup ]]
require 'telescope-setup'

-- [[ Treesitter Setup ]]
require 'treesitter-setup'

-- [[ Configure LSP ]]
require 'lsp-setup'

-- [[ Configure nvim-cmp ]]
require 'cmp-setup'


-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
