--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

Clockwork.config:AddToSystem("Small intro text", "intro_text_small", "The small text displayed for the introduction.");
Clockwork.config:AddToSystem("Big intro text", "intro_text_big", "The big text displayed for the introduction.");

Schema.stunEffects = {};

Clockwork.datastream:Hook("RebuildBusiness", function(data)
	if (Clockwork.menu:GetOpen() and IsValid(Schema.businessPanel)) then
		if (Clockwork.menu:GetActivePanel() == Schema.businessPanel) then
			Schema.businessPanel:Rebuild();
		end;
	end;
end);

Clockwork.datastream:Hook("ObjectPhysDesc", function(data)
	local entity = data;
	
	if (IsValid(entity)) then
		Derma_StringRequest("Description", "What is the physical description of this object?", nil, function(text)
			Clockwork.datastream:Start( "ObjectPhysDesc", {text, entity} );
		end);
	end;
end);

Clockwork.datastream:Hook("Frequency", function(data)
	Derma_StringRequest("Frequency", "What would you like to set the frequency to?", data, function(text)
		Clockwork.kernel:RunCommand("SetFreq", text);
		
		if (!Clockwork.menu:GetOpen()) then
			gui.EnableScreenClicker(false);
		end;
	end);
	
	if (!Clockwork.menu:GetOpen()) then
		gui.EnableScreenClicker(true);
	end;
end);

Clockwork.datastream:Hook("EditObjectives", function(data)
	if (Schema.objectivesPanel and Schema.objectivesPanel:IsValid()) then
		Schema.objectivesPanel:Close();
		Schema.objectivesPanel:Remove();
	end;
	
	Schema.objectivesPanel = vgui.Create("cwObjectives");
	Schema.objectivesPanel:Populate(data or "");
	Schema.objectivesPanel:MakePopup();
	
	gui.EnableScreenClicker(true);
end);

Clockwork.datastream:Hook("EditData", function(data)
	if (IsValid( data[1] )) then
		if (Schema.dataPanel and Schema.dataPanel:IsValid()) then
			Schema.dataPanel:Close();
			Schema.dataPanel:Remove();
		end;
		
		Schema.dataPanel = vgui.Create("cwData");
		Schema.dataPanel:Populate(data[1], data[2] or "");
		Schema.dataPanel:MakePopup();
		
		gui.EnableScreenClicker(true);
	end;
end);

Clockwork.datastream:Hook("Stunned", function(data)
	Schema:AddStunEffect(data);
end);

Clockwork.datastream:Hook("Flashed", function(data)
	Schema:AddFlashEffect();
end);

-- A function to add a flash effect.
function Schema:AddFlashEffect()
	local curTime = CurTime();
	
	self.stunEffects[#self.stunEffects + 1] = {curTime + 10, 10};
	self.flashEffect = {curTime + 20, 20};
	
	surface.PlaySound("hl1/fvox/flatline.wav");
end;

-- A function to add a stun effect.
function Schema:AddStunEffect(duration)
	local curTime = CurTime();
	
	if (!duration or duration == 0) then
		duration = 1;
	end;
	
	self.stunEffects[#self.stunEffects + 1] = {curTime + duration, duration};
	self.flashEffect = {curTime + (duration * 2), duration * 2, true};
end;

Clockwork.datastream:Hook("ClearEffects", function(data)
	Schema.stunEffects = {};
	Schema.flashEffect = nil;
end);

Clockwork.datastream:Hook("CombineDisplayLine", function(data)
	Schema:AddCombineDisplayLine(data[1], data[2]);
end);

Clockwork.chatBox:RegisterClass("request_eavesdrop", "ic", function(info)
	if (info.shouldHear) then
		Clockwork.chatBox:Add(info.filtered, nil, Color(255, 255, 150, 255), info.name.." requests \""..info.text.."\"");
	end;
end);

Clockwork.chatBox:RegisterClass("broadcast", "ic", function(info)
	Clockwork.chatBox:Add(info.filtered, nil, Color(150, 125, 175, 255), info.name.." broadcasts \""..info.text.."\"");
end);

Clockwork.chatBox:RegisterClass("dispatch", "ic", function(info)
	Clockwork.chatBox:Add(info.filtered, nil, Color(150, 100, 100, 255), "Dispatch broadcasts \""..info.text.."\"");
end);

Clockwork.chatBox:RegisterClass("request", "ic", function(info)
	Clockwork.chatBox:Add(info.filtered, nil, Color(175, 125, 100, 255), info.name.." requests \""..info.text.."\"");
end);

-- A function to get a player's scanner entity.
function Schema:GetScannerEntity(player)
	local scannerEntity = Entity(player:GetSharedVar("scanner"));
	
	if (IsValid(scannerEntity)) then
		return scannerEntity;
	end;
end;

-- A function to get whether a text entry is being used.
function Schema:IsTextEntryBeingUsed()
	if (self.textEntryFocused) then
		if (self.textEntryFocused:IsValid() and self.textEntryFocused:IsVisible()) then
			return true;
		end;
	end;
end;

-- A function to add a Combine display line.
function Schema:AddCombineDisplayLine(text, color)
	if (self:PlayerIsCombine(Clockwork.Client)) then
		if (!self.combineDisplayLines) then
			self.combineDisplayLines = {};
		end;
		
		table.insert(self.combineDisplayLines, {"<:: "..text, CurTime() + 8, 5, color});
	end;
end;