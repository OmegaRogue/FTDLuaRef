---
--- Created by omegarogue.
--- DateTime: 11.01.25 13:12
---

---@meta

---@module 'main'
---@module 'math'

---@enum inputs
local Inputs = {
	Main = 0,
	Secondary = 1,
	Tertiary = 2,
	Roll = 3,
	Pitch = 4,
	Yaw = 5,
	Forwards = 6,
	Up = 7,
	Right = 8,
	A = 9,
	B = 10,
	C = 11,
	D = 12,
	E = 13
}

---@enum stim
local Stims = {
	none = 0,
	T = 1,
	G = 2,
	Y = 3,
	H = 4,
	U = 5,
	J = 6,
	I = 7,
	K = 8,
	O = 9,
	L = 10,
	up = 11,
	down = 12,
	left = 13,
	right = 14
}


---@class Propulsion
local propulsion = {}

---Will stop the AI from issuing propulsion commands for the next second, after which it will assume control again.
---This is exactly what happens when the player presses a control key on an AI controlled vehicle.
function propulsion.takeControlFromAi()
    
end
---Adds a propulsion request to the specified axis.
---This is additive to any other requests made to the axis in the same frame and is clamped between -1 and 1
---@param type inputs The Axis to use
---@param drive number The amount to add to the axis
function propulsion.addRequest(type, drive)
    
end

---Sets the propulsion request to the specified axis.
---This overwrites any other requests made to the axis in the same frame and is clamped between -1 and 1
---@param type inputs The Axis to use
---@param drive number The amount the axis is set to
function propulsion.setRequest(type, drive)
    
end

---Gets the sum of all requests made to the specified axis in the previous frame or reads the value that the drive is set to if the type is Main, Secondary or Tertiary
---@param type inputs The Axis to use
---@return number The sum of all requests in the previous frame or the value of the drive
function propulsion.getRequest(type)
    
end

---Requests a stimulus as per the complex controller block
---@param stim stim
function propulsion.complexControllerStimulus(stim)
    
end

---Move fortress in any direction. Limited to 1 meter.
---@param direction float3 Direction to move the fortress in
function propulsion.moveFortress(direction)
    
end

---Creates or uses an axis with a custom name.
---Adds a value to the axis. 
---Axes values are limited to between -1 and 1.
---Axes names are limited to 32 characters.
---@param axisName string name of the axis to create/use. Limited to 32 characters.
---@param drive number value to add to the axis on this frame.
function propulsion.setCustom(axisName, drive)
    
end

---Returns the value of the named axis that it had the previous frame, or 0 if the axis is not created yet.
---@param axisName string name of the axis to create/use. Limited to 32 characters.
---@return number The value of the axis as a float. 0 if axis not yet created
function propulsion.getCustom(axisName)
    
end

