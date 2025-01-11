---
--- Created by omegarogue.
--- DateTime: 11.01.25 13:02
---

---@meta

---@module 'main'
---@module 'math'

---@alias AiMovementMode
---| '"Off"'
---| '"Manual"'
---| '"Automatic"'
---| '"Fleet"'

---@alias AiFiringMode
---| '"Off"'
---| '"On"'

---@class AI
local ai = {}

---@param index integer index of the AI mainframe
---@return AiMovementMode movement mode of the AI mainframe
function ai.getMovementMode(index)
end

---@param index integer index of the AI mainframe
---@return AiMovementMode firing mode of the AI mainframe
function ai.getFiringMode(index)
end