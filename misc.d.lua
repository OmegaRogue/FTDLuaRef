---
--- Created by omegarogue.
--- DateTime: 11.01.25 13:50
---

---@meta

---@module 'main'
---@module 'math'

---@class Misc
---@field time number time with an arbitrary offset in seconds
---@field time_since_spawn number time since construct spawned in seconds
---@field game_time number time since the instance started in seconds
---@field frame number The current physics step frame number
---@field frame_delta number The time between this and the previous frame in seconds
---@field day_fraction number The time of day, between 0 and 1
---@field wind float3 The direction and magnitude of the current wind
local Misc = {}

---Returns gravity vector for an altitude
---@param alt number altitude above sea level
---@return float3 gravity vector
function Misc.gravity(alt)

end

---Returns altitude of the terrain at a position relative to the construct.
---@param pos float3 x is right offset, y is up offset, z is forward offset.
---@return number The terrain altitude in meters above sea level
function Misc.altitude_at_local(pos)

end

---Returns altitude of the terrain at a position in the world.
---@param pos float3 x is east/west, y is vertical, z is north/south
---@return number The terrain altitude in meters above sea level
function Misc.altitude_at(pos)

end