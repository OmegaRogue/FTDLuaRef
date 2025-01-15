---
--- Created by omegarogue.
--- DateTime: 11.01.25 14:22
---

---@meta

---@module 'main'
---@module 'math'
---@module 'blocks'



---@enum weapon_types
local WeaponType = {
	Cannon = 0,
	Missile = 1,
	Laser = 2,
	Bomb = 3,
	Torpedo = 4,
	Laser_pointer = 5,
	Turret = 6,
	Missile_control = 7,
	Plasma = 8,
	Particle_cannon = 9,
	Flamer = 10
}

---@class SubWeapons
---@field subconstructs Weapon[][]
local subWeapons = {}

---@alias Weapons Weapon[]|SubWeapons 

---@type Weapons
local weapons = {}


---@class Weapon
---@field transformLocal RigidTransform The local transform of the weapon
---@field transform RigidTransform The global transform of the weapon
---@field speed number The speed in m/s of the weapon
---@field type WeaponTypes The type of the weapon
---@field slot integer The weapon slot of the weapon
---@field slotMask bitmask The weapon slot of the weapon
---@field playerControlling bool If the player is controlling this weapon at the moment
---@field constraints WeaponConstraints information on the field-of-fire constraints of the weapon
---@field blockInfo BlockInfo the block informaiton of the main component of the weapon.
local weapon = {}

---Aims a weapon in a specific direction. For a turret this will aim all the weapons on the turret as well as the turret itself.
---@param dir float3 the world coordinate direction to point in
---@param slot integer 0 for all, otherwise 1 to 5
---@return integer The number of weapons that can fire in this direction.
function weapon:aimInDirection(dir, slot)
    
end

---Fires a specific weapon. It's important for most weapons that you aim them first as they won't fire if they can't fire in the direction they are aimed.
---@param dir float3 the world coordinate direction to point in
---@param slot integer 0 for all, otherwise 1 to 5
---@return boolean has any weapon fired
function weapon:fire(dir, slot)
    
end
