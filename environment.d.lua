--sandbox_env = 
--{
--	ipairs = ipairs,
--	next = next,
--	pairs = pairs,
--	pcall = pcall,
--	tonumber = tonumber,
--	tostring = tostring,
--	type = type,
--	unpack = unpack,
--	getmetatable = getmetatable,
--	setmetatable = setmetatable,
--	_VERSION = _VERSION,
--	
--	coroutine = { create = coroutine.create, resume = coroutine.resume, 
--		running = coroutine.running, status = coroutine.status, 
--		wrap = coroutine.wrap, yield = coroutine.yield },
--	
--	string = { byte = string.byte, char = string.char, find = string.find, 
--		format = string.format, gmatch = string.gmatch, gsub = string.gsub, 
--		len = string.len, lower = string.lower, match = string.match, 
--		rep = string.rep, reverse = string.reverse, sub = string.sub, 
--		upper = string.upper },
--	
--	table = { insert = table.insert, maxn = table.maxn, remove = table.remove, 
--		sort = table.sort, getn = table.getn },
--	
--	math = { abs = math.abs, acos = math.acos, asin = math.asin, 
--		atan = math.atan, atan2 = math.atan2, ceil = math.ceil, cos = math.cos, 
--		cosh = math.cosh, deg = math.deg, exp = math.exp, floor = math.floor, 
--		fmod = math.fmod, frexp = math.frexp, huge = math.huge, 
--		ldexp = math.ldexp, log = math.log, log10 = math.log10, max = math.max, 
--		min = math.min, modf = math.modf, pi = math.pi, pow = math.pow, 
--		rad = math.rad, random = math.random, sin = math.sin, sinh = math.sinh, 
--		sqrt = math.sqrt, tan = math.tan, tanh = math.tanh,
--		randomseed = math.randomseed},
--	
--	import = {function() end},
--	
--	--Quaternion = UnityEngine.Quaternion,
--	--Vector3 = UnityEngine.Vector3,
--    
--	
--	--Mathf = UnityEngine.Mathf,
--
--}
--
--
--
--function run_sandboxstring(untrusted_code)
--	if untrusted_code:byte(1) == 27 then 
--		error('binary bytecode prohibited') ;
--	end
--	
--	local untrusted_function, message = loadstring(untrusted_code)
--	
--	if not untrusted_function then 
--		error(message) ;
--	end
--	
--	setfenv(untrusted_function, sandbox_env)
--	return pcall(untrusted_function)
--end



function RunUpdate(I)
	if (Update ~= nil) then
		Update(I)
	end
end

function RunStart(I)
	if (Start ~= nil) then
		Start(I)
	end
end

--function EnterSandboxRunUpdate(I)
--	setfenv(RunUpdate,sandbox_env) ;
--	RunUpdate(I) ;
--end