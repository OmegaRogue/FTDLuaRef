---
--- Created by omegarogue.
--- DateTime: 11.01.25 13:34
---

---@meta

---@module 'main'
---@module 'math'

---@class Target
---@field mainframes integer The number of mainframes on your vehicle
local target = {}

---@param mainframeIndex integer see [mainframes](lua://Target.mainframes) to find out how many there are
---@return TargetInfo[] All targets of the mainframe. If target prioritisation card is in use this is ordered by priority
function target.targets(mainframeIndex)
end

---@param mainframeIndex integer see [mainframes](lua://Target.mainframes) to find out how many there are
---@param targetIndex integer If target prioritisation card is in use 1 is the highest priority target.
---@return TargetPositionInfo 
function target.positionInfo(mainframeIndex, targetIndex) 
end

---@param mainframeIndex integer see [mainframes](lua://Target.mainframes) to find out how many there are
---@param position float3 x is east/west in meters. y is up/down in meters, 0 is the sea level. z is north/south in meters.
---@return TargetPositionInfo A TargetPositionInfo object for this point in space. Velocity will be 0.
function target.positionInfoForPosition(mainframeIndex, position)
end


---@class TargetPositionInfo
---@field valid boolean If the target position info is correctly returned.
---@field azimuth number Degrees off nose of our vehicle where positive is clockwise
---@field elevation number degrees off nose of our vehicle where positive is downwards. This often has dodgy values
---@field elevationForAltitudeComponentOnly number elevation off nose of the targets altitude. Robustly calculated
---@field range number the range to the target
---@field direction float3 the direction to the target (absolute, not nomralized)
---@field groundDistance number the distance along the ground (ignoring vertical component) to the target
---@field altitudeAboveSeaLevel number altitude above sea level in meters
---@field position float3 position of the target
---@field velocity float3 velocity of the target in meters per second
local targetPositionInfo = {}