---
--- Created by omegarogue.
--- DateTime: 11.01.25 11:26
---

---@meta

---@alias float2 { x: float, y: float, zero: float2}
---@alias float2x2{ c0: float2, c1: float2, zero: float2x2, identity: float2x2}
---@alias float4x3{ c0: float2, c1: float2, c2: float2, zero: float2x3, identity: float2x3}
---@alias float2x4{ c0: float2, c1: float2, c2: float2, c3: float2, zero: float2x4, identity: float2x4}
---@alias float3 { x: float, y: float, z: float, zero: float3}
---@alias float3x2{ c0: float3, c1: float3, zero: float3x2, identity: float3x2}
---@alias float3x3{ c0: float3, c1: float3, c2: float3, zero: float3x3, identity: float3x3}
---@alias float3x4{ c0: float3, c1: float3, c2: float3, c3: float3, zero: float3x4, identity: float3x4}
---@alias float4 { x: float, y: float, z: float, w: float, zero: float4}
---@alias float4x2{ c0: float4, c1: float4, zero: float4x2, identity: float4x2}
---@alias float4x3{ c0: float4, c1: float4, c2: float4, zero: float4x3, identity: float4x3}
---@alias float4x4{ c0: float4, c1: float4, c2: float4, c3: float4, zero: float4x4, identity: float4x4}

---@alias float2 { x: float, y: float, zero: float2}
---@alias float2x2{ c0: float2, c1: float2, zero: float2x2, identity: float2x2}
---@alias float4x3{ c0: float2, c1: float2, c2: float2, zero: float2x3, identity: float2x3}
---@alias float2x4{ c0: float2, c1: float2, c2: float2, c3: float2, zero: float2x4, identity: float2x4}
---@alias float3 { x: float, y: float, z: float, zero: float3}
---@alias float3x2{ c0: float3, c1: float3, zero: float3x2, identity: float3x2}
---@alias float3x3{ c0: float3, c1: float3, c2: float3, zero: float3x3, identity: float3x3}
---@alias float3x4{ c0: float3, c1: float3, c2: float3, c3: float3, zero: float3x4, identity: float3x4}
---@alias float4 { x: float, y: float, z: float, w: float, zero: float4}
---@alias float4x2{ c0: float4, c1: float4, zero: float4x2, identity: float4x2}
---@alias float4x3{ c0: float4, c1: float4, c2: float4, zero: float4x3, identity: float4x3}
---@alias float4x4{ c0: float4, c1: float4, c2: float4, c3: float4, zero: float4x4, identity: float4x4}

---@alias bool2 { x: boolean, y: boolean, zero: bool2}
---@alias bool2x2{ c0: bool2, c1: bool2, zero: bool2x2, identity: bool2x2}
---@alias bool4x3{ c0: bool2, c1: bool2, c2: bool2, zero: bool2x3, identity: bool2x3}
---@alias bool2x4{ c0: bool2, c1: bool2, c2: bool2, c3: bool2, zero: bool2x4, identity: bool2x4}
---@alias bool3 { x: boolean, y: boolean, z: boolean, zero: bool3}
---@alias bool3x2{ c0: bool3, c1: bool3, zero: bool3x2, identity: bool3x2}
---@alias bool3x3{ c0: bool3, c1: bool3, c2: bool3, zero: bool3x3, identity: bool3x3}
---@alias bool3x4{ c0: bool3, c1: bool3, c2: bool3, c3: bool3, zero: bool3x4, identity: bool3x4}
---@alias bool4 { x: boolean, y: boolean, z: boolean, w: boolean, zero: bool4}
---@alias bool4x2{ c0: bool4, c1: bool4, zero: bool4x2, identity: bool4x2}
---@alias bool4x3{ c0: bool4, c1: bool4, c2: bool4, zero: bool4x3, identity: bool4x3}
---@alias bool4x4{ c0: bool4, c1: bool4, c2: bool4, c3: bool4, zero: bool4x4, identity: bool4x4}

---@alias double2 { x: number, y: number, zero: double2}
---@alias double2 { x: number, y: number, zero: double2}
---@alias double2x2{ c0: double2, c1: double2, zero: double2x2, identity: double2x2}
---@alias double4x3{ c0: double2, c1: double2, c2: double2, zero: double2x3, identity: double2x3}
---@alias double2x4{ c0: double2, c1: double2, c2: double2, c3: double2, zero: double2x4, identity: double2x4}
---@alias double3 { x: number, y: number, z: number, zero: double3}
---@alias double3x2{ c0: double3, c1: double3, zero: double3x2, identity: double3x2}
---@alias double3x3{ c0: double3, c1: double3, c2: double3, zero: double3x3, identity: double3x3}
---@alias double3x4{ c0: double3, c1: double3, c2: double3, c3: double3, zero: double3x4, identity: double3x4}
---@alias double4 { x: number, y: number, z: number, w: number, zero: double4}
---@alias double4x2{ c0: double4, c1: double4, zero: double4x2, identity: double4x2}
---@alias double4x3{ c0: double4, c1: double4, c2: double4, zero: double4x3, identity: double4x3}
---@alias double4x4{ c0: double4, c1: double4, c2: double4, c3: double4, zero: double4x4, identity: double4x4}

---@alias half2 { x: half, y: half, zero: half2}
---@alias half2x2{ c0: half2, c1: half2, zero: half2x2, identity: half2x2}
---@alias half4x3{ c0: half2, c1: half2, c2: half2, zero: half2x3, identity: half2x3}
---@alias half2x4{ c0: half2, c1: half2, c2: half2, c3: half2, zero: half2x4, identity: half2x4}
---@alias half3 { x: half, y: half, z: half, zero: half3}
---@alias half3x2{ c0: half3, c1: half3, zero: half3x2, identity: half3x2}
---@alias half3x3{ c0: half3, c1: half3, c2: half3, zero: half3x3, identity: half3x3}
---@alias half3x4{ c0: half3, c1: half3, c2: half3, c3: half3, zero: half3x4, identity: half3x4}
---@alias half4 { x: half, y: half, z: half, w: half, zero: half4}
---@alias half4x2{ c0: half4, c1: half4, zero: half4x2, identity: half4x2}
---@alias half4x3{ c0: half4, c1: half4, c2: half4, zero: half4x3, identity: half4x3}
---@alias half4x4{ c0: half4, c1: half4, c2: half4, c3: half4, zero: half4x4, identity: half4x4}

---@alias int2 { x: integer, y: integer, zero: int2}
---@alias int2x2{ c0: int2, c1: int2, zero: int2x2, identity: int2x2}
---@alias int4x3{ c0: int2, c1: int2, c2: int2, zero: int2x3, identity: int2x3}
---@alias int2x4{ c0: int2, c1: int2, c2: int2, c3: int2, zero: int2x4, identity: int2x4}
---@alias int3 { x: integer, y: integer, z: integer, zero: int3}
---@alias int3x2{ c0: int3, c1: int3, zero: int3x2, identity: int3x2}
---@alias int3x3{ c0: int3, c1: int3, c2: int3, zero: int3x3, identity: int3x3}
---@alias int3x4{ c0: int3, c1: int3, c2: int3, c3: int3, zero: int3x4, identity: int3x4}
---@alias int4 { x: integer, y: integer, z: integer, w: integer, zero: int4}
---@alias int4x2{ c0: int4, c1: int4, zero: int4x2, identity: int4x2}
---@alias int4x3{ c0: int4, c1: int4, c2: int4, zero: int4x3, identity: int4x3}
---@alias int4x4{ c0: int4, c1: int4, c2: int4, c3: int4, zero: int4x4, identity: int4x4}

---@alias uint2 { x: integer, y: integer, zero: uint2}
---@alias uint2x2{ c0: uint2, c1: uint2, zero: uint2x2, identity: uint2x2}
---@alias uint4x3{ c0: uint2, c1: uint2, c2: uint2, zero: uint2x3, identity: uint2x3}
---@alias uint2x4{ c0: uint2, c1: uint2, c2: uint2, c3: uint2, zero: uint2x4, identity: uint2x4}
---@alias uint3 { x: integer, y: integer, z: integer, zero: uint3}
---@alias uint3x2{ c0: uint3, c1: uint3, zero: uint3x2, identity: uint3x2}
---@alias uint3x3{ c0: uint3, c1: uint3, c2: uint3, zero: uint3x3, identity: uint3x3}
---@alias uint3x4{ c0: uint3, c1: uint3, c2: uint3, c3: uint3, zero: uint3x4, identity: uint3x4}
---@alias uint4 { x: integer, y: integer, z: integer, w: integer, zero: uint4}
---@alias uint4x2{ c0: uint4, c1: uint4, zero: uint4x2, identity: uint4x2}
---@alias uint4x3{ c0: uint4, c1: uint4, c2: uint4, zero: uint4x3, identity: uint4x3}
---@alias uint4x4{ c0: uint4, c1: uint4, c2: uint4, c3: uint4, zero: uint4x4, identity: uint4x4}

---@alias quaternion { value: float4, identity: quaternion} 

---@class RigidTransform
---@field rot quaternion
---@field pos float3
---@field pos float3
---@field identity RigidTransform
---@operator eq(RigidTransform): bool
---@operator tostring: string
local RigidTransform = {}

---@return integer
function RigidTransform:hashCode()
    
end

---@param rotation quaternion
---@param translation float3
---@return RigidTransform
---@overload fun(rotation: float3x3, translation: float3):RigidTransform
---@overload fun(transform: float4x4):RigidTransform
function RigidTransform:new(rotation, translation)
    
end

---@param axis float3
---@param angle float
---@return RigidTransform
function RigidTransform.AxisAngle(axis, angle) end
    
---@param xyz float3
---@return RigidTransform
---@overload fun(x: float, y: float, z: float):RigidTransform
function RigidTransform.EulerXYZ(xyz) end
    
---@param xyz float3
---@return RigidTransform
---@overload fun(x: float, y: float, z: float):RigidTransform
function RigidTransform.EulerXZY(xyz) end
    
---@param xyz float3
---@return RigidTransform
---@overload fun(x: float, y: float, z: float):RigidTransform
function RigidTransform.EulerYXZ(xyz) end

    
---@param xyz float3
---@return RigidTransform
---@overload fun(x: float, y: float, z: float):RigidTransform
function RigidTransform.EulerYZX(xyz) end

    
---@param xyz float3
---@return RigidTransform
---@overload fun(x: float, y: float, z: float):RigidTransform
function RigidTransform.EulerZXY(xyz) end
    
---@param xyz float3
---@return RigidTransform
---@overload fun(x: float, y: float, z: float):RigidTransform
function RigidTransform.EulerZYX(xyz) end

 

---@param xyz float3
---@param order? RotationOrder = RotationOrder.ZXY
---@return RigidTransform
---@overload fun(x:float,y:float,z:float,order:RotationOrder):RigidTransform
function RigidTransform.Euler(xyz, order) end
    
---@param angle float
---@return RigidTransform
function RigidTransform.RotateX(angle) end
    
---@param angle float
---@return RigidTransform
function RigidTransform.RotateY(angle) end

    
---@param angle float
---@return RigidTransform
function RigidTransform.RotateZ(angle) end

   
---@param vector float3
---@return RigidTransform
function RigidTransform.Translate(vector) end


---@class MinMaxAABB
---@field Min float3
---@field Max float3
---@field Extents float3
---@field HalfExtents float3
---@field Center float3
---@field IsValid boolean
---@field SurfaceArea number
---@operator eq(MinMaxAABB): bool
---@operator tostring: string
local MinMaxAABB = {}

---@param aabb MinMaxAABB
---@return boolean
---@overload fun(point: float3): boolean
function MinMaxAABB:Contains(aabb)
end

---@param aabb MinMaxAABB
---@return boolean
function MinMaxAABB:Overlaps(aabb)
end

---@param signedDistance number
function MinMaxAABB:Expand(signedDistance)
end

---@param aabb MinMaxAABB
---@return boolean
---@overload fun(point: float3)
function MinMaxAABB:Encapsulate(aabb)
end