--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Bandage";
ITEM.cost = 8;
ITEM.model = "models/props_junk/bogroll.mdl";
ITEM.weight = 0.5;
ITEM.access = "1v";
ITEM.useText = "Apply";
ITEM.category = "Medical"
ITEM.business = true;
ITEM.description = "A roll of bandage cloth. There isn't much, so use it wisely.";
ITEM.customFunctions = {"Give"};

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + 10, 0, player:GetMaxHealth() ) );
	
	Clockwork.plugin:Call("PlayerHealed", player, player, self);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

if (SERVER) then
	function ITEM:OnCustomFunction(player, name)
		if (name == "Give") then
			Clockwork.player:RunClockworkCommand(player, "CharHeal", "bandage");
		end;
	end;
end;

ITEM:Register();