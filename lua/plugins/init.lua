return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
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
  -- {
  -- 	"williamboman/mason.nvim",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"lua-language-server", "stylua",
  -- 			"html-lsp", "css-lsp" , "prettier"
  -- 		},
  -- 	},
  -- },
  --
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "javascript", "typescript", "tsx",
       "go", "gomod", "gosum", "gowork",
       "python", "rust", "sql",
       "csv", "dot",
       "dockerfile",
       "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore",
       "jq", "jsdoc", "json", "json5",
       "yaml",
  		},
  	},
  },

  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },

  {
    "neovim/nvim-lspconfig",
     config = function()
        require("nvchad.configs.lspconfig").defaults()
        require "configs.lspconfig"
     end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "prettier",
        "stylua",
        "gopls", "gotestsum", "gotests", "golines", "golangci-lint-langserver", "gomodifytags", "goimports-reviser", "goimports", "gofumpt", "go-debug-adapter", "golangci-lint"
      },
    },
  },

  {
      "toppair/peek.nvim",
      build = "deno task --quiet build:fast",
      keys = {
          {
          "<leader>op",
              function()
              local peek = require("peek")
                  if peek.is_open() then
              peek.close()
              else
              peek.open()
              end
          end,
          desc = "Peek (Markdown Preview)",
          },
      },
      opts = { theme = "light", app = "browser" },
  },

  {
      'numToStr/Comment.nvim',
      opts = {
          -- add any options here
      },
      lazy = false,
  }
}
