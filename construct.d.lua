---
--- Created by omegarogue.
--- DateTime: 11.01.25 13:58
---

---@meta

---@module 'main'
---@module 'math'


-- Previously: "awareness", renamed to "construct"
--
-- Construct mainly resembles FriendlyInfo. My main point is that
--   `friendlies.get()` now returns a Construct, because I don't see
--   why either interface should differ.
--
-- Each (material|ammo|fuel|energy|power)(|Capacity|Fraction)
--   might as well be compressed into a new class,
--   perhaps called "ResourceInfo" or "CraftResources",
--   or each an instance of a { fraction, current, capacity } table,
--   because it currently looks quite bloated
--
-- *Fraction fields are mostly for kept around for legacy reasons

---@class Construct
---@field transformLocal RigidTransform the local transform of the construct. The position is the position of the first block ever places, or the center of the starting raft that it was built from.
---@field transform RigidTransform the transform of the construct. The position is the position of the first block ever places, or the center of the starting raft that it was built from.
---@field boundsLocal MinMaxAABB the local bounding box of the vehicle.
---@field bounds MinMaxAABB the bounding box of the vehicle.
---@field centerOfMass float3 the position of the construct's center of mass in the world
---@field centerOfMassLocal float3 the position of the construct's center of mass relative to its origin. It is typically rounded to 50cm increments to make balancing more achievable, but this can be changed in the 'V' menu.
---@field velocityLocal float3 the construct's local velocity vector
---@field velocity float3 the construct's velocity vector in world space. x is east/west, y is up/down, z is north/south
---@field angularVelocityLocal float3 the construct's local angular velocity vector. x is pitch, y yaw and z roll.
---@field angularVelocity float3 the construct's velocity vector in world space. x is around east/west axis, y is around up/down axis, z is around north/south axis
---@field stability number the construct's stabilty, between 0 and 1

---@field material ConstructResource the amount of materials stored
---@field ammo ConstructResource the amount of ammo currently available
---@field fuel ConstructResource the amount of fuel currently available
---@field energy ConstructResource the amount of energy currently available
---@field power ConstructResource the amount of power currently available

---@field health number the fraction of health your construct has left
---@field docker boolean Is the vehicle docked
---@field blueprintName string the name of the vehicles blueprint
---@field uniqueId integer the unique id of this construct
local construct = {}

---Returns health difference over a specified measurement time
---@param time number The time you want the difference measured over. Time will be limited to be between 1 and 30
---@return number Health difference as a fraction
function construct:healthFractionDifference(time)
    
end

---@class ConstructResource
---@field current number
---@field fraction number
---@field capacity number
local constructResource = {}