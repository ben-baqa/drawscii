-- C:/Misc_languages/jammy/std/function.jam - GENERATED 2021-11-12, 9:54:12 p.m.
-- JAMMY BOILERPLATE
local __require_params = (...);if not __require_params then error("Cannot run this module because it was not compiled as an entry point.") end;local __parent_dir = __require_params:match("(.-)[^%.]+$"):gsub("%.", "/");local function import(path) return require(path_join(__parent_dir, path):gsub("/", ".")) end;local exports={};__env = {};setmetatable(__env, { __index = _G });
-- END JAMMY BOILERPLATE
local __match_type, __typecheck, __typecheck_arg, __typecheck_arg_optional, __typecheck_arg_union, __typecheck_arg_union_optional, types, type_advanced, typechecks = __import(9, {__match_type, __typecheck, __typecheck_arg, __typecheck_arg_optional, __typecheck_arg_union, __typecheck_arg_union_optional, types, type_advanced, typechecks}, require(path_join(__root_dir, "std/types"):gsub("/", ".")));__env.__match_type, __env.__typecheck, __env.__typecheck_arg, __env.__typecheck_arg_optional, __env.__typecheck_arg_union, __env.__typecheck_arg_union_optional, __env.types, __env.type_advanced, __env.typechecks = __match_type, __typecheck, __typecheck_arg, __typecheck_arg_optional, __typecheck_arg_union, __typecheck_arg_union_optional, types, type_advanced, typechecks;
local number, iter, reduce, table_mt = __import(4, {number, iter, reduce, table_mt}, require(path_join(__root_dir, "std/iter"):gsub("/", ".")));__env.number, __env.iter, __env.reduce, __env.table_mt = number, iter, reduce, table_mt;debug.setmetatable(0, { __index = function(t, k) return __env.number[k] end });
local func_group;do local __class;local __super = nil;local __base = {};typechecks = table.merge(typechecks, { func_group = function(arg) return (type(arg)=="table") and has_metatable(arg, __base) end });
__class = setmetatable({
        __init = function(self, f) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, f, "func_def");self.functions = tbl();
self.hashmap_arg = tbl();
self.variadic_funcs = tbl();
self:add(f) end,
        __base = __base,
        __name = func_group,
        __super = __super
    }, {
        __index = __base,
        __call = function(self, ...)
            local instance = setmetatable({}, __base)
            self.__init(instance, ...)
            return instance
        end
    });func_group = __class;__base["super"] = __super;__base["__name"] = "func_group";__base["add"] = function(self, f) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, f, "func_def");self.functions[((#(self.functions)+1))] = f;
if f.maximum_args then do for i = f.minimum_args, f.maximum_args do do if not (self.hashmap_arg[i]) then self.hashmap_arg[i] = tbl() end;
self.hashmap_arg[i][((#(self.hashmap_arg[i])+1))] = f;
end end;
end else self.variadic_funcs[((#(self.variadic_funcs)+1))] = f end;
do return self end end;__base["is_func_group"] = function(x) __typecheck_arg(typechecks, 1, x, "exists");return (getmetatable(x)==func_group) end;__base["__call"] = function(self, ...) local args = {...} if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
local n = #(args);
if self.hashmap_arg[n] then for j, f in ipairs(self.hashmap_arg[n]) do do local good = true;
for i = 1, n do do if (f.types[i] and not (f.types[i]:check(f.typechecks, args[i]))) then do good = false;
break;
end end;
end end;
if good then do return f.f(unpack(args)) end end;
end end end;
for j, f in ipairs(self.variadic_funcs) do do local good = true;
for i = 1, f.minimum_args do do if (f.types[i] and not (f.types[i]:check(f.typechecks, args[i]))) then do good = false;
break;
end end;
end end;
if good then do return f.f(unpack(args)) end end;
end end;
error(string.format("No suitable overload found for the following arguments: %s\nThe following overloads are available:\n%s", tostring((function() if (#(args)>0) then return table.concat(tbl((function() local t = {} for i, v in ipairs(args) do t[#t+1] = types.to_string(v) end return unpack(t) end)()), ", ") else return "(no arguments)" end end)()), tostring(table.concat(tbl((function() local t = {} for i, v in ipairs(self.functions) do t[#t+1] = string.format(" - %s", tostring(v:__tostring())) end return unpack(t) end)()), "\n"))), 2) end;__base["__tostring"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return table.concat(tbl((function() local t = {} for i, v in ipairs(self.functions) do t[#t+1] = v:__tostring() end return unpack(t) end)()), " | ") end;__base.__index = __base.__index or __base;__base.__class = __class;if __super and __super.__inherited then __super:__inherited(__class) end;end ;
local func_def;do local __class;local __super = nil;local __base = {};typechecks = table.merge(typechecks, { func_def = function(arg) return (type(arg)=="table") and has_metatable(arg, __base) end });
__class = setmetatable({
        __init = function(self, c, f, t, v) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, c, "table");__typecheck_arg(typechecks, 2, f, "function");__typecheck_arg(typechecks, 3, t, "table");__typecheck_arg(typechecks, 4, v, "boolean");self.typechecks, self.f, self.types, self.is_variadic = c, f, t, v;
self.maximum_args = (function() if self.is_variadic then return nil else return #(self.types) end end)();
self.minimum_args = reduce(0, tbl(ipairs(self.types)), function(n, i, t) if ((t.is_optional or t.is_unchecked)) then return n else return i end end);
self.defined_types = reduce(0, tbl(ipairs(self.types)), function(n, i, t) if ((t.is_optional or t.is_unchecked)) then return n else return (n+1) end end) end,
        __base = __base,
        __name = func_def,
        __super = __super
    }, {
        __index = __base,
        __call = function(self, ...)
            local instance = setmetatable({}, __base)
            self.__init(instance, ...)
            return instance
        end
    });func_def = __class;__base["super"] = __super;__base["__name"] = "func_def";__base["match_types"] = function(self, args) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return not (not ((function() for i, v in ipairs(self.types) do if not (t:check(self.typechecks, args[i])) then do return false end end end;
end)())) end;__base["defined_matched_types"] = function(self, args) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return reduce(0, tbl(ipairs(self.types)), function(n, i, t) if (t.is_unchecked) then return n else if t:check(self.typechecks, args[i]) then return (n+1) else return n end end end) end;__base["__call"] = function(self, ...) local args = {...} if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return f(unpack(args)) end;__base["__tostring"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return string.format("(%s%s) => ...", tostring(table.concat(tbl((function() local t = {} for i, v in ipairs(self.types) do t[#t+1] = v:__tostring() end return unpack(t) end)()), ", ")), tostring((function() if self.is_variadic then return ", ..." else return "" end end)())) end;__base.__index = __base.__index or __base;__base.__class = __class;if __super and __super.__inherited then __super:__inherited(__class) end;end ;
exports[1] = func_group -- to be imported as 'func_group';
exports[2] = func_def -- to be imported as 'func_def';
 exports[3] = typechecks return exports;