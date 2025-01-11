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
	Rotate = 0,
	Continuous = 1,
	InstaSpin = 2
}

---@enum SubConstructType
local SubConstructType = {
	Turret = 0,
	SpinBlock = 1,
	Piston = 2
} 


---@class SubConstruct
---@field id integer The identifier of the SubConstruct. The indices start at 0 and are in no particular order
---@field children SubConstruct[] All SubConstructs directly placed on this SubConstruct
---@field parent SubConstruct? The parent SubConstruct of this SubConstruct if it exists
---@field type SubConstructType
---@field alive boolean Indicates if the SubConstruct is destroyed or not
---@field onHull boolean is the SubConstruct on the hull
---@field info BlockInfo? a BlockInfo for the active block of the SubConstruct if found
---@field idleRotation quaternion The rotation of the subconstruct relative to its parent as it was first placed.
local subConstruct = {}

---@class SpinBlock: SubConstruct
---@field speedFactor number The speed factor. In continuous mode spinners this allows some spinners to spin slower than others, in insta-spin this related to the speed they are spinning at (1 is max speed, 0 is no speed), and in rotation spinners this does nothing.
---@field powerDrive number The power drive. Requires engine power. 0 removes engine use. 10 is maximum power use.
---@field rotationAngle number The angle of rotation in rotate mode.
---@field continuousSpeed number The speed of rotation in continuous mode
---@field instaSpin number Spins the spinner in a direction and speed in instapin mode. affects speed factor.
---@field spinnerMode SpinMode
local spinBlock = {}

---@class Piston: SubConstruct
---@field extension number The extension of the piston. -1 if not found
---@field velocity number The velocity of the piston.
local piston = {}


---@class Turret: SubConstruct
local turret = {}

---@type SubConstruct[]
local subConstructs = {}