--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Empty Ice Cream Tub";
ITEM.cost = 6;
ITEM.model = "models/foodnhouseholditems/icecream_empty2.mdl";
ITEM.plural = "Empty Ice Cream Tubs";
ITEM.weight = 0.5;
ITEM.access = "v";
ITEM.uniqueID = "junk_icecreamtub";
ITEM.business = true;
ITEM.category = "Junk";
ITEM.description = "An empty and moldy ice cream tub. Flavor? Vanilla.";
ITEM.spawnType = "junk";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();