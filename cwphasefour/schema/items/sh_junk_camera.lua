--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Old Fashioned Camera";
ITEM.cost = 6;
ITEM.model = "models/clutter/camara.mdl";
ITEM.plural = "Old Fashioned Cameras";
ITEM.weight = 0.5;
ITEM.access = "v";
ITEM.uniqueID = "junk_camera";
ITEM.business = true;
ITEM.category = "Junk";
ITEM.description = "An old fashioned camera, circa 1950s. It probably won't work anymore.";
ITEM.spawnType = "junk";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();