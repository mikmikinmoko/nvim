return {
  -- 1. LSP config with tsserver enabled for JS/TS
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {
          enabled = true,
          settings = {
            completions = {
              completeFunctionCalls = true,
            },
          },
          keys = {
            {
              "<leader>co",
              function()
                vim.lsp.buf.code_action({
                  apply = true,
                  context = {
                    only = { "source.organizeImports.ts" },
                    diagnostics = {},
                  },
                })
              end,
              desc = "Organize Imports",
            },
            {
              "<leader>cR",
              function()
                vim.lsp.buf.code_action({
                  apply = true,
                  context = {
                    only = { "source.removeUnused.ts" },
                    diagnostics = {},
                  },
                })
              end,
              desc = "Remove Unused Imports",
            },
          },
        },
      },
      setup = {
        tsserver = function(_, opts)
          require("typescript").setup({ server = opts })
          return true -- Let LazyVim handle tsserver setup
        end,
        vtsls = function()
          return false -- Disable Vue server
        end,
      },
    },
  },
}

-- 2. Completion plugin (nvim-cmp)

-- 3. typescript.nvim: adds useful TS/JS commands and utils

-- 4. lspsaga.nvim for improved UI (hover, code actions, diagnostics)
