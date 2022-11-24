AddCSLuaFile("shared.lua")
include('shared.lua')
/*--------------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
ENT.Model = {"models/hunter.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = 210 -- or you can use a convar: GetConVarNumber("vj_dum_dummy_h")
ENT.HullType = HULL_LARGE
ENT.VJ_NPC_Class = {"CLASS_COMBINE"}

--==blood==--
ENT.Bleeds = true -- Does the SNPC bleed? (Blood decal, particle, etc.)
ENT.HasBloodParticle = true -- Does it spawn a particle when damaged?
ENT.BloodColor = "White" -- The blood type, this will determine what it should use (decal, particle, etc.)
	-- Types: "Red" || "Yellow" || "Green" || "Orange" || "Blue" || "Purple" || "White" || "Oil"

    --==sounds==--
ENT.SoundTbl_Death = {"npc/ministrider/hunter_die2.wav","npc/ministrider/hunter_die3.wav"}
ENT.SoundTbl_FootStep = {"npc/ministrider/ministrider_footstep1.wav","npc/ministrider/ministrider_footstep2.wav","npc/ministrider/ministrider_footstep3.wav","npc/ministrider/ministrider_footstep4.wav","npc/ministrider/ministrider_footstep5.wav"}
ENT.SoundTbl_Alert = {"npc/ministrider/hunter_alert1.wav","npc/ministrider/hunter_alert2.wav","npc/ministrider/hunter_alert3.wav"}
ENT.SoundTbl_Idle = {"npc/ministrider/hunter_idle1.wav","npc/ministrider/hunter_idle2.wav","npc/ministrider/hunter_idle3.wav"}
ENT.SoundTbl_Pain = {"npc/ministrider/hunter_pain2.wav","npc/ministrider/hunter_pain4.wav"}
ENT.SoundTbl_MeleeAttackMiss = {"npc/zombie/claw_miss1.wav","npc/zombie/claw_miss2.wav"}
ENT.SoundTbl_MeleeAttack = {"npc/ministrider/body_medium_impact_hard1.wav","npc/ministrider/body_medium_impact_hard2.wav","npc/ministrider/body_medium_impact_hard3.wav","npc/ministrider/body_medium_impact_hard4.wav","npc/ministrider/body_medium_impact_hard5.wav","npc/ministrider/body_medium_impact_hard6.wav"}

--==death animation==--
ENT.HasDeathAnimation = true -- Does it play an animation when it dies?
ENT.AnimTbl_Death = {"Death_Stagger_E","Death_Stagger_S","Death_Stagger_Se","Death_Stagger_W","Death_Stagger_Sw"} -- Death Animation

--==melee==--
ENT.HasMeleeAttack = true
ENT.AnimTbl_MeleeAttack = {"Meleeleft","Meleert"} -- Melee Attack Animations
ENT.MeleeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.MeleeAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the melee attack animation?
ENT.MeleeAttackAnimationDecreaseLengthAmount = 0 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
ENT.MeleeAttackAnimationAllowOtherTasks = false -- If set to true, the animation will not stop other tasks from playing, such as chasing | Useful for gesture attacks!

/*NOT WORKING!
--==flinch==--
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchChance = 1 -- Chance of it flinching from 1 to x | 1 will make it always flinch

--==Ranged attack==--
ENT.HasRangeAttack = true -- Should the SNPC have a range attack?
ENT.RangeAttackEntityToSpawn = "hunter_shoot_flechette" -- The entity that is spawned when range attacking

--==Ranged attack animation==--
ENT.AnimTbl_RangeAttack = {"Rangeattack2"} -- Range Attack Animations
ENT.RangeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.RangeAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the range attack animation?
ENT.RangeAttackAnimationDecreaseLengthAmount = 0 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
ENT.RangeAttackAnimationStopMovement = true -- Should it stop moving when performing a range attack?
*/