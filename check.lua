spawn(function()
		print("Checking GUI.")
		wait(3)
		local imgui = game:GetService("CoreGui"):FindFirstChild("imgui")
		if imgui then
			if imgui:FindFirstChild("Windows") then
				if #imgui.Windows:GetChildren() == 0 then
					game.Players.LocalPlayer:Kick("Closing Javolo To Open Synolope")
				end
			end
		end
end) 
