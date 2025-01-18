# From the Depths Lua Rework reference
A repository containing reference [definition files](https://luals.github.io/wiki/definition-files/) for a reworked lua block api.

Everything is subject to change.

[math.d.lua](math.d.lua) is incomplete until I get auto generation for C# class to [lua definition](https://luals.github.io/wiki/definition-files/). See the [Unity.Mathematics Docs](https://docs.unity3d.com/Packages/com.unity.mathematics@1.3/api/index.html) for reference.

[environment.lua](environment.lua) is the base lua code in every lua block that is hidden to the player (high likelyhood that this will be removed and done differently)

This is meant as a sort of RFC to work out a final API that suits the needs.


## TODO
### Update API to use LUA styleguide

### Events API
If needs must some of these could be implemented in environment.lua using existing APIs, specifically the target events

- CRAM Fired
- Missile Fired
- APS Fired
- Laser (pulsed) Fired
- Laser (continuous) Fired
- Plasma Cannon Fired
- Flamer Fired


- Spawn (not needed if using `Start(I)`)
- Block Lost
- Patrol Order Issued
- Projectile Noticed


- Enemy Materials Destroyed
- Materials Sent
- Materials received
- Energy Sent
- Energy Received
- Material Picked Up


- Target Spotted
- Target Dead
- Primary Target Dead


- Missile Reloaded (possibility for other weapon systems reloaded events?)
- Collision

### Communication API
#### MVP setting & getting arbitrary variables from
- Vehicle (self)
- Mothership/drones
- Fleet
- Team
- Everyone
#### Stretch Goal
Subscribing/emitting events to the aforementioned categories

### GBG & GBS

### BbBehaviourLink
TBD might want to expand the definition, if not out of necessity out of convenience (BB parity).
Notably:
- Local aimpoint
- Distance to next waypoint
- Whether we're in reverse or not

### Animator


### Misc Utilities
Simple enough to provide a base implementation in LUA (if using a native implementation is too much work)
- PID
- One Shot
- Delay Pulse
- Playback (This feels like a meme? Included for completeness)