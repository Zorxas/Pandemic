--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local FACTION = Clockwork.faction:New("Administrator");

FACTION.useFullName = true;
FACTION.whitelist = true;
FACTION.material = "pandemicrp/factions/admin";
FACTION.models = {
	female = {
		"models/humans/group17/female_01.mdl",
		"models/humans/group17/female_02.mdl",
		"models/humans/group17/female_03.mdl",
		"models/humans/group17/female_04.mdl",
		"models/tnb/citizens/female_11.mdl",
		"models/humans/group17/female_07.mdl"
	},
	male = {
		"models/humans/group17/male_01.mdl",
		"models/humans/group17/male_02.mdl",
		"models/humans/group17/male_03.mdl",
		"models/humans/group17/male_04.mdl",
		"models/humans/group17/male_05.mdl",
		"models/humans/group17/male_06.mdl",
		"models/humans/group17/male_07.mdl",
		"models/humans/group17/male_08.mdl",
		"models/humans/group17/male_09.mdl"
	};
};

-- Called when a player is transferred to the faction.
function FACTION:OnTransferred(player, faction, name)
	if (faction.name != FACTION_CITIZEN) then
		return false;
	end;
end;

FACTION_ADMIN = FACTION:Register();