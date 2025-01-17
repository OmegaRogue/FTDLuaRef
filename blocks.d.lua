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

---@enum (key) BlockType
local BlockTypes = {
	MissileWinch = 0,
	--TODO: expand to other block types
}

---@class Blocks
---@field byName { [string]: Block[] }
---@field byType { [BlockType]: Block[] }
---@field availableTypes BlockType[]
local blocks = {}


---@class Block
---@field info BlockInfo
---@field type BlockType
---@field [string] any Block-Specific properties (enumerable with pairs or dumpable with tostring)
---@operator tostring: string
---@operator pairs: string
--TODO: potentially specificy what properties each block has, as giving access to everything would mean allowing changing block health values for example
local block = {}