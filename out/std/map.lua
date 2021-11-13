-- C:/Misc_languages/jammy/std/map.jam - GENERATED 2021-11-12, 9:54:12 p.m.
-- JAMMY BOILERPLATE
local __require_params = (...);if not __require_params then error("Cannot run this module because it was not compiled as an entry point.") end;local __parent_dir = __require_params:match("(.-)[^%.]+$"):gsub("%.", "/");local function import(path) return require(path_join(__parent_dir, path):gsub("/", ".")) end;local exports={};__env = {};setmetatable(__env, { __index = _G });
-- END JAMMY BOILERPLATE
local number, iter, reduce, table_mt = __import(4, {number, iter, reduce, table_mt}, require(path_join(__root_dir, "std/iter"):gsub("/", ".")));__env.number, __env.iter, __env.reduce, __env.table_mt = number, iter, reduce, table_mt;debug.setmetatable(0, { __index = function(t, k) return __env.number[k] end });
local __match_type, __typecheck, __typecheck_arg, __typecheck_arg_optional, __typecheck_arg_union, __typecheck_arg_union_optional, types, type_advanced, typechecks = __import(9, {__match_type, __typecheck, __typecheck_arg, __typecheck_arg_optional, __typecheck_arg_union, __typecheck_arg_union_optional, types, type_advanced, typechecks}, require(path_join(__root_dir, "std/types"):gsub("/", ".")));__env.__match_type, __env.__typecheck, __env.__typecheck_arg, __env.__typecheck_arg_optional, __env.__typecheck_arg_union, __env.__typecheck_arg_union_optional, __env.types, __env.type_advanced, __env.typechecks = __match_type, __typecheck, __typecheck_arg, __typecheck_arg_optional, __typecheck_arg_union, __typecheck_arg_union_optional, types, type_advanced, typechecks;
local table = __import(1, {table}, require(path_join(__root_dir, "std/table"):gsub("/", ".")));__env.table = table;
local map;do local __class;local __super = nil;local __base = {};typechecks = table.merge(typechecks, { map = function(arg) return (type(arg)=="table") and has_metatable(arg, __base) end });
__class = setmetatable({
        __init = function(self, t) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
t = t == nil and ({  }) or t;__typecheck_arg(typechecks, 1, t, "table");self._elements = t end,
        __base = __base,
        __name = map,
        __super = __super
    }, {
        __index = __base,
        __call = function(self, ...)
            local instance = setmetatable({}, __base)
            self.__init(instance, ...)
            return instance
        end
    });map = __class;__base["__tostring"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return "<map>" end;__base["super"] = __super;__base["__name"] = "map";__base["set"] = function(self, k, v) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, k, "exists");self._elements[k] = v end;__base["get"] = function(self, k) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, k, "exists");return self._elements[k] end;__base["has"] = function(self, k) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, k, "exists");return bool(self._elements[k]) end;__base["remove"] = function(self, k) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, k, "exists");self._elements[k] = nil end;__base["clear"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
for k, v in pairs(self._elements) do self._elements[k] = nil end end;__base["size"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return reduce(0, tbl(pairs(self._elements)), function(n) return (n+1) end) end;__base["keys"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return reduce({  }, tbl(pairs(self._elements)), table.push) end;__base["values"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return reduce({  }, tbl(pairs(self._elements)), function(t, k, v) t[((#(t)+1))] = v end) end;__base["to_table"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return reduce({  }, tbl(pairs(self._elements)), table.set) end;__base["shallow_copy"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return map(self:to_table()) end;__base["pairs"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return pairs(self._elements) end;__base["set_elements"] = function(self, t) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, t, "table");self:clear();
for k, v in pairs(t) do self._elements[k] = v end end;__base["each"] = function(self, f) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, f, "function");for k, v in pairs(self._elements) do f(k) end end;__base["merge"] = function(a, b) __typecheck_arg(typechecks, 1, a, "map");__typecheck_arg(typechecks, 2, b, "map");return reduce(a:shallow_copy(), tbl(pairs(b._elements)), table.set) end;__base.__index = __base.__index or __base;__base.__class = __class;if __super and __super.__inherited then __super:__inherited(__class) end;end ;
exports[1] = map -- to be imported as 'map';
 exports[2] = typechecks return exports;