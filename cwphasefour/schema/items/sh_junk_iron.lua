--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Clothing Iron";
ITEM.cost = 6;
ITEM.model = "models/clutter/iorn.mdl";
ITEM.plural = "Clothing Irons";
ITEM.weight = 0.5;
ITEM.access = "v";
ITEM.uniqueID = "junk_iron";
ITEM.business = true;
ITEM.category = "Junk";
ITEM.description = "An old fashioned clothing iron. Surely, it can still be used.";
ITEM.spawnType = "junk";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();