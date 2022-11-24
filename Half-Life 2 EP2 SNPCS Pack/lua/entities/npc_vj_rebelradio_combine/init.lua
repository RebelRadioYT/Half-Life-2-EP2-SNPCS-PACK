AddCSLuaFile("shared.lua")
include('shared.lua')
/*--------------------------------------------------
	*** Copyright (c) 2012-2022 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
ENT.Model = {"models/Combine_Soldier.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = 50 -- or you can use a convar: GetConVarNumber("vj_dum_dummy_h")
ENT.VJ_NPC_Class = {"CLASS_COMBINE"}
function ENT:CustomOnInitialize()
    self:SetSkin(2)
end

--==blood==--
ENT.Bleeds = true -- Does the SNPC bleed? (Blood decal, particle, etc.)
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
	-- Types: "Red" || "Yellow" || "Green" || "Orange" || "Blue" || "Purple" || "White" || "Oil"

--==walking-    
ENT.FootStepTimeWalk = 0.5
ENT.FootStepTimeRun = 0.2

--==sounds==--
ENT.SoundTbl_Idle = {"npc/combine_soldier/vo/stayalert.wav","npc/combine_soldier/vo/stayalertreportsightlines.wav","npc/combine_soldier/vo/overwatchreportspossiblehostiles.wav"}
ENT.SoundTbl_FootStep = {"npc/combine_soldier/gear1.wav","npc/combine_soldier/gear2.wav","npc/combine_soldier/gear3.wav","npc/combine_soldier/gear4.wav","npc/combine_soldier/gear5.wav","npc/combine_soldier/gear6.wav"}
ENT.SoundTbl_Death = {"npc/combine_soldier/die1.wav","npc/combine_soldier/die3.wav","npc/combine_soldier/die2.wav"}
ENT.SoundTbl_Pain = {"npc/combine_soldier/pain1.wav","npc/combine_soldier/pain2.wav","npc/combine_soldier/pain3.wav"}
ENT.SoundTbl_CombatIdle = {"npc/combine_soldier/vo/weaponsoffsafeprepforcontact.wav","npc/combine_soldier/vo/readyweaponshostilesinbound.wav","npc/combine_soldier/vo/suppressing.wav","npc/combine_soldier/vo/readyweapons.wav","npc/combine_soldier/vo/sector.wav"}
ENT.SoundTbl_MeleeAttack = {"physics/body/body_medium_impact_hard1.wav","physics/body/body_medium_impact_hard2.wav","physics/body/body_medium_impact_hard3.wav","physics/body/body_medium_impact_hard4.wav","physics/body/body_medium_impact_hard5.wav","physics/body/body_medium_impact_hard6.wav"}
ENT.SoundTbl_MeleeAttackMiss = {"npc/zombie/claw_miss1.wav","npc/zombie/claw_miss2.wav"}
ENT.SoundTbl_Alert = {"npc/combine_soldier/vo/contact.wav","npc/combine_soldier/vo/contactconfim.wav","npc/combine_soldier/vo/contactconfirmprosecuting.wav","npc/combine_soldier/vo/alert1.wav","npc/combine_soldier/vo/affirmative.wav","npc/combine_soldier/vo/affirmative2.wav"}
ENT.SoundTbl_OnPlayerSight = {"npc/combine_soldier/vo/affirmativewegothimnow.wav"}

--==GRENADE==--
ENT.HasGrenadeAttack = true -- Should the SNPC have a grenade attack?
ENT.GrenadeAttackEntity = "obj_vj_grenade" -- The entity that the SNPC throws | Half Life 2 Grenade: "npc_grenade_frag"