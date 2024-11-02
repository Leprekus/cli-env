return {
    "williamboman/mason.nvim",
    config = function()
        local mason_status_ok, mason = pcall(require, "mason")
        if not mason_status_ok then
          return
        end

        -- Setup Mason
        mason.setup()

        local mason_lspconfig_status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
        if not mason_lspconfig_status_ok then
          return
        end

        -- Setup mason-lspconfig with automatic installation of servers
        mason_lspconfig.setup({
            ensure_installed = { "lua_ls", "pyright", "tsserver", "clangd", "rust_analyzer" },  -- Add the servers you need
            automatic_installation = true,  -- Automatically install if not already installed
        })

        local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
        if not lspconfig_status_ok then
          return
        end

        -- Example configuration for Lua, Python, TypeScript, C, and Rust LSP servers
        lspconfig.lua_ls.setup {}        -- Configure Lua LSP
        lspconfig.pyright.setup {}       -- Configure Python LSP
        lspconfig.tsserver.setup {}      -- Configure TypeScript LSP
        lspconfig.clangd.setup {}        -- Configure C/C++ LSP
        lspconfig.rust_analyzer.setup {} -- Configure Rust LSP
    end
}

