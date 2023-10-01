local M = {}

M.dap = {
  plugin = true,
	--  in normal mode, map space db as (d)ebug (b)rakepoint
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"},
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_python = {
	plugin = true,
	--  in normal mode, map space dpr as (d)ebug (p)ython (r)un
	n = {
		["<leader>dpr"] = {
			function()
				require('dap-python').test_method()
			end
		},
	},
}

-- --? move lines as in vscode
-- ["<S-j>"] = {":m .-2<CR>=="},
-- ["<S-k>"] = {":m .+1<CR>=="},
-- ["<S-J>"] = {":m '>+1<CR>gv=gv"},
-- ["<S-K>"] = {":m '<-2<CR>gv=gv"},


return M
