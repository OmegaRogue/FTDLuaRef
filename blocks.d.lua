---
--- Created by omegarogue.
--- DateTime: 11.01.25 15:54
---

---@meta

---@module 'main'
---@module 'math'

---@class BlockInfo
---@field is_valid boolean
---@field transform_local RigidTransform the local transform of this block
---@field transform RigidTransform the transform of this block
---@field pos_relative_to_com float3 the local position relative to the center of mass
---@field sub_construct_id integer The sub construct identifier of the subconstruct the block is part of.
---@field custom_name string The custom name assigned to the block
local BlockInfo = {}

---@enum (key) BlockType
local BlockType = {
	MISSILE_WINCH = 0,
	--TODO: expand to other block types
}

---@class Blocks
---@field by_name { [string]: Block[] }
---@field by_type { [BlockType]: Block[] }
---@field available_types BlockType[]
local Blocks = {}


---@class Block
---@field info BlockInfo
---@field type BlockType
---@field [string] any Block-Specific properties (enumerable with pairs or dumpable with tostring)
---@operator tostring: string
---@operator pairs: string
--TODO: potentially specify what properties each block has, as giving access to everything would mean allowing changing block health values for example
local Block = {}