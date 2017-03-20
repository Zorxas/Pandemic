--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Rake";
ITEM.cost = 6;
ITEM.model = "models/clutter/rake.mdl";
ITEM.plural = "Rakes";
ITEM.weight = 0.5;
ITEM.access = "v";
ITEM.uniqueID = "junk_rake";
ITEM.business = true;
ITEM.category = "Junk";
ITEM.description = "An old and tattered gardening rake. Nothing special about it.";
ITEM.spawnType = "junk";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();