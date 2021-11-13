-- src/conf.jam - GENERATED 2021-11-12, 9:54:12 p.m.
-- JAMMY BOILERPLATE
local __require_params = (...);if not __require_params then error("Cannot run this module because it was not compiled as an entry point.") end;local __parent_dir = __require_params:match("(.-)[^%.]+$"):gsub("%.", "/");local function import(path) return require(path_join(__parent_dir, path):gsub("/", ".")) end;local exports={};__env = {};setmetatable(__env, { __index = _G });
-- END JAMMY BOILERPLATE
WINDOW_TITLE = "Drawscii";
WINDOW_WIDTH = 800;
WINDOW_HEIGHT = 600;
love.conf = function(t) t.console = true;
t.modules.joystick = false;
local w = t.window;
w.width = WINDOW_WIDTH;
w.heght = WINDOW_HEIGHT;
w.minWidth = WINDOW_WIDTH;
w.minHeight = WINDOW_HEIGHT;
w.resizable = true;
w.fullscreen = false;
w.title = WINDOW_TITLE;
local m = t.modules;
m.joystick = false end;
 return exports;