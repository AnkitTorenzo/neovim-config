return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        config = function()
            require "configs.conform"
        end,
    },
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
    },
    {
        "HiPhish/nvim-ts-rainbow2",
        lazy = false,
    },
    {
        "neovim/nvim-lspconfig",
        confign = function()
            require("nvchad.configs.lspconfig").defaults()
            require "configs.lspconfig"
        end,
    },
    -- These are some examples, uncomment them if you want to see them work!
    -- {
    --   "neovim/nvim-lspconfig",
    --   config = function()
    --     require("nvchad.configs.lspconfig").defaults()
    --     require "configs.lspconfig"
    --   end,
    -- },
    --
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "neovim/nvim-lspconfig",
        }
    },
    {
    	"williamboman/mason.nvim",
    	opts = {
    		ensure_installed = {
    			"lua-language-server", "stylua", "typescript-language-server",
    			"html-lsp", "css-lsp" , "prettier", "eslint-lsp", "js-debug-adapter"
    		},
    	},
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        event = "VeryLazy",
        opts = function ()
            return require("configs.null-ls")
        end
    },
    {
        "mfussenegger/nvim-dap",
        config = function ()
           require("configs.dap")
        end
    },
    {
        "rcarriga/nvim-dap-ui",
        event = "VeryLazy",
        dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
        config = function ()
            local dap = require("dap")
            local dapui = require("dapui")
            dapui.setup()

            dap.listeners.after.event_initialized["dapui_config"] = function ()
               dapui.open()
            end

            dap.listeners.before.event_terminated["dapui_config"] = function ()
               dapui.close()
            end

            dap.listeners.before.even_exit["dapui_config"] = function ()
               dapui.close()
            end
        end
    }
    --
    -- {
    -- 	"nvim-treesitter/nvim-treesitter",
    -- 	opts = {
    -- 		ensure_installed = {
    -- 			"vim", "lua", "vimdoc",
    --      "html", "css"
    -- 		},
    -- 	},
    -- },
}
