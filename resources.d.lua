---
--- Created by omegarogue.
--- DateTime: 11.01.25 12:50
---

---@meta

---@module 'main'
---@module 'math'

---@class Resources
---@field zones ResourceZone[] List of known resource zones
local Resources = {}

---Returns a ResourceZone object for a unique id
---@param id integer
---@return ResourceZone?
function Resources.get_by_id(id)

end

---@class ResourceZone
---@field id integer unique ID of the resource zone
---@field name string name of the resource zone
---@field position float3 position of the resource zone
---@field radius number radius of the resource zone
---@field quantity number amount of materials currently present in the resource zone >>> ZoneResource.Quantity
---@field capacity number maximum amount of materials the resource zone can store >>> ZoneResource.Max
---@field growth number amount of materials the resource zone replenishes per second  >>> ZoneResource.Growth
local ResourceZone = {}