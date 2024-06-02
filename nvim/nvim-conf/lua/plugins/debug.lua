return {
	{
		"folke/trouble.nvim",
		opts = {
			modes = {
				test = {
					mode = "diagnostics",
					preview = {
						type = "split",
						relative = "win",
						position = "right",
						size = 0.3,
					},
				},
			},
		}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>xx",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>xX",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
	}, -- {
	-- 	"mfussenegger/nvim-dap",
	-- 	dependencies = {
	-- 		-- Creates a beautiful debugger UI
	-- 		"rcarriga/nvim-dap-ui",
	--
	-- 		-- Installs the debug adapters for you
	-- 		"williamboman/mason.nvim",
	-- 		"jay-babu/mason-nvim-dap.nvim",
	--
	-- 		-- Add your own debuggers here
	-- 		"leoluz/nvim-dap-go",
	-- 	},
	-- 	config = function()
	-- 		local dap = require("dap")
	-- 		local dapui = require("dapui")
	--
	-- 		require("mason-nvim-dap").setup({
	-- 			automatic_setup = true,
	--
	-- 			-- see mason-nvim-dap README for more information
	-- 			handlers = {},
	--
	-- 			ensure_installed = {
	-- 				"delve",
	-- 			},
	-- 		})
	--
	-- 		dap.listeners.before.attach.dapui_config = function()
	-- 			dapui.open()
	-- 		end
	-- 		dap.listeners.before.launch.dapui_config = function()
	-- 			dapui.open()
	-- 		end
	-- 		dap.listeners.before.event_terminated.dapui_config = function()
	-- 			dapui.close()
	-- 		end
	-- 		dap.listeners.before.event_exited.dapui_config = function()
	-- 			dapui.close()
	-- 		end
	--
	-- 		vim.keymap.set("n", "<F5>", dap.continue, { desc = "Debug: Start/Continue" })
	-- 		vim.keymap.set("n", "<F1>", dap.step_into, { desc = "Debug: Step Into" })
	-- 		vim.keymap.set("n", "<F2>", dap.step_over, { desc = "Debug: Step Over" })
	-- 		vim.keymap.set("n", "<F3>", dap.step_out, { desc = "Debug: Step Out" })
	-- 		vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "Debug: Toggle Breakpoint" })
	-- 		vim.keymap.set("n", "<leader>B", function()
	-- 			dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
	-- 		end, { desc = "Debug: Set Breakpoint" })
	--
	-- 		-- Dap UI setup
	-- 		-- For more information, see |:help nvim-dap-ui|
	-- 		dapui.setup({
	-- 			-- Set icons to characters that are more likely to work in every terminal.
	-- 			--    Feel free to remove or use ones that you like more! :)
	-- 			--    Don't feel like these are good choices.
	-- 			icons = { expanded = "▾", collapsed = "▸", current_frame = "*" },
	-- 			controls = {
	-- 				icons = {
	-- 					pause = "⏸",
	-- 					play = "▶",
	-- 					step_into = "⏎",
	-- 					step_over = "⏭",
	-- 					step_out = "⏮",
	-- 					step_back = "b",
	-- 					run_last = "▶▶",
	-- 					terminate = "⏹",
	-- 					disconnect = "⏏",
	-- 				},
	-- 			},
	-- 		})
	--
	-- 		-- Toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
	-- 		vim.keymap.set("n", "<F7>", dapui.toggle, { desc = "Debug: See last session result." })
	--
	-- 		-- dap.listeners.after.event_initialized["dapui_config"] = dapui.open
	-- 		-- dap.listeners.before.event_terminated["dapui_config"] = dapui.close
	-- 		-- dap.listeners.before.event_exited["dapui_config"] = dapui.close
	--
	-- 		-- Install golang specific config
	-- 		require("dap-go").setup()
	-- 	end,
	-- },
}
