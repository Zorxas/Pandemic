--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Coffee Pot";
ITEM.cost = 6;
ITEM.model = "models/clutter/coffeepot.mdl";
ITEM.plural = "Coffee Pots";
ITEM.weight = 0.5;
ITEM.access = "v";
ITEM.uniqueID = "junk_coffeepot";
ITEM.business = true;
ITEM.category = "Junk";
ITEM.description = "A metal coffee pot, known better as a percolator.";
ITEM.spawnType = "junk";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();