			if not game:IsLoaded() then game.Loaded:Wait() end
			local continuee = identifyexecutor() == "Fluxus" or queue_on_teleport
			
			function queueOnTeleport(str)
				if identifyexecutor() == "Fluxus" then
					pcall(function()
						fluxus.queue_on_teleport(str)
					end)
				else 
					local suc,err = pcall(function() queue_on_teleport(str) end)
					if err then
						print("Error occured, trying again...")
						pcall(function() queue_on_teleport(str) end)
					end
				end
			end
			
			if game.CreatorId == 123247 or game.PlaceId == 370731277 and continuee == true then
				local githublinkme = "https://raw.githubusercontent.com/rrAsus/mp/main/"
				local githublinkhim = "https://raw.githubusercontent.com/synolope/mpcity/main/"
				local loaderurl = githublinkme .. "load.lua"
				local uicheckurl = githublinkme .. "check.lua"
				local scripturl = ""
				if identifyexecutor() == "Fluxus" then
					scripturl = githublinkhim .. "synapse.lua"
				end
				if identifyexecutor() == queue_on_teleport then
					scripturl = githublinkhim .. "synapse.lua"
				end
				queueOnTeleport([[
						wait(3)
						loadstring(game:HttpGet("]] .. uicheckurl .. [[",true))()
						loadstring(game:HttpGet("]] .. loaderurl .. [[",true))()
				]])
				loadstring(game:HttpGet(uicheckurl, true))()
				loadstring(game:HttpGet(scripturl, true))()
			end
