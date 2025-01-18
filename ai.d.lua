---
--- Created by omegarogue.
--- DateTime: 11.01.25 13:02
---

---@meta

---@module 'main'
---@module 'math'
---@module 'targetInfo'

---@enum AiMovementMode
local AiMovementMode = {
	OFF = 0,
	MANUAL = 1,
	AUTOMATIC = 2,
	FLEET = 3
}

---@class AI
---@field mainframes AiMainframe[]
local ai = {}

-- This corresponds directly with the breadboard "AI Behaviour Input"
--
-- Note: each of these fields will need a __set to make C# reflect these changes,
--   or we just use an explicit set*() for each.

---@class BbBehaviourLink
---@field aimpoint float3 the global position of the steering point
---@field distance float the total distance of the trip
---@field end_rotation quaternion? desired global end rotation of the craft, or nil if it doesn't matter
---@field direction quaternion? desired global rotation of the craft during the movement, or nil if it doesn't matter
---@field look_at float3? the desired global point to look at, or nil if it doesn't matter
---@field look_offset quaternion? the amount of offset the rotation of the craft relative to the point to look at, or nil if it doesn't matter. Useful for broadsiding
---@field priority integer priority of this module, used for picking the module to supply to the AI. Lower is more important
local BbBehaviourLink = {}

---@class AiMainframe
---@field name string the mainframe's name
---@field movement_mode AiMovementMode the mainframe's movement mode
---@field firing_on boolean true if the mainframe's firing is enabled
---@field behaviour integer the mainframe's selected behaviour, where 0 is none
---@field manoeuvre integer the mainframe's selected manoeuvre, where 0 is none
---@field steering_point_exists boolean true if the mainframe has a steering point
---@field steering_point float3 the mainframe's steering point
---@field attack_salvage boolean true if the mainframe should attack craft with no AI
---@field bb_behaviour_link BbBehaviourLink access to interact with the breadboard behaviour link
---@field position float3 position of the mainframe in the world
---@field targets TargetInfo[] All targets of the mainframe. If target prioritisation card is in use this is ordered by priority
local AiMainframe = {}

---@param position float3 x is east/west in meters. y is up/down in meters, 0 is the sea level. z is north/south in meters.
---@return TargetPositionInfo A TargetPositionInfo object for this point in space. Velocity will be 0.
function AiMainframe:position_info_for_position(position)

end

---Returns a TargetInfo object for a unique id
---@param id integer
---@return TargetInfo?
function AiMainframe:get_by_id(id)

end