--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Glass Pitcher";
ITEM.cost = 6;
ITEM.model = "models/clutter/glasspitcher.mdl";
ITEM.plural = "Glass Pitchers";
ITEM.weight = 0.5;
ITEM.access = "v";
ITEM.uniqueID = "junk_glasspitcher";
ITEM.business = true;
ITEM.category = "Junk";
ITEM.description = "A scratched up glass pitcher, akin to that you'd find in roller rinks.";
ITEM.spawnType = "junk";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();