---
--- Created by omegarogue.
--- DateTime: 11.01.25 13:58
---

---@meta

---@module 'main'
---@module 'math'


---@class Awareness
---@field transformLocal RigidTransform The local transform of the construct. The position is the position of the first block ever places, or the center of the starting raft that it was built from.
---@field transform RigidTransform The transform of the construct. The position is the position of the first block ever places, or the center of the starting raft that it was built from.
---@field boundsLocal MinMaxAABB The local bounding box of the vehicle.
---@field bounds MinMaxAABB The bounding box of the vehicle.
---@field centerOfMass float3 The position of the constructs center of mass in the world
---@field centerOfMassLocal float3 The position of the constructs center of mass relative to its origin. It is typically rounded to 50cm increments to make balancing more achievable, but this can be changed in the 'V' menu.
---@field velocityLocal float3 The constructs local velocity vector
---@field velocity float3 The constructs velocity vector in world space. x is east/west, y is up/down, z is north/south
---@field angularVelocityLocal float3 The constructs local angular velocity vector. x is pitch, y yaw and z roll.
---@field angularVelocity float3 The constructs velocity vector in world space. x is around east/west axis, y is around up/down axis, z is around north/south axis
---@field ammo number The fraction of ammo your construct has left. 1 if no storage is available
---@field fuel number The fraction of fuel your construct has left. 1 if no fuel storage is available
---@field spares number The fraction of spares your construct has left. 1 if no spares storage is available
---@field energy number The fraction of energy your construct has left. 1 if no batteries are available
---@field power number The fraction of power your construct has left
---@field electric number The fraction of electric power your construct has left
---@field health number The fraction of health your construct has left
---@field docker boolean Is the vehicle docked
---@field blueprintName string The name of the vehicles blueprint
---@field uniqueId integer The unique id of this construct
local awareness = {}

---Returns the position of the mainframe in the world. Returns float3(0) if no such mainframe exists.
---@param mainframeIndex integer index of the AI mainframe
---@return float3 The position
function awareness.aiPosition(mainframeIndex)
    
end

---Returns health difference over a specified measurement time
---@param time number The time you want the difference measured over. Time will be limited to be between 1 and 30
---@return number Health difference as a fraction
function awareness.healthFractionDifference(time)
    
end