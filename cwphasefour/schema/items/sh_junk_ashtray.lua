--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Ashtray";
ITEM.cost = 6;
ITEM.model = "models/clutter/ashtray.mdl";
ITEM.plural = "Ashtrays";
ITEM.weight = 0.5;
ITEM.access = "v";
ITEM.uniqueID = "junk_ashtray";
ITEM.business = true;
ITEM.category = "Junk";
ITEM.description = "A rather damaged clay ashpot. It appears to be well worn.";
ITEM.spawnType = "junk";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();