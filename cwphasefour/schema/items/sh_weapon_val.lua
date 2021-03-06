--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "AS VAL";
        ITEM.cost = 975;
        ITEM.model = "models/weapons/w_dmg_vally.mdl";
        ITEM.weight = 6;
		ITEM.access = "d";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_val";
        ITEM.description = "A Russian made assault rifle, originally made for the Spetsnaz. It has a built in silencer.";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, 90);
        ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();