---
--- Created by omegarogue.
--- DateTime: 11.01.25 11:02
---

---@meta

---@module 'main'
---@module 'math'

---@class Friendlies
local friendlies = {}

---Returns the number of friendly constructs
---@return integer the number of friendlies spawned into the world
function friendlies.count()
end

---Returns a FriendlyInfo object for a unique id
---@param id integer
---@return FriendlyInfo
function friendlies.getById(id)
    
end

---Returns a FriendlyInfo object for a friendly vehicle
---@param index integer 0 is the first construct
---@return FriendlyInfo
function friendlies.get(index)
    
end

local prototype = {}

---@return number The number of friendlies spawned into the world
function prototype.__len(o) 
    
end

---Returns a friendly info table for an ID
---@param id number the Id you want
---@return FriendlyInfo the FriendlyInfo table
function prototype.__index(table, id)
    
end

---@class FriendlyInfo
---@field valid boolean false if the Friendly Info could not be retrieved 
---@field transform RigidTransform the transform of the friendly construct 
---@field bounds MinMaxAABB the bounding box of the friendly construct 
---@field axisAlignedBounds MinMaxAABB the world East Up North extent of the construct 
---@field centerOfMass float3 the centre of mass of the construct in world East Up North frame 
---@field velocity float3 the velocity of the construct in world East Up North frame 
---@field healthFraction number the fraction of health (including turrets etc) 
---@field sparesFraction number the spares fraction. Returns 1 if no spares storage present 
---@field ammoFraction number the ammo fraction. Returns 1 if no ammo storage present 
---@field fuelFraction number the fuel fraction. Returns 1 if no fuel storage present 
---@field energyFraction number the energy fraction. Returns 1 if no batteries present 
---@field powerFraction number the power fraction. Returns 1 if no fuel storage present 
---@field electricPowerFraction number the electric power fraction. Returns 1 if no fuel storage present 
---@field blueprintName string the name 
---@field id integer the unique Id of the construct
local friendly_info = {}


setmetatable(friendlies, prototype)
