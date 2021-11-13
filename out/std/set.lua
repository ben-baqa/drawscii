-- C:/Misc_languages/jammy/std/set.jam - GENERATED 2021-11-12, 9:54:12 p.m.
-- JAMMY BOILERPLATE
local __require_params = (...);if not __require_params then error("Cannot run this module because it was not compiled as an entry point.") end;local __parent_dir = __require_params:match("(.-)[^%.]+$"):gsub("%.", "/");local function import(path) return require(path_join(__parent_dir, path):gsub("/", ".")) end;local exports={};__env = {};setmetatable(__env, { __index = _G });
-- END JAMMY BOILERPLATE
local __match_type, __typecheck, __typecheck_arg, __typecheck_arg_optional, __typecheck_arg_union, __typecheck_arg_union_optional, types, type_advanced, typechecks = __import(9, {__match_type, __typecheck, __typecheck_arg, __typecheck_arg_optional, __typecheck_arg_union, __typecheck_arg_union_optional, types, type_advanced, typechecks}, require(path_join(__root_dir, "std/types"):gsub("/", ".")));__env.__match_type, __env.__typecheck, __env.__typecheck_arg, __env.__typecheck_arg_optional, __env.__typecheck_arg_union, __env.__typecheck_arg_union_optional, __env.types, __env.type_advanced, __env.typechecks = __match_type, __typecheck, __typecheck_arg, __typecheck_arg_optional, __typecheck_arg_union, __typecheck_arg_union_optional, types, type_advanced, typechecks;
local table = __import(1, {table}, require(path_join(__root_dir, "std/table"):gsub("/", ".")));__env.table = table;
local number, iter, reduce, table_mt = __import(4, {number, iter, reduce, table_mt}, require(path_join(__root_dir, "std/iter"):gsub("/", ".")));__env.number, __env.iter, __env.reduce, __env.table_mt = number, iter, reduce, table_mt;debug.setmetatable(0, { __index = function(t, k) return __env.number[k] end });
local set;do local __class;local __super = nil;local __base = {};typechecks = table.merge(typechecks, { set = function(arg) return (type(arg)=="table") and has_metatable(arg, __base) end });
__class = setmetatable({
        __init = function(self, ...) local elements = {...} if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
self._elements = {  };
for k, v in pairs(elements) do self._elements[v] = true end end,
        __base = __base,
        __name = set,
        __super = __super
    }, {
        __index = __base,
        __call = function(self, ...)
            local instance = setmetatable({}, __base)
            self.__init(instance, ...)
            return instance
        end
    });set = __class;__base["super"] = __super;__base["__name"] = "set";__base["new"] = function(...) local elements = {...} return set(unpack(elements)) end;__base["contains"] = function(self, e) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, e, "exists");return (self._elements[e]==true) end;__base["has"] = set.contains;__base["add"] = function(self, e) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, e, "exists");self._elements[e] = true end;__base["remove"] = function(self, e) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, e, "exists");self._elements[e] = nil end;__base["size"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return table.length(self._elements) end;__base["cardinality"] = set.size;__base["strict_subset"] = function(a, b) __typecheck_arg(typechecks, 1, a, "set");__typecheck_arg(typechecks, 2, b, "set");if (a:size()>=b:size()) then do return false end end;
for k, _ in pairs(a._elements) do if not ((b._elements[k])) then do return false end end end;
do return true end end;__base["subset"] = function(a, b) __typecheck_arg(typechecks, 1, a, "set");__typecheck_arg(typechecks, 2, b, "set");if (a:size()>b:size()) then do return false end end;
for k, _ in pairs(a._elements) do if not ((b._elements[k])) then do return false end end end;
do return true end end;__base["equal_to"] = function(a, b) __typecheck_arg(typechecks, 1, a, "set");__typecheck_arg(typechecks, 2, b, "set");if (a:size()~=b:size()) then do return false end end;
for k, _ in pairs(a._elements) do if not ((b._elements[k])) then do return false end end end;
do return true end end;__base["superset"] = function(a, b) __typecheck_arg(typechecks, 1, a, "set");__typecheck_arg(typechecks, 2, b, "set");return b:subset(a) end;__base["strict_superset"] = function(a, b) __typecheck_arg(typechecks, 1, a, "set");__typecheck_arg(typechecks, 2, b, "set");return b:strict_subset(a) end;__base["superset_eq"] = function(a, b) __typecheck_arg(typechecks, 1, a, "set");__typecheck_arg(typechecks, 2, b, "set");return b:subset(a) end;__base["iter"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
local elements = self:to_table();
local n = #(elements);
local i = 0;
do return function() i = (i+1);
if (i<=n) then do return elements[i] end end end end end;__base["to_table"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return reduce({  }, tbl(pairs(self._elements)), table.push) end;__base["shallow_copy"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return set(unpack(self:to_table())) end;__base["clear"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
for x in self:iter() do self._elements[x] = nil end end;__base["set_elements"] = function(self, t) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, t, "set");self:clear();
for item in t:iter() do self._elements[item] = true end end;__base["__tostring"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
local str = "{ ";
local i, n = 0, table.length(self._elements);
for k, _ in pairs(self._elements) do do str = (str..tostring(k));
i = (i+1);
if (i<n) then str = (str..", ") end;
end end;
do return (str.." }") end end;__base["each"] = function(self, f) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, f, "function");for k, v in pairs(self._elements) do f(k) end end;__base["union"] = function(a, b) __typecheck_arg(typechecks, 1, a, "set");__typecheck_arg(typechecks, 2, b, "set");local c = a:shallow_copy();
for x in b:iter() do c._elements[x] = true end;
do return c end end;__base["intersect"] = function(a, b) __typecheck_arg(typechecks, 1, a, "set");__typecheck_arg(typechecks, 2, b, "set");local c = set();
for x in a:iter() do if b._elements[x] then c._elements[x] = true end end;
do return c end end;__base["difference"] = function(a, b) __typecheck_arg(typechecks, 1, a, "set");__typecheck_arg(typechecks, 2, b, "set");local c = a:shallow_copy();
for x in b:iter() do c._elements[x] = nil end;
do return c end end;__base["unpack"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return unpack(self:to_table()) end;__base.__index = __base.__index or __base;__base.__class = __class;if __super and __super.__inherited then __super:__inherited(__class) end;end ;
exports[1] = set -- to be imported as 'set';
 exports[2] = typechecks return exports;