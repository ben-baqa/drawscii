-- C:/Misc_languages/jammy/std/group.jam - GENERATED 2021-11-12, 9:54:12 p.m.
-- JAMMY BOILERPLATE
local __require_params = (...);if not __require_params then error("Cannot run this module because it was not compiled as an entry point.") end;local __parent_dir = __require_params:match("(.-)[^%.]+$"):gsub("%.", "/");local function import(path) return require(path_join(__parent_dir, path):gsub("/", ".")) end;local exports={};__env = {};setmetatable(__env, { __index = _G });
-- END JAMMY BOILERPLATE
local operators, equivalence_operators = __import(2, {operators, equivalence_operators}, require(path_join(__root_dir, "std/operators"):gsub("/", ".")));__env.operators, __env.equivalence_operators = operators, equivalence_operators;
local group = {  };
group.new = function(...) local elements = {...} return setmetatable({ ["elements"] = elements }, group) end;
group.__index = function(self, key) return ((group[key]) or group.new((function() local t = {} for i, v in ipairs(self.elements) do t[#t+1] = v[key] end return unpack(t) end)())) end;
group.__call = function(self, head, ...) local tail = {...} local ret = true;
if group.is_group(head) then do for i, v in ipairs(self.elements) do if not ((v(head.elements[i], unpack(tail)))) then ret = false end end;
end else for i, v in ipairs(self.elements) do if not ((v(head, unpack(tail)))) then ret = false end end end;
do return ret end end;
group.__newindex = function(self, k, v) if group.is_group(v) then for i, e in ipairs(self.elements) do e[k] = v.elements[i] end else for i, e in ipairs(self.elements) do e[k] = v end end end;
group.is_group = function(x) return (getmetatable(x)==group) end;
local generate_op;generate_op = function(op) return function(self, r) local ret = true;
if group.is_group(r) then do for i, l in ipairs(self.elements) do if not (op(l, r.elements[i])) then ret = false end end;
end else for i, l in ipairs(self.elements) do if not (op(l, r)) then ret = false end end end;
do return ret end end end;
group.eq = generate_op(operators.eq);
group.lt = generate_op(operators.lt);
group.le = generate_op(operators.le);
group.neq = generate_op(operators.neq);
group.gt = generate_op(operators.gt);
group.ge = generate_op(operators.ge);
exports[1] = group -- to be imported as 'group';
 return exports;