--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "First Aid Kit";
ITEM.cost = 30;
ITEM.model = "models/bloocobalt/l4d/items/w_eq_fieldkit.mdl";
ITEM.weight = 1;
ITEM.access = "v";
ITEM.useText = "Apply";
ITEM.factions = {FACTION_MPF, FACTION_OTA};
ITEM.category = "Medical"
ITEM.business = true;
ITEM.useSound = "pandemic/bandaging_1.wav";
ITEM.blacklist = {CLASS_MPR};
ITEM.description = "A distinctive red and white package. It is filled with bandages, tape,  and everything else to patch up wounds.";
ITEM.customFunctions = {"Heal Other"};

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + Schema:GetHealAmount(player, 2), 0, player:GetMaxHealth() ) );
	
	Clockwork.plugin:Call("PlayerHealed", player, player, self);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

if (SERVER) then
	function ITEM:OnCustomFunction(player, name)
		if (name == "Give") then
			Clockwork.player:RunClockworkCommand(player, "CharHeal", "health_kit");
		end;
	end;
end;

ITEM:Register();