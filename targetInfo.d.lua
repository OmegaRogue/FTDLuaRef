---
--- Created by omegarogue.
--- DateTime: 11.01.25 13:34
---

---@meta

---@module 'main'
---@module 'math'

---@class TargetInfo
---@field priority integer 0 is the highest priority
---@field score float higher is a good score- taken from target prioritisation card
---@field aim_point_position float3 position in game world of aim point (this is the current position of the block that's being aimed for)
---@field team integer team of the target
---@field is_ai_alive boolean is the target a salvage
---@field position float3 target position in game world
---@field velocity float3 velocity in game world
---@field player_choice boolean has the player set this as the target
---@field id integer the unique id of this target
---@field pos_info TargetPositionInfo position info of the target for navigation
local TargetInfo = {}

---@class TargetPositionInfo
---@field is_valid boolean If the target position info is correctly returned.
---@field azimuth number Degrees off nose of our vehicle where positive is clockwise
---@field elevation number degrees off nose of our vehicle where positive is downwards. This often has dodgy values
---@field elevation_for_altitude_component_only number elevation off nose of the targets altitude. Robustly calculated
---@field range number the range to the target
---@field direction float3 the direction to the target (absolute, not normalized)
---@field ground_distance number the distance along the ground (ignoring vertical component) to the target
---@field altitude_above_sea_level number altitude above sea level in meters
---@field position float3 position of the target
---@field velocity float3 velocity of the target in meters per second
local TargetPositionInfo = {}