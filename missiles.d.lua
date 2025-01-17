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
local missiles = {}

---Returns a WarningInfo object for a unique id
---@param id integer
---@return WarningInfo?
function missiles.getById(id)
    
end


---@class WarningInfo
---@field valid boolean Is the warning valid or junk due to incorrect indices
---@field position float3 the position of the missile
---@field velocity float3 the velocity of the missile
---@field range number the distance from centre of mass of your construct to the missile
---@field azimuth number the azimuth angle between your construct's forward direction and the missile (degrees)
---@field elevation number the elevation angle between your construct's forward direction and the missile (degrees)
---@field timeSinceLaunch number the time since missile launch
---@field id integer the unique id of this missile
local warningInfo = {}

---@class LuaTransceiver
---@field info BlockInfo a BlockInfo for the LuaTransceiver's Launchpad. If no Launch pad exists it is for the Lua Transceiver.
---@field missiles LuaMissile[]
local luaTransceiver = {} 


---@class LuaMissile
---@field isInterceptor boolean Does the missile have interceptor capability
---@field standardGuidance boolean turns standard guidance for the missile on and off.
---@field info WarningInfo
---@field fuel number
---@field clearedLaunchpad boolean
---@field clearedVehicle boolean
local luaMissile = {}

---Explodes the missile.
---Needs a lua reciever component ON the missile to work
function luaMissile:detonate()
    
end

---Sets the aim point. No guidance module will help achieve this aim point so do your own predictive guidance.
---Needs a lua reciever component ON the missile to work
---@param point float3 global coordinates of the aim point
function luaMissile:setAimPoint(point)
    
end

---Set the target of an interceptor missile to be a specific missile for which a warning exists.
---This is enough to get the interceptor missile to behave normally but if you want to actually guide it yourself set [standardGuidance](lua://LuaMissile.standardGuidance)
---@param target WarningInfo the missile warning to target
function luaMissile:setInterceptorTarget(target)
end