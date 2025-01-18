---
--- Created by omegarogue.
--- DateTime: 11.01.25 10:39
---

---@meta

---@module 'main'
---@module 'math'
---@module 'friendlies'

---@class Fleet
---@field is_flagship boolean Is the craft the fleet flagship?
---@field info FleetInfo Information about the fleet
---@field index integer Position of the ship in the fleet, starting from 0.
local Fleet = {}

---@class FleetInfo
---@field id integer Unique ID of the fleet.
---@field name string Name of the fleet.
---@field flagship Construct Information about the flagship of the fleet.
---@field members Construct[] A table of information regarding the fleet's members.
local FleetInfo = {}
