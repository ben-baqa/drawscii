-- src/vec2.jam - GENERATED 2021-11-12, 9:54:12 p.m.
-- JAMMY BOILERPLATE
local __require_params = (...);if not __require_params then error("Cannot run this module because it was not compiled as an entry point.") end;local __parent_dir = __require_params:match("(.-)[^%.]+$"):gsub("%.", "/");local function import(path) return require(path_join(__parent_dir, path):gsub("/", ".")) end;local exports={};__env = {};setmetatable(__env, { __index = _G });
-- END JAMMY BOILERPLATE
local __match_type, __typecheck, __typecheck_arg, __typecheck_arg_optional, __typecheck_arg_union, __typecheck_arg_union_optional, types, type_advanced, typechecks = __import(9, {__match_type, __typecheck, __typecheck_arg, __typecheck_arg_optional, __typecheck_arg_union, __typecheck_arg_union_optional, types, type_advanced, typechecks}, require(path_join(__root_dir, "std/types"):gsub("/", ".")));__env.__match_type, __env.__typecheck, __env.__typecheck_arg, __env.__typecheck_arg_optional, __env.__typecheck_arg_union, __env.__typecheck_arg_union_optional, __env.types, __env.type_advanced, __env.typechecks = __match_type, __typecheck, __typecheck_arg, __typecheck_arg_optional, __typecheck_arg_union, __typecheck_arg_union_optional, types, type_advanced, typechecks;
local vec2;do local __class;local __super = nil;local __base = {};typechecks = table.merge(typechecks, { vec2 = function(arg) return (type(arg)=="table") and has_metatable(arg, __base) end });
__class = setmetatable({
        __init = function(self, x, y) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
x = x == nil and (0) or x;y = y == nil and (0) or y;__typecheck_arg(typechecks, 1, x, "number");__typecheck_arg(typechecks, 2, y, "number");self.x, self.y = x, y end,
        __base = __base,
        __name = vec2,
        __super = __super
    }, {
        __index = __base,
        __call = function(self, ...)
            local instance = setmetatable({}, __base)
            self.__init(instance, ...)
            return instance
        end
    });vec2 = __class;__base["super"] = __super;__base["__name"] = "vec2";__base["copy"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return vec2(self:split()) end;__base["__unm"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return vec2(-(self.x), -(self.y)) end;__base["__add"] = function(self, v) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, v, "vec2");return vec2((self.x+v.x), (self.y+v.y)) end;__base["__sub"] = function(self, v) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, v, "vec2");return self:__add(v.__unm()) end;__base["__mul"] = function(self, a) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
local t = type(a) if (t=="number") then return vec2((self.x*a), (self.y*a)) elseif (t=="table") then return vec2((self.x*a.x), (self.y*a.y)) else return self end end;__base["__div"] = function(self, a) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
local t = type(a) if (t=="number") then return vec2((self.x/a), (self.y/a)) elseif (t=="table") then return vec2((self.x/a.x), (self.y/a.y)) else return self(2) end end;__base["__eq"] = function(self, v) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, v, "vec2");return ((self.x==(v.x and self.y))==v.y) end;__base["__tostring"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return string.format("(%s, %s)", tostring(self.x), tostring(self.y)) end;__base["zero"] = vec2(0, 0);__base["one"] = vec2(1, 1);__base["right"] = vec2(1, 0);__base["left"] = vec2(-(1), 0);__base["up"] = vec2(0, -(1));__base["down"] = vec2(0, 1);__base["square_magnitude"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
do return (((self.x*self.x))+((self.y*self.y))) end end;__base["magnitude"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
do return math.sqrt(self:square_magnitude()) end end;__base["angle"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return math.atan2(self.y, self.x) end;__base["split"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return self.x, self.y end;__base["floor"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
return vec2(math.floor(self.x), math.floor(self.y)) end;__base["lerp"] = function(self, v, f) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, v, "vec2");__typecheck_arg(typechecks, 2, f, "float");return (self+((((v-self))*f))) end;__base.__index = __base.__index or __base;__base.__class = __class;if __super and __super.__inherited then __super:__inherited(__class) end;end ;
exports[1] = vec2 -- to be imported as 'vec2';
 exports[2] = typechecks return exports;