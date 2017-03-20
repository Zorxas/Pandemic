--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Plunger";
ITEM.cost = 6;
ITEM.model = "models/clutter/plunger.mdl";
ITEM.plural = "Plungers";
ITEM.weight = 0.5;
ITEM.access = "v";
ITEM.uniqueID = "junk_plunger";
ITEM.business = true;
ITEM.category = "Junk";
ITEM.description = "An old dirty plunger. Gross.";
ITEM.spawnType = "junk";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();