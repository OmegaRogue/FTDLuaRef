---
--- Created by omegarogue.
--- DateTime: 11.01.25 12:50
---

---@meta

---@module 'main'
---@module 'math'

---@class Resources
---@field zones ResourceZoneInfo[] List of known resource zones
---@field [integer]ResourceZoneInfo Known resource zones
---@field resourcs ResourceInfo Ship resource data
local resources = {}

---@class ResourceZoneInfo
---@field id integer Unique ID of the resource zone
---@field name string Name of the resource zone
---@field position float3 Position of the resource zone
---@field radius number Radius of the resource zone
---@field resources ResourceInfo Available resources of the resource zone
local resourceZoneInfo = {}

---@class ResourceInfo
---@field crystalTotal number Total crystal resources
---@field crystalMax number Max crystal resources
---@field metalTotal number Total metal resources
---@field metalMax number Max metal resources
---@field naturalTotal number Total natural resources
---@field naturalMax number Max natural resources
---@field oilTotal number Total oil resources
---@field oilMax number Max oil resources
---@field scrapTotal number Total scrap resources
---@field scrapMax number Max scrap resources
local resourceInfo = {}