---
--- Created by omegarogue.
--- DateTime: 11.01.25 10:39
---

---@meta

---@module 'main'
---@module 'math'
---@module 'friendlies'

---@class Fleet
---@field isFlagship boolean Is the craft the fleet flagship?
---@field info FleetInfo Information about the fleet
---@field index integer Position of the ship in the fleet, starting from 0.
local fleet = {}

---@class FleetInfo
---@field id integer Unique ID of the fleet.
---@field name string Name of the fleet.
---@field flagship FriendlyInfo Information about the flagship of the fleet.
---@field members FriendlyInfo[] A table of information regarding the fleet's members.  MAY CONTAIN NILS!
local fleetInfo = {}
