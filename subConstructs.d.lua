---
--- Created by omegarogue.
--- DateTime: 11.01.25 16:14
---

---@meta

---@module 'main'
---@module 'math'
---@module 'blocks'

---@enum SpinMode
local SpinMode = {
	ROTATE = 0,
	CONTINUOUS = 1,
	INSTA_SPIN = 2
}

---@enum SubConstructType
local SubConstructType = {
	TURRET = 0,
	SPIN_BLOCK = 1,
	PISTON = 2
}

---@class SubConstruct
---@field id integer The identifier of the SubConstruct. The indices start at 0 and are in no particular order
---@field children SubConstruct[] All SubConstructs directly placed on this SubConstruct
---@field parent SubConstruct? The parent SubConstruct of this SubConstruct if it exists
---@field type SubConstructType
---@field alive boolean Indicates if the SubConstruct is destroyed or not
---@field on_hull boolean is the SubConstruct on the hull
---@field info BlockInfo? a BlockInfo for the active block of the SubConstruct if found
---@field idle_rotation quaternion The rotation of the sub-construct relative to its parent as it was first placed.
local SubConstruct = {}

---@class SpinBlock: SubConstruct
---@field speed_factor number The speed factor. In continuous mode spinners this allows some spinners to spin slower than others, in insta-spin this related to the speed they are spinning at (1 is max speed, 0 is no speed), and in rotation spinners this does nothing.
---@field power_drive number The power drive. Requires engine power. 0 removes engine use. 10 is maximum power use.
---@field rotation_angle number The angle of rotation in rotate mode.
---@field continuous_speed number The speed of rotation in continuous mode
---@field insta_spin number Spins the spinner in a direction and speed in insta-spin mode. affects speed factor.
---@field spinner_mode SpinMode
local SpinBlock = {}

---@class Piston: SubConstruct
---@field extension number The extension of the piston. -1 if not found
---@field velocity number The velocity of the piston.
local Piston = {}

---@class Turret: SubConstruct
local Turret = {}

---@type SubConstruct[]
local SubConstructs = {}