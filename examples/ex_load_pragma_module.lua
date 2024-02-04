-- Example Lua script for loading the module.
-- To run this script, copy the Lua-file to "pragma/lua", then start a new game and run the following console command (without quotes):
-- "lua_exec_cl ex_load_pragma_module.lua"

local result = engine.load_library("pr_igl")
if(result ~= true) then
    -- Module failed to load
    console.print_warning("Failed to load \"IGL\" module: " .. r)
    return
end

-- The default module defines several demo Lua bindings in "src/pr_module.cpp", we can call them like so:
pr_igl.print()

local d = pr_igl.DemoClass()
d:PrintWarning("Hello World")
