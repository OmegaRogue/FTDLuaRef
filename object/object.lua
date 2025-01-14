---
--- https://github.com/awesomeWM/awesome/blob/master/lib/gears/object.lua
---

local properties = {};

---------------------------------------------------------------------------
-- The object oriented programming base class used by various Awesome
-- widgets and components.
--
-- It provide basic observer pattern, signaling and dynamic properties.
--
-- @author Uli Schlachter
-- @copyright 2010 Uli Schlachter
-- @utillib gears.object
---------------------------------------------------------------------------

local setmetatable = setmetatable
local pairs = pairs
local type = type
local error = error
local properties = require("properties")

---@generic T : table|userdata
---@alias callback fun(self:unknown, ...)

---@class Object<T>
---@field private _signals { [string]: callback }
---@field private _global_receivers callback[]
---@field private _class T
---@field private _enable_auto_signals boolean
---@field private _enable_auto_signal boolean
local object = { properties = properties, mt = {} }

--- Verify that obj is indeed a valid object as returned by new()
---@param obj unknown
local function check(obj)
    if type(obj) ~= "table" or type(obj._signals) ~= "table" then
        error("called on non-object")
    end
end

--- Find a given signal
---@param obj Object<T> The object to search in
---@param name string The signal to find
---@return table The signal table
local function find_signal(obj, name)
    check(obj)
    if not obj._signals[name] then
        assert(type(name) == "string", "name must be a string, got: " .. type(name))
        obj._signals[name] = {}
    end
    return obj._signals[name]
end

--- Connect to a signal.
---@param name string The name of the signal.
---@param func callback The callback to call when the signal is emitted.
function object:connect_signal(name, func)
    assert(type(func) == "function", "callback must be a function, got: " .. type(func))
    local sig = find_signal(self, name)
    sig[func] = true
end

--- Register a global signal receiver.
---@param callback callback
function object:_connect_everything(callback)
    table.insert(self._global_receivers, callback)
end


---Disconnect from a signal.
---@param name string The name of the signal.
---@param func callback The callback that should be disconnected.
function object:disconnect_signal(name, func)
    local sig = find_signal(self, name)
    sig[func] = nil
end

--- Emit a signal.
--
---@param name string The name of the signal
---@param ... any Extra arguments for the callback functions. Each connected
---   function receives the object as first argument and then any extra
---   arguments that are given to emit_signal()
function object:emit_signal(name, ...)
    local sig = find_signal(self, name)
    for func in pairs(sig) do
        func(self, ...)
    end
    for _, func in ipairs(self._global_receivers) do
        func(name, self, ...)
    end
end

---@param t any
---@param args { allow_chain_of_responsibility: boolean }
function object._setup_class_signals(t, args)
    args = args or {}
    local conns = {}

    function t.connect_signal(name, func)
        assert(name)
        conns[name] = conns[name] or {}
        table.insert(conns[name], func)
    end

    -- A variant of emit_signal which stops once a condition is met.
    if args.allow_chain_of_responsibility then
        function t._emit_signal_if(name, condition, ...)
            assert(name)
            for _, func in pairs(conns[name] or {}) do
                if condition(...) then return end
                func(...)
            end
        end
    end


    ---Emit a notification signal.
    ---@param name string The signal name.
    ---@param ... any The signal callback arguments
    function t.emit_signal(name, ...)
        assert(name)
        for _, func in pairs(conns[name] or {}) do
            func(...)
        end
    end

    ---Disconnect a signal from a source.
    ---@param name string The name of the signal
    ---@param func callback The attached function
    ---@return boolean If the disconnection was successful
    function t.disconnect_signal(name, func)
        for k, v in ipairs(conns[name] or {}) do
            if v == func then
                table.remove(conns[name], k)
                return true
            end
        end
        return false
    end

    return conns
end

---@param self Object
---@param key string
---@return any
local function get_miss(self, key)
    local class = rawget(self, "_class")

    if rawget(self, "get_"..key) then
        return rawget(self, "get_"..key)(self)
    elseif class and class["get_"..key] then
        return class["get_"..key](self)
    elseif class then
        return class[key]
    end

end
---@param self Object
---@param key string
---@param value any
---@return any
local function set_miss(self, key, value)
    local class = rawget(self, "_class")

    if rawget(self, "set_"..key) then
        return rawget(self, "set_"..key)(self, value)
    elseif class and class["set_"..key] then
        return class["set_"..key](self, value)
    elseif rawget(self, "_enable_auto_signals") then
        local changed = class[key] ~= value
        class[key] = value

        if changed then
            self:emit_signal("property::"..key, value)
        end
    elseif (not rawget(self, "get_"..key))
        and not (class and class["get_"..key]) then
        return rawset(self, key, value)
    else
        error("Cannot set '" .. tostring(key) .. "' on " .. tostring(self)
                .. " because it is read-only")
    end
end

--- Returns a new object. You can call `:emit_signal()`, `:disconnect_signal()`
---  and `:connect_signal()` on the resulting object.
---
--- Note that `args.enable_auto_signals` is only supported when
--- `args.enable_properties` is true.
---
---@param args {enable_properties: boolean, enable_auto_signals: boolean, class: T} The arguments
---boolean args.enable_properties Automatically call getters and setters
---args.enable_auto_signals Generate "property::xxxx" signals
---  when an unknown property is set.
---table args.class
---@return Object<T> A new object
local function new(args)
    args = args or {}
    local ret = {}

    -- Automatic signals cannot work without both miss handlers.
    assert(not (args.enable_auto_signals and args.enable_properties ~= true))

    -- Copy all our global functions to our new object
    for k, v in pairs(object) do
        if type(v) == "function" then
            ret[k] = v
        end
    end

    ret._signals = {}

    ret._global_receivers = {}

    local mt = {}

    -- Look for methods in another table
    ret._class               = args.class
    ret._enable_auto_signals = args.enable_auto_signals

    -- To catch all changes, a proxy is required
    if args.enable_auto_signals then
        ret._class = ret._class and setmetatable({}, {__index = args.class}) or {}
    end

    if args.enable_properties then
        -- Check got existing get_xxxx and set_xxxx
        mt.__index    = get_miss
        mt.__newindex = set_miss
    elseif args.class then
        -- Use the class table a miss handler
        mt.__index = ret._class
    end

    return setmetatable(ret, mt)
end

function object.mt.__call(_, ...)
    return new(...)
end

--- Helper function to get the module name out of `debug.getinfo`.
-- @usage
--  local mt = {}
--  mt.__tostring = function(o)
--      return require("gears.object").modulename(2)
--  end
--  return setmetatable(ret, mt)
--
-- @tparam[opt=2] integer level Level for `debug.getinfo(level, "S")`.
--   Typically 2 or 3.
-- @treturn string The module name, e.g. "wibox.container.background".
-- @staticfct gears.object.modulename
function object.modulename(level)
    return debug.getinfo(level, "S").source:gsub(".*/lib/", ""):gsub("/", "."):gsub("%.lua", "")
end

return setmetatable(object, object.mt)

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80