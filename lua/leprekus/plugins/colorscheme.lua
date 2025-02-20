return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night",  -- This sets the 'tokyonight-night' theme
      transparent = true,
	styles = {
       -- sidebars = "transparent",
       floats = "transparent",
    	}
    })
    vim.cmd("colorscheme tokyonight")  -- Activates the colorscheme
  end,
}

