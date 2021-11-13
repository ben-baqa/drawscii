-- src/textGrid.jam - GENERATED 2021-11-12, 9:54:12 p.m.
-- JAMMY BOILERPLATE
local __require_params = (...);if not __require_params then error("Cannot run this module because it was not compiled as an entry point.") end;local __parent_dir = __require_params:match("(.-)[^%.]+$"):gsub("%.", "/");local function import(path) return require(path_join(__parent_dir, path):gsub("/", ".")) end;local exports={};__env = {};setmetatable(__env, { __index = _G });
-- END JAMMY BOILERPLATE
local __match_type, __typecheck, __typecheck_arg, __typecheck_arg_optional, __typecheck_arg_union, __typecheck_arg_union_optional, types, type_advanced, typechecks = __import(9, {__match_type, __typecheck, __typecheck_arg, __typecheck_arg_optional, __typecheck_arg_union, __typecheck_arg_union_optional, types, type_advanced, typechecks}, require(path_join(__root_dir, "std/types"):gsub("/", ".")));__env.__match_type, __env.__typecheck, __env.__typecheck_arg, __env.__typecheck_arg_optional, __env.__typecheck_arg_union, __env.__typecheck_arg_union_optional, __env.types, __env.type_advanced, __env.typechecks = __match_type, __typecheck, __typecheck_arg, __typecheck_arg_optional, __typecheck_arg_union, __typecheck_arg_union_optional, types, type_advanced, typechecks;
local array, typechecks = __import(2, {array, typechecks}, require(path_join(__root_dir, "std/array"):gsub("/", ".")));__env.array, __env.typechecks = array, typechecks;
local number, iter, reduce, table_mt = __import(4, {number, iter, reduce, table_mt}, require(path_join(__root_dir, "std/iter"):gsub("/", ".")));__env.number, __env.iter, __env.reduce, __env.table_mt = number, iter, reduce, table_mt;debug.setmetatable(0, { __index = function(t, k) return __env.number[k] end });
local vec2, typechecks = __import(2, {vec2, typechecks}, import("vec2"));__env.vec2, __env.typechecks = vec2, typechecks;
local g = love.graphics;
local textGrid;do local __class;local __super = nil;local __base = {};typechecks = table.merge(typechecks, { textGrid = function(arg) return (type(arg)=="table") and has_metatable(arg, __base) end });
__class = setmetatable({
        __init = function(self, x, y, w, h, chars_x, chars_y, scale) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
x = x == nil and (0) or x;y = y == nil and (0) or y;w = w == nil and (100) or w;h = h == nil and (100) or h;chars_x = chars_x == nil and (10) or chars_x;chars_y = chars_y == nil and (10) or chars_y;scale = scale == nil and (1) or scale;__typecheck_arg(typechecks, 1, x, "number");__typecheck_arg(typechecks, 2, y, "number");__typecheck_arg(typechecks, 3, w, "number");__typecheck_arg(typechecks, 4, h, "number");__typecheck_arg(typechecks, 5, chars_x, "number");__typecheck_arg(typechecks, 6, chars_y, "number");__typecheck_arg(typechecks, 7, scale, "number");self.ar = array.new();
for i = 0, ((chars_y)-1) do do self.ar:push(array.new());
for j = 0, ((chars_x)-1) do self.ar[i]:push(":") end;
end end;
self.origin = vec2(x, y);
self.grid_size = vec2(chars_x, chars_y);
self.draw_size = vec2(w, h);
self.scale = (vec2.one*scale) end,
        __base = __base,
        __name = textGrid,
        __super = __super
    }, {
        __index = __base,
        __call = function(self, ...)
            local instance = setmetatable({}, __base)
            self.__init(instance, ...)
            return instance
        end
    });textGrid = __class;__base["super"] = __super;__base["__name"] = "textGrid";__base["draw"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
g.push();
g.scale(self.scale:split());
local pos = self.origin:copy();
local step = (self.draw_size/self.grid_size);
for i = 0, ((self.grid_size.y)-1) do do for j = 0, ((self.grid_size.x)-1) do do g.print(self.ar[i][j], pos:split());
pos.x = (pos.x+step.x);
end end;
pos.y = (pos.y+step.y);
pos.x = self.origin.x;
end end;
g.pop() end;__base["assign"] = function(self, pos, val) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
__typecheck_arg(typechecks, 1, pos, "vec2");__typecheck_arg(typechecks, 2, val, "number");local x, y = ((((pos-self.origin))/self.draw_size)):floor():split();
self.ar[x][y] = val end;__base["__tostring"] = function(self) if not has_metatable(self, (__base)) then error("bad argument 'self' to " .. debug.getinfo(1, 'nl').name .. " (got " .. type(self) .. ")", 2) end;
local s = "";
for i = 0, ((self.grid_size.y)-1) do do s = (s.."\n");
for j = 0, ((self.grid_size.x)-1) do s = (s..self.ar[i][j]) end;
end end;
do return s end end;__base.__index = __base.__index or __base;__base.__class = __class;if __super and __super.__inherited then __super:__inherited(__class) end;end ;
exports[1] = textGrid -- to be imported as 'textGrid';
 exports[2] = typechecks return exports;