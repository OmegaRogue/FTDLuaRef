---
--- Created by omegarogue.
--- DateTime: 11.01.25 13:02
---

---@meta

---@module 'main'
---@module 'math'

---@enum AiMovementModes
local AiMovementMode = {
	Off = 0,
	Manual = 1,
	Automatic = 2,
	Fleet = 3
}

---@class AI
local ai = {}

---@param index integer index of the AI mainframe
---@return AiMainframe? the AI at the given index, or nil if it doesn't exist
function ai.get(index)

end

-- This corresponds directly with the breadboard "AI Behaviour Input"
--
-- Note: each of these fields will need a __set to make C# reflect these changes,
--   or we just use an explicit set*() for each.

---@class BbBehaviourLink
---@field aimpoint float3 the global position of the steering point
---@field distance float the total distance of the trip
---@field endRotation Quaternion? desired global end rotation of the craft, or nil if it doesn't matter
---@field direction Quaternion? desired global rotation of the craft during the movement, or nil if it doesn't matter
---@field lookAt float3? the desired global point to look at, or nil if it doesn't matter
---@field lookOffset Quaternion? the amount of offset the rotation of the craft relative to the point to look at, or nil if it doesn't matter. Useful for broadsiding
---@field priority integer priority of this module, used for picking the module to supply to the AI. Lower is more important
local BbBehaviourLink = {}

---@class AiMainframe
---@field name string the mainframe's name
---@field movementMode AiMovementModes the mainframe's movement mode
---@field firingOn bool true if the mainframe's firing is enabled
---@field behaviour integer the mainframe's selected behaviour, where 0 is none
---@field manoeuvre integer the mainframe's selected manoeuvre, where 0 is none
---@field steeringPointExists bool true if the mainframe has a steering point
---@field steeringPoint float3 the mainframe's steering point
---@field attackSalvage bool true if the mainframe should attack craft with no AI
---@field bbBehaviourLink BbBehaviourLink access to interact with the breadboard behaviour link
local AiMainframe = {}
