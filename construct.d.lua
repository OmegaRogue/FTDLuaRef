---
--- Created by omegarogue.
--- DateTime: 11.01.25 13:58
---

---@meta

---@module 'main'
---@module 'math'

-- Previously: "awareness", renamed to "construct"

---@class Construct
---@field transform_local RigidTransform the local transform of the construct. The position is the position of the first block ever places, or the center of the starting raft that it was built from.
---@field transform RigidTransform the transform of the construct. The position is the position of the first block ever places, or the center of the starting raft that it was built from.
---@field bounds_local MinMaxAABB the local bounding box of the vehicle.
---@field bounds MinMaxAABB the bounding box of the vehicle.
---@field center_of_mass float3 the position of the construct's center of mass in the world
---@field center_of_mass_local float3 the position of the construct's center of mass relative to its origin. It is typically rounded to 50cm increments to make balancing more achievable, but this can be changed in the 'V' menu.
---@field velocity_local float3 the construct's local velocity vector
---@field velocity float3 the construct's velocity vector in world space. x is east/west, y is up/down, z is north/south
---@field angular_velocity_local float3 the construct's local angular velocity vector. x is pitch, y yaw and z roll.
---@field angular_velocity float3 the construct's velocity vector in world space. x is around east/west axis, y is around up/down axis, z is around north/south axis
---@field stability number the construct's stabilty, between 0 and 1

---@field material ConstructResource the amount of materials stored
---@field ammo ConstructResource the amount of ammo currently available
---@field fuel ConstructResource the amount of fuel currently available
---@field energy ConstructResource the amount of energy currently available
---@field power ConstructResource the amount of power currently available

---@field health number the fraction of health your construct has left
---@field docker boolean Is the vehicle docked
---@field blueprint_name string the name of the vehicles blueprint
---@field unique_id integer the unique id of this construct
local Construct = {}

---Returns health difference over a specified measurement time
---@param time number The time you want the difference measured over. Time will be limited to be between 1 and 30
---@return number Health difference as a fraction
function Construct:health_fraction_difference(time)

end

---@class ConstructResource
---@field current number the amount of this resource the construct currently has available
---@field capacity number the amount of this resource the construct may at most store, or for power: deliver
---@field fraction number the fraction of this resource the construct currently has available. May be NaN if no such storage is present
local ConstructResource = {}
