---
--- Created by omegarogue.
--- DateTime: 11.01.25 15:54
---

---@meta

---@module 'main'
---@module 'math'

---@class BlockInfo
---@field valid boolean
---@field transformLocal RigidTransform the local transform of this block
---@field transform RigidTransform the transform of this block
---@field posRelativeToCom float3 the local position relative to the center of mass
---@field subConstructId integer The sub construct identifier of the subconstruct the block is part of.
---@field customName string The custom name assigned to the block
local blockInfo = {}