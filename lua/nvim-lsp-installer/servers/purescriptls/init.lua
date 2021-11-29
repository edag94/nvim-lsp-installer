local server = require "nvim-lsp-installer.server"
local npm = require "nvim-lsp-installer.installers.npm"
local path = require "nvim-lsp-installer.path"

return function(name, root_dir)
    return server.Server:new {
        name = name,
        root_dir = root_dir,
        languages = { "purescript" },
        homepage = "https://github.com/nwolverson/purescript-language-server",
        installer = npm.packages { "purescript-language-server" },
        default_options = {
            cmd = { "node", path.concat { root_dir, "out/src/server.js" }, "--stdio" },
        },
    }
end
