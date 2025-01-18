---
--- Created by omegarogue.
--- DateTime: 11.01.25 15:59
---

---@meta

---@module 'main'
---@module 'math'
---@module 'blocks'

---@class Missiles
---@field warnings WarningInfo[]
local Missiles = {}

---Returns a WarningInfo object for a unique id
---@param id integer
---@return WarningInfo?
function Missiles.get_by_id(id)

end

---@class WarningInfo
---@field is_valid boolean Is the warning valid or junk due to incorrect indices
---@field position float3 the position of the missile
---@field velocity float3 the velocity of the missile
---@field range number the distance from centre of mass of your construct to the missile
---@field azimuth number the azimuth angle between your construct's forward direction and the missile (degrees)
---@field elevation number the elevation angle between your construct's forward direction and the missile (degrees)
---@field time_since_launch number the time since missile launch
---@field id integer the unique id of this missile
local WarningInfo = {}

---@class LuaTransceiver
---@field info BlockInfo a BlockInfo for the LuaTransceiver's Launchpad. If no Launch pad exists it is for the Lua Transceiver.
---@field missiles LuaMissile[]
local LuaTransceiver = {}

---@class LuaMissile
---@field is_interceptor boolean Does the missile have interceptor capability
---@field standard_guidance boolean turns standard guidance for the missile on and off.
---@field info WarningInfo
---@field fuel number
---@field cleared_launchpad boolean
---@field cleared_vehicle boolean
local LuaMissile = {}

---Explodes the missile.
---Needs a lua receiver component ON the missile to work
function LuaMissile:detonate()

end

---Sets the aimpoint. No guidance module will help achieve this aimpoint so do your own predictive guidance.
---Needs a lua receiver component ON the missile to work
---@param point float3 global coordinates of the aim point
function LuaMissile:set_aimpoint(point)

end

---Set the target of an interceptor missile to be a specific missile for which a warning exists.
---This is enough to get the interceptor missile to behave normally but if you want to actually guide it yourself set [standardGuidance](lua://LuaMissile.standardGuidance)
---@param target WarningInfo the missile warning to target
function LuaMissile:set_interceptor_target(target)

end