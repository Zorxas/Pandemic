--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Pistol Casing";
ITEM.cost = 6;
ITEM.model = "models/gibs/metal_gib2.mdl";
ITEM.plural = "Pistol Casings";
ITEM.weight = 0.5;
ITEM.uniqueID = "part_pistolcasing";
ITEM.access = "v";
ITEM.business = true;
ITEM.category = "Gunparts";
ITEM.description = "A tattered casing designed to manufacture pistols. It's not the best, but it'll do.";
ITEM.spawnType = "gunparts";
<<<<<<< HEAD
ITEM.spawnValue = 35;
=======
ITEM.spawnValue = 28;
>>>>>>> cffe03e740fe28031300119acb84eafdd1f78b38


-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();

