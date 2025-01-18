---
--- Created by omegarogue.
--- DateTime: 11.01.25 13:50
---

---@meta

---@module 'main'
---@module 'math'

---@class Misc
---@field time number time with an arbitrary offset in seconds
---@field timeSinceSpawn number time since construct spawned in seconds
---@field gameTime number time since the instance started in seconds
---@field frame number The current physics step frame number
---@field frameDelta number The time between this and the previous frame in seconds
---@field dayFraction number The time of day, between 0 and 1
---@field wind float3 The direction and magnitude of the current wind
local misc = {}

---Returns gravity vector for an altitude
---@param alt number altidue above sea level
---@return float3 gravity vector
function misc.gravity(alt)
end
---Returns altitude of the terrain at a position relative to the construct.
---@param pos float3 x is right offset, y is up offset, z is forward offset.
---@return number The terrain altitude in meters above sea level
function misc.altitudeLocal(pos)
    
end

---Returns altitude of the terrain at a position in the world.
---@param pos float3 x is east/west, y is vertical, z is north/south
---@return number The terrain altitude in meters above sea level
function misc.altitudeLocal(pos)
    
end