-- C:/Misc_languages/jammy/std/array.jam - GENERATED 2021-11-12, 9:54:12 p.m.
-- JAMMY BOILERPLATE
local __require_params = (...);if not __require_params then error("Cannot run this module because it was not compiled as an entry point.") end;local __parent_dir = __require_params:match("(.-)[^%.]+$"):gsub("%.", "/");local function import(path) return require(path_join(__parent_dir, path):gsub("/", ".")) end;local exports={};__env = {};setmetatable(__env, { __index = _G });
-- END JAMMY BOILERPLATE
local __match_type, __typecheck, __typecheck_arg, __typecheck_arg_optional, __typecheck_arg_union, __typecheck_arg_union_optional, types, type_advanced, typechecks = __import(9, {__match_type, __typecheck, __typecheck_arg, __typecheck_arg_optional, __typecheck_arg_union, __typecheck_arg_union_optional, types, type_advanced, typechecks}, require(path_join(__root_dir, "std/types"):gsub("/", ".")));__env.__match_type, __env.__typecheck, __env.__typecheck_arg, __env.__typecheck_arg_optional, __env.__typecheck_arg_union, __env.__typecheck_arg_union_optional, __env.types, __env.type_advanced, __env.typechecks = __match_type, __typecheck, __typecheck_arg, __typecheck_arg_optional, __typecheck_arg_union, __typecheck_arg_union_optional, types, type_advanced, typechecks;
local array;do local __class;local __super = nil;local __base = {};typechecks = table.merge(typechecks, { array = function(arg) return (type(arg)=="table") and has_metatable(arg, __base) end });
__class = setmetatable({
        __init = function(self, ...) local elements = {...} if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
self._elements = elements end,
        __base = __base,
        __name = array,
        __super = __super
    }, {
        __index = __base,
        __call = function(self, ...)
            local instance = setmetatable({}, __base)
            self.__init(instance, ...)
            return instance
        end
    });array = __class;__base["super"] = __super;__base["__name"] = "array";__base["new"] = function(...) local elements = {...} return array(unpack(elements)) end;__base["is_array"] = function(a) return (((((type(a))=="table")) and a.__type) and ((a.__type=="array"))) end;__base["from_table"] = function(t) __typecheck_arg(typechecks, 1, t, "table");return array(unpack(t)) end;__base["__index"] = function(self, key) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, key, "exists");if (type(key)=="number") then return self._elements[((key+1))] else if (key=="length") then return #(self._elements) else return array[key] end end end;__base["__newindex"] = function(self, key, value) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, key, "exists");if (type(key)=="number") then if (((key<0)) or ((key>self.length))) then error(string.format("Attempt to set out-of-bounds index in array: %s -- Valid bounds are [0, %s)", tostring(key), tostring(self.length))) else self._elements[((key+1))] = value end else rawset(self, key, value) end end;__base["__tostring"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
local str = "[ ";
local n = #(self._elements);
for i = 1, n do do str = (str..tostring(self._elements[i]));
if (i<n) then str = (str..", ") end;
end end;
do return (str.." ]") end end;__base["count"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return #(self._elements) end;__base["iter"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
local i, n = 0, #(self._elements);
do return function() i = (i+1);
if (i<=n) then do return self._elements[i] end end end end end;__base["ipairs"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
local i, n = 0, #(self._elements);
do return function() i = (i+1);
if (i<=n) then do return i, self._elements[i] end end end end end;__base["first_index_of"] = function(self, item) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
for i = 1, #(self._elements) do if (self._elements[i]==item) then do return (i-1) end end end end;__base["last_index_of"] = function(self, item) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
for i = #(self._elements), 1, -(1) do if (self._elements[i]==item) then do return (i-1) end end end end;__base["insert"] = function(self, i, item) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, i, "number");__typecheck_arg(typechecks, 2, item, "exists");table.insert(self._elements, i, item) end;__base["push_bottom"] = function(self, i, item) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, i, "number");__typecheck_arg(typechecks, 2, item, "exists");table.insert(self._elements, 1, item) end;__base["pop_bottom"] = function(self, i, item) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, i, "number");__typecheck_arg(typechecks, 2, item, "exists");table.remove(self._elements, 1) end;__base["push"] = function(self, item) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, item, "exists");self._elements[((#(self._elements)+1))] = item;
do return item end end;__base["pop"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
local n = #(self._elements);
local item = self._elements[n];
self._elements[n] = nil;
do return item end end;__base["remove_at"] = function(self, i) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, i, "number");return table.remove(self._elements, (i+1)) end;__base["remove"] = function(self, item) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, item, "exists");for i, v in ipairs(self._elements) do if (v==item) then table.remove(self._elements, i) end end end;__base["contains"] = function(self, item) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, item, "exists");return bool((function() for _, v in ipairs(self._elements) do if (item==v) then do return true end end end;
end)()) end;__base["has"] = array.contains;__base["get_elements"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return self._elements end;__base["shallow_copy"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return array.from_table(self._elements) end;__base["equal_to"] = function(a, b) __typecheck_arg(typechecks, 1, a, "array");__typecheck_arg(typechecks, 2, b, "array");if (#(a._elements)~=#(b._elements)) then do return false end end;
for i = 1, #(a._elements) do if ((a._elements[i])~=(b.elements[i])) then do return false end end end;
do return true end end;__base["slice"] = function(self, start_index, end_index) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, start_index, "number");__typecheck_arg_optional(typechecks, 2, end_index, "number");local sliced_table = tbl();
start_index = (start_index+1);
if (end_index==nil) then end_index = #(self._elements) end;
local j = 1;
for i = start_index, end_index do do sliced_table[j] = self._elements[i];
j = (j+1);
end end;
do return array.from_table(sliced_table) end end;__base["concat"] = function(a, b) __typecheck_arg(typechecks, 1, a, "array");__typecheck_arg(typechecks, 2, b, "array");local c = a:shallow_copy();
local a_n = #(a._elements);
for i, v in b:ipairs() do c._elements[((a_n+i))] = v end;
do return c end end;__base["clear"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
for i = 1, #(self._elements) do self._elements[i] = nil end end;__base["first"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return self._elements[1] end;__base["last"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return self._elements[(#(self._elements))] end;__base["head"] = array.first;__base["tail"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return self:slice(1) end;__base["get"] = function(self, i) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, i, "number");return self._elements[((i+1))] end;__base["set_elements"] = function(self, t) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, t, "table");local t_n, my_n = #(t._elements), #(self._elements);
local i = 1;
while (i<=t_n) do do self._elements[i] = t._elements[i];
i = (i+1);
end end;
while (i<=my_n) do do self._elements[i] = nil;
i = (i+1);
end end end;__base["each_i"] = function(self, f) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, f, "function");for i, v in ipairs(self._elements) do f(i, v) end end;__base["each"] = function(self, f) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, f, "function");for i, v in ipairs(self._elements) do f(v) end end;__base["set"] = function(self, i, item) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, i, "number");if (((i<0)) or ((i>=self.length))) then error(string.format("Attempt to set out-of-bounds index in array: %s -- Valid bounds are [0, %s)", tostring(i), tostring(self.length))) else do self._elements[((i+1))] = item;
do return item end;
end end end;__base["unpack"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return unpack(self._elements) end;__base.__index = __base.__index or __base;__base.__class = __class;if __super and __super.__inherited then __super:__inherited(__class) end;end ;
exports[1] = array -- to be imported as 'array';
 exports[2] = typechecks return exports;