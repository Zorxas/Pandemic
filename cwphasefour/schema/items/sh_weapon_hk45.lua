--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "HK 45C";
	ITEM.cost = 275;
	ITEM.model = "models/weapons/w_hk45c.mdl";
	ITEM.weight = 1;
	ITEM.access = "f";
	ITEM.business = true;
	ITEM.uniqueID = "m9k_hk45";
	ITEM.description = "A tan handgun made by H&K. It has tactical sights, and a small magazine.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(0, 0, -8);
	ITEM:AddRecipe("junk_screws", 4, "part_pistolsight", 1, "part_pistolcasing", 1, "part_pistolslide", 1, "junk_screwdriver", 1);
	
ITEM:Register();