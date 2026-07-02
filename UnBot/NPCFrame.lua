
function NPCCommand_OnEnter(self,tipType,title,text,command)
	GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT");
	GameTooltip:AddLine(title,0,0.7,0.7,1);
	if (tipType == 1) then
		GameTooltip:AddLine("Creates a "..text.." bot.",0,1,0,1);
		-- GameTooltip:AddLine("You can right-click a bot outside of combat to open its menu, set its role and equipment.",0,1,0,1);
		-- GameTooltip:AddLine("You must select yourself before using the command.",1,0,0,1);
	elseif (tipType == 2) then
		GameTooltip:AddLine(text,0,1,0,1);
		GameTooltip:AddLine("Before using the command, you need to target yourself or a bot.",1,0,0,1);
	end
	-- GameTooltip:AddLine("This command cannot be used while in combat.",1,1,1,1);
	-- GameTooltip:AddLine(" ",1,1,1,1);
	if (command ~= nil) then
		GameTooltip:AddDoubleLine("Uses:",command,0,0.85,0.85,0,0.85,0.85);
	end
	GameTooltip:Show();
end
