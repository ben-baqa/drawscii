-- C:/Misc_languages/jammy/std/types.jam - GENERATED 2021-11-12, 9:54:12 p.m.
-- JAMMY BOILERPLATE
local __require_params = (...);if not __require_params then error("Cannot run this module because it was not compiled as an entry point.") end;local __parent_dir = __require_params:match("(.-)[^%.]+$"):gsub("%.", "/");local function import(path) return require(path_join(__parent_dir, path):gsub("/", ".")) end;local exports={};__env = {};setmetatable(__env, { __index = _G });
-- END JAMMY BOILERPLATE
local primitives = { ["nil"] = true, ["number"] = true, ["string"] = true, ["boolean"] = true, ["table"] = true, ["thread"] = true, ["userdata"] = true, ["function"] = true };
local __typeerror;__typeerror = function(i, v, e) return error(string.format("bad argument #%s to %s (%s expected, got %s)", tostring(i), tostring(debug.getinfo(3, "nl").name), tostring(e), tostring(type(v))), 3) end;
local __match_type;__match_type = function(c, v, t) if primitives[t] then return (type(v)==t) else return ((c and c[t]) and ((c[t])(v))) end end;
local __typecheck_arg;__typecheck_arg = function(c, i, v, t) if not (__match_type(c, v, t)) then __typeerror(i, v, t) end end;
local __typecheck_arg_optional;__typecheck_arg_optional = function(c, i, v, t) if (((v~=nil)) and not (__match_type(c, v, t))) then __typeerror(i, v, (t.." or nil")) end end;
local __typecheck_arg_union;__typecheck_arg_union = function(c, i, v, ts) for _, t in ipairs(ts) do if __match_type(c, v, t) then do return true end end end;
__typeerror(i, v, table.concat(ts, " or ")) end;
local __typecheck_arg_union_optional;__typecheck_arg_union_optional = function(c, i, v, ts) if (v==nil) then do return true end end;
for _, t in ipairs(ts) do if __match_type(c, v, t) then do return true end end end;
__typeerror(i, v, (table.concat(ts, " or ").." or nil")) end;
local types = { ["subclass_of"] = function(proto) __typecheck_arg(typechecks, 1, proto, "table");return function(arg) return (((type(arg)=="table")) and ((arg.__class==proto))) end end, ["has_metatable"] = function(t) __typecheck_arg(typechecks, 1, t, "table");return function(arg) return has_metatable(arg, t) end end, ["to_string"] = function(v) if ((((type(v)=="table")) and v.__class) and v.__class.__name) then return v.__class.__name else return type(v) end end };
typechecks.exists = (typechecks.exists or (function(x) return (x~=nil) end));
typechecks.int = (typechecks.int or (function(x) return (((type(x)=="number")) and ((math.fmod(x, 1)==0))) end));
typechecks.positive = (typechecks.positive or (function(x) return ((((type(x)=="number")) and (((math.fmod(x, 1)==0)) and x))>=0) end));
typechecks.natural = (typechecks.natural or (function(x) return ((((type(x)=="number")) and (((math.fmod(x, 1)==0)) and x))>0) end));
typechecks.callable = (typechecks.callable or (function(x) return (((type(x)=="function")) or ((((type(x)=="table")) and (function() local mt = getmetatable(x);
do return (((type(mt)=="table")) and ((type(mt.__call)=="function"))) end;
end)()))) end));
local type_advanced;do local __class;local __super = nil;local __base = {};typechecks = table.merge(typechecks, { type_advanced = function(arg) return (type(arg)=="table") and has_metatable(arg, __base) end });
__class = setmetatable({
        __init = function(self, is_unchecked, is_optional, ...) local types = {...} if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
self.is_unchecked = is_unchecked;
self.is_optional = (is_optional or is_unchecked);
self.types = (types or tbl()) end,
        __base = __base,
        __name = type_advanced,
        __super = __super
    }, {
        __index = __base,
        __call = function(self, ...)
            local instance = setmetatable({}, __base)
            self.__init(instance, ...)
            return instance
        end
    });type_advanced = __class;__base["super"] = __super;__base["__name"] = "type_advanced";__base["check"] = function(self, c, v) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
if self.is_unchecked then do return true end end;
if (self.is_optional and ((v==nil))) then do return true end end;
for i, t in ipairs(self.types) do if __match_type(c, v, t) then do return true end end end end;__base["__tostring"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
if self.is_unchecked then return "any" else return (table.concat(self.types, ", ")..((function() if self.is_optional then return "?" else return "" end end)())) end end;__base.__index = __base.__index or __base;__base.__class = __class;if __super and __super.__inherited then __super:__inherited(__class) end;end ;
exports[1] = __match_type -- to be imported as '__match_type';
exports[2] = __typecheck -- to be imported as '__typecheck';
exports[3] = __typecheck_arg -- to be imported as '__typecheck_arg';
exports[4] = __typecheck_arg_optional -- to be imported as '__typecheck_arg_optional';
exports[5] = __typecheck_arg_union -- to be imported as '__typecheck_arg_union';
exports[6] = __typecheck_arg_union_optional -- to be imported as '__typecheck_arg_union_optional';
exports[7] = types -- to be imported as 'types';
exports[8] = type_advanced -- to be imported as 'type_advanced';
 exports[9] = typechecks return exports;