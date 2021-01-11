local fn = vim.fn
local M = {
    cfg = {}
}

--[[
./install_gadget.py --force-enable-rust or :VimspectorInstall CodeLLDB
--]]
M.cfg.rust = function ()
    return {
        configurations = {
            ['Rust Launch'] = {
                adapter = "CodeLLDB",
                configuration = {
                    request = "launch",
                    program = "${workspaceRoot}/target/debug/<bin>"
                }
            }
        }
    }
end

--[[
install_gadget.py --enable-python
--]]
M.cfg.py = function ()
    return {
        configurations = {
            ['Python Launch'] = {
                adapter = 'debugpy',
                configuration = {
                    name = 'Launch',
                    type = 'python',
                    request = 'launch',
                    cwd = "${workspaceRoot}",
                    python = "/usr/bin/python3.8",
                    stopOnEntry = true,
                    console = "externalTerminal",
                    debugOptions = {},
                    program = "${file}"
                }
            },
            ['Python Attach'] = {
                adapter = "multi-session",
                configuration = {
                    request = "attach",
                    pathMappings = {}
                }
            }
        }
    }
end

--[[
install_gadget.py --enable-go or :VimspectorInstall vscode-go
Delve installed, e.g. go get -u github.com/go-delve/delve/cmd/dlv
Delve to be in your PATH, or specify the dlvToolPath launch option
--]]
M.cfg.go = function ()
    return {
        configurations = {
            ['Go Launch']= {
                adapter = "vscode-go",
                configuration = {
                    request = "launch",
                    program = "${fileDirname}",
                    mode = "debug",
                    dlvToolPath = "$HOME/go/bin/dlv"
                }
            }
        }
    }
end

--[[
install_gadget.py --force-enable-node
--]]
M.cfg.js = function ()
    return {
        configurations = {
            ['Node Launch'] = {
                adapter = "vscode-node",
                configuration = {
                    request = "launch",
                    protocol = "auto",
                    stopOnEntry = true,
                    console = "integratedTerminal",
                    program = "${workspaceRoot}/simple.js",
                    cwd = "${workspaceRoot}"
                }
            }
        }
    }
end

--[[
install_gadget.py --force-enable-java
--]]
M.cfg.java = function ()
    return {
        configurations = {
            ['Java Attach'] = {
                adapter = "vscode-java",
                configuration = {
                    request = "attach",
                    hostName = "${host}",
                    port = "${port}",
                    sourcePaths = {
                        "${workspaceRoot}/src/main/java",
                        "${workspaceRoot}/src/test/java"
                    }
                }
            }
        }
    }
end

--[[
# install_gadget.py --force-enable-php
zend_extension=xdebug.so
xdebug.mode=debug
xdebug.remote_handler=dbgp
xdebug.discover_client_host=true
xdebug.remote_port=9000
# curl "http://localhost?XDEBUG_SESSION_START=xdebug"
--]]
--
M.cfg.php = function ()
    return {
        configurations = {
            ['Listen for XDebug'] = {
                adapter = "vscode-php-debug",
                configuration = {
                    name = "Listen for XDebug",
                    type = "php",
                    request = "launch",
                    port = 9000,
                    stopOnEntry = false,
                    pathMappings = {
                        ['/srv'] = "${workspaceRoot}"
                    }
                }
            },
            ['Launch currently open script'] = {
                adapter = "vscode-php-debug",
                configuration = {
                    name = "Launch currently open script",
                    type = "php",
                    request = "launch",
                    program = "${file}",
                    cwd = "${fileDirname}",
                    port = 9000
                }
            }
        }
    }
end

function M:gen_vimspector_configuration(adapter)
    return self.cfg[adapter]()
end

function MakeVimspectorConfiguration(adapter)
    local origin = {}
    local content = M:gen_vimspector_configuration(adapter)
    local filename = fn.getcwd() .. '/.vimspector.json'
    if fn.filereadable(filename) ~= 0 then
        local old = fn.readfile(filename)
        local ostr = ""
        for _, s in ipairs(old) do
            ostr = ostr .. s
        end
        origin = fn.json_decode(ostr)
        if origin.configurations then
            for k, v in pairs(origin.configurations) do
                content.configurations[k] = v
            end
        end
    end
    fn.writefile({fn.json_encode(content)}, filename)
    vim.cmd('e '..filename..' | Format')
end

function M:get_lang_list()
    local r = {}
    for k, _ in pairs(self.cfg) do
        table.insert(r, k)
    end
    table.sort(r)
    return r
end

vim.api.nvim_set_var('VimspectorConfigurationSets', M:get_lang_list())
vim.api.nvim_exec([[
function! VimspectorConfigurationSetCompletion(ArgLead, CmdLine, CursorPos)
    return filter(g:VimspectorConfigurationSets, 'v:val =~ "^'. a:ArgLead .'"')
endfunction

command! -complete=customlist,VimspectorConfigurationSetCompletion -nargs=1 AddVimspectorConfiguration :lua MakeVimspectorConfiguration(<f-args>)
]], false)
-- local _ = vim.loop.os_uname()

