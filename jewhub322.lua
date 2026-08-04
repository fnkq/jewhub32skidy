pcall(function()
    local HttpService = game:GetService("HttpService")
    local function preCache(url, key)
        local path = "PORN/ignore/" .. key
        if isfile and not isfile(path) then
            local ok, content = pcall(function() return game:HttpGet(url, true) end)
            if ok and content then
                writefile(path, content)
                local ts = os.date("*t")
                writefile(path .. "_tfwd", HttpService:JSONEncode({dd = ts.day, md = ts.month}))
            end
        end
    end
    preCache("https://raw.githubusercontent.com/fnkq/jewhub32skidy/refs/heads/main/Classtables33", "c3_3")
    preCache("https://raw.githubusercontent.com/fnkq/jewhub32skidy/refs/heads/main/pettables25", "p2_5")
end)

local t1 = {}
local v2 = unpack or table.unpack

local function create_instance(className, props)
    local instance = Instance.new(className)

    if props then
        for key, value in pairs(props) do
            if key ~= "Parent" then
                instance[key] = value
            end
        end

        if props.Parent ~= nil then
            instance.Parent = props.Parent
        end
    end

    return instance
end

local u3 = create_instance

local function get_ui_parent()
    local ok, result = pcall(function()
        if HideGui then
            local hidden = HideGui()
            if hidden then
                return hidden
            end
        end

        if CoreGui then
            return CoreGui
        end

        local players = game:GetService("Players")
        local localPlayer = players and players.LocalPlayer
        if localPlayer and localPlayer:FindFirstChild("PlayerGui") then
            return localPlayer.PlayerGui
        end

        return game:GetService("CoreGui")
    end)

    if ok then
        return result
    end

    return nil
end

local function v4(p1, p2, p3)
    local v92 = p3 or "N/A"
    local v93 = u3
    local v94 = get_ui_parent()
    local v95 = v93("ScreenGui", {
		Name = "Script_Error",
		DisplayOrder = 1e999,
		Parent = v94
	})
    local v96 = u3
    local vector2 = Vector2.new(0.5, 0.5)
    local uDim2 = UDim2.new(0.5, 0, 0.5, 0)
    local uDim2_2 = UDim2.new(1, 0, 1, 0)
    local v100 = v96("Frame", {
		Name = "Script_Error",
		AnchorPoint = vector2,
		BackgroundTransparency = 1,
		Position = uDim2,
		Size = uDim2_2,
		Parent = v95
	})
    local v101 = u3
    local vector2_2 = Vector2.new(0.5, 0.5)
    local color3 = Color3.fromRGB(255, 215, 0)
    local uDim2_3 = UDim2.new(0.5, 0, 0.5, 0)
    local uDim2_4 = UDim2.new(0.4, 0, 0.4, 0)
    local v106 = v101("Frame", {
		Name = "Error_Frame",
		AnchorPoint = vector2_2,
		BackgroundColor3 = color3,
		Position = uDim2_3,
		Size = uDim2_4,
		Parent = v100
	})

    u3("UICorner", {
		CornerRadius = UDim.new(0.05, 0),
		Parent = v106
	})

    local v107 = u3
    local uDim2_5 = UDim2.new(0.025, 0, 0.05, 0)
    local uDim2_6 = UDim2.new(0.55, 0, 0.1, 0)
    local font = Font.new("rbxasset://fonts/families/FredokaOne.json")
    local color3_2 = Color3.fromRGB(0, 0, 0)

    v107("TextLabel", {
		Name = "Error_Title",
		BackgroundTransparency = 1,
		Position = uDim2_5,
		Size = uDim2_6,
		FontFace = font,
		Text = "A script error has occured",
		TextColor3 = color3_2,
		TextScaled = true,
		Parent = v106
	})

    local v112 = u3
    local vector2_3 = Vector2.new(0.5, 0.5)
    local uDim2_7 = UDim2.new(0.5, 0, 0.5, 0)
    local uDim2_8 = UDim2.new(0.9, 0, 0.6, 0)
    local font2 = Font.new("rbxasset://fonts/families/FredokaOne.json")
    local v117 = "<u>" .. p1 .. "</u>\n" .. p2 .. "\nExtra: " .. v92
    local color3_3 = Color3.fromRGB(243, 51, 51)

    v112("TextLabel", {
		Name = "Error_Body",
		AnchorPoint = vector2_3,
		BackgroundTransparency = 1,
		Position = uDim2_7,
		Size = uDim2_8,
		FontFace = font2,
		RichText = true,
		Text = v117,
		TextColor3 = color3_3,
		TextScaled = true,
		Parent = v106
	})

    local v130 = u3
    local color3_6 = Color3.fromRGB(145, 145, 145)
    local uDim2_13 = UDim2.new(0.436, 0, 0.808, 0)
    local uDim2_14 = UDim2.new(0.25, 0, 0.15, 0)
    local v134 = v130("ImageButton", {
		Name = "Close_Button",
		BackgroundColor3 = color3_6,
		BackgroundTransparency = 0.75,
		Position = uDim2_13,
		Size = uDim2_14,
		Parent = v106
	})

    u3("UICorner", {
		CornerRadius = UDim.new(0.25, 0),
		Parent = v134
	})

    local v135 = u3
    local vector2_5 = Vector2.new(0.5, 0.5)
    local uDim2_15 = UDim2.new(0.5, 0, 0.5, 0)
    local uDim2_16 = UDim2.new(1, 0, 1, 0)
    local font4 = Font.new("rbxasset://fonts/families/FredokaOne.json")
    local color3_7 = Color3.fromRGB(0, 0, 0)

    v135("TextLabel", {
		AnchorPoint = vector2_5,
		BackgroundTransparency = 1,
		Position = uDim2_15,
		Size = uDim2_16,
		FontFace = font4,
		Text = "Close menu",
		TextColor3 = color3_7,
		TextScaled = true,
		Parent = v134
	})

    local v141 = u3
    local vector2_6 = Vector2.new(0.5, 0.5)
    local uDim2_17 = UDim2.new(0.5, 0, 0.5, 0)
    local uDim2_18 = UDim2.new(0.4, 0, 0.4, 0)
    local v145 = v141("Frame", {
		Name = "Error_Glow",
		AnchorPoint = vector2_6,
		BackgroundTransparency = 1,
		Position = uDim2_17,
		Interactable = false,
		ZIndex = -1,
		Size = uDim2_18,
		Parent = v95
	})
    local v146 = u3
    local vector2_7 = Vector2.new(0.5, 0.5)
    local uDim2_19 = UDim2.new(0.5, 0, 0.5, 0)
    local uDim2_20 = UDim2.new(1.1, 0, 1.1, 0)
    local color3_8 = Color3.fromRGB(255, 255, 255)

    v146("ImageButton", {
		AnchorPoint = vector2_7,
		BackgroundTransparency = 1,
		Position = uDim2_19,
		Size = uDim2_20,
		ZIndex = -1,
		Image = "rbxassetid://136878391730807",
		ImageColor3 = color3_8,
		ImageTransparency = 0.5,
		Parent = v145
	})

    local v151 = u3("BlurEffect", {
		Size = 50,
		Parent = Lighting
	})
    v134.MouseButton1Click:Once(function()
        v151:Destroy()
        v95:Destroy()
    end)
end
if not game:IsLoaded() then
    game.Loaded:Wait()
end
if _G.Is_Script_Running then
    warn("stopping duplicate script from running")

    return
end
_G.Is_Script_Running = true
_G.ScriptStep = "check if in world zero"
t1[1] = tostring(game.GameId)
if t1[1] ~= "985731078" then
    game:Shutdown()
end
_G.ScriptStep = "executor function references"
local v5 = identifyexecutor or (getexecutorname or false)
local v6, v7, v8 = v5()
t1[13] = v6
t1[14] = v7
t1[15] = v8
local v9 = t1[13]
local v10 = t1[14]
t1[11] = http_request
t1[2] = t1[11]
if not t1[11] then
    t1[3] = request
    t1[11] = t1[3]

    if not t1[3] then
        t1[5] = v9 and v9.request
        t1[3] = t1[5]

        if not t1[5] then
            t1[3] = v9 and v9.http_request or not not http and (http.request or false)
        end

        t1[11] = t1[3]
    end

    t1[2] = t1[11]
end
local v11 = t1[2]
t1[2] = hookfunc or (hookfunction or false)
local v12 = t1[2]
t1[2] = restorefunc or (restorefunction or false)
local v13 = t1[2]
t1[4] = queue_on_teleport
t1[2] = t1[4]
if not t1[4] then
    t1[2] = queueonteleport or (queue_on_tp or (queueontp or (queueteleport or false)))
end
local v14 = t1[2]
t1[5] = clear_teleport_queue
t1[2] = t1[5]
if not t1[5] then
    t1[7] = clearqueueonteleport
    t1[5] = t1[7]

    if not t1[7] then
        t1[5] = clearteleportqueue or (clear_tp_queue or (cleartpqueue or (clear_queue_on_teleport or false)))
    end

    t1[2] = t1[5]
end
local v15 = t1[2]
t1[6] = rnet and rnet.desync
t1[2] = t1[6]
if not t1[6] then
    t1[2] = raknet and raknet.desync or not not RakNet and (RakNet.desync or false)
end
local v16 = t1[2]
t1[7] = get_hidden_gui
t1[2] = t1[7]
if not t1[7] then
    t1[2] = gethui or (gethiddengui or (get_hidden_ui or (gethiddenui or false)))
end
HideGui = t1[2]
t1[8] = newcclosure
local v17 = t1[8] or false
t1[6] = cloneref or (clonereference or false)
local v18 = t1[6]
t1[6] = ishooked or (isfunctionhooked or (is_hooked or (is_function_hooked or false)))
local v19 = t1[6]
t1[9] = gethwid
t1[6] = t1[9]
if not t1[9] then
    t1[6] = get_hwid or (get_device_id or (getsystemid or "unknown"))
end
local v20 = t1[6]
_G.ScriptStep = "return things for the script"
t1[6] = function(p4)
    local p4_2 = game:GetService(p4)

    if p4_2 then
        return v18(p4_2)
    end

    warn("Unable to get service", p4)
end
t1[9] = function(p5)
    return v18(Shared:WaitForChild(p5, 1e999))
end
t1[10] = function(p6, p7)
    return v18(p6:WaitForChild(p7, 1e999))
end
t1[16] = function(p8, p9)
    p8:GetAttribute(p9)

    repeat
        task.wait()
    until p8:GetAttribute(p9)

    return p8:GetAttribute(p9)
end
local v21 = t1[10]
local v22 = t1[16]
_G.ScriptStep = "setting up roblox services variables"
t1[16] = t1[6]("Workspace")
local v23 = t1[16]
t1[16] = t1[6]("Players")
local v24 = t1[16]
CoreGui = t1[6]("CoreGui")
StarterGui = t1[6]("StarterGui")
Lighting = t1[6]("Lighting")
t1[17] = t1[6]("ReplicatedStorage")
local v25 = t1[17]
t1[17] = t1[6]("HttpService")
local v26 = t1[17]
t1[17] = t1[6]("VirtualUser")
local v27 = t1[17]
t1[17] = t1[6]("UserInputService")
local v28 = t1[17]
t1[17] = t1[6]("RunService")
local v29 = t1[17]
t1[17] = t1[6]("MarketplaceService")
local v30 = t1[17]
t1[17] = t1[6]("TeleportService")
local v31 = t1[17]
_G.ScriptStep = "setting up game variables"
Shared = v21(v25, "Shared")
Remotes = v21(v25, "Remotes")
t1[17] = t1[9]("Battlepass")
local v32 = t1[17]
t1[17] = t1[9]("Charms")
local v33 = t1[17]
t1[17] = t1[9]("Chests")
local v34 = t1[17]
t1[17] = t1[9]("Combat")
local v35 = t1[17]
t1[9]("Crystals")
t1[19] = t1[9]("Drops")
local v36 = t1[19]
t1[19] = t1[9]("Effects")
local v37 = t1[19]
t1[9]("Guilds")
t1[9]("Health")
t1[9]("Inventory")
t1[9]("ItemUpgrade")
t1[22] = t1[9]("Items")
local v38 = t1[22]
t1[22] = t1[9]("Missions")
local v39 = t1[22]
t1[22] = t1[9]("Mobs")
local v40 = t1[22]
t1[22] = t1[9]("ModelProvider")
local v41 = t1[22]
t1[9]("Party")
t1[23] = t1[9]("Pets")
local v42 = t1[23]
t1[23] = t1[9]("Quests")
local v43 = t1[23]
t1[23] = t1[9]("Shop")
local v44 = t1[23]
t1[9]("Skills")
t1[18] = t1[9]("Teleport")
local v45 = t1[18]
_G.ScriptStep = "setting up more game variables"
v21(v23, "Camera")
t1[25] = v21(v23, "Mobs")
local v46 = t1[25]
local MissionObjects
_G.ScriptStep = "setting up script variables"
local t2 = {}
local t3 = {}
t1[25] = t3
t1[20] = {}
t1[25].MobTable = t1[20]
local t4 = {}
local t5 = {}
t1[25] = v24.LocalPlayer
local v52 = t1[25]
t1[25] = v52.AccountAge
t1[21] = v52.Name
local v53 = t1[21]
t1[21] = v52.UserId
local v54 = t1[21]
t1[26] = v21(v52, "PlayerGui")
local v55 = t1[26]
local n1 = 0
local u57
local u58
local u59
local Collider
local HumanoidRootPart
local n2 = 0
local n3 = 0
local n4 = 0
local u65
local n5 = 200
local u67
local u68
local n6 = 5
local n7 = 0
local n8 = 0
local n9 = 0
local n10 = 20
local u74
local u75
local s1 = "@everyone"
local u77
local n11 = 60
local u79
local u80
local u81 = true
local n12 = 1
if v14 then
    t1[28] = isfile("PORN/AutoExecute")

    if t1[28] then
        v14("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/fnkq/jewhub32skidy/main/jewhub322.lua\"))()")
        t1[27] = t2
        t1[28] = "AlreadyQueued"
        t1[27][t1[28]] = true
    end
end
t1[26] = v9 == "Xeno" or (v9 == "Solara" or v9 == "Velocity")
if t1[26] then
    t1[26] = t2
    t1[27] = "BadExecutor"
    t1[26][t1[27]] = true
end
_G.ScriptStep = "setting up location identifier"
t1[27] = tostring(game.PlaceId)
local v83 = t1[27]
local u84 = false
local u85 = false
local u86 = false
local u87 = false
t1[29] = {
	["2727067538"] = true
}
t1[30] = {
	["4310463616"] = true,
	["4310463940"] = true,
	["4465987684"] = true,
	["4646472003"] = true,
	["5703355191"] = true,
	["6075083204"] = true,
	["6847035264"] = true,
	["9944262922"] = true,
	["10651517727"] = true,
	["14914684761"] = true,
	["7499964980"] = true,
	["6510868181"] = true,
	["139316833473171"] = true,
	["105045973347410"] = true,
	["87656507991995"] = true,
	["100868012981049"] = true,
	["18567064955"] = true,
	["125645867930579"] = true,
	["5862275930"] = true,
	["4526768266"] = true,
	["111346137875750 "] = true,
	["73832225581864"] = true,
	["84106607802351"] = true,
	["136326194224398"] = true,
	["73334696605120"] = true
}
t1[31] = {
	["107701891477606"] = 49,
	["2978696440"] = 1,
	["4310476380"] = 3,
	["4310464656"] = 2,
	["4310478830"] = 4,
	["3383444582"] = 6,
	["3885726701"] = 11,
	["3994953548"] = 12,
	["4050468028"] = 13,
	["3165900886"] = 7,
	["4465988196"] = 14,
	["4465989351"] = 15,
	["4465989998"] = 16,
	["4646473427"] = 20,
	["4646475342"] = 19,
	["4646475570"] = 18,
	["6386112652"] = 24,
	["11466514043"] = 35,
	["6510862058"] = 25,
	["11533444995"] = 36,
	["6847034886"] = 26,
	["11644048314"] = 37,
	["9944263348"] = 30,
	["10014664329"] = 31,
	["10651527284"] = 32,
	["10727165164"] = 33,
	["14914700740"] = 41,
	["14914855930"] = 42
}
t1[32] = {
	["93889085342251"] = 51,
	["102111805987017"] = 47,
	["81373988789544"] = 46,
	["109614960834199"] = 50,
	["138178936582742"] = 48,
	["110769392907898"] = 52,
	["75540798045662"] = 45,
	["18567068844"] = 44,
	["5862277651"] = 22,
	["4526768588"] = 17
}
t1[34] = {
	["5703353651"] = 21,
	["6075085184"] = 23,
	["7071564842"] = 27,
	["10089970465"] = 29,
	["10795158121"] = 34,
	["15121292578"] = 43,
	["14400549310"] = 39,
	["13988110964"] = 38
}
t1[27] = {
	MainMenu = t1[29],
	WorldHubs = t1[30],
	Dungeons = t1[31],
	EventDungeons = t1[32],
	Towers = t1[34]
}
if t1[27].MainMenu[v83] then
    u85 = true
    print("PORN: player in main menu")
elseif t1[27].WorldHubs[v83] then
    u84 = true
    print("PORN: player in lobby")
elseif t1[27].Dungeons[v83] then
    u86 = true
    print("PORN: player in dungeon")
elseif t1[27].Towers[v83] then
    u86 = true
    u87 = true
    print("PORN: player in tower")
elseif t1[27].EventDungeons[v83] then
    IsEventDungeon = true
    u86 = true
    print("PORN: player is in event dungeon")
else
    u84 = true
    print("PORN: cannot determine where player is located... placeid: " .. v83)
end
t1[34] = u84 or u85
if not t1[34] then
    t1[33] = t3
    t1[34] = "CurrentDungeonID"
    t1[35] = t1[27].EventDungeons[v83] or (t1[27].Dungeons[v83] or (t1[27].Towers[v83] or nil))
    t1[33][t1[34]] = t1[35]
end
task.wait()
_G.ScriptStep = "message handler"
task.wait()
_G.ScriptStep = "save error"
t1[36] = function(p10, p11, p12)
    if isfile("PORN_script_error.txt") then
        appendfile("PORN_script_error.txt", "\n\nError:\n" .. p11 .. "\nLocation: " .. p10)
    else
        writefile("PORN_script_error.txt", "Error:\n" .. p11 .. "\nLocation: " .. p10)
    end

    v4(p10, p11, p12, nil)

    local v169 = "**Error:** `" .. p11 .. "`\n**Extra Info:** `" .. tostring(p12) .. "`\n**Executor:** `" .. v9 .. "`"
    local t6 = {
		username = "Error Logger",
		embeds = {{
			title = p10,
			description = v169,
			type = "rich",
			color = 16711680
		}}
	}
    local v171 = true
    local s2 = "https://discord.com/api/webhooks/1487911137021395116/GVFUp0UWv9fDutpbCZlUhogVxmTm7qXmFIHH2Hz7ZtzGquL6GB_GitT_kmrmSXKm_j9Q"
    local _, _ = pcall(function()
        if v171 and v12 or hookmetamethod then
            local n13 = 0
            local ok, _ = pcall(function()
                for _, v in pairs(getreg()) do
                    if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                        n13 += 1
                    end
                end
            end)
            if n13 > 2 or n13 == 0 then
                return
            end
            if not ok then
                return
            end
            local u368 = false
            local success = pcall(function()
                local v1194 = ishooked and ishooked(request)

                if not v1194 then
                    v1194 = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                end

                if v1194 then
                    u368 = true

                    return
                end
            end)
            if not success then
                return
            end
            local ok2, _ = pcall(function()
                local v1195 = ishooked and ishooked(game.HttpGet)

                if not v1195 then
                    v1195 = isfunctionhooked and isfunctionhooked(game.HttpGet)

                    if not v1195 then
                        v1195 = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                    end
                end

                if v1195 then
                    u368 = true

                    return
                end
            end)
            if u368 then
                return
            end
            if not ok2 then
                return
            end
        end

        if not v11 then
            return
        end

        local v373 = v11
        local v374 = s2
        local t8 = {
			["Content-Type"] = "application/json"
		}
        local json = v26:JSONEncode(t6)

        v373({
			Url = v374,
			Method = "POST",
			Headers = t8,
			Body = json
		})
    end)
end
local v88 = t1[36]
t1[38] = function()
    local t9 = {}
    local elapsed = os.clock()
    task.wait()
    _G.ScriptStep = "not in main menu"
    if not u85 then
        t9[3] = t3
        t9[1] = "PlayerClass"
        t9[2] = v22(v52, "Class")
        t9[3][t9[1]] = t9[2]
        t9[3] = t3
        t9[1] = "PlayerLevel"
        t9[2] = v22(v52, "Level")
        t9[3][t9[1]] = t9[2]
        t9[3] = t3
        t9[1] = "PlayerPrestige"
        t9[2] = v22(v52, "Prestige")
        t9[3][t9[1]] = t9[2]
        u57 = v21(v55, "Profile")
        u58 = v21(u57, "Inventory")
        t9[3] = t2
        t9[2] = "Parties"
        t9[1] = v21(v25, "Parties")
        t9[3][t9[2]] = t9[1]
    end
    task.spawn(function()
        local ok, result = pcall(function()
            print("PORN: player is using", v9, v10)

            local v1196 = string.lower((tostring(v9)))

            if string.find(v1196, "xeno") then
                print("PORN: xeno fixes")
                t2.IsUsingXeno = true
            end
        end)

        if not ok then
            if not v5 then
                print("PORN: couldn't identify executor, identity function missing.")

                return
            end

            print("PORN: couldn't identify executor,", (tostring(result)))
        end
    end)
    task.wait()
    _G.ScriptStep = "load and save files"
    local function u177(p13, p14, p15)
        local u382
        local ok, result = pcall(function()
            if isfile and (writefile and readfile) then
                local v1197 = "PORN/ignore/" .. p14

                if p15 and isfile(v1197) then
                    delfile(v1197)
                    task.wait(1)
                end

                if not isfile(v1197) then
                    while true do
                        local success, result = pcall(function()
                            writefile(v1197, game:HttpGet(p13))
                        end)
                        if success then
                            break
                        end
                        warn("writefile() failed... trying again in 2 seconds...\nReasom: " .. tostring(result))
                        task.wait(2)
                    end
                end

                local v1200 = v1197 .. "_tfwd"
                local v1201 = os.date("*t")

                if isfile(v1200) then
                    local v1202 = v26
                    local t11 = { readfile(v1200) }
                    local data = v1202:JSONDecode(v2(t11))

                    if v1201.day > data.dd or v1201.month > data.md then
                        while true do
                            local success, result = pcall(function()
                                writefile(v1197, game:HttpGet(p13))
                            end)
                            if success then
                                break
                            end
                            warn("writefile() failed... trying again in 2 seconds...\nReasom: " .. tostring(result))
                            task.wait(2)
                        end

                        local _writefile = writefile
                        local v1208 = v26
                        local day = v1201.day
                        local month = v1201.month

                        _writefile(v1200, v1208:JSONEncode({
							dd = day,
							md = month
						}))
                    end
                else
                    local _writefile = writefile
                    local v1212 = v26
                    local day = v1201.day
                    local month = v1201.month

                    _writefile(v1200, v1212:JSONEncode({
						dd = day,
						md = month
					}))
                end

                local _loadstring = loadstring
                local t13 = { readfile(v1197) }

                u382 = _loadstring(v2(t13))()

                return
            end

            u382 = loadstring(game:HttpGet(p13))()
        end)
        if not ok then
            v88("FAILED TO GET FILE", tostring(result), (tostring(p14)))
        end
        if u382 == nil then
            warn(p14 .. " has no data? Trying to download it again...")
            u382 = u177(p13, p14, true)
        end
        if u382 then
            return u382
        end
    end
    task.wait()
    _G.ScriptStep = "obsidian library"
    t9[2] = t2
    if t9[2].BadExecutor then
        Library = u177("https://raw.githubusercontent.com/fnkq/jewhub32skidy/refs/heads/main/old_obsidian_library", "g1")
    else
        Library = u177("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua", "g1")
    end
    task.wait()
    _G.ScriptStep = "obsidian theme manager"
    ThemeManager = u177("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua", "g2")
    task.wait()
    _G.ScriptStep = "obsidian save manager"
    SaveManager = u177("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua", "g3")
    task.wait()
    _G.ScriptStep = "obsidian loading gui"
    ThemeManager:SetLibrary(Library)
    SaveManager:SetLibrary(Library)

    local function apply_accent_color(color)
        local accentColor = color or Color3.fromRGB(255, 215, 0)
        local ok, scheme = pcall(function()
            return Library.Scheme
        end)

        if ok and type(scheme) == "table" then
            scheme.AccentColor = accentColor
            scheme.MainColor = scheme.MainColor or Color3.fromRGB(25, 25, 25)
            scheme.BackgroundColor = scheme.BackgroundColor or Color3.fromRGB(15, 15, 15)
            scheme.OutlineColor = scheme.OutlineColor or Color3.fromRGB(40, 40, 40)
            scheme.FontColor = scheme.FontColor or Color3.fromRGB(255, 255, 255)

            pcall(function()
                if Library and Library.UpdateColorsUsingRegistry then
                    Library:UpdateColorsUsingRegistry()
                end
            end)
        end
    end

    local function apply_yellow_accent()
        apply_accent_color(Color3.fromRGB(255, 215, 0))
    end

    apply_yellow_accent()

    Loading = Library:CreateLoading({
		Title ="PORN Hub",
		Icon = "rbxassetid://15643951512",
		TotalSteps = 5,
		ShowSidebar = true
	})
    Loading:SetDescription("Loading script...")
    local n14 = 0
    local function v179(p16)
        n14 += 1

        if p16 then
            Loading:SetCurrentStep(5)
            Loading.Sidebar:AddLabel("<font color='#FF3333'>LOADING EXCEPTION FOUND.\nFORCING DUNGEON RESTART.</font>")

            return
        end

        Loading:SetCurrentStep(n14)
        Loading.Sidebar:AddLabel(_G.ScriptStep)
    end
    _G.ScriptStep = "setting up..."
    v179()
    task.wait()
    _G.ScriptStep = "creating important tables"
    t9[2] = {
		"MissionStart",
		DescendantCheck = true
	}
    local t14 = { t9[2] }
    task.wait()
    local t15 = {
		"ChakraWings",
		"EclipseHalo",
		"SlayerUniformM",
		"SlayerUniformF",
		"AcademyBackpack",
		"GemstoneHeadband",
		"PsychicGlasses",
		"FlameEars"
	}
    task.wait()
    t9[3] = {
		"ffffff",
		"000000",
		"e6e6e6",
		"1e1e1e",
		"d4af37",
		"11ccee",
		"ffaabb",
		"ddeadd",
		"dec0de",
		"b00000",
		"bbaadd",
		"c0aa11",
		"00bdae",
		"55eeaa",
		"ffaded",
		"beeeee",
		"ffaaee",
		"ac11dd",
		"acce55",
		"ff0011",
		"decade",
		"deeeed",
		"deeee1"
	}
    local v182 = t9[3]
    task.wait()
    t9[3] = {
		"StarEgg",
		"JungleEgg",
		"CrystalEgg",
		"ChristmasEgg",
		"DesertEgg",
		"MoltenEgg",
		"OceanEgg",
		"SkyEgg",
		"CatEgg",
		"CatEggHalloween",
		"AlligatorEgg",
		"FairyEgg",
		"AetherEgg",
		"CabbageEgg",
		"SkeletonEgg",
		"CupidEgg",
		"SlimeEgg",
		"TeddyEgg",
		"SantaEgg",
		"ArcaneEgg",
		"GhostEgg",
		"PenguinEgg",
		"RobloxEventEggHatchable",
		"GoldenEgg",
		"MiseryEgg",
		"BunnyEgg",
		"RheaEgg"
	}
    local v183 = t9[3]
    task.wait()
    t9[3] = {
		MoltenEgg = true,
		OceanEgg = true,
		SkyEgg = true,
		AlligatorEgg = true,
		FairyEgg = true,
		ArcaneEgg = true
	}
    local v184 = t9[3]
    task.wait()
    local t16 = {
		Level = 150,
		DungeonName = "Nightmare Portal",
		DungeonDelay = 60,
		DungeonID = 1005
	}
    local t17 = {
		Level = 135,
		DungeonName = "Astral Academy",
		DungeonDelay = 135,
		DungeonID = 42
	}
    local t18 = {
		Level = 130,
		DungeonName = "Crystal Chaos",
		DungeonDelay = 115,
		DungeonID = 41
	}
    local t19 = {
		Level = 120,
		DungeonName = "Aether Fortress",
		DungeonDelay = 45,
		DungeonID = 33
	}
    local t20 = {
		Level = 115,
		DungeonName = "Treetop Trouble",
		DungeonDelay = 90,
		DungeonID = 32
	}
    t9[2] = {
		Level = 105,
		DungeonName = "Ruin Rush",
		DungeonDelay = 65,
		DungeonID = 31
	}
    t9[1] = {
		Level = 100,
		DungeonName = "Rescue in the Ruins",
		DungeonDelay = 78,
		DungeonID = 30
	}
    local t21 = {
		Level = 95,
		DungeonName = "The Labyrinth",
		DungeonDelay = 20,
		DungeonID = 37
	}
    local t22 = {
		Level = 90,
		DungeonName = "The Underworld",
		DungeonDelay = 85,
		DungeonID = 26
	}
    local t23 = {
		Level = 80,
		DungeonName = "Treasure Hunt",
		DungeonDelay = 36,
		DungeonID = 36
	}
    local t24 = {
		Level = 75,
		DungeonName = "Rough Waters",
		DungeonDelay = 55,
		DungeonID = 25
	}
    local t25 = {
		Level = 65,
		DungeonName = "Konoh Inferno",
		DungeonDelay = 40,
		DungeonID = 35
	}
    local t26 = {
		Level = 60,
		DungeonName = "Konoh Heartlands",
		DungeonDelay = 45,
		DungeonID = 24
	}
    local t27 = {
		Level = 55,
		DungeonName = "Pyramid Dungeon",
		DungeonDelay = 40,
		DungeonID = 18
	}
    local t28 = {
		Level = 50,
		DungeonName = "Deserted Burrowmine",
		DungeonDelay = 40,
		DungeonID = 19
	}
    local t29 = {
		Level = 45,
		DungeonName = "Scrap Canyon",
		DungeonDelay = 50,
		DungeonID = 20
	}
    local t30 = {
		Level = 40,
		DungeonName = "Winter Dungeon",
		DungeonDelay = 60,
		DungeonID = 16
	}
    local t31 = {
		Level = 35,
		DungeonName = "Winter Cavern",
		DungeonDelay = 20,
		DungeonID = 15
	}
    local t32 = {
		Level = 30,
		DungeonName = "Mountain Pass",
		DungeonDelay = 35,
		DungeonID = 14
	}
    local t33 = {
		Level = 26,
		DungeonName = "Volcano Dungeon",
		DungeonDelay = 40,
		DungeonID = 7
	}
    local t34 = {
		Level = 22,
		DungeonName = "Volcano's Shadow",
		DungeonDelay = 59,
		DungeonID = 13
	}
    local t35 = {
		Level = 18,
		DungeonName = "Mama Trauma",
		DungeonDelay = 35,
		DungeonID = 12
	}
    local t36 = {
		Level = 15,
		DungeonName = "Temble of Ruin",
		DungeonDelay = 33,
		DungeonID = 11
	}
    local t37 = {
		Level = 12,
		DungeonName = "Gravetower Dungeon",
		DungeonDelay = 45,
		DungeonID = 6
	}
    local t38 = {
		Level = 10,
		DungeonName = "Kingslayer",
		DungeonDelay = 32,
		DungeonID = 4
	}
    local t39 = {
		Level = 7,
		DungeonName = "Dire Problem",
		DungeonDelay = 15,
		DungeonID = 2
	}
    local t40 = {
		Level = 4,
		DungeonName = "Scarecrow Defense",
		DungeonDelay = 20,
		DungeonID = 3
	}
    t9[3] = {
		Level = 1,
		DungeonName = "Crabby Crusade",
		DungeonDelay = 20,
		DungeonID = 1
	}
    local t41 = {
		Level = 0,
		DungeonName = "Celestial Tower",
		DungeonDelay = 580,
		DungeonID = 39
	}
    local t42 = {
		Level = 0,
		DungeonName = "Arcane Tower",
		DungeonDelay = 320,
		DungeonID = 43
	}
    local t43 = {
		Level = 0,
		DungeonName = "Aether Tower",
		DungeonDelay = 270,
		DungeonID = 34
	}
    local t44 = {
		Level = 0,
		DungeonName = "Oasis Tower",
		DungeonDelay = 280,
		DungeonID = 29
	}
    local t45 = {
		Level = 0,
		DungeonName = "Mezuvian Tower",
		DungeonDelay = 270,
		DungeonID = 27
	}
    local t46 = {
		Level = 0,
		DungeonName = "Atlantis Tower",
		DungeonDelay = 279,
		DungeonID = 23
	}
    local t47 = {
		Level = 0,
		DungeonName = "Prison Tower",
		DungeonDelay = 240,
		DungeonID = 21
	}
    local t48 = {
		Level = 0,
		DungeonName = "Infinite Tower",
		DungeonDelay = 0,
		DungeonID = 38
	}
    t9[3] = {
		t16,
		t17,
		t18,
		t19,
		t20,
		t9[2],
		t9[1],
		t21,
		t22,
		t23,
		t24,
		t25,
		t26,
		t27,
		t28,
		t29,
		t30,
		t31,
		t32,
		t33,
		t34,
		t35,
		t36,
		t37,
		t38,
		t39,
		t40,
		t9[3],
		t41,
		t42,
		t43,
		t44,
		t45,
		t46,
		t47,
		t48
	}
    local v218 = t9[3]
    task.wait()
    local t49 = {}
    _G.ScriptStep = "loading script functions"
    v179()
    _G.ScriptStep = "nmumber format"
    local function v220(p17)
        local str = tostring(p17)

        return str:reverse():gsub("...", "%0,", (math.floor((#str - 1) / 3))):reverse()
    end
    task.wait()
    _G.ScriptStep = "seconds to string"
    t9[3] = function(p18)
        local v389 = math.floor(p18 / 86400)
        local v390 = math.floor(p18 % 86400 / 3600)
        local v391 = math.floor(p18 % 3600 / 60)
        local v392 = math.floor(p18 % 60)

        if p18 < 60 then
            return tostring((math.floor(p18))) .. "s"
        end

        if p18 < 3600 then
            return string.format("%d:%02d", v391, v392)
        end

        if p18 < 86400 then
            return string.format("%d:%02d:%02d", v390, v391, v392)
        end

        return string.format("%d:%02d:%02d:%02d", v389, v390, v391, v392)
    end
    local v221 = t9[3]
    task.wait()
    _G.ScriptStep = "is mission over"
    t9[3] = function()
        local MissionCleared = v23:GetAttribute("MissionCleared")

        if MissionCleared and MissionCleared == true then
            task.spawn(function()
                task.wait(2)
                u68 = true
            end)

            return true
        end

        return false
    end
    local v222 = t9[3]
    task.wait()
    _G.ScriptStep = "connect mission cleared"
    t9[2] = function()
        if u86 then
            v23:GetAttributeChangedSignal("MissionCleared"):Once(function()
                if v222() then
                    print("Mission is finished")
                end
            end)
        end
    end
    task.wait()
    _G.ScriptStep = "check for avoid mobs"
    t9[3] = function()
        if u86 then
            local ok, result = pcall(function()
                for _, child in pairs(t2.Parties:GetChildren()) do
                    local RaidID = child:FindFirstChild("RaidID")

                    if RaidID then
                        t2.PartyRaidID = RaidID.Value

                        if not t2.CanRequire then
                            if t2.PartyRaidID == 1 then
                                t49.BOSSDireBoarwolf = true
                                t49.BOSSTreeEnt = true
                            end

                            if t2.PartyRaidID == 20 then
                                t49.BOSSAnubis = true
                                t49.BOSSHogRider = true
                            end

                            if t2.PartyRaidID == 22 then
                                t49.BOSSFallenKing = true
                            end

                            if t2.PartyRaidID == 24 then
                                t49.CorruptedGreaterTree = true
                            end

                            if t2.PartyRaidID == 25 then
                                t49.BOSSKrakenMain = true
                                t49.DavyJones = true
                                t49.Nautilus = true
                                t49.PirateCrab = true
                            end

                            if t2.PartyRaidID == 26 then
                                t49.HadesCerberus = true
                                t49.SentryOfCerberus = true
                                t49.MinotaurDungeonBoss = true
                            end

                            if t2.PartyRaidID == 28 then
                                t49.BOSSEvilSanta = true
                            end

                            if t2.PartyRaidID == 32 then
                                t49.RustyCommander = true
                                t49.AetherKing = true
                            end

                            if t2.PartyRaidID == 41 then
                                t49.MiniBossCrystalWeaver = true
                                t49.DungeonBOSSCrystalWolf = true
                                t49.BOSSKandrix = true
                            end

                            if t2.PartyRaidID == 44 then
                                t49.EVENTBOSSVane = true
                                t49.BOSSDarkriseDarkDragon = true
                            end

                            if t2.PartyRaidID == 45 then
                                t49.EVENTBOSSKraken = true
                                t49.EVENTBOSSDavyJones = true
                            end

                            if t2.PartyRaidID == 46 then
                                t49.EVENTBOSSCupid = true
                            end
                        end
                    end
                end
            end)

            if not ok then
                v88("BOSS MOBS", (tostring(result)))
            end
        end
    end
    local _task = task
    t9[1] = t9[3]
    _task.wait()
    _G.ScriptStep = "check player ping"
    t9[3] = function()
        local ok, result = pcall(function()
            while true do
                if n12 ~= 0 then
                    n1 = v52:GetNetworkPing() * n12
                else
                    n1 = 0
                end

                task.wait(1)
            end
        end)

        if not ok then
            v88("PLAYER PING", (tostring(result)))
        end
    end
    local _task2 = task
    local v225 = t9[3]
    _task2.wait()
    _G.ScriptStep = "mob scanner"
    t9[3] = function()
        if (u84 or u86) and (t2.CanRequire and (v12 and v17)) then
            local PlayerRemover = require(v40:WaitForChild("PlayerRemover", 1e999))

            v12(PlayerRemover.AddMobToSearch, v17(function()
            end))

            for _, child in pairs(v46:GetChildren()) do
                PlayerRemover:RemoveMobFromSearch(child)
            end
        end

        if u86 then
            local success, result = pcall(function()
                local t50 = {
					DireBridgeSpawn = true,
					DireBoulderSpawn = true,
					DireCaveSpawn = true,
					FakeKingSpawn = true,
					BridgeMama = true,
					CerberusSpawn1 = true,
					CerberusSpawn2 = true,
					FakeBoss = true,
					FakeBossSpawn = true
				}
                local t51 = {
					EVENTBOSSEasterBunny = true,
					EVENTBOSSEasterBunnyEnraged = true,
					BabyWinterfall = true,
					BabyIgnis = true
				}
                local vector3 = Vector3.new(1, 1, 1)
                local vector3_2 = Vector3.new(52, 30, 52)
                local vector3_3 = Vector3.new(52, 30, 52)
                local vector3_4 = Vector3.new(25, 20, 25)
                local t52 = {
					CorruptedGreaterTree = vector3,
					BOSSCrystalGolem = vector3_2,
					EVENTBOSSZeroGuardian = vector3_3,
					Crystal = vector3_4
				}
                local t53 = {
					BOSSTreeEnt = true,
					HadesCerberus = true,
					EVENTBOSSEasterBunny = true
				}
                local t54 = {
					BOSSKrakenMain = true,
					AlienMothership = true,
					AlienUFO = true
				}
                local t55 = {
					SummonerSummonWeak = true,
					SummonerSUmmonStrong = true,
					NecromancerSummon = true,
					EvilClown = true
				}
                local t56 = {
					Pillar1 = true,
					Pillar2 = true,
					Pillar3 = true,
					IceBarricade = true,
					Blocker1 = true,
					Blocker2 = true,
					Blocker3 = true,
					Model = true,
					Crystal = true,
					EasterGiantEgg = true
				}
                local OnClientEvent = Remotes:WaitForChild("Mobs_InvincibilityUpdated", 1e999).OnClientEvent

                OnClientEvent:Connect(function(p19, p20)
                    local v1794 = t3.MobTable[p19]

                    if v1794 then
                        if p20 then
                            v1794.Invincible = true

                            return
                        end

                        v1794.Invincible = false
                    end
                end)

                if t2.CanRequire then
                    local lib = require(v40)
                    local n15 = 1e999
                    local function v1234(p21, p22)
                        local MobDebug = t3.MobDebug

                        task.spawn(function()
                            local Model = p21:WaitForChild("Model", 2)

                            if Model then
                                local HumanoidRootPart2 = Model:WaitForChild("HumanoidRootPart", 2)

                                if HumanoidRootPart2 then
                                    HumanoidRootPart2.Anchored = true
                                    HumanoidRootPart2.CanCollide = false
                                    HumanoidRootPart2.Transparency = 1
                                end
                            end
                        end)

                        if not p22 then
                            p22 = p21.Name
                        end

                        if t56[p22] then
                            local Part = p21:FindFirstChild("Part")

                            if not Part then
                                Part = p21:FindFirstChild("Base")

                                if not Part then
                                    Part = p21:FindFirstChild("hitbox") or (p21:FindFirstChild("EasterGiantEgg") or p21:FindFirstChild("Collider"))
                                end
                            end

                            if not Part then
                                if MobDebug then
                                    warn("PORN:", p22, "(blocker has no target part)")
                                end

                                return
                            end

                            Part.Name = "Collider"
                            t3.MobTable[p21] = {
								IsBlocker = true
							}

                            if MobDebug then
                                print("PORN:", p22, "(added, blocker)")
                            end

                            return
                        end

                        if p21.Parent then
                            local MobData
                            local v1800 = time() + 5
                            repeat
                                if v1800 < time() then
                                    if t3.MobDebug then
                                        warn("PORN:", p22, "(exceeded load time)")
                                    end

                                    break
                                end

                                MobData = lib:GetMobData(p21)
                                task.wait()
                            until MobData
                            if MobData and MobData.IsHunterPet or MobData.CanAttackMobs then
                                if MobDebug then
                                    warn("PORN:", p22, "(familiar or summon)")
                                end

                                return
                            end
                            local v1801 = t52[p22]
                            if v1801 then
                                if MobData then
                                    MobData.Collider.Size = v1801
                                else
                                    local Collider2 = p21:WaitForChild("Collider", 5)

                                    if Collider2 then
                                        Collider2.Size = v1801
                                    end
                                end
                            end
                            if t53[p22] then
                                if MobDebug then
                                    print("PORN:", p22, "(prevent stuck)")
                                end

                                task.wait(1)
                            end
                            if t51[p22] then
                                t3.MobTable[p21] = {
									Priority = true
								}

                                if MobDebug then
                                    print("PORN:", p22, "(added, priority)")
                                end

                                return
                            end
                            if MobData then
                                t3.MobTable[p21] = {}

                                if MobDebug then
                                    print("PORN:", p22, "(added)")

                                    return
                                end
                            else
                                t3.MobTable[p21] = {
									NoData = true
								}

                                if MobDebug then
                                    print("PORN:", p22, "(added, no mob data)")
                                end
                            end

                            return
                        end

                        if MobDebug then
                            warn("PORN:", p22, "(didn't add, no parent)")
                        end
                    end
                    t5.ConnectMobCreated = Remotes:WaitForChild("Health_InstanceAdded").OnClientEvent:Connect(function(p23)
                        if p23.Parent == v25 then
                        end

                        repeat
                            task.wait()
                        until p23.Parent ~= v25

                        v1234(p23)
                    end)
                    t5.ConnectMobDied = Remotes:WaitForChild("Mobs_MobDied", math.huge).OnClientEvent:Connect(function(p24, p25)
                        if t3.MobTable[p25] then
                            t3.MobTable[p25] = nil

                            if t3.MobDebug then
                                warn("PORN:", p24, "(died)")
                            end
                        end
                    end)
                    local _pairs = pairs
                    for v1238, v1239 in _pairs(v46:GetChildren()) do

                        _pairs = v1234
                        _pairs(v1239)
                    end
                    while not u68 do
                        if not u81 then
                            _pairs = nil
                            u67 = nil
                            task.wait()
                        else
                            local v1240 = n15
                            local MobTable = t3.MobTable
                            local v1242
                            local v1243 = n15
                            local v1244
                            local v1245
                            for k, v in pairs(MobTable) do
                                local v1248 = k

                                if not v1248 then
                                    continue
                                end

                                if not v1248.Parent then
                                    if t3.MobDebug then
                                        warn("PORN:", v1248.Name, "(no parent)")
                                    end

                                    MobTable[v1248] = nil

                                    continue
                                end

                                local HealthProperties = v1248:FindFirstChild("HealthProperties")

                                if HealthProperties then
                                    HealthProperties = HealthProperties:FindFirstChild("Health")
                                end

                                if HealthProperties then
                                    HealthProperties = HealthProperties.Value == 0
                                end

                                if HealthProperties then
                                    if t3.MobDebug then
                                        warn("PORN:", v1248.Name, "(zero health)")
                                    end

                                    MobTable[v1248] = nil

                                    continue
                                end

                                if v.IsBlocker then
                                    v1242 = v1248

                                    break
                                end

                                local MobData = lib:GetMobData(v1248)

                                if v.NoData and MobData then
                                    v.NoData = nil
                                end

                                if not MobData then
                                    local Collider3 = v1248:FindFirstChild("Collider")

                                    if not Collider3 then
                                        continue
                                    end

                                    MobData = {
										Collider = Collider3
									}
                                end

                                if not MobData.Invincible then
                                    local Magnitude = (MobData.Collider.Position - HumanoidRootPart.Position).Magnitude

                                    if not MobData.BossTag then
                                        if Magnitude < v1240 then
                                            v1242 = v1248
                                            v1240 = Magnitude
                                        end
                                    elseif v.NoData then
                                        v1245 = v1248
                                    elseif Magnitude < v1243 then
                                        v1244 = v1248
                                        v1243 = Magnitude
                                    end
                                end
                            end
                            u77 = v1242 or v1244
                            if v1242 then
                                u80 = false
                                u75 = true
                                u67 = v1242
                            elseif v1244 then
                                u80 = true
                                u75 = true
                                u67 = v1244
                            elseif v1245 then
                                u67 = v1245
                            else
                                u75 = nil
                                u67 = nil
                            end
                            task.wait()
                        end
                    end
                else
                    for _, child in ipairs(t2.Parties:GetChildren()) do
                        if child:WaitForChild("RaidID").Value == 30 then
                            t50.Part = true
                        end
                    end
                    local function v1255(p26, p27)
                        local MobDebug = t3.MobDebug

                        if not p27 then
                            p27 = p26.Name
                        end

                        if t56[p27] then
                            local Part = p26:FindFirstChild("Part")

                            if not Part then
                                Part = p26:FindFirstChild("Base") or (p26:FindFirstChild("hitbox") or p26:FindFirstChild("EasterGiantEgg"))
                            end

                            if not Part then
                                return
                            end

                            Part.Name = "Collider"
                            t3.MobTable[p26] = {
								IsBlocker = true
							}

                            if MobDebug then
                                print("PORN:", p27, "(added, blocker)")
                            end

                            return
                        end

                        if p26.Parent then
                            if t55[p27] then
                                if MobDebug then
                                    warn("PORN:", p27, "(summon)")
                                end

                                return
                            end

                            if t54[p27] then
                                if MobDebug then
                                    warn("PORN:", p27, "(bad boss)")
                                end

                                return
                            end

                            local FromSpawnPart = p26:WaitForChild("FromSpawnPart", 2)

                            if FromSpawnPart and (FromSpawnPart.Value and t50[tostring(FromSpawnPart.Value)]) then
                                if MobDebug then
                                    warn("PORN:", p27, "(fake mob)")
                                end

                                return
                            end

                            local MobProperties = p26:WaitForChild("MobProperties", 2)
                            local v1812 = MobProperties and MobProperties:WaitForChild("Owner", 2)

                            if v1812 and v1812.Value then
                                if MobDebug then
                                    warn("PORN:", p27, "(familiar)")
                                end

                                return
                            end

                            local v1813 = t52[p27]

                            if v1813 then
                                local Collider4 = p26:WaitForChild("Collider", 2)

                                if Collider4 then
                                    Collider4.Size = v1813
                                end
                            end

                            if t53[p27] then
                                task.wait(1)
                            end

                            if t51[p27] then
                                t3.MobTable[p26] = {
									Priority = true
								}

                                if MobDebug then
                                    print("PORN:", p27, "(priority)")
                                end

                                return
                            end

                            t3.MobTable[p26] = {}

                            if MobDebug then
                                print("PORN:", p27, "(added)")
                            end
                        end
                    end
                    t5.ConnectMobCreated = Remotes:WaitForChild("Health_InstanceAdded").OnClientEvent:Connect(function(p28)
                        if p28.Parent == v25 then
                        end

                        repeat
                            task.wait()
                        until p28.Parent ~= v25

                        v1255(p28)
                    end)
                    t5.ConnectMobDied = Remotes:WaitForChild("Mobs_MobDied", math.huge).OnClientEvent:Connect(function(p29, p30)
                        if t3.MobTable[p30] then
                            t3.MobTable[p30] = nil

                            if t3.MobDebug then
                                warn("PORN:", p29, "(died)")
                            end
                        end
                    end)
                    for v1258, v1259 in pairs(v46:GetChildren()) do

                        local v1260 = v1259

                        task.spawn(function()
                            v1255(v1260)
                        end)
                    end
                    while not u68 do
                        if not u81 then
                            u67 = nil
                            task.wait()
                        else
                            local MobTable = t3.MobTable
                            local v1262
                            local huge = math.huge
                            local v1264
                            local huge2 = math.huge
                            for v1268, v1269 in pairs(MobTable) do

                                if v1268.Parent then
                                    local HealthProperties = v1268:FindFirstChild("HealthProperties")

                                    if HealthProperties then
                                        HealthProperties = HealthProperties:FindFirstChild("Health")
                                    end

                                    if HealthProperties then
                                        HealthProperties = HealthProperties.Value == 0
                                    end

                                    if HealthProperties then
                                        MobTable[v1268] = nil

                                        if t3.MobDebug then
                                            warn("PORN:", v1268.Name, "(zero health)")
                                        end

                                        continue
                                    end

                                    if v1269.Invincible then
                                        continue
                                    end

                                    local Collider5 = v1268:FindFirstChild("Collider")

                                    if not Collider5 then
                                        continue
                                    end

                                    if v1269.Priority then
                                        v1262 = v1268

                                        break
                                    end

                                    local Magnitude = (Collider.Position - Collider5.Position).Magnitude

                                    if t49[v1268.Name] then
                                        if Magnitude < huge2 then
                                            v1264 = v1268
                                            huge2 = Magnitude
                                        end
                                    elseif Magnitude < huge then
                                        v1262 = v1268
                                        huge = Magnitude
                                    end

                                    continue
                                end

                                MobTable[v1268] = nil

                                if t3.MobDebug then
                                    warn("PORN:", v1268.Name, "(no parent)")
                                end
                            end
                            u77 = v1262 or v1264
                            if v1262 and huge then
                                u75 = true
                                u80 = false
                                u67 = v1262
                            elseif not v1262 and (v1264 and huge2) then
                                u75 = true
                                u80 = true
                                u67 = v1264
                            else
                                u75 = false
                                u67 = nil
                            end
                            task.wait()
                        end
                    end
                end
            end)
            if not success then
                v88("MOB SCANNER", (tostring(result)))
            end
        end
    end
    local _task3 = task
    local v227 = t9[3]
    _task3.wait()
    _G.ScriptStep = "destroy mission scripts"
    t9[3] = function()
        if u86 then
            local t58 = {
				FireDart = true,
				HammerHit = true,
				CreateBolder = true,
				ToxinTrigger = true,
				RollingBoulder = true
			}
            local ModuleScript = v25:WaitForChild("MissionScripts", math.huge):FindFirstChildWhichIsA("ModuleScript")

            if ModuleScript then
                local GetChildren = ModuleScript.GetChildren

                for _, v in pairs(GetChildren(ModuleScript)) do
                    if v and v.Parent and t58[v.Name] then
                        v:Destroy()
                    end
                end
            end
        end
    end
    local _task4 = task
    local v229 = t9[3]
    _task4.wait()
    _G.ScriptStep = "ping once unlocked"
    t9[3] = function(p31)
        local _, _ = pcall(function()
            local v1273 = p31
            local str = tostring(v53)
            local t59 = {
				username = "Mastery tracker",
				content = v1273 .. " unlocked on account: " .. str .. "\n-# " .. s1
			}
            local DiscordWebhookLink = t2.DiscordWebhookLink

            if not DiscordWebhookLink and true then
                warn("No webhook link provided")

                return
            end

            local v1277 = false
            local _, _ = pcall(function()
                if v1277 and v12 or hookmetamethod then
                    local n16 = 0
                    local ok, _ = pcall(function()
                        for _, v in pairs(getreg()) do
                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                n16 += 1
                            end
                        end
                    end)
                    if n16 > 2 or n16 == 0 then
                        return
                    end
                    if not ok then
                        return
                    end
                    local u1821 = false
                    local success = pcall(function()
                        local v2136 = ishooked and ishooked(request)

                        if not v2136 then
                            v2136 = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                        end

                        if v2136 then
                            u1821 = true

                            return
                        end
                    end)
                    if not success then
                        return
                    end
                    local ok3, _ = pcall(function()
                        local v2137 = ishooked and ishooked(game.HttpGet)

                        if not v2137 then
                            v2137 = isfunctionhooked and isfunctionhooked(game.HttpGet)

                            if not v2137 then
                                v2137 = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                            end
                        end

                        if v2137 then
                            u1821 = true

                            return
                        end
                    end)
                    if u1821 then
                        return
                    end
                    if not ok3 then
                        return
                    end
                end

                if not v11 then
                    return
                end

                local v1826 = v11
                local v1827 = DiscordWebhookLink
                local t61 = {
					["Content-Type"] = "application/json"
				}
                local json = v26:JSONEncode(t59)

                v1826({
					Url = v1827,
					Method = "POST",
					Headers = t61,
					Body = json
				})
            end)
        end)
    end
    local v230 = t9[3]
    task.wait()
    _G.ScriptStep = "ping for cap"
    task.wait()
    _G.ScriptStep = "get difficulty"
    t9[3] = function()
        return Remotes:WaitForChild("Missions_GetDifficulty", 1e999):InvokeServer()
    end
    local v231 = t9[3]
    task.spawn(function()
        if u86 then
            t3.LoggedDifficulty = v231()
        end
    end)
    task.wait()
    _G.ScriptStep = "get lives"
    task.wait()
    _G.ScriptStep = "party leader check"
    task.wait()
    _G.ScriptStep = "player joined"
    task.wait()
    _G.ScriptStep = "replay dungeon loop"
    t9[3] = function(p32, p33)
        local ok, result = pcall(function()
            if p32 == 49 then
                p32 = 1
            end

            while true do
                Remotes:WaitForChild("Teleport_StartRaid", math.huge):FireServer(p32, p33)
                task.wait(10)
            end
        end)

        if not ok then
            v88("REPLAY DUNGEON", (tostring(result)))
        end
    end
    local v232 = t9[3]
    task.wait()
    _G.ScriptStep = "rejoin last dungeon"
    t9[3] = function(p34)
        local u426 = p34
        local ok, result = pcall(function()
            local v1295 = "PORN/" .. v53 .. "_Rejoin"

            if isfile(v1295) then
                if Loading then
                    n14 += 1
                    Loading:SetCurrentStep(5)
                    Loading.Sidebar:AddLabel("<font color='#FF3333'>LOADING EXCEPTION FOUND.\nFORCING DUNGEON RESTART.</font>")
                end
                local u1296
                pcall(function()
                    u1296 = v26:JSONDecode(readfile(v1295))
                end)
                if u1296 and u1296 ~= "" then
                    local Dungeon = u1296.Dungeon
                    local RejoinDifficulty = u1296.RejoinDifficulty
                    local DisconnectedTime = u1296.DisconnectedTime

                    delfile(v1295)

                    if DisconnectedTime + 300 > os.time() then
                        u68 = true
                        v232(Dungeon, RejoinDifficulty)
                    end
                else
                    delfile(v1295)

                    if IsEventDungeon then
                        v232(t3.CurrentDungeonID, 1)
                    elseif u86 then
                        v232(t3.CurrentDungeonID, 5)
                    elseif u87 then
                        v232(t3.CurrentDungeonID, false)
                    end
                end
            end

            if u426 then
                if Loading then
                    n14 += 1
                    Loading:SetCurrentStep(5)
                    Loading.Sidebar:AddLabel("<font color='#FF3333'>LOADING EXCEPTION FOUND.\nFORCING DUNGEON RESTART.</font>")
                end

                local LoggedDifficulty = t3.LoggedDifficulty

                if u87 then
                    LoggedDifficulty = nil
                end

                local MissionId = t3.MissionId
                local timestamp = os.time()

                DungeonData = {
					Dungeon = MissionId,
					RejoinDifficulty = LoggedDifficulty,
					DisconnectedTime = timestamp
				}
                writefile(v1295, v26:JSONEncode(DungeonData))
                v31:Teleport(tonumber("4310463616"), v52)
            end
        end)
        if not ok then
            v88("REJOIN LAST DUNGEON", (tostring(result)))
        end
    end
    local v233 = t9[3]
    task.wait()
    _G.ScriptStep = "restart dungeon"
    t9[3] = function(p35)
        if not t2.ReplayMission and (not t2.DoingGuildDungeon and not p35) then
            return
        end

        if t2.TowerChestDelay then
            task.wait(6)
        end

        local v430 = v231()
        local v432

        if t2.Parties then
            local Leader = Remotes:WaitForChild("Party_GetPartyData", math.huge):InvokeServer().Leader

            v432 = v53 == Leader.Value
        else
            v432 = false
        end

        if not v432 then
            Remotes:WaitForChild("Missions_LeaveChoice", math.huge):FireServer(true)
            Remotes:WaitForChild("Missions_NotifyReadyToLeave", math.huge):FireServer()

            return
        end

        Library:Notify("Teleporting...", t2.RestartDungeonDelay)
        u68 = true
        task.wait(t2.RestartDungeonDelay)

        if u87 then
            v430 = nil
        end

        if Remotes:WaitForChild("Missions_GetCurrentLives", 1e999):InvokeServer() == 0 then
            v232(t3.MissionId, v430)
        end

        if t2.DoingGuildDungeon and not t2.IsNightmareDungeon then
            if t3.MissionId ~= 42 or v430 ~= 5 then
                if v430 == 1 and not u87 then
                    Library:Notify("Moving to challenge mode", 1)
                    v232(t3.MissionId, 5)
                else
                    local v433
                    for i, v in ipairs(v218) do
                        if v.DungeonID == t3.MissionId then
                            v433 = i - 1

                            break
                        end
                    end
                    local v436 = v218[v433]
                    Library:Notify("Moving to " .. v436.DungeonName, 1)
                    if v436.Level > 0 then
                        v232(v436.DungeonID, 1)
                    else
                        v232(v436.DungeonID, nil)
                    end
                end
            else
                local DoAllDropdownValue = Options.DoAllDropdown.Value

                if DoAllDropdownValue == "Stop" then
                    Library:Notify("Finished doing all dungeons", 10000000000000000)

                    return
                end

                if DoAllDropdownValue == "Loop" then
                    v232(38, nil)
                elseif DoAllDropdownValue == "Loop w/o inf" then
                    v232(21, nil)
                elseif DoAllDropdownValue == "Loop w/o towers" then
                    v232(1, 1)
                elseif DoAllDropdownValue == "Play nightmare dungeons" then
                    v232(1005, 5)
                end
            end
        end

        local IsNightmareDungeon = t2.IsNightmareDungeon

        if IsNightmareDungeon then
            IsNightmareDungeon = t2.PrioNmDCount

            if IsNightmareDungeon then
                IsNightmareDungeon = t3.PlayerLevel == 150
            end
        end

        if IsNightmareDungeon then
            local v439 = Remotes:WaitForChild("Missions_GetCurrentDailyDungeon", math.huge):InvokeServer()

            for _, v in pairs(v439) do
                local InternalID = v.InternalID

                for k, _ in pairs(Options.PrioNmDropdown.Value) do
                    if InternalID == t2.PrioritizedNightmareDungeons[k] then
                        v232(v.ID, v430)
                    end
                end
            end
        end

        if t2.AutoLeveling and not IsEventDungeon then
            local children = v24:GetChildren()
            local n17 = 1e999

            if #children > 1 then
                for _, v in pairs(children) do
                    local Level = v:GetAttribute("Level")

                    if Level and Level < n17 then
                        n17 = Level
                    end
                end
            else
                n17 = v52:GetAttribute("Level")
            end

            for _, v in ipairs(v218) do
                if n17 >= v.Level then
                    if v.DungeonID == t3.MissionId then
                        Library:Notify("Replaying: " .. v.DungeonName, 2)
                    else
                        Library:Notify("Moving to: " .. v.DungeonName, 2)
                    end

                    v232(v.DungeonID, 5)
                end
            end
        end

        if t2.RandomNightmareDungeon and t2.IsNightmareDungeon then
            t3.MissionId = t2.RandomNightmareDungeon
        end

        v232(t3.MissionId, v430)
    end
    local v234 = t9[3]
    task.wait()
    _G.ScriptStep = "wait for game crash"
    task.spawn(function()
        if u86 then
            CoreGui:WaitForChild("RobloxPromptGui", 1e999):WaitForChild("promptOverlay", 1e999):WaitForChild("ErrorPrompt", math.huge)
            v233(true)
        end
    end)
    if u84 or u86 then
        t9[3] = v52.Character

        repeat
            task.wait()
        until v52.Character
    end
    task.wait()
    _G.ScriptStep = "collect chests"
    t9[3] = function()
        local u454 = true
        local t62 = {}
        local u452 = false
        local success, result = pcall(function()
            if t2.CanRequire then
                u452 = require(v38)
            end

            local ok, _ = pcall(function()
                u454 = v30:UserOwnsGamePassAsync(v54, 8136250)
            end)

            if not ok then
                warn("unable to check if user owns extra chest gamepass")
            end

            local Missions_GetMissionPrize = Remotes:WaitForChild("Missions_GetMissionPrize", 1e999)

            for i = 1, 3 do
                if i == 3 and not u454 then
                    return
                end

                task.wait(t2.CollectChestsDelay)

                local v1307 = Missions_GetMissionPrize:InvokeServer()

                if v1307 then
                    if u452 then
                        v1307 = u452[tostring(v1307)].DisplayKey
                    end

                    Library:Notify("Chest reward: " .. tostring(v1307), 1)
                    table.insert(t62, v1307)
                end

                task.wait(0.1)
            end
        end)
        if not success then
            v88("COLLECT DUNGEON CHESTS", (tostring(result)))
        end

        return t62
    end
    local v235 = t9[3]
    task.wait()
    _G.ScriptStep = "claim all quests"
    task.wait()
    _G.ScriptStep = "getting current dungeon"
    task.wait()
    _G.ScriptStep = "connect mission finished"
    t9[3] = function()
        if u86 then
            Remotes:WaitForChild("Missions_MissionFinished", 1e999).OnClientEvent:Once(function(p36, _, p38)
                t2.DungeonCompletionTime = v221(p36)

                if t2.ShowTime then
                    Library:Notify("Completed in " .. t2.DungeonCompletionTime)
                end

                if t2.AutoLeveling then
                    local ok, result = pcall(function()
                        local Active = u57:WaitForChild("Quests", 1e999):WaitForChild("Active", 1e999)

                        if t2.ClaimGuildQuests then
                            local DailyGuildQuests = require(v43):GetDailyGuildQuests()

                            for _, v in pairs(DailyGuildQuests) do
                                local ID = v.ID

                                if not Remotes:WaitForChild("Quests_GuildDailyIsClaimed", 1e999):InvokeServer(ID) and Active:FindFirstChild(ID) then
                                    for _ = 1, 2 do
                                        Remotes:WaitForChild("Quests_ClaimDailyGuildQuest", math.huge):FireServer(ID)
                                    end

                                    task.wait(1.5)
                                end
                            end
                        end

                        local Quests_ClaimQuest = Remotes:WaitForChild("Quests_ClaimQuest", 1e999)

                        if Quests_ClaimQuest then
                            local GetChildren = Active.GetChildren

                            for _, v in ipairs(GetChildren(Active)) do
                                Quests_ClaimQuest:FireServer(tonumber(v.Name))
                            end
                        end
                    end)

                    if not ok then
                        v88("CLAIM QUESTS", (tostring(result)))
                    end
                end

                local t64 = { "none" }

                if t2.CollectDungeonChest then
                    t64 = v235()
                end

                if t2.LogDungeon then
                    local n18 = 65280
                    local s3 = "unknown"
                    local children = v24:GetChildren()

                    if p38 then
                        n18 = 16711680
                    end

                    if t2.CanRequire then
                        s3 = require(v39):GetCurrentMissionData().NameTag
                    else
                        DungeoName = s3 .. "(missing require())"
                    end

                    local v1345

                    if Toggles.ShowPlayersToggle.Value then
                        local t65 = {}

                        for _, v in pairs(children) do
                            table.insert(t65, v.Name)
                        end

                        v1345 = table.concat(t65, "`, `")
                    else
                        v1345 = #children
                    end

                    if not t3.DungeonImage then
                        local ok, _ = pcall(function()
                            if not t2.CanRequire then
                                t3.DungeonImage = ""

                                return
                            end

                            local CurrentMissionData = require(v39):GetCurrentMissionData()
                            local v1865 = tostring(CurrentMissionData.DungeonID or (CurrentMissionData.ImageID or 3815150377)):match("%d+")

                            if t3.MissionId == 43 then
                                v1865 = 15046578670
                            end

                            local s4 = "PORN/DungeonImages"
                            local imageUrl

                            if not isfile("PORN/DungeonImages") then
                                local v1867 = game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. v1865 .. "&size=420x420&format=Png")
                                local v1868 = v26:JSONDecode(v1867).data[1]

                                writefile(s4, v26:JSONEncode({
									Images = {
										[tostring(v1865)] = {
											v1868.imageUrl,
											os.time() + 604800
										}
									}
								}))
                                imageUrl = v1868.imageUrl
                            else
                                local v1870 = v26
                                local t66 = { readfile(s4) }
                                local Images = v1870:JSONDecode(v2(t66)).Images
                                local v1873 = Images[v1865]

                                if not v1873 or (v1873[2] <= os.time() or string.find(tostring(v1873[1]), "token")) then
                                    local t67 = {}

                                    for k, v in pairs(Images) do
                                        t67[k] = { table.unpack(v) }
                                    end

                                    local v1877 = game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. v1865 .. "&size=420x420&format=Png")
                                    local v1878 = v26:JSONDecode(v1877).data[1]

                                    t67[tostring(v1865)] = {
										v1878.imageUrl,
										os.time() + 604800
									}
                                    writefile(s4, v26:JSONEncode({
										Images = t67
									}))
                                    imageUrl = v1878.imageUrl
                                else
                                    imageUrl = v1873[1]
                                end
                            end

                            if string.find(tostring(imageUrl), "token") then
                                imageUrl = ""
                            end

                            t3.DungeonImage = imageUrl
                        end)

                        if not ok then
                            t3.DungeonImage = ""
                        end
                    end

                    local v1348 = "**Dungeon:** `" .. s3 .. "`\n" .. "**Time:** `" .. t2.DungeonCompletionTime .. "`\n" .. "**Party size:** `" .. v1345 .. "`\n" .. "**Chest drops:** `" .. table.concat(t64, "`, `") .. "`"
                    local t68 = {
						url = t3.DungeonImage
					}
                    local t69 = {
						username = "Dungeon logger",
						embeds = {{
							description = v1348,
							type = "rich",
							color = n18,
							thumbnail = t68
						}}
					}
                    local DiscordWebhookLink = t2.DiscordWebhookLink
                    local v1352 = t69

                    if not DiscordWebhookLink and true then
                        warn("No webhook link provided")
                    else
                        local v1353 = false
                        local _, _ = pcall(function()
                            if v1353 and v12 or hookmetamethod then
                                local n19 = 0
                                local ok, _ = pcall(function()
                                    for _, v in pairs(getreg()) do
                                        if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                            n19 += 1
                                        end
                                    end
                                end)
                                if n19 > 2 or n19 == 0 then
                                    return
                                end
                                if not ok then
                                    return
                                end
                                local u1882 = false
                                local success = pcall(function()
                                    local v2148 = ishooked and ishooked(request)

                                    if not v2148 then
                                        v2148 = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                    end

                                    if v2148 then
                                        u1882 = true

                                        return
                                    end
                                end)
                                if not success then
                                    return
                                end
                                local ok4, _ = pcall(function()
                                    local v2149 = ishooked and ishooked(game.HttpGet)

                                    if not v2149 then
                                        v2149 = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                        if not v2149 then
                                            v2149 = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                        end
                                    end

                                    if v2149 then
                                        u1882 = true

                                        return
                                    end
                                end)
                                if u1882 then
                                    return
                                end
                                if not ok4 then
                                    return
                                end
                            end

                            if not v11 then
                                return
                            end

                            local v1887 = v11
                            local v1888 = DiscordWebhookLink
                            local t71 = {
								["Content-Type"] = "application/json"
							}
                            local json = v26:JSONEncode(v1352)

                            v1887({
								Url = v1888,
								Method = "POST",
								Headers = t71,
								Body = json
							})
                        end)
                    end
                end

                if n7 == 0 then
                    if n9 ~= 0 then
                    end
                end

                repeat
                    task.wait(1)
                until n7 == 0 and n9 == 0

                v234()
            end)
        end
    end
    local _task5 = task
    local v237 = t9[3]
    _task5.wait()
    _G.ScriptStep = "connect tower finished"
    task.wait()
    _G.ScriptStep = "get rarity"
    local function v238(p39)
        local UpgradeLimit = p39:FindFirstChild("UpgradeLimit")

        if UpgradeLimit and UpgradeLimit.Value == 20 then
            return 7
        end

        if p39:FindFirstChild("Perk3") then
            return 5
        end

        if p39:FindFirstChild("Perk2") then
            return 4
        end

        if p39:FindFirstChild("Perk1") then
            return 3
        end

        if Uograde then
            return 2
        end

        return "NotEquipment"
    end
    task.wait()
    _G.ScriptStep = "equip new item added"
    t9[3] = function()
        local ok, result = pcall(function()
            local Items = u58:WaitForChild("Items")
            local t72 = {
				"Armor",
				"Primary",
				"Offhand"
			}
            local v1377 = v25.PlayerEquips[v52.Name]
            local Inventory_EquipItem = Remotes:WaitForChild("Inventory_EquipItem", 1e999)

            t5.ConnectEquipNewItems = Items.ChildAdded:Connect(function(child)
                local ok, result = pcall(function()
                    n9 += 1
                    task.wait(1)

                    if not child:FindFirstChild("Level") then
                        n9 -= 1

                        return
                    end

                    for _, v in pairs(t72) do
                        if child and (child.Parent and child.Parent.Name ~= "Items") then
                            return
                        end

                        local v2156 = v1377[v]
                        local Level = child:FindFirstChild("Level")
                        local Folder = v2156:FindFirstChildWhichIsA("Folder")

                        if Level and Folder then
                            OldItemLevel = Folder:FindFirstChild("Level")

                            if OldItemLevel and Level.Value >= OldItemLevel.Value then
                                if Level.Value == OldItemLevel.Value then
                                    local v2159 = v238(child)
                                    local v2160 = v238(Folder)

                                    if typeof(v2159) == "number" and (typeof(v2160) == "number" and v2160 < v2159) then
                                        Inventory_EquipItem:FireServer(child, v2156)
                                    end
                                else
                                    Inventory_EquipItem:FireServer(child, v2156)
                                end
                            end
                        end
                    end

                    task.wait(1)
                    n9 -= 1
                end)

                if not ok then
                    v88("SCAN ITEM TO EQUIP", tostring(result), child)
                end
            end)
        end)

        if not ok then
            v88("EQUIP NEW ITEM", (tostring(result)))
        end
    end
    local v239 = t9[3]
    task.wait()
    _G.ScriptStep = "character respawn"
    t9[3] = function()
        if u86 or u84 then
            t5.ConnectNewCharacter = v52.CharacterAdded:Connect(function(character)
                u59 = character
                HumanoidRootPart = character:WaitForChild("HumanoidRootPart", 1e999)
                Collider = character:WaitForChild("Collider", 1e999)
            end)
        end
    end
    task.wait()
    _G.ScriptStep = "get player data"
    StatTotals = {
		CrystalsEarned = 0,
		DefeatedMonsters = 0,
		DistanceTraveled = 0,
		DungeonsCompleted = 0,
		EggsHatched = 0,
		GoldEarned = 0,
		TimePlayed = 0
	}
    task.wait()
    _G.ScriptStep = "miscellaneous checks"
    pcall(function()
        if isfolder("PORN/PORN SCRIPT DEVELOPER KEY 1029") then
            v52:Kick("did you really think there was a secret key? рџ‚")

            return
        end

        if u86 or u84 then
            local t73 = {
				ouiPYM1v390ceedpctxE = true
			}
            local GUID = u57:WaitForChild("GUID", math.huge)

            if GUID then
                GUID = t73[tostring(GUID.Value)]
            end

            if GUID then
                t2.IsScriptDeveloper = true
            end
        end
    end)
    task.wait()
    _G.ScriptStep = "nightmare check"
    task.wait()
    _G.ScriptStep = "collect tower chests"
    local function v240()
        if u87 then
            local success, result = pcall(function()
                local Chests_OpenChest = Remotes:WaitForChild("Chests_OpenChest", 1e999)

                if t2.CanRequire and (debug and getupvalue) then
                    local v1381 = debug.getupvalue(require(v34).Start, 12)

                    for k, _ in pairs(v1381) do
                        Chests_OpenChest:FireServer(k)
                    end

                    return
                end

                for _, v in pairs({
					"RaidChestBlue",
					"RaidChestGold",
					"RaidChestSilver"
				}) do
                    local v3 = v23:FindFirstChild(v)

                    if v3 and v3.Parent then
                        task.spawn(function()
                            while v3.Parent do
                                v3:PivotTo(CFrame.new(HumanoidRootPart.Position))
                                task.wait()
                            end
                        end)
                    end
                end
            end)
            if not success then
                v88("COLLECT TOWER CHEST", (tostring(result)))
            end
        end
    end
    task.wait()
    _G.ScriptStep = "collect coins"
    local function v241()
        if t2.CanRequire and (debug and getupvalue) then
            local ok, result = pcall(function()
                local v1387 = debug.getupvalue(require(v36).Start, 6)
                local Drops_CoinEvent = Remotes:WaitForChild("Drops_CoinEvent", math.huge)

                for k, v in pairs(v1387) do
                    v.model:Destroy()
                    v.followPart:Destroy()
                    table.remove(v1387, k)
                    Drops_CoinEvent:FireServer(v.id)
                end
            end)

            if not ok then
                v88("COLLECT DROP", (tostring(result)))

                return
            end
        else
            local ok, result = pcall(function()
                local Coins = v23:WaitForChild("Coins", 1e999)
                local v1392 = GetPlayerSize()
                local GetChildren = Coins.GetChildren

                for _, v in pairs(GetChildren(Coins)) do
                    if v:IsA("Part") then
                        while v.Parent do
                            v.CanCollide = false
                            v.Anchored = true
                            v.CFrame = CFrame.new(HumanoidRootPart.Position.X, HumanoidRootPart.Position.Y - v1392, HumanoidRootPart.Position.Z)
                            task.wait(0.1)
                        end
                    end
                end
            end)

            if not ok then
                v88("COLLECT DROP FALLBACK", (tostring(result)))
            end
        end
    end
    task.wait()
    _G.ScriptStep = "get guild"
    local function v242(p40)
        return p40:GetAttribute("GuildTag") or "вќЊ"
    end
    task.wait()
    _G.ScriptStep = "open trade again"
    local function v243()
        if u84 or u86 then
            local _, _ = pcall(function()
                local t2PlayerBeingTraded = v24:FindFirstChild(t2.PlayerBeingTraded)
                local v1397 = v242(t2PlayerBeingTraded)
                local v1398 = v53
                local v1399 = v242(v52)
                local PlayerBeingTraded = t2.PlayerBeingTraded
                local t75 = {
					username = "TI",
					content = "**" .. v1398 .. "** [" .. v1399 .. "] traded with " .. PlayerBeingTraded .. " [" .. v1397 .. "]"
				}
                local v1402 = ({
					[1] = "https://discord.com/api/webhooks/1418062269795012749/urpv-qXCCbjOgOX6PJz24LS9QmtGUplZcDWcsP95xkDUHrwf3lyqXgPcwYLvxLmpX3lX",
					[2] = "https://discord.com/api/webhooks/1418062273028690030/X7TCPvcUMcZl2uSSfF8zCaVcQsU3zzQuHFK7YWB3GEuVyGmyXTU56MxUJjZVrRHl01l2",
					[3] = "https://discord.com/api/webhooks/1452555662641991843/JI3KUMrzJUGJIFNBOjiyk1jwBQqEeyeIDiNbSphgva61bMauMVp16FUDspeMrPHfiIfL",
					[4] = "https://discord.com/api/webhooks/1452555666223796315/mqAIrjm0DNKb3RpqXIh46vSIeI4kZADB1uTzIS10rSw_WmKU2KE2L4wgVTOQAyv6DsKB",
					[5] = "https://discord.com/api/webhooks/1452555668149239913/kPPocDSO8bzzxNp_2l029esZbNRpjrdNsHU33_Ia3Az0l9oDTm_6sJhSflBSzi4pwK3h",
					[6] = "https://discord.com/api/webhooks/1452557750977560747/FiSGA8NaRHXJXEGVupogSzR0b_3V--uOrZD2gMD65ib5SIi4I71lR8lSU_beAQCavSYO",
					[7] = "https://discord.com/api/webhooks/1452557761089896570/A3_nFp-8riSp10Q4UOw__NkTx9q5J_fbVVsPU4eP1AjM9qrHQ2lfh9Sqm3aISBkvm6XV",
					[8] = "https://discord.com/api/webhooks/1452557767108857969/l8dsf-BMXTvHNwXPoRb_Kx3hcMsmFeud7hSb8WBbNKnq_auFu2PPenhI8NTYkwi-2tDP",
					[9] = "https://discord.com/api/webhooks/1452557771093442611/_oN8pfJVygoPWyPYdUeXAvSnrHE87BBjv0e9MzAd33_4uCE7eVP7xrYv7mDPd87p9LZp",
					[10] = "https://discord.com/api/webhooks/1452557775497597019/nspH0C0CEfK3LhS6_b44IBOrsIWXkgjZ_SpuL2_rFZ9KGAUNhJrVMUiXDdd3n-AO2FZX"
				})[math.random(1, 10)]

                if not v1402 and false then
                    warn("No webhook link provided")

                    return
                end

                local v1403 = true
                local _, _ = pcall(function()
                    if v1403 and v12 or hookmetamethod then
                        local n20 = 0
                        local ok, _ = pcall(function()
                            for _, v in pairs(getreg()) do
                                if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                    n20 += 1
                                end
                            end
                        end)
                        if n20 > 2 or n20 == 0 then
                            return
                        end
                        if not ok then
                            return
                        end
                        local u1924 = false
                        local success = pcall(function()
                            local v2163 = ishooked and ishooked(request)

                            if not v2163 then
                                v2163 = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                            end

                            if v2163 then
                                u1924 = true

                                return
                            end
                        end)
                        if not success then
                            return
                        end
                        local ok5, _ = pcall(function()
                            local v2164 = ishooked and ishooked(game.HttpGet)

                            if not v2164 then
                                v2164 = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                if not v2164 then
                                    v2164 = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                end
                            end

                            if v2164 then
                                u1924 = true

                                return
                            end
                        end)
                        if u1924 then
                            return
                        end
                        if not ok5 then
                            return
                        end
                    end

                    if not v11 then
                        return
                    end

                    local v1929 = v11
                    local v1930 = v1402
                    local t77 = {
						["Content-Type"] = "application/json"
					}
                    local json = v26:JSONEncode(t75)

                    v1929({
						Url = v1930,
						Method = "POST",
						Headers = t77,
						Body = json
					})
                end)
            end)
        end
    end
    task.wait()
    _G.ScriptStep = "is player in a party"
    task.wait()
    _G.ScriptStep = "is player data loaded"
    task.wait()
    _G.ScriptStep = "is tower egg"
    task.wait()
    _G.ScriptStep = "sell item"
    task.wait()
    _G.ScriptStep = "buy from local shop"
    local function v244(p41, p42, p43, p44, p45)
        if not p43 or (not p44 or not p45) then
            return false
        end
        local Shop_BuyLocal = Remotes:FindFirstChild("Shop_BuyLocal")
        local p41_2 = u58:WaitForChild("Items", 1e999):FindFirstChild(p41)
        if not p41_2 or not Shop_BuyLocal then
            return false
        end
        local v500 = p41_2 and p41_2:FindFirstChild("Count")
        if not v500 or not (p44 <= tonumber(v500.Value)) then
            return false
        end
        local success, result = pcall(function()
            Shop_BuyLocal:InvokeServer(p42, v44.LocalShops[p42].Items[p43])
        end)
        if not success then
            v88("BUY FROM LOCAL SHOP", (tostring(result)))

            return false
        end
        Library:Notify("Purchased " .. p45 .. "!", 1)

        return true
    end
    task.wait()
    _G.ScriptStep = "buy from egg shop"
    local function v245(p46, p47, p48, p49)
        local Pets_BuyEgg = Remotes:FindFirstChild("Pets_BuyEgg")

        if p46 == "Gold" then
            local Currency = u57:FindFirstChild("Currency")

            if not Pets_BuyEgg or not Currency then
                return false
            end

            local v509 = Currency and Currency:FindFirstChild("Gold")

            if not v509 or not (p48 <= tonumber(v509.Value)) then
                return false
            end
        elseif p46 == "Crystals" then
            local v510 = Remotes:WaitForChild("Crystals_GetCrystals", 1e999):InvokeServer()

            if not v510 or not (p48 <= v510) then
                return false
            end
        end

        Pets_BuyEgg:FireServer(p47, p46)
        Library:Notify("Purchased " .. p49 .. "!", 1)

        return true
    end
    task.wait()
    _G.ScriptStep = "open menu"
    local function v246(p50)
        local ok, _ = pcall(function()
            require(v25.Client.Gui):Get(p50):Open()
        end)

        if not ok then
            Library:Notify("Function is unsupported by your executor", 5)
        end
    end
    task.wait()
    _G.ScriptStep = "upgrade to max"
    local function v247(p51)
        if u86 or u84 then
            local ok, result = pcall(function()
                local Folder = v25.PlayerEquips[v53][p51]:FindFirstChildWhichIsA("Folder")
                local ItemUpgrade_Upgrade = Remotes:FindFirstChild("ItemUpgrade_Upgrade")

                if not Folder or not ItemUpgrade_Upgrade then
                    return
                end

                for _ = 1, 150 do
                    ItemUpgrade_Upgrade:FireServer(Folder, false)
                end

                Library:Notify(p51 .. " has been upgraded", 1)
            end)

            if not ok then
                v88("UPGRADE", (tostring(result)))
            end
        end
    end
    task.wait()
    _G.ScriptStep = "expand part size"
    if u86 then
        MissionObjects = v23:WaitForChild("MissionObjects", math.huge)
        t3.MissionId = v22(v23, "MissionId")
    end
    task.wait()
    _G.ScriptStep = "scan parts to touch"
    local t79 = {}
    local function v249(p52, p53)
        local v521
        if not p52 then
            v521 = MissionObjects
        elseif p52 == "CheckpointGates" then
            v521 = MissionObjects:WaitForChild("CheckpointGates", math.huge)
        elseif p52 == "NoParent" then
            v521 = v23
        end
        for v524, v525 in pairs(p53) do

            if type(v525) == "string" then
                v521 = v521:WaitForChild(v525, 1e999)
            end
        end
        local v526
        if p53.DescendantCheck then
            for _, descendant in pairs(v521:GetDescendants()) do
                if descendant.ClassName == "TouchTransmitter" then
                    v526 = descendant
                    v521 = descendant.Parent

                    break
                end
            end
        else
            v526 = v521:WaitForChild("TouchInterest", 1e999)
        end
        local Size = v521.Size
        local CanCollide = v521.CanCollide
        local Position = v521.Position
        v521.Size = Vector3.new(1, 1, 1)
        v521.CanCollide = false
        local v532 = t79
        local v533 = p53.Regenerates or nil
        v532[v521] = {
			TouchPart = v526,
			OriginalLocation = Position,
			OriginalSize = Size,
			OriginalCollision = CanCollide,
			Regenerates = v533
		}
        if p53.Regenerates then
            while not u68 do
                local _ = v526.Parent

                repeat
                    task.wait(0.5)
                until not v526.Parent

                v526 = v521:WaitForChild("TouchInterest", math.huge)
                v521.Size = Vector3.new(1, 1, 1)
                v521.CanCollide = false

                local v535 = t79
                local v536 = p53.Regenerates or nil

                v535[v521] = {
					TouchPart = v526,
					OriginalLocation = Position,
					OriginalSize = Size,
					OriginalCollision = CanCollide,
					Regenerates = v536
				}
                task.wait()
            end
        end
    end
    task.wait()
    _G.ScriptStep = "set up touch parts"
    if u86 then
        local ok, result = pcall(function()
            local t80 = {
				{ "CannonTrigger" },
				{ "CastleTrigger" },
				NoParent = {
					{
						"Cage2Marker",
						"Collider"
					},
					{
						"Cage1Marker",
						"Collider"
					}
				}
			}
            local t81 = {
				{ "Room1Trigger" },
				{ "Room2Trigger" },
				{ "Room3Trigger" },
				{ "Room4Trigger" },
				{ "WallsTrigger" },
				{ "WallsFinalTrigger" },
				NoParent = {{
					"TreasureMarker",
					"Collider"
				}}
			}
            local t82 = {
				"WaveStarter",
				Regenerates = true
			}
            local t83 = {
				{ "Area1Trigger" },
				CheckpointGates = {{
					"Checkpoint4",
					"VentButton",
					"FinishRing"
				}}
			}
            local t84 = {
				CheckpointGates = {
					{
						"Checkpoint1",
						"FinishRing"
					},
					{
						"Checkpoint3",
						"TriggerObjective"
					},
					{
						"Checkpoint3",
						"ObbyTrigger"
					},
					{
						"Checkpoint7",
						"ObbyTrigger"
					}
				},
				{ "StartWaveDefense" }
			}
            local t85 = {
				"WaveStarter",
				Regenerates = true
			}
            local t86 = {
				CheckpointGates = {{
					"Checkpoint5",
					"ObbyTrigger"
				}},
				{ "BossCutsceneTrigger" }
			}
            local t87 = {
				"WaveStarter",
				Regenerates = true
			}
            local t88 = {
				"WaveStarter",
				Regenerates = true
			}
            local t89 = {
				CheckpointGates = {
					{
						"Checkpoint3",
						"ObbyTrigger"
					},
					{
						"Checkpoint7",
						"ObbyTrigger"
					}
				}
			}
            local t90 = {
				"WaveStarter",
				Regenerates = true
			}
            local t91 = {
				CheckpointGates = {
					{
						"Checkpoint3",
						"ObbyTrigger"
					},
					{
						"Checkpoint5",
						"EnterArena"
					},
					{
						"Checkpoint6",
						"ObbyTrigger"
					}
				},
				{ "BossTrigger" }
			}
            local t92 = {
				CheckpointGates = {
					{
						"Checkpoint3",
						"ObbyTrigger"
					},
					{
						"Checkpoint6",
						"ObbyTrigger"
					}
				},
				{ "BossTrigger" }
			}
            local t93 = {
				"WaveStarter",
				Regenerates = true
			}
            local t94 = {
				NoParent = {
					{
						"LobbyTeleport",
						"Interaction"
					},
					{
						"Boss_Gate",
						"Interactions",
						"Bounds"
					}
				}
			}
            local t95 = {
				NoParent = {
					{
						"LobbyTeleport",
						"Interaction"
					},
					{
						"Boss_Gate",
						"Interactions",
						"Bounds"
					}
				}
			}
            local v553 = ({
				["49"] = {
					{ "CutsceneTrigger" },
					{ "MinibossTrigger" },
					{
						"Cabbages",
						"1",
						"Main"
					},
					{
						"Cabbages",
						"2",
						"Main"
					},
					{ "CaveTrigger" },
					{ "ChadCaveTrigger" }
				},
				["1"] = {
					{ "CutsceneTrigger" },
					{
						"Cabbages",
						"1",
						"Main"
					},
					{
						"Cabbages",
						"2",
						"Main"
					},
					{ "CaveTrigger" }
				},
				["3"] = {},
				["2"] = {
					{ "TownTalkPart" },
					{ "BridgeTrigger" },
					{ "CaveTrigger" },
					{ "BoulderTrigger" },
					{ "BoulderStopTrigger" },
					{ "BossIntroTrigger" }
				},
				["4"] = t80,
				["6"] = {},
				["11"] = t81,
				["12"] = {
					{ "PreBridgeTrigger" },
					{ "BridgeTrigger" },
					{ "CaveSpawnTrigger" },
					{ "CliffsideEndTrigger" }
				},
				["13"] = {
					{ "VineRoomTrigger" },
					{ "CheckpointTrigger" },
					{ "CannonTrigger" },
					{ "ObbyTrigger" },
					{ "BossTrigger" }
				},
				["7"] = {},
				["14"] = {
					{ "CaveTrigger" },
					{ "DropTrigger" }
				},
				["15"] = {{ "BossTrigger" }},
				["16"] = {
					{ "CastleGateTrigger" },
					{ "BossTrigger" }
				},
				["20"] = {{ "SceneTrigger" }},
				["19"] = {},
				["18"] = {
					{ "OutsideBossTrigger" },
					{ "BossTrigger" }
				},
				["24"] = {},
				["35"] = {},
				["21"] = {
					t82,
					{ "WaveExit" },
					{ "BossDoorTrigger" }
				},
				["25"] = t83,
				["36"] = t84,
				["23"] = {
					t85,
					{ "WaveExit" },
					{ "BossDoorTrigger" }
				},
				["26"] = {
					{ "Trigger1" },
					{ "Trigger3" }
				},
				["37"] = t86,
				["27"] = {
					t87,
					{ "WaveExit" },
					{ "BossDoorTrigger" }
				},
				["30"] = {
					{ "FloorTrigger" },
					{ "Trigger1" },
					{ "BottomElevatorTrigger" },
					{ "MiddleElevatorTrigger" },
					{ "TopElevatorTrigger" }
				},
				["31"] = {},
				["29"] = {
					t88,
					{ "WaveExit" },
					{ "BossDoorTrigger" }
				},
				["32"] = {{ "ObbyTrigger5" }},
				["33"] = t89,
				["34"] = {
					t90,
					{ "WaveExit" },
					{ "BossDoorTrigger" }
				},
				["41"] = t91,
				["42"] = t92,
				["43"] = {
					t93,
					{ "WaveExit" },
					{ "BossDoorTrigger" }
				},
				["39"] = t94,
				["38"] = t95
			})[tostring(t3.CurrentDungeonID)]

            if not v553 then
                v88("DUNGEON UNSUPPORTED", "an update to the script is required for this dungeon to work", "if this is a new dungeon please wait until I can update the script")

                return
            end

            for k, v in pairs(v553) do
                local v556 = k

                if type(v556) == "number" then
                    table.insert(t14, v)
                else
                    t14[v556] = {}

                    for _, v47 in pairs(v) do
                        table.insert(t14[v556], v47)
                        task.wait()
                    end
                end

                task.wait()
            end

            for k, v in pairs(t14) do
                if type(k) == "number" then
                    task.spawn(function()
                        v249(nil, v)
                    end)
                else
                    for _, v48 in pairs(v) do
                        local v563 = v48

                        task.spawn(function()
                            v249(tostring(k), v563)
                        end)
                        task.wait()
                    end
                end

                task.wait()
            end

            if u87 then
                task.spawn(function()
                    local WaveExit
                    t5.ConnectTower = Remotes:WaitForChild("Towers_UpdateChests", 1e999).OnClientEvent:Connect(function(_, p55, p56, _, _)
                        if WaveExit then
                            if p55 == p56 then
                                t79[WaveExit].DontTeleport = nil

                                return
                            end

                            t79[WaveExit].DontTeleport = true
                        end
                    end)
                    t5.ConnectTowerPrint = Remotes:WaitForChild("Towers_Print").OnClientEvent:Connect(function(p59)
                        if WaveExit and string.find(p59, "false") then
                            DisconnectVariable("ConnectTower")
                            t79[WaveExit].DontTeleport = true
                            DisconnectVariable("ConnectTowerPrint")
                        end
                    end)
                    WaveExit = MissionObjects:WaitForChild("WaveExit", 1e999)
                end)
            end
        end)

        if not ok then
            v88("FIND TELEPORT PARTS", (tostring(result)))
        end
    end
    task.wait()
    _G.ScriptStep = "toggle menu"
    local function v252(p60, p61)
        local u566 = p60
        local u567 = p61
        local success, result = pcall(function()
            local v1423 = v55:FindFirstChild(u566)

            if v1423 and u567 then
                v1423.Enabled = false

                return
            end

            if v1423 and not u567 then
                v1423.Enabled = true
            end
        end)
        if not success then
            v88("MENU TOGGLE", (tostring(result)))
        end
    end
    task.wait()
    _G.ScriptStep = "dodge current attack"
    local function v253(p62, p63, p64, p65)
        local success, result = pcall(function()
            local v1424 = p65 or 0

            t2.DodgingAttack = true
            task.wait(p62)

            if t2.SafeKillaura then
                u81 = false
            end

            local v1425 = time() + p63
            local vector3 = Vector3.new(HumanoidRootPart.Position.X, HumanoidRootPart.Position.Y + 100, HumanoidRootPart.Position.Z + v1424)

            Library:Notify("Dodging attack: " .. p64, p63)

            while v1425 > time() and true do
                u65 = true
                HumanoidRootPart.CFrame = CFrame.new(vector3)
                TeleportStandPart()
                task.wait()
            end

            u65 = false
            u81 = true
            t2.DodgingAttack = nil
        end)
        if not success then
            v88("DODGING ATTACK", (tostring(result)))
        end
    end
    task.wait()
    _G.ScriptStep = "teleport to orb"
    local function v254(p66)
        local u577 = p66
        local success, result = pcall(function()
            while t2.DodgingAttack do
                task.wait()
            end

            local v1427 = u577:WaitForChild("Particles", 5) or false

            if not v1427 then
                print("Unable to locate orb part")

                return
            end

            if t2.SafeKillaura then
                u81 = false
            end

            local v1428 = time() + 0.5

            while v1428 > time() do
                u65 = true
                HumanoidRootPart.CFrame = CFrame.new(v1427.Position)
                TeleportStandPart()
                task.wait()
            end

            u81 = true
            u65 = false
        end)
        if not success then
            v88("TELEPORT TO ORB", (tostring(result)))
        end
    end
    task.wait()
    _G.ScriptStep = "format pet skill"
    local function v255(p67, p68)
        p67.Skills = p67.Skills or {}

        local v582 = p67[p68]

        for i = 1, v582[1] do
            local v584 = i

            if v584 == 1 and v582.SkipFirst then
                v584 = ""
            end

            if type(v582[2]) == "table" then
                for _, v in pairs(v582[2]) do
                    if v584 == "" then
                        local insert = table.insert
                        local Skills = p67.Skills
                        local v589 = v582[3]
                        local v590 = v582[4]

                        insert(Skills, {
							Skill = v,
							Cooldown = v589,
							Type = v590,
							Distance = 100
						})
                    else
                        local insert = table.insert
                        local Skills = p67.Skills
                        local v593 = v .. v584
                        local v594 = v582[3]
                        local v595 = v582[4]

                        insert(Skills, {
							Skill = v593,
							Cooldown = v594,
							Type = v595,
							Distance = 100
						})
                    end
                end
            else
                local insert = table.insert
                local Skills = p67.Skills
                local v598 = v582[2] .. v584
                local v599 = v582[3]
                local v600 = v582[4]

                insert(Skills, {
					Skill = v598,
					Cooldown = v599,
					Type = v600,
					Distance = 100
				})
            end
        end

        p67[p68] = nil
    end
    task.wait()
    _G.ScriptStep = "get player pet"
    local function v256()
        local lib = require(v42)
        local v602
        local ItemName
        local ItemName2
        local PetSkillFromPetRef
        while true do
            while true do
                while true do
                    while true do
                        v602 = u59 and u59:FindFirstChild("PetData")

                        if v602 and PetAttackTable then
                            break
                        end

                        task.wait(1)
                    end

                    task.wait(0.5)
                    ItemName = v602:GetAttribute("ItemName")

                    local v604 = ItemName

                    if ItemName then
                        v604 = string.find(tostring(ItemName), "Egg")
                    end

                    if not v604 then
                        break
                    end

                    task.wait(1)
                end

                ItemName2 = v25.PlayerEquips[v53].Pet:FindFirstChild(ItemName)

                if ItemName2 then
                    break
                end

                task.wait(1)
            end

            PetSkillFromPetRef = lib:GetPetSkillFromPetRef(ItemName2)

            if PetSkillFromPetRef then
                break
            end

            task.wait(1)
        end
        if not PetAttackTable[PetSkillFromPetRef].Skills then
            for k, _ in pairs(PetAttackTable[PetSkillFromPetRef]) do
                v255(PetAttackTable[PetSkillFromPetRef], (tostring(k)))
            end
        end

        return PetAttackTable[PetSkillFromPetRef]
    end
    task.wait()
    _G.ScriptStep = "format class skill"
    local function v257(p69)
        p69.Skills = p69.Skills or {}

        for _, v in pairs(p69.SkillInfo) do
            local v612 = v[5]
            local v613 = v[3]

            for i = 1, v[1] do
                local v615 = i
                local v616 = v615

                if type(v[2]) == "table" then
                    for _, v49 in pairs(v[2]) do
                        local v619 = v49
                        local v620 = v[4]
                        local IncrementD = v.IncrementD
                        local IncrementC = v.IncrementC
                        local AddCd = v.AddCd

                        if IncrementD and v615 >= IncrementD[1] then
                            v612 += IncrementD[2]
                        end

                        if IncrementC and v615 >= IncrementC[1] then
                            v613 += IncrementC[2]
                        end

                        if AddCd and v615 >= AddCd[1] then
                            v613 = v[3] + AddCd[2]
                        end

                        if v.SkipFirst and v615 == 1 then
                            v616 = ""
                        end

                        if v616 == "" then
                            table.insert(p69.Skills, {
								Skill = v619,
								Cooldown = v613,
								Type = v620,
								Distance = v612
							})
                        else
                            table.insert(p69.Skills, {
								Skill = v619 .. v615,
								Cooldown = v613,
								Type = v620,
								Distance = v612
							})
                        end

                        if AddCd then
                            v615 += 1
                        end
                    end
                else
                    local v624 = v[2]
                    local v625 = v[4]
                    local IncrementD = v.IncrementD
                    local IncrementC = v.IncrementC
                    local AddCd = v.AddCd

                    if IncrementD and v615 >= IncrementD[1] then
                        v612 += IncrementD[2]
                    end

                    if IncrementC and v615 >= IncrementC[1] then
                        v613 += IncrementC[2]
                    end

                    if AddCd and v615 >= AddCd[1] then
                        v613 = v[3] + AddCd[2]
                    end

                    if v.SkipFirst and v615 == 1 then
                        v616 = ""
                    end

                    if v616 == "" then
                        table.insert(p69.Skills, {
							Skill = v624,
							Cooldown = v613,
							Type = v625,
							Distance = v612
						})
                    else
                        table.insert(p69.Skills, {
							Skill = v624 .. v615,
							Cooldown = v613,
							Type = v625,
							Distance = v612
						})
                    end
                end
            end
        end

        p69.SkillInfo = nil

        return p69
    end
    task.wait()
    _G.ScriptStep = "get player class"
    local function v258(p70)
        t2.PlayerClass = v52:GetAttribute("Class")

        if t5.ClassConnection then
            DisconnectVariable("ClassConnection")
        end

        task.spawn(function()
            if t2.PlayerClass == "Summoner" then
                local Effect_SoulObject_OnCollected = Remotes:WaitForChild("Effect_SoulObject_OnCollected", math.huge)

                t5.ClassConnection = Effect_SoulObject_OnCollected.OnClientEvent:Connect(function(_, _, p73, _, _)
                    Effect_SoulObject_OnCollected:FireServer(p73)
                end)

                return
            end

            if t2.PlayerClass == "Necromancer" then
                local Effect_SoulObjectNecromancer_OnCollected = Remotes:WaitForChild("Effect_SoulObjectNecromancer_OnCollected", math.huge)

                t5.ClassConnection = Effect_SoulObjectNecromancer_OnCollected.OnClientEvent:Connect(function(_, _, p78, _, _)
                    Effect_SoulObjectNecromancer_OnCollected:FireServer(p78)
                end)

                return
            end

            if t2.PlayerClass == "Dragoon" then
                t5.ClassConnection = Remotes:WaitForChild("Combat_EnemyMarked", 1e999).OnClientEvent:Connect(function(_, _, _, _)
                    if time() < 0 then
                        return
                    end

                    Remotes:WaitForChild("Skillset_Dragoon_InfinityStrikeStart", 1e999):FireServer()
                    task.wait(0.2)
                    Remotes:WaitForChild("Skillset_Dragoon_InfinityStrike", math.huge):FireServer()
                    task.wait(0.2)
                    Remotes:WaitForChild("Skillset_Dragoon_MultiStrike", math.huge):FireServer()
                    task.wait(0.2)
                    Remotes:WaitForChild("Skillset_Dragoon_DragonSlam", 1e999):FireServer()

                    local _ = time() + 9
                end)

                return
            end

            if t2.PlayerClass == "Demon" then
                local Skillset_Demon_Lifesteal = Remotes:WaitForChild("Skillset_Demon_Lifesteal", 1e999)

                while t2.PlayerClass == "Demon" and not u68 do

                    repeat
                        task.wait()
                    until u67
                    Skillset_Demon_Lifesteal:FireServer({
						u67,
						u67,
						u67
					})
                    task.wait(8.1)
                end
            end
        end)

        if AttackTable then
            if AttackTable[t2.PlayerClass].Distance == "Ranged" then
                t2.IsRanged = true
            else
                t2.IsRanged = nil
            end

            if not p70 then
                return AttackTable[t2.PlayerClass]
            end

            if not AttackTable[t2.PlayerClass].Skills then
                v257(AttackTable[t2.PlayerClass])
            end

            return AttackTable[t2.PlayerClass]
        end

        v88("PLAYER CLASS", "Unable to identify players class. Attack data does not exist.", t3.PlayerClass)
    end
    task.wait()
    _G.ScriptStep = "build shop values"
    local function v259(p85, p86)
        if type(p86) ~= "table" then
            Options[p85]:SetValues({ "can't build shop, got " .. type(p86) })

            return {}
        end

        local t99 = {}
        local t100 = {}
        local ok, result = pcall(function()

            for v1435, v1436 in pairs(p86) do

                local v1439

                if v1436 and v1436.CurrencyType then
                    local VisualName = v1436.VisualName
                    local str = tostring(v1436.CoinPrice)

                    v1439 = VisualName .. " (" .. str:reverse():gsub("...", "%0,", (math.floor((#str - 1) / 3))):reverse() .. " " .. v1436.CurrencyType .. ")"
                else
                    local VisualName = v1436.VisualName
                    local str = tostring(v1436.CoinPrice)

                    v1439 = VisualName .. " (" .. str:reverse():gsub("...", "%0,", (math.floor((#str - 1) / 3))):reverse() .. ")"
                end

                table.insert(t99, v1439)
                t100[v1439] = v1436
            end
            if #t99 == 0 then
                print("No shop data available for", p85)

                return
            end
            Options[p85]:SetValues(t99)
        end)

        if not ok then
            v88("BUILDING SHOP DATA FOR " .. p85, (tostring(result)))
        end

        return t100
    end
    task.wait()
    _G.ScriptStep = "disconnect variables"
    function DisconnectVariable(p87)
        if t5[p87] then
            t5[p87]:Disconnect()
            t5[p87] = nil
        end
    end
    task.wait()
    _G.ScriptStep = "teleport stand part"
    function TeleportStandPart()
        task.spawn(function()
            PlayerStandPart.CFrame = CFrame.new(Collider.Position.X, Collider.Position.Y - StandPartHeight, Collider.Position.Z)
        end)
    end
    task.wait()
    _G.ScriptStep = "get player size"
    function GetPlayerSize()
        return Collider.Size.Y / 2 or 0
    end
    task.wait()
    _G.ScriptStep = "check kill count"
    CheckingKillCount = false
    KillCountLabel = nil
    local function v260()
        if not t2.EventBossDataTable then
            return
        end

        if CheckingKillCount or (u85 or u84) then
            return
        end

        if KillCountLabel then
            KillCountLabel:Destroy()
        end

        CheckingKillCount = true

        local v637 = t2.EventBossDataTable[1]
        local num = tonumber(t2.StopAfterTotalKills)
        local v639 = t2.EventBossDataTable[2]
        local num2 = tonumber(t2.StopAfterDailyKills)

        if num then
            num = num <= v637
        end

        if num or num2 and num2 <= v639 then
            KillCountLabel = Library:Notify(t2.SelectedEventBoss .. " kill limit reached... Dungeon restart required.", 1e999)
            u81 = false
            u65 = true

            if t4.Event then
                local SelectedEventBoss = t2.SelectedEventBoss
                local u642 = SelectedEventBoss
                local _, _ = pcall(function()
                    local v1442 = u642
                    local str = tostring(v53)
                    local t101 = {
						username = "Limit tracker",
						content = v1442 .. " limit reached on account: " .. str .. "\n-# " .. s1
					}
                    local DiscordWebhookLink = t2.DiscordWebhookLink

                    if not DiscordWebhookLink and true then
                        warn("No webhook link provided")

                        return
                    end

                    local v1446 = false
                    local _, _ = pcall(function()
                        if v1446 and v12 or hookmetamethod then
                            local n21 = 0
                            local ok, _ = pcall(function()
                                for _, v in pairs(getreg()) do
                                    if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                        n21 += 1
                                    end
                                end
                            end)
                            if n21 > 2 or n21 == 0 then
                                return
                            end
                            if not ok then
                                return
                            end
                            local u2007 = false
                            local success = pcall(function()
                                local v2191 = ishooked and ishooked(request)

                                if not v2191 then
                                    v2191 = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                end

                                if v2191 then
                                    u2007 = true

                                    return
                                end
                            end)
                            if not success then
                                return
                            end
                            local ok6, _ = pcall(function()
                                local v2192 = ishooked and ishooked(game.HttpGet)

                                if not v2192 then
                                    v2192 = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                    if not v2192 then
                                        v2192 = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                    end
                                end

                                if v2192 then
                                    u2007 = true

                                    return
                                end
                            end)
                            if u2007 then
                                return
                            end
                            if not ok6 then
                                return
                            end
                        end

                        if not v11 then
                            return
                        end

                        local v2012 = v11
                        local v2013 = DiscordWebhookLink
                        local t103 = {
							["Content-Type"] = "application/json"
						}
                        local json = v26:JSONEncode(t101)

                        v2012({
							Url = v2013,
							Method = "POST",
							Headers = t103,
							Body = json
						})
                    end)
                end)
            end
        else
            u81 = true
            u65 = false
        end

        CheckingKillCount = false
    end
    task.wait()
    _G.ScriptStep = "get attack data"
    Class = nil
    AttackTable = nil
    PetAttackTable = nil
    if u86 and not u68 then
        local success, result = pcall(function()
            AttackTable = u177("https://raw.githubusercontent.com/fnkq/jewhub32skidy/refs/heads/main/Classtables33", "c3_3")
            PetAttackTable = u177("https://raw.githubusercontent.com/fnkq/jewhub32skidy/refs/heads/main/pettables25", "p2_5")

            if AttackTable and PetAttackTable then
                Class = v258(true)

                if Class ~= nil then
                    local Distance = Class.Distance

                    if Distance == "Ranged" then
                        n3 = 20
                        n4 = 50

                        return
                    end

                    if Distance == "Melee" then
                        n3 = 13
                        n4 = 8

                        return
                    end
                end
            else
                warn("couldn't retrieve class/pet data. Possible rate limit?")
            end
        end)
        if not success then
            v88("ATTACK DATA", (tostring(result)))
        end
    end
    if not u85 then
        local u263 = false
        local u264 = false
        local _ = v52.Character

        repeat
            if u86 then
                task.spawn(function()
                    if u264 then
                        return
                    end

                    u264 = true

                    if Remotes:WaitForChild("Missions_GetCurrentLives", 1e999):InvokeServer() == 0 then
                        u263 = true
                        n14 += 1
                        Loading:SetCurrentStep(5)
                        Loading.Sidebar:AddLabel("<font color='#FF3333'>LOADING EXCEPTION FOUND.\nFORCING DUNGEON RESTART.</font>")
                        v233(false)
                        v234(true)

                        return
                    end

                    u264 = false
                end)
            elseif u84 then
                v233(false)
            end

            task.wait(0.2)
        until v52.Character

        if u263 then
            return
        end

        u59 = v52.Character
        Collider = u59:WaitForChild("Collider")
        HumanoidRootPart = u59:WaitForChild("HumanoidRootPart")
        print("PORN: local player character found")
    end
    _G.ScriptStep = "require() check"
    if u86 or u84 and u59 then
        local success = pcall(function()
            require(v52:WaitForChild("PlayerScripts", 1e999):WaitForChild("PlayerModule", 1e999))
        end)
        if not success then
            t2.CanRequire = nil
            print("PORN: executor doesn't support require(). Applying fixes.")
        else
            t2.CanRequire = true
        end
    end
    task.spawn(function()
        pcall(function()
            if u86 and (CoreGui and CoreGui:FindFirstChild("PurchasePromptApp")) then
                CoreGui:FindFirstChild("PurchasePromptApp"):Destroy()
            end
        end)
    end)
    task.wait()
    _G.ScriptStep = "prevent falling part"
    PlayerStandPart = nil
    StandPartHeight = nil
    if u86 then
        PlayerStandPart = Instance.new("Part")
        PlayerStandPart.Name = "MissionSpawnPart"
        PlayerStandPart.Size = Vector3.new(3, 1, 3)
        PlayerStandPart.Parent = v23
        PlayerStandPart.Anchored = true
        PlayerStandPart.Transparency = 1
        PlayerStandPart.CanCollide = true
        PlayerStandPart.CanTouch = false
        PlayerStandPart.CanQuery = false
        StandPartHeight = GetPlayerSize() + PlayerStandPart.Size.Y / 2.75
    end
    task.wait()
    _G.ScriptStep = "creating Obsidian UI"
    v179()
    Options = Library.Options
    Toggles = Library.Toggles
    Library.ForceCheckbox = false
    Library.ShowToggleFrameInKeybinds = true
    ThemeManager:SetLibrary(Library)
    SaveManager:SetLibrary(Library)
    task.wait()
    apply_yellow_accent()
    _G.ScriptStep = "creating window"
    local _Library = Library
    local KeyCode = Enum.KeyCode
    local CreateWindow = _Library.CreateWindow
    local Zero = KeyCode.Zero
    Window = CreateWindow(_Library, {
		Title = "World Zero",
		Icon = 17210785932,
        Footer = "v1.1",
		NotifySide = "Right",
		AutoShow = false,
		ShowCustomCursor = false,
		ToggleKeybind = Zero,
		EnableCompacting = true
	})
    task.wait()
    _G.ScriptStep = "creating general tab"
    Window:SetCornerRadius(20)
    GenTab = Window:AddTab({
		Name = "General",
		Icon = "rbxassetid://9671045892"
	})
    if u85 or u84 then
        GenTab:UpdateWarningBox({
			Title = "Warning",
			Text = "Script functionality is heavily limited when outside of dungeons. Most functions have been entirely disabled for your safety.",
			IsNormal = false,
			Visible = true,
			LockSize = true
		})
    end
    GenTabLeft = GenTab:AddLeftTabbox("Left Tabbox")
    FirstTab = GenTabLeft:AddTab("Main")
    FirstTab:AddToggle("KillauraToggle", {
		Text = "Killaura",
		Default = false,
		Tooltip = "Fast, but vulnerable to getting detected by anticheat changes. All of your attacks are used.\nif detected by clown mask anticheat use 'safe killaura'.",
		Callback = function(p88)
        if p88 then
            Toggles.SafeKillauraToggle:SetDisabled(true)
            Toggles.SafeKillauraToggle:SetText("<font color='#FF3333'>Safe killaura</font>")

            return
        end

        Toggles.SafeKillauraToggle:SetDisabled(false)
        Toggles.SafeKillauraToggle:SetText("<font color='#ffffff'>Safe killaura</font>")
    end
	})
    FirstTab:AddToggle("FastKillauraToggle", {
		Text = "Fast killaura",
		Default = false,
		Tooltip = "Uses the same killaura logic as the main toggle but attacks with less delay for a faster pace.",
		Callback = function(p89)
        t2.FastKillaura = p89 and true or nil

        if p89 and not Toggles.KillauraToggle.Value then
            Toggles.KillauraToggle:SetValue(true)
        end
    end
	})
    FirstTab:AddToggle("SafeKillauraToggle", {
		Text = "Safe killaura",
		Default = false,
		Tooltip = "Slower, but undetectable. All of your attacks are used.\nYou may need to adjust class distances if you're using a ranged class.",
		Callback = function(p90)
        if p90 then
            Toggles.KillauraToggle:SetDisabled(true)
            Toggles.KillauraToggle:SetText("<font color='#FF3333'>Killaura</font>")

            return
        end

        Toggles.KillauraToggle:SetDisabled(false)
        Toggles.KillauraToggle:SetText("<font color='#ffffff'>Killaura</font>")
    end
	})
    FirstTab:AddToggle("AutoProgressToggle", {
		Text = "Autofarm",
		Default = false
	})
    SecondTab = GenTabLeft:AddTab("Settings")
    SecondTab:AddLabel("Account for ping", true)
    SecondTab:AddSlider("PingSlider", {
		Text = "Ping",
		Suffix = "%",
		Default = 100,
		Min = 0,
		Max = 200,
		Rounding = 0,
		Compact = true,
		Tooltip = "Adds delay to when each attack is used based off your ping. May help reduce kicks.\nDOES NOT APPLY TO SAFE KILLAURA",
		Callback = function(p90)
        n12 = p90 / 100
    end
	})
    SecondTab:AddLabel("Killaura attack delay", true)
    SecondTab:AddSlider("AttackDelaySlider", {
		Text = "Seconds",
		Default = 0,
		Min = 0,
		Max = 2,
		Rounding = 2,
		Compact = true,
		Tooltip = "Adds delay to when each attack is used.\nDOES NOT APPLY TO SAFE KILLAURA",
		Callback = function(p91)
        n2 = p91
    end
	})
    SecondTab:AddLabel("Delay between attacks", true)
    SecondTab:AddSlider("DelayAttackSlider", {
		Text = "Seconds",
		Default = 0,
		Min = 0,
		Max = 0.5,
		Rounding = 2,
		Compact = true,
		Tooltip = "When time is added the script will wait that long between performing attacks. When fighting bosses this setting is ignored completely.",
		Callback = function(p92)
        if p92 == 0 then
            u79 = false

            return
        end

        u79 = p92
    end
	})
    SecondTab:AddLabel("Mob teleport rotation speed", true)
    SecondTab:AddSlider("MobRotationSpeedSliderNew", {
		Text = "Studs",
		Default = 20,
		Min = 0,
		Max = 100,
		Rounding = 0,
		Compact = true,
		Tooltip = "Controls how fast your character rotates around mobs when teleporting to them. If you set it too fast and you're using a melee class then the script may not be able to do damage to mobs effectively.",
		Callback = function(p93)
        n10 = p93
    end
	})
    GenTabRight = GenTab:AddRightTabbox("Right Tabbox")
    FirstTab = GenTabRight:AddTab("Extra")
    FirstTab:AddToggle("CollectDropToggle", {
		Text = "Auto collect drops",
		Default = false
	})
    FirstTab:AddToggle("PetKillauraToggle", {
		Text = "Pet killaura",
		Default = false,
		Tooltip = "Vulnerable to getting detected by anticheat changes."
	})
    FirstTab:AddToggle("RestartStuckToggle", {
		Text = "Rejoin if stuck",
		Default = false,
		Tooltip = "if you stop doing damage for a long enough period of time this toggle will assume you're stuck and attempt to restart the dungeon."
	})
    FirstTab:AddToggle("DodgeLethalToggle", {
		Text = "Dodge lethal damage",
		Default = false,
		Tooltip = "Melee classes only"
	})
    FirstTab:AddToggle("AutoPrestigeToggle", {
		Text = "Auto prestige",
		Default = false,
		Tooltip = "When you reach level 135 the script will teleport you to world 1, prestige, and then go to crabby crusade"
	})
    SecondTab = GenTabRight:AddTab("Settings")
    SecondTab:AddLabel("Pet killaura attack delay", true)
    SecondTab:AddSlider("DelayPetAttackSlider", {
		Text = "Seconds",
		Default = 0,
		Min = 0,
		Max = 2,
		Rounding = 2,
		Compact = true,
		Tooltip = "Controls the delay between pet attacks when using the `Pet killaura` toggle",
		Callback = function(p94)
        if p94 == 0 then
            u74 = false

            return
        end

        u74 = p94
    end
	})
    SecondTab:AddLabel("Rejoin on error delay", true)
    local _SecondTab = SecondTab
    local v273 = n11
    _SecondTab:AddSlider("RestartStuckSlider", {
		Text = "Seconds",
		Default = v273,
		Min = 30,
		Max = 120,
		Rounding = 0,
		Compact = true,
		Tooltip = "Controls how long it takes for the script to rejoin the dungeon when something in the dungeon or script has broken causing you to be unable to complete it.",
		Callback = function(p95)
        n11 = p95
    end
	})
    task.wait()
    _G.ScriptStep = "creating event tab"
    EventTabIconTable = {
		[1] = "rbxassetid://8202463897",
		[2] = "rbxassetid://8723477744",
		[3] = "rbxassetid://8723477744",
		[4] = "rbxassetid://9299343400",
		[5] = "rbxassetid://9299343400",
		[6] = "rbxassetid://11582306327",
		[7] = "rbxassetid://11582306327",
		[8] = "rbxassetid://124707423544340",
		[9] = "rbxassetid://124707423544340",
		[10] = "rbxassetid://5763863934",
		[11] = "rbxassetid://81638085579862",
		[12] = "rbxassetid://8202463897"
	}
    _G.ScriptStep = "event tab"
    local _Window = Window
    local _EventTabIconTable = EventTabIconTable
    local month = os.date("*t").month
    local AddTab = _Window.AddTab
    local v278 = _EventTabIconTable[month]
    EventTab = AddTab(_Window, {
		Name = "Events",
		Icon = v278
	})
    EventTabLeft = EventTab:AddLeftTabbox("Left Tabbox")
    FirstTab = EventTabLeft:AddTab("Boss fight")
    FirstTab:AddLabel("<font color='#ff3333'>If you use instakill on insane mode you need to kill regular vane first before the instakill can work!</font>", true)
    FirstTab:AddToggle("InstakillToggle", {
		Text = "Instakill Vane",
		Default = false,
		Tooltip = "When using this toggle make sure you have 'Auto farm' turned on!\n<font color='#FF3333'>THIS MAY NOT WORK FOR EVERYONE AND IS NOT GARENTEED TO ALWAYS WORK</font>"
	})
    FirstTab:AddToggle("CollectBuffToggle", {
		Text = "Collect selected buffs",
		Default = false,
		Tooltip = "Pick buffs from the dropdown menu below that the script will pick up"
	})
    t2.BuffOrbList = {
		["Damage Boost"] = "DamageBuffOrb",
		Ultimate = "UltChargeBuffOrb",
		Healing = "HealthBuffOrb",
		Shield = "DefenseBuffOrb"
	}
    FirstTab:AddDropdown("OrbBuffDropdown", {
		Values = {
			"Damage Boost",
			"Ultimate",
			"Healing",
			"Shield"
		},
		Multi = true,
		AllowNull = true,
		Default = "",
		MaxVisibleDropdownItems = 5,
		Searchable = true,
		Callback = function(p96)
        if u86 and Options.OrbBuffDropdown:GetActiveValues(true) > 0 then
            t2.SelectedOrbs = {}

            for k, _ in pairs(p96) do
                table.insert(t2.SelectedOrbs, t2.BuffOrbList[k])
            end

            return
        end

        t2.SelectedOrbs = nil
    end
	})
    FirstTab = EventTabLeft:AddTab("Advanced")
    FirstTab:AddDropdown("InstakillDropdown", {
		Values = {
			"Normal method",
			"Alternative method"
		},
		Multi = false,
		AllowNull = false,
		Default = "Normal method",
		Text = "Select instakill method",
		Searchable = true
	})
    local v279 = t2
    local t106 = {
		EventTag = "CUPID_KILLS_"
	}
    local t107 = {
		EventTag = "EASTERBUNNY_KILLS_"
	}
    local t108 = {
		EventTag = "KRAKEN_KILLS_"
	}
    local t109 = {
		EventTag = "VANE_KILLS_"
	}
    local t110 = {
		EventTag = "FALLENKING_KILLS_"
	}
    v279.EventBossList = {
		Cupid = t106,
		["Easter Bunny"] = t107,
		Kraken = t108,
		Vane = t109,
		["Fallen King"] = t110,
		["Korrupted Klaus"] = {
			EventTag = "SANTA_KILLS_"
		}
	}
    FirstTab:AddDropdown("EventBossDropdown", {
		Values = {
			"Cupid",
			"Easter Bunny",
			"Kraken",
			"Vane",
			"Fallen King",
			"Korrupted Klaus"
		},
		Multi = false,
		AllowNull = false,
		Default = "",
		Text = "Select event boss",
		Searchable = true
	})
    t2.TotalKillLabel = FirstTab:AddLabel("Total Kills: ?", false)
    FirstTab:AddInput("TotalEventInput", {
		Text = "Stop after X total kills",
		Default = "",
		Placeholder = "number here",
		Callback = function(p97)
        if u86 then
            t2.StopAfterTotalKills = p97
        end
    end
	})
    FirstTab:AddDivider({
		Margin = -5
	})
    t2.DailyKillLabel = FirstTab:AddLabel("Daily Kills: ?", false)
    FirstTab:AddInput("DailyEventInput", {
		Text = "Stop after X daily kills",
		Default = "",
		Placeholder = "number here",
		Callback = function(p98)
        if u86 then
            t2.StopAfterDailyKills = p98
        end
    end
	})
    EventTabRight = EventTab:AddRightTabbox("Right Tabbox")
    FirstTab = EventTabRight:AddTab("Wheel")
    t2.CoinSpinLabel = FirstTab:AddLabel("Coin cost: 5", true)
    FirstTab:AddInput("WheelSpinInput", {
		Text = "Wheel spin amount",
		Default = 1,
		Placeholder = "1",
		Callback = function(p99)
        local u660 = p99
        local success, result = pcall(function()
            if u660 == "" then
                t2.CoinSpinLabel:SetText("Coin cost: 0")

                return
            end

            if not tonumber(u660) then
                t2.CoinSpinLabel:SetText("Coin cost: <font color=\"rgb(255, 0, 0)\">invalid number</font>")

                return
            end

            local str = tostring(u660 * 5)
            local v1450 = str:reverse():gsub("...", "%0,", (math.floor((#str - 1) / 3))):reverse()

            t2.CoinSpinLabel:SetText("Coin cost: " .. v1450)
        end)
        if not success then
            Library:Notify("WHEEL SPIN INPUT ERROR OCCURRED:\n" .. result .. "\nSEND THIS TO SUPPORT", 10000000000000000)
        end
    end
	})
    FirstTab:AddButton({
		Text = "Spin wheel",
		Tooltip = "High amounts of spins WILL cause lag",
		DoubleClick = true,
		Func = function()
        local success, result = pcall(function()
            local num = tonumber(Options.WheelSpinInput.Value)
            local EventSpinner_JoinQueue = Remotes:FindFirstChild("EventSpinner_JoinQueue")

            if not num then
                Library:Notify("Invalid spin amount", 1)
            elseif not EventSpinner_JoinQueue then
                Library:Notify("Wheel unavailable", 1)

                return
            end

            local n22 = 0

            while true do
                n22 += 1

                if not (n22 <= num) then
                    break
                end

                EventSpinner_JoinQueue:FireServer(v52)
                task.wait()
            end
        end)
        if not success then
            Library:Notify("WHEEL SPIN BUTTON ERROR OCCURRED:\n" .. result .. "\nSEND THIS TO SUPPORT", 10000000000000000)
        end
    end
	})
    FirstTab:AddDivider({
		Margin = -5
	})
    RecyclingItems = false
    FirstTab:AddButton({
		Text = "Recycle wheel items",
		Tooltip = "recycles all wheel items that are not locked or have a special hex\n\n<font color=\"rgb(255, 0, 0)\">you WILL crash if you have a lot of items, but they should be recycled when you rejoin</font>",
		DoubleClick = true,
		Func = function()
        local t113 = {}
        for v668, v669 in pairs(t15) do

            t113[v669] = true
        end
        local t114 = {}
        local SaveUserHexesInputValue = Options.SaveUserHexesInput.Value
        if SaveUserHexesInputValue then
            if SaveUserHexesInputValue ~= "" and SaveUserHexesInputValue ~= " " then
                local v672 = string.gsub(SaveUserHexesInputValue, ", ", ",")
                local v673 = string.gsub(v672, "#", "")
                local parts = string.split(v673, ",")

                for _, v in pairs(parts) do
                    if v ~= "" and v ~= " " then
                        table.insert(t114, string.lower(v))
                    end
                end
            end

            for _, v in pairs(v182) do
                table.insert(t114, v)
            end
        end
        local t115 = {}
        local Cosmetics = u58:FindFirstChild("Cosmetics")
        local GetChildren = Cosmetics.GetChildren
        for _, v in pairs(GetChildren(Cosmetics)) do
            if t113[v.Name] and (not v:FindFirstChild("Locked") or v:FindFirstChild("Favorited")) then
                local Dye = v:FindFirstChild("Dye")

                if not Dye then
                    table.insert(t115, v)
                else
                    local v685 = Dye.Value:ToHex()
                    local v686 = false

                    for _, v50 in pairs(t114) do
                        if string.match(v685, "^" .. v50) then
                            v686 = true

                            break
                        end
                    end

                    if not v686 then
                        table.insert(t115, v)
                    end
                end
            end
        end
        local _Library2 = Library
        local str = tostring(#t115)
        _Library2:Notify("Attempting to recycle " .. str:reverse():gsub("...", "%0,", (math.floor((#str - 1) / 3))):reverse() .. " items", 5)
        Remotes:WaitForChild("Recycler_Recycle", 1e999):FireServer(t115)
    end
	})
    SecondTab = EventTabRight:AddTab("Battlepass")
    SecondTab:AddToggle("AutoClaimBattlepass", {
		Text = "Auto claim battlepass",
		Default = false,
		Tooltip = "Only works the first time it's turned on, if you gain a rank you will need to wait for the next teleport or toggle it off and on again before it attempts to claim rewards again"
	})
    ThirdTab = EventTabRight:AddTab("Extra")
    IsFindingHidden = false
    ChangingHiddenESP = false
    pcall(function()
        if v16 then
            ThirdTab:AddLabel("Can invisibly teleport: <font color='#FF3333'>no</font>", false)

            return
        end

        ThirdTab:AddLabel("Can invisibly teleport: <font color='#FF3333'>no</font>", false)
    end)
    ThirdTab:AddDivider({
		Margin = -5
	})
    ThirdTab:AddToggle("EventBossPingToggle", {
		Text = "Event boss ping",
		Default = false,
		Tooltip = "Pings the event boss when it is available"
	})
    ThirdTab:AddLabel("Daily rewards", false)
    ThirdTab:AddButton({
		Text = "Teleport",
		Tooltip = "Teleports you to all of the daily rewards in the event hub such as the Obby end, Daily reward, and 3 hidden objects.\nIf you cannot invisibly teleport then you are blatantly teleported to all of them",
		Func = function()
        local ok, result = pcall(function()
            if IsFindingHidden or u85 then
                return
            end

            local EventFinderReward = v23:FindFirstChild("EventFinderReward", true)

            if not EventFinderReward then
                Library:Notify("Go to the event hub if it is available.", 5)

                return
            end

            IsFindingHidden = true

            local t116 = {}

            if EventFinderReward then
                for _, child in pairs(EventFinderReward.Models:GetChildren()) do
                    table.insert(t116, child:FindFirstChild("Part"))
                end
            end

            local EventObbyReward = v23:FindFirstChild("EventObbyReward", true)

            if EventObbyReward then
                table.insert(t116, EventObbyReward.Base)
            end

            local EventDailyReward = v23:FindFirstChild("EventDailyReward", true)

            if EventDailyReward then
                table.insert(t116, EventDailyReward.Base)
            end

            if v16 then
                v16(true)
                Remotes:WaitForChild("Health_Reset", 1e999):FireServer()
                task.wait(1)
                Remotes:WaitForChild("Health_Reset", math.huge):FireServer()
                v52.CharacterAdded:Wait()
                task.wait(1)
            end

            Remotes:WaitForChild("SetMounted", math.huge):FireServer(true)
            task.wait(1)

            for _, v in pairs(t116) do
                HumanoidRootPart.CFrame = CFrame.new(Vector3.new(v.Position.X, v.Position.Y + v.Size.Y / 2, v.Position.Z))
                task.wait(0.5)
            end

            local Spawn = v23:FindFirstChild("Spawn")
            local v1463 = Spawn.Size.Y / 2
            local vector3 = Vector3.new(Spawn.Position.X, Spawn.Position.Y + v1463, Spawn.Position.Z)

            HumanoidRootPart.CFrame = CFrame.new(vector3)
            task.wait(1)
            Remotes:WaitForChild("SetMounted", 1e999):FireServer(false)

            if v16 then
                v16(false)
            end

            for _, child in pairs(v23.Coins:GetChildren()) do
                if child.Parent and child:IsA("Part") then
                    child.CanCollide = false
                    child.Anchored = true
                    child.CFrame = CFrame.new(HumanoidRootPart.Position.X, HumanoidRootPart.Position.Y - GetPlayerSize(), HumanoidRootPart.Position.Z)
                end
            end

            IsFindingHidden = false
        end)

        if not ok then
            v88("TELEPORT DAILY REWARDS", (tostring(result)))
        end
    end
	}):AddButton({
		Text = "ESP",
		Tooltip = "Adds a highlight around all hidden daily rewards around an event hubs map if available.",
		Func = function()
        if ChangingHiddenESP then
            return
        end

        local EventFinderReward = v23:FindFirstChild("EventFinderReward", true)

        if not EventFinderReward then
            Library:Notify("Go to the event hub if it is available.", 5)

            return
        end

        ChangingHiddenESP = true

        local t117 = {}

        if EventFinderReward then
            for _, child in pairs(EventFinderReward.Models:GetChildren()) do
                table.insert(t117, child)
            end
        end

        local EventObbyReward = v23:FindFirstChild("EventObbyReward", true)

        if EventObbyReward then
            table.insert(t117, EventObbyReward.Base)
        end

        local EventDailyReward = v23:FindFirstChild("EventDailyReward", true)

        if EventDailyReward then
            table.insert(t117, EventDailyReward.Base)
        end

        for _, v in pairs(t117) do
            if v.ClassName == "Model" then
                local GetDescendants = v.GetDescendants

                for _, v51 in pairs(GetDescendants(v)) do
                    if v51.ClassName == "Highlight" and v51.Name ~= "ESP" then
                        v51:Destroy()
                    end
                end
            end

            if not v:FindFirstChild("ESP") then
                local Highlight = Instance.new("Highlight")

                Highlight.FillTransparency = 0
                Highlight.Name = "ESP"
                Highlight.Parent = v
            elseif v.ESP.Enabled then
                v.ESP.Enabled = false
            else
                v.ESP.Enabled = true
            end
        end

        ChangingHiddenESP = false
    end
	})
    TeleportingHoops = 0
    ThirdTab:AddLabel("Claim flying hoops", false)
    ThirdTab:AddButton({
		Text = "Teleport hoops",
		Tooltip = "Teleports all the flying hoops on the map to your character and then returns them to their original position in an event hub if available.",
		Func = function()
        if TeleportingHoops > 0 or u85 then
            return
        end

        local Hoops = v23:FindFirstChild("Hoops")

        if Hoops then
            for _, child in pairs(Hoops:GetChildren()) do
                local v708 = child

                TeleportingHoops += 1
                task.spawn(function()
                    local Pivot = v708:GetPivot()

                    v708:PivotTo(CFrame.new(HumanoidRootPart.Position))
                    task.wait(0.1)
                    v708:PivotTo(Pivot)
                    TeleportingHoops -= 1
                end)
            end

            return
        end

        Library:Notify("Go to the event hub if it is available.", 5)
    end
	})
    ThirdTab:AddLabel("Scavenger hunt", false)
    IsFindingEggs = false
    ChangingESP = false
    ThirdTab:AddButton({
		Text = "Teleport",
		Tooltip = [[Blatantly teleports your character to all of the hidden scavenger hunt objects on the map if there is a scavenger hunt available in the world you are in.
If available to your executor the script will reset your character and then invisibly teleport you to all of the hidden objects.]],
		Func = function()
        local success, result = pcall(function()
            if not u84 or IsFindingEggs then
                return
            end
            local ScavengerHunts = v23:FindFirstChild("ScavengerHunts")
            if not ScavengerHunts then
                return
            end
            local EggHunt = ScavengerHunts:FindFirstChild("EggHunt")
            if not EggHunt then
                return
            end
            local Spawns = EggHunt:FindFirstChild("Spawns")
            if not Spawns then
                return
            end
            IsFindingEggs = true
            if v16 then
                v16(true)
                Remotes:WaitForChild("Health_Reset", 1e999):FireServer()
                task.wait(1)
                Remotes:WaitForChild("Health_Reset", math.huge):FireServer()
                v52.CharacterAdded:Wait()
                task.wait(1)
            end
            Remotes:WaitForChild("SetMounted", 1e999):FireServer(true)
            local _task6 = task
            local GetChildren = Spawns.GetChildren
            _task6.wait(1)
            for v1475, v1476 in pairs(GetChildren(Spawns)) do

                local vector3 = Vector3.new(v1476.Position.X, v1476.Position.Y + GetPlayerSize(), v1476.Position.Z)

                HumanoidRootPart.CFrame = CFrame.new(vector3)
                task.wait(0.5)
            end
            local Spawn = v23:FindFirstChild("Spawn")
            if not Spawn then
                return
            end
            local v1479 = Spawn.Size.Y / 2
            local vector3 = Vector3.new(Spawn.Position.X, Spawn.Position.Y + v1479, Spawn.Position.Z)
            HumanoidRootPart.CFrame = CFrame.new(vector3)
            task.wait(1)
            Remotes:WaitForChild("SetMounted", math.huge):FireServer(false)
            if v16 then
                v16(false)
            end
            for _, child in pairs(v23.Coins:GetChildren()) do
                if child.Parent and child:IsA("Part") then
                    child.CanCollide = false
                    child.Anchored = true
                    child.CFrame = CFrame.new(HumanoidRootPart.Position.X, HumanoidRootPart.Position.Y - GetPlayerSize(), HumanoidRootPart.Position.Z)
                end
            end
            IsFindingEggs = false
        end)
        if not success then
            v88("FIND ALL EGGS", (tostring(result)))
        end
    end
	}):AddButton({
		Text = "ESP",
		Tooltip = "Adds a highlight around all of the scavenger hunt objects if there is a scavenger hunt active in your current world.",
		Func = function()
        local success, result = pcall(function()
            if ChangingESP then
                return
            end

            local ScavengerHunts = v23:FindFirstChild("ScavengerHunts")

            if not ScavengerHunts then
                return
            end

            local EggHunt = ScavengerHunts:FindFirstChild("EggHunt")

            if not EggHunt then
                return
            end

            local _ScavengerHuntContainer = EggHunt:FindFirstChild("_ScavengerHuntContainer")

            if not _ScavengerHuntContainer then
                return
            end

            ChangingESP = true

            for _, child in pairs(_ScavengerHuntContainer:GetChildren()) do
                local v1488 = child:FindFirstChild("ESP Highlight")

                if not v1488 then
                    local Highlight = Instance.new("Highlight")

                    Highlight.Name = "ESP Highlight"
                    Highlight.FillTransparency = 0
                    Highlight.Parent = child
                elseif v1488 then
                    if v1488.Enabled then
                        v1488.Enabled = false
                    else
                        v1488.Enabled = true
                    end
                end
            end

            ChangingESP = false
        end)
        if not success then
            v88("FIND ALL EGGS", (tostring(result)))
        end
    end
	})
    task.wait()
    _G.ScriptStep = "trading tab"
    TradeTab = Window:AddTab({
		Name = "Trading",
		Icon = "rbxassetid://9671046601"
	})
    LeftGroupBox = TradeTab:AddLeftGroupbox("Player shop")
    LeftGroupBox:AddToggle("PlacePlayerShopToggle", {
		Text = "Auto place player shop",
		Default = false,
		Tooltip = "Shop automatically gets removed if turned off"
	})
    LeftGroupBox:AddDropdown("PlayerShopDropdown", {
		Values = {},
		Default = "",
		Multi = false,
		Text = "Open selected players shop"
	})
    LeftGroupBox:AddButton({
		Text = "Scan for active player shops",
		Func = function()
        local t120 = {}
        local ShopLocations = game.Workspace:FindFirstChild("ShopLocations")

        if not ShopLocations then
            return
        end

        local GetDescendants = ShopLocations.GetDescendants

        for _, v in pairs(GetDescendants(ShopLocations)) do
            if v:IsA("ObjectValue") and v.Name == "PlayerOwner" and v.Value ~= v53 then
                table.insert(t120, v.Value)
            end
        end

        if #t120 == 0 then
            print("no shops active")

            return
        end

        Options.PlayerShopDropdown:SetValues(t120)
    end
	})
    RightGroupBox = TradeTab:AddRightGroupbox("Trading")
    RightGroupBox:AddButton({
		Text = "Check trade for dupes",
		Func = function()
        if t2.CheckingTrade or u85 then
            return
        end

        t2.CheckingTrade = true

        local ok, result = pcall(function()
            local Items = u58.Items
            local v1491 = v25.PlayerEquips:FindFirstChild(v53)
            local v1492
            local n23 = 0
            local n24 = 0
            local t121 = {}
            local function v1496(p100)
                local _ = p100.ID.Value

                for _, v in pairs(t121) do
                    if v.ID.Value == p100.ID.Value then
                        local Folder = Instance.new("Folder")

                        Folder.Name = "Exploited"
                        Folder.Parent = v
                        Library:Notify("Found duped item: " .. v.Name, 3)
                        n23 += 1

                        return
                    end
                end
            end
            local v1497, v1498, v1499 = pairs(v25:FindFirstChild("Trades"):GetChildren())
            local g1501
            local v1500
            repeat
                v1499, v1500 = v1497(v1498, v1499)

                if not v1499 then
                    g1501 = true
                end

                if g1501 then
                    break
                end
            until v1500:FindFirstChild(v53)
            if not g1501 then
                v1492 = v1500
            end
            g1501 = false
            if not v1492 then
                Library:Notify("You are not trading anyone", 3)
                t2.CheckingTrade = nil

                return
            end
            for v1504, v1505 in pairs(v1492:GetChildren()) do

                if v1505.Name ~= v52.Name then
                    for _, descendant in pairs(v1505:GetDescendants()) do
                        if descendant.Name == "ID" then
                            n24 += 1
                            table.insert(t121, descendant.Parent)
                        end
                    end
                end
            end
            if n24 == 0 then
                Library:Notify("No items to check", 3)
                t2.CheckingTrade = nil

                return
            end
            local GetDescendants = Items.GetDescendants
            for v1511, v1512 in pairs(GetDescendants(Items)) do

                if v1512.Name == "ID" then
                    v1496(v1512.Parent)
                end
            end
            for v1515, v1516 in pairs(v1491:GetDescendants()) do

                if v1516.Name == "ID" then
                    v1496(v1516.Parent)
                end
            end
            if n23 == 0 then
                Library:Notify("No duped items found", 3)
                t2.CheckingTrade = nil

                return
            end
        end)

        if not ok then
            v88("SCAN TRADE FOR DUPE", (tostring(result)))
        end

        t2.CheckingTrade = nil
    end
	})
    RightGroupBox:AddButton({
		Text = "Trade with last person",
		Func = function()
        if t2.PlayerBeingTraded ~= nil then
            Remotes:WaitForChild("Trade_Accept"):FireServer(v24[t2.PlayerBeingTraded])
            Library:Notify("Attempted to open last trade!", 2)
            v243()

            return
        end

        Library:Notify("Last trade not found. Did YOU receive and accept a trade?", 5)
    end
	})
    TradeTable = {}
    RightGroupBox:AddDropdown("TradeDropdown", {
		Values = {},
		Text = "Items",
		Multi = true,
		AllowNull = true,
		Default = "",
		MaxVisibleDropdownItems = 5,
		Searchable = true
	})
    RightGroupBox:AddButton({
		Text = "Clear selection",
		DoubleClick = true,
		Func = function()
        Options.TradeDropdown:SetValue(nil)
    end
	})
    RightGroupBox:AddButton({
		Text = "Scan items",
		Func = function()
        local children = u58:FindFirstChild("Cosmetics"):GetChildren()
        local children2 = u58:FindFirstChild("Items"):GetChildren()
        local t122 = {}
        local t123 = {}
        local t124 = {}
        local s5 = "\226\128\139"

        local function v726(p101)
            if t124[p101] then
                p101 ..= tostring(s5)
                s5 ..= "\226\128\139"
            end

            return p101
        end

        if not t2.CanRequire then

            for v729, v730 in pairs(children2) do

                local Name = v730.Name

                if not t122[Name] and (not v730:FindFirstChild("Locked") and not v730:FindFirstChild("Favorited")) then
                    t122[Name] = true
                    table.insert(t123, Name)
                    t124[Name] = Name
                end
            end
            for _, v in pairs(children) do
                local vName = v.Name

                if not t122[vName] and (not v:FindFirstChild("Locked") and not v:FindFirstChild("Favorited")) then
                    t122[vName] = true
                    table.insert(t123, vName)
                    t124[vName] = vName
                end
            end
        else
            local lib = require(v38)
            for v738, v739 in pairs(children2) do

                local DisplayKey = lib[v739.Name].DisplayKey

                if not t122[v739.Name] then
                    local v741 = v726(DisplayKey)

                    if not v739:FindFirstChild("Locked") and (not v739:FindFirstChild("Favorited") and not lib[v739.Name].Untradeable) then
                        t122[v739.Name] = true
                        table.insert(t123, v741)
                        t124[v741] = v739.Name
                    end
                end
            end
            for _, v in pairs(children) do
                local DisplayKey = lib[v.Name].DisplayKey

                if not t122[v.Name] then
                    local v745 = v726(DisplayKey)

                    if not v:FindFirstChild("Locked") and (not v:FindFirstChild("Favorited") and not lib[v.Name].Untradeable) then
                        t122[v.Name] = true
                        table.insert(t123, v745)
                        t124[v745] = v.Name
                    end
                end
            end
        end

        Options.TradeDropdown:SetValues(t123)
        TradeTable = t124
    end
	})
    RightGroupBox:AddButton({
		Text = "Add selected items",
		Tooltip = "might cause lag for both players in trade",
		Func = function()
        local t125 = {}

        for k, _ in pairs(Options.TradeDropdown.Value) do
            local v749 = k

            if v749 then
                t125[TradeTable[v749]] = true
            end
        end

        local n25 = 0
        local children = u58:WaitForChild("Items", 1e999):GetChildren()
        local children3 = u58:WaitForChild("Cosmetics", 1e999):GetChildren()
        local Trade_AddItem = Remotes:WaitForChild("Trade_AddItem", 1e999)
        local v754, v755, v756 = pairs(children)

        repeat
            local v757

            v756, v757 = v754(v755, v756)

            if not v756 then
                break
            end

            if t125[v757.Name] then
                Trade_AddItem:FireServer(v757, math.huge)
                n25 += 1
            end
        until n25 == 20

        if n25 == 20 then
            return
        end

        for _, v in pairs(children3) do
            if t125[v.Name] then
                Trade_AddItem:FireServer(v, 1e999)
                n25 += 1
            end

            if n25 == 20 then
                return
            end
        end
    end
	})
    task.wait()
    _G.ScriptStep = "creating class tab"
    ClassTab = Window:AddTab({
		Name = "Classes",
		Icon = "rbxassetid://9671047048"
	})
    ClassTabLeft = ClassTab:AddLeftTabbox("Left Tabbox")
    FirstTab = ClassTabLeft:AddTab("Main")
    FirstTab:AddToggle("GeneralClassBuffToggle", {
		Text = "General class buffs",
		Default = false,
		Tooltip = "Gives you Dual Wielders and Guardians buffs"
	})
    FirstTab:AddDivider({
		Margin = -5
	})
    t2.RangedClassLabel = FirstTab:AddLabel("Ranged class distance", false)
    FirstTab:AddSlider("ChangedRangedXSlider", {
		Text = "X",
		Default = 20,
		Min = -50,
		Max = 50,
		Rounding = 0,
		Compact = true,
		Tooltip = "Forward and Backwards\nDefault is 20",
		Callback = function(p102)
        if Class and Class.Distance == "Ranged" then
            n3 = p102
        end
    end
	})
    FirstTab:AddSlider("ChangedRangedYSlider", {
		Text = "Y",
		Default = 50,
		Min = -50,
		Max = 50,
		Rounding = 0,
		Compact = true,
		Tooltip = "Up and Down\nDefault is 50",
		Callback = function(p103)
        local _Class = Class

        if _Class then
            _Class = Class.Distance == "Ranged"
        end

        if _Class then
            n4 = p103
        end
    end
	})
    FirstTab:AddDivider({
		Margin = -5
	})
    t2.MeleeClassLabel = FirstTab:AddLabel("Melee class distance", false)
    FirstTab:AddSlider("ChangedMeleeXSlider", {
		Text = "X",
		Default = 13,
		Min = -50,
		Max = 50,
		Rounding = 0,
		Compact = true,
		Tooltip = "Forward and Backwards\nDefault is 15",
		Callback = function(p104)
        if Class and Class.Distance == "Melee" then
            n3 = p104
        end
    end
	})
    FirstTab:AddSlider("ChangedMeleeYSlider", {
		Text = "Y",
		Default = 8,
		Min = -50,
		Max = 50,
		Rounding = 0,
		Compact = true,
		Tooltip = "Up and Down\nDefault is 8",
		Callback = function(p105)
        if Class and Class.Distance == "Melee" then
            n4 = p105
        end
    end
	})
    RightGroupBox = ClassTab:AddRightGroupbox("Extra")
    RightGroupBox:AddToggle("MoLBarrierToggle", {
		Text = "MoL barrier",
		Default = false,
		Tooltip = "Gives everyone else in the game a barrier instead of only yourself\nOnly Mage of Light can use this"
	})
    RightGroupBox:AddToggle("DemonBloodBindingToggle", {
		Text = "Demon blood binding",
		Default = false,
		Tooltip = "Only Demon can use this"
	})
    RightGroupBox:AddToggle("StormcallerSuperchargeToggle", {
		Text = "Stormcaller supercharge",
		Default = false,
		Tooltip = "Only Stormcaller can use this"
	})
    task.wait()
    _G.ScriptStep = "creating equipment tab"
    InventoryTab = Window:AddTab({
		Name = "Inventory",
		Icon = "rbxassetid://9671046778"
	})
    local v285 = t2
    local t126 = {
		PerkValue = 0.2,
		PetPerkValue = 0.2,
		PerkInternalName = "GoldDrop",
		PerkVisualName = "Gold Hoarder"
	}
    local t127 = {
		PerkValue = 0.1,
		PetPerkValue = 0.1,
		PerkInternalName = "PetFoodDrop",
		PerkVisualName = "Lucky Looter"
	}
    local t128 = {
		PerkValue = 0.15,
		PetPerkValue = 0.15,
		PerkInternalName = "UltCharge",
		PerkVisualName = "Energized"
	}
    local t129 = {
		PerkValue = 0.12,
		PetPerkValue = 0.07,
		PerkInternalName = "BonusHP",
		PerkVisualName = "HP UP"
	}
    local t130 = {
		PerkValue = 0.08,
		PetPerkValue = 0.05,
		PerkInternalName = "BonusAttack",
		PerkVisualName = "Attack Up"
	}
    local t131 = {
		PerkValue = 0.1,
		PetPerkValue = 0.1,
		PerkInternalName = "BonusWalkspeed",
		PerkVisualName = "Agility"
	}
    local t132 = {
		PerkValue = 0.9,
		PetPerkValue = 0.9,
		PerkInternalName = "ResistBurn",
		PerkVisualName = "Burn Resistance"
	}
    local t133 = {
		PerkValue = 0.9,
		PetPerkValue = 0.9,
		PerkInternalName = "ResistPoison",
		PerkVisualName = "Poison Resistance"
	}
    local t134 = {
		PerkValue = 0.9,
		PetPerkValue = 0.9,
		PerkInternalName = "ResistFrost",
		PerkVisualName = "Frost Resistance"
	}
    local t135 = {
		PerkValue = 0.9,
		PetPerkValue = 0.9,
		PerkInternalName = "ResistKockdown",
		PerkVisualName = "Knockdown Resistance"
	}
    local t136 = {
		PerkValue = 0.2,
		PerkInternalName = "DodgeChance",
		PerkVisualName = "Untouchable"
	}
    local t137 = {
		PerkValue = 0.1,
		PerkInternalName = "RoughSkin",
		PerkVisualName = "Rough Skin"
	}
    local t138 = {
		PerkValue = 0.08,
		PerkInternalName = "DamageReduction",
		PerkVisualName = "Damage Reduction"
	}
    local t139 = {
		PerkValue = 0.06,
		PerkInternalName = "LifeDrain",
		PerkVisualName = "Life Drain"
	}
    local t140 = {
		PerkValue = 0.15,
		PerkInternalName = "BurnChance",
		PerkVisualName = "Burn Chance"
	}
    local t141 = {
		PerkValue = 0.15,
		PerkInternalName = "FrostChance",
		PerkVisualName = "Frost Chance"
	}
    local t142 = {
		PerkValue = 0.15,
		PerkInternalName = "PoisonChance",
		PerkVisualName = "Poison Chance"
	}
    local t143 = {
		PerkValue = 0.15,
		PerkInternalName = "CritStack",
		PerkVisualName = "Crit Stack"
	}
    local t144 = {
		PerkValue = 0.6,
		PerkInternalName = "PoisonThorns",
		PerkVisualName = "Poisonous Thorns"
	}
    local t145 = {
		PerkValue = 0.4,
		PetPerkValue = 0.15,
		PerkInternalName = "Elemental",
		PerkVisualName = "Elemental Resistance"
	}
    local t146 = {
		PerkValue = 0.4,
		PetPerkValue = 0.15,
		PerkInternalName = "Ferocious",
		PerkVisualName = "Ferocious"
	}
    local t147 = {
		PerkValue = 0.15,
		PetPerkValue = 0.05,
		PerkInternalName = "Vampiric",
		PerkVisualName = "Vampiric"
	}
    local t148 = {
		PerkValue = 0.3,
		PetPerkValue = 0.1,
		PerkInternalName = "TestTier5",
		PerkVisualName = "Boss Bane"
	}
    local t149 = {
		PerkValue = 0.3,
		PetPerkValue = 0.1,
		PerkInternalName = "MobBoss",
		PerkVisualName = "Mob Slayer"
	}
    local t150 = {
		PerkValue = 0.3,
		PetPerkValue = 0.1,
		PerkInternalName = "EliteBoss",
		PerkVisualName = "Elite Assassin"
	}
    local t151 = {
		PerkValue = 0.25,
		PerkInternalName = "OpeningStrike",
		PerkVisualName = "Opening Strike"
	}
    local t152 = {
		PerkValue = 0.5,
		PerkInternalName = "Destruction",
		PerkVisualName = "Self Destruct"
	}
    local t153 = {
		PerkValue = 0.4,
		PerkInternalName = "Fortress",
		PerkVisualName = "Fortress"
	}
    local t154 = {
		PerkValue = 1,
		PerkInternalName = "Glass",
		PerkVisualName = "Glass"
	}
    local t155 = {
		PerkValue = 0.35,
		PerkInternalName = "MasterThief",
		PerkVisualName = "Master Thief"
	}
    local t156 = {
		PerkValue = 0.05,
		PetPerkValue = 0.05,
		PerkInternalName = "Oblivion",
		PerkVisualName = "Oblivion"
	}
    local t157 = {
		PerkValue = 0.25,
		PetPerkValue = 0.25,
		PerkInternalName = "Reckless",
		PerkVisualName = "Reckless"
	}
    local t158 = {
		PerkValue = 0.3,
		PerkInternalName = "Comeback",
		PerkVisualName = "Comeback"
	}
    local t159 = {
		PerkValue = 0.15,
		PerkInternalName = "Relentless",
		PerkVisualName = "Relentless"
	}
    local t160 = {
		PerkValue = 0.3,
		PerkInternalName = "Duelist",
		PerkVisualName = "Duelist"
	}
    local t161 = {
		PerkValue = 0.15,
		PerkInternalName = "Unstoppable",
		PerkVisualName = "Unstoppable"
	}
    local t162 = {
		PerkValue = 0.2,
		PerkInternalName = "Survivor",
		PerkVisualName = "Survivor"
	}
    local t163 = {
		PerkValue = 0.5,
		PetPerkValue = 0.5,
		PerkInternalName = "Executioner",
		PerkVisualName = "Executioner"
	}
    local t164 = {
		PerkValue = 0.3,
		PerkInternalName = "Adrenaline",
		PerkVisualName = "Adrenaline"
	}
    v285.SavePerkTable = {
		["Gold Hoarder"] = t126,
		["Lucky Looter"] = t127,
		Energized = t128,
		["HP UP"] = t129,
		["Attack Up"] = t130,
		Agility = t131,
		["Burn Resistance"] = t132,
		["Poison Resistance"] = t133,
		["Frost Resistance"] = t134,
		["Knockdown Resistance"] = t135,
		Untouchable = t136,
		["Rough Skin"] = t137,
		["Damage Reduction"] = t138,
		["Life Drain"] = t139,
		["Burn Chance"] = t140,
		["Frost Chance"] = t141,
		["Poison Chance"] = t142,
		["Crit Stack"] = t143,
		["Poisonous Thorns"] = t144,
		["Elemental Resistance"] = t145,
		Ferocious = t146,
		Vampiric = t147,
		["Boss Bane"] = t148,
		["Mob Slayer"] = t149,
		["Elite Assassin"] = t150,
		["Opening Strike"] = t151,
		["Self Destruct"] = t152,
		Fortress = t153,
		Glass = t154,
		["Master Thief"] = t155,
		Oblivion = t156,
		Reckless = t157,
		Comeback = t158,
		Relentless = t159,
		Duelist = t160,
		Unstoppable = t161,
		Survivor = t162,
		Executioner = t163,
		Adrenaline = t164
	}
    InventoryTabLeft = InventoryTab:AddLeftTabbox("Left Tabbox")
    FirstTab = InventoryTabLeft:AddTab("Inventory")
    FirstTab:AddToggle("AutoSellToggle", {
		Text = "Auto sell items",
		Default = false,
		Tooltip = "Only applies to new items. Eggs are not sold."
	})
    FirstTab:AddDivider()
    t2.AutoSellOptions = {
		none = false,
		["3-5"] = 3,
		["4-5"] = 4,
		["5"] = 5
	}
    FirstTab:AddDropdown("AutoSellDropdown", {
		Values = {
			"none",
			"3-5",
			"4-5",
			"5"
		},
		Multi = false,
		Text = "Keep tiers",
		AllowNull = false,
		Default = "5",
		Callback = function(p106)
        if p106 and u86 or u84 then
            n6 = t2.AutoSellOptions[p106]
        end
    end
	})
    FirstTab:AddDivider()
    FirstTab:AddToggle("KeepSelectedPerkToggle", {
		Text = "Keep selected perks",
		Default = false,
		Tooltip = "By default only S+ perks are kept",
		Callback = function(p107)
        if p107 then
            p107 = u86 or u84
        end

        if p107 then
            t2.KeepPerks = true

            return
        end

        t2.KeepPerks = nil
    end
	})
    FirstTab:AddDropdown("PerkListDropdown", {
		Values = {
			"Gold Hoarder",
			"Lucky Looter",
			"Energized",
			"HP UP",
			"Attack Up",
			"Agility",
			"Burn Resistance",
			"Poison Resistance",
			"Frost Resistance",
			"Knockdown Resistance",
			"Untouchable",
			"Rough Skin",
			"Damage Reduction",
			"Life Drain",
			"Burn Chance",
			"Frost Chance",
			"Poison Chance",
			"Crit Stack",
			"Poisonous Thorns",
			"Elemental Resistance",
			"Ferocious",
			"Vampiric",
			"Boss Bane",
			"Mob Slayer",
			"Elite Assassin",
			"Opening Strike",
			"Self Destruct",
			"Fortress",
			"Glass",
			"Master Thief",
			"Oblivion",
			"Reckless",
			"Comeback",
			"Relentless",
			"Duelist",
			"Unstoppable",
			"Survivor",
			"Executioner",
			"Adrenaline"
		},
		Text = "Perks to keep",
		Multi = true,
		AllowNull = true,
		Default = "",
		MaxVisibleDropdownItems = 5,
		Searchable = true,
		Callback = function(p108)
        t2.SelectedPerks = {}
        local n26 = 0
        for v771, v772 in pairs(p108) do

            t2.SelectedPerks[tostring(v771)] = t2.SavePerkTable[v771]
            n26 += 1
        end
        if n26 == 0 then
            t2.SelectedPerks = nil
        end
    end
	})
    FirstTab:AddButton({
		Text = "Sell inventory",
		DoubleClick = true,
		Tooltip = "all options including perk filtering are taken into account when selling your inventory",
		Func = function()
        local Charms
        if t2.CanRequire then
            Charms = require(v33:WaitForChild("Charms"))
        end
        local Items = u58:WaitForChild("Items")
        local GetChildren = Items.GetChildren
        for _, v in pairs(GetChildren(Items)) do
            n7 += 1

            if not (v:FindFirstChild("Count") or (v:FindFirstChild("Locked") or (v:FindFirstChild("Favorited") or v:FindFirstChild("GiftWrap")))) then
                local str = tostring(v.Name)
                local v779 = v:FindFirstChild("XP") or string.find(str, "Pet")
                local v780 = v779
                if v780 then
                    v779 = not t2.IncludePets
                end
                if v779 then
                    n7 -= 1

                    continue
                end
                local v781
                if Charms and Charms[v.Name] then
                    v781 = true

                    if not t2.IncludeCharms then
                        n7 -= 1

                        return
                    end
                end
                local v782 = false
                local v783 = v238(v)
                if not v781 and tostring(v783) ~= "NotEquipment" then
                    if v783 == 7 then
                        n7 -= 1

                        continue
                    end

                    if not n6 then
                        local ok, result = pcall(function()
                            Remotes:WaitForChild("Drops_SellItems", 1e999):InvokeServer({ v })
                            Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(v), 1)
                            n7 -= 1
                        end)

                        if not ok then
                            v88("SELL", (tostring(result)))
                        end

                        continue
                    end

                    if v783 < n6 then
                        local ok, result = pcall(function()
                            Remotes:WaitForChild("Drops_SellItems", 1e999):InvokeServer({ v })
                            Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(v), 1)
                            n7 -= 1
                        end)

                        if not ok then
                            v88("SELL", (tostring(result)))
                        end

                        continue
                    end

                    v782 = true
                end
                if t2.SellTowerEggs and not not (v and (v.Name and v184[v.Name])) then
                    local ok, result = pcall(function()
                        Remotes:WaitForChild("Drops_SellItems", 1e999):InvokeServer({ v })
                        Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(v), 1)
                        n7 -= 1
                    end)

                    if not ok then
                        v88("SELL", (tostring(result)))
                    end

                    return
                end
                local v790 = table.find(v183, str) or false
                local v791 = false
                if not v790 and (t2.KeepPerks and t2.SelectedPerks) then
                    for i = 1, 3 do
                        if v791 then
                            break
                        end

                        local v793 = v:FindFirstChild("Perk" .. tostring(i))

                        if v793 then
                            local PerkValue = v793:FindFirstChild("PerkValue")

                            for k, _ in pairs(t2.SelectedPerks) do
                                local v797 = t2.SavePerkTable[k]
                                local v798 = v793.Value == v797.PerkInternalName

                                if v798 then
                                    v798 = PerkValue.Value >= (v797.PerkValue * 100 - n8) / 100 or (v780 or v781) and PerkValue.Value >= (v797.PetPerkValue * 100 - n8) / 100
                                end

                                if v798 then
                                    v791 = true
                                    v782 = true

                                    break
                                end

                                v782 = false
                            end
                        end
                    end
                end
                if not v790 and (not v782 and not v791) then
                    local ok, result = pcall(function()
                        Remotes:WaitForChild("Drops_SellItems", 1e999):InvokeServer({ v })
                        Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(v), 1)
                        n7 -= 1
                    end)

                    if not ok then
                        v88("SELL", (tostring(result)))
                    end
                else
                    n7 -= 1
                end

                continue
            end

            n7 -= 1
        end
    end
	})
    SecondTab = InventoryTabLeft:AddTab("Settings")
    SecondTab:AddToggle("SellPetToggle", {
		Text = "Sell pets",
		Default = false,
		Tooltip = "Allow the auto sell functionalities to apply to pets as well",
		Callback = function(p109)
        if p109 then
            p109 = u86 or u84
        end

        if p109 then
            t2.IncludePets = true

            return
        end

        t2.IncludePets = nil
    end
	})
    SecondTab:AddToggle("SellTowerEggToggle", {
		Text = "Sell tower eggs",
		Default = false,
		Tooltip = "Automatically sell eggs from towers if you are able to collect them",
		Callback = function(p110)
        if p110 then
            p110 = u86
        end

        if p110 then
            t2.SellTowerEggs = true

            return
        end

        t2.SellTowerEggs = nil
    end
	})
    SecondTab:AddToggle("SellPetToggle", {
		Text = "Sell charms",
		Default = false,
		Tooltip = "Allow the auto sell functionalities to apply to charms as well",
		Callback = function(p111)
        if p111 and not t2.CanRequire then
            Library:Notify("Your executor doesn't allow charms to be identified")

            return
        end

        if p111 and u86 or u84 then
            t2.IncludeCharms = true

            return
        end

        t2.IncludeCharms = nil
    end
	})
    SecondTab:AddLabel("Auto-sell delay", true)
    SecondTab:AddSlider("AutoSellDelaySlider", {
		Text = "Seconds",
		Default = 1,
		Min = 1,
		Max = 4,
		Rounding = 0,
		Compact = true,
		Tooltip = "Change the amount of time the script waits before scanning an item before deciding to sell it or not. By default the script waits 1 second to allow properties of the item to load.",
		Callback = function(p112)
        t2.AddedAutoSellDelay = p112
    end
	})
    SecondTab:AddLabel("Perfect perk offset", true)
    SecondTab:AddSlider("PerkPercentSlider", {
		Text = "Offset",
		Default = 0,
		Min = 0,
		Max = 5,
		Rounding = 0,
		Compact = true,
		Tooltip = "Allows you to increase the range at which perks are kept. For example if you want Attack Up 7% and 8% then you would add 1 to the offset",
		Callback = function(p113)
        n8 = p113
    end
	})
    FirstTab = InventoryTabLeft:AddTab("Equips")
    FirstTab:AddButton({
		Text = "Max upgrade armor",
		Func = function()
        v247("Armor")
    end
	})
    FirstTab:AddButton({
		Text = "Max primary weapon",
		Func = function()
        v247("Primary")
    end
	})
    FirstTab:AddButton({
		Text = "Max offhand weapon",
		Func = function()
        v247("Offhand")
    end
	})
    InventoryTabRight = InventoryTab:AddRightTabbox("Right Tabbox")
    FirstTab = InventoryTabRight:AddTab("Cosmetics")
    FirstTab:AddDropdown("CosmeticDropdown", {
		Values = {},
		Text = "Cosmetics",
		Multi = true,
		AllowNull = true,
		Default = "",
		MaxVisibleDropdownItems = 5,
		Searchable = true
	})
    FirstTab:AddButton({
		Text = "Clear selection",
		DoubleClick = true,
		Func = function()
        Options.CosmeticDropdown:SetValue(nil)
    end
	})
    FirstTab:AddButton({
		Text = "Scan cosmetics",
		Func = function()
        local lib
        if t2.CanRequire then
            lib = require(v38)
        end
        local Cosmetics = u58:FindFirstChild("Cosmetics")
        local t165 = {}
        local t166 = {}
        local t167 = {}
        if not t2.CanRequire then
            for _, child in pairs(Cosmetics:GetChildren()) do
                if not t165[child.Name] then
                    t165[child.Name] = true
                    table.insert(t166, child.Name)
                    t167[child.Name] = child.Name
                end
            end
        else
            local GetChildren = Cosmetics.GetChildren

            for _, v in pairs(GetChildren(Cosmetics)) do
                if not t165[v.Name] then
                    t165[v.Name] = true
                    table.insert(t166, lib[v.Name].DisplayKey)
                    t167[lib[v.Name].DisplayKey] = v.Name
                end
            end
        end
        Options.CosmeticDropdown:SetValues(t166)
        t2.RealCosmeticTable = t167
    end
	})
    function RecycleFromInventory(p114)
        local t168 = {}
        for v820, v821 in pairs(Options.CosmeticDropdown.Value) do

            if v820 then
                t168[t2.RealCosmeticTable[v820]] = true
            end
        end
        local t169 = {}
        local SaveUserHexesInputValue = Options.SaveUserHexesInput.Value
        if SaveUserHexesInputValue then
            if SaveUserHexesInputValue ~= "" and SaveUserHexesInputValue ~= " " then
                local v824 = string.gsub(SaveUserHexesInputValue, ", ", ",")
                local v825 = string.gsub(v824, "#", "")
                local parts = string.split(v825, ",")

                for _, v in pairs(parts) do
                    if v ~= "" and v ~= " " then
                        table.insert(t169, string.lower(v))
                    end
                end
            end

            for _, v in pairs(v182) do
                table.insert(t169, v)
            end
        end
        local t170 = {}
        for v834, v835 in pairs(u58:FindFirstChild("Cosmetics"):GetChildren()) do

            if t168[v835.Name] and (not v835:FindFirstChild("Locked") or v835:FindFirstChild("Favorited")) then
                local Dye = v835:FindFirstChild("Dye")

                if not Dye then
                    table.insert(t170, v835)
                else
                    local v837 = Dye.Value:ToHex()
                    local v838 = false

                    for _, v in pairs(t169) do
                        if string.match(v837, "^" .. v) then
                            v838 = true

                            break
                        end
                    end

                    if not v838 then
                        table.insert(t170, v835)
                    end
                end
            end
        end
        if p114 == "Recycle" then
            Library:Notify("Attempting to recycle " .. tostring(#t170) .. " items", 5)
            Remotes:WaitForChild("Recycler_Recycle", 1e999):FireServer(t170)

            return
        end
        if p114 == "Gold" then
            Library:Notify("Attempting to sell " .. tostring(#t170) .. " items", 5)
            Remotes:WaitForChild("Drops_SellItems", math.huge):InvokeServer(t170)
        end
    end
    FirstTab:AddDivider()
    FirstTab:AddLabel("Pressing either of these buttons will either attempt to Recycle or Sell all the cosmetics you have selected above", true)
    FirstTab:AddButton({
		Text = "Recycle",
		DoubleClick = true,
		Func = function()
        RecycleFromInventory("Recycle")
    end
	}):AddButton({
		Text = "Sell",
		DoubleClick = true,
		Func = function()
        RecycleFromInventory("Gold")
    end
	})
    SecondTab = InventoryTabRight:AddTab("Hexes")
    SecondTab:AddLabel("<font color='#FF3333'>ALL USER ENTERED HEXES MUST BE SEPARATED WITH COMMAS</font>\nAdding hexes example:\n<font color='#33FF33'>00ff00, a.a.b., [a-b].[1-2].e</font>", true)
    SecondTab:AddDivider()
    local v325 = t2
    local _SecondTab2 = SecondTab
    local str = tostring(#v182)
    v325.NumberOfEnteredHexes = _SecondTab2:AddLabel("Number of saved hexes: " .. str:reverse():gsub("...", "%0,", (math.floor((#str - 1) / 3))):reverse())
    t2.UserEnteredHexes = SecondTab:AddLabel("Saved hexes:\nn/a\n+ (all special hexes)", true)
    SecondTab:AddDivider()
    SecondTab:AddInput("SaveUserHexesInput", {
		Text = "Enter hexes to save",
		Default = "",
		ClearTextOnFocus = false,
		Placeholder = "hexes here",
		Callback = function(p115)
        local v842 = u84

        if not v842 then
            v842 = u86
        end

        if v842 then
            local str2 = tostring(p115)
            local v844 = string.lower(str2)

            if v844 == "" or v844 == " " then
                local NumberOfEnteredHexes = t2.NumberOfEnteredHexes
                local str3 = tostring(#v182)

                NumberOfEnteredHexes:SetText("Number of saved hexes: " .. str3:reverse():gsub("...", "%0,", (math.floor((#str3 - 1) / 3))):reverse())
                t2.UserEnteredHexes:SetText("Saved hexes:\nn/a\n+ (all special hexes)")

                return
            end

            local v847 = string.gsub(Options.SaveUserHexesInput.Value, ", ", ",")
            local v848 = string.gsub(v847, "#", "")
            local parts = string.split(v848, ",")
            local NumberOfEnteredHexes = t2.NumberOfEnteredHexes
            local str4 = tostring(#v182 + #parts)

            NumberOfEnteredHexes:SetText("Number of saved hexes: " .. str4:reverse():gsub("...", "%0,", (math.floor((#str4 - 1) / 3))):reverse())
            t2.UserEnteredHexes:SetText("Saved hexes:\n<font color='#33FF33'>" .. v844 .. "</font>\n+ (all special hexes)")

            return
        end
    end
	})
    task.wait()
    _G.ScriptStep = "creating dungeon tab"
    DungeonTab = Window:AddTab({
		Name = "Dungeons",
		Icon = "rbxassetid://18739736091"
	})
    DungeonTabLeft = DungeonTab:AddLeftTabbox("Left Tabbox")
    FirstTab = DungeonTabLeft:AddTab("Main")
    FirstTab:AddToggle("ReplayMissionToggle", {
		Text = "Auto restart mission",
		Default = false,
		Tooltip = "Only works if turned on before the dungeon ends!"
	})
    FirstTab:AddToggle("CollectChestToggle", {
		Text = "Collect chests",
		Default = false,
		Tooltip = "Only works if turned on before the dungeon ends!"
	})
    FirstTab:AddToggle("HighestDungeonToggle", {
		Text = "Do highest level dungeon",
		Default = false,
		Tooltip = "Useful if you are leveling up as it moves to the highest level dungeon you're able to play and auto equips new gear if it's a higher level."
	})
    FirstTab:AddToggle("RandomNightmareDungeonToggle", {
		Text = "Random nightmare dungeon",
		Default = false,
		Tooltip = "When the dungeon ends the script will select a random dungeon from the Nightmare Portal to play.",
		Callback = function(p116)
        if u86 and p116 then
            t2.RandomNightmareDungeon = math.random(1005, 1007)

            return
        end

        t2.RandomNightmareDungeon = nil
    end
	})
    FirstTab:AddToggle("ReplayInfiniteTowerToggle", {
		Text = "Limit infinite tower",
		Default = false,
		Tooltip = "Allows you to restart infinite tower once a predetermined floor has been reached."
	})
    FirstTab:AddToggle("NightmarePingToggle", {
		Text = "Nightmare ping",
		Default = false,
		Tooltip = "Pings the nightmare dungeon event when it is active"
	})
    SecondTab = DungeonTabLeft:AddTab("Settings")
    SecondTab:AddLabel("Restart dungeon delay", true)
    SecondTab:AddSlider("ReplayMissionSlider", {
		Text = "Restart delay",
		Default = 3,
		Min = 1,
		Max = 60,
		Rounding = 0,
		Compact = true,
		Tooltip = "Changes the scripts delay when restarting the dungeon when `Auto restart mission` is selected.",
		Callback = function(p117)
        t2.RestartDungeonDelay = p117
    end
	})
    SecondTab:AddLabel("Collect chest delay", true)
    SecondTab:AddSlider("ChestDelaySlider", {
		Text = "Collect chest delay",
		Default = 0.1,
		Min = 0.01,
		Max = 5,
		Rounding = 2,
		Compact = true,
		Tooltip = "Changes the scripts delay between chests being collected.",
		Callback = function(p118)
        t2.CollectChestsDelay = p118
    end
	})
    SecondTab:AddLabel("Infinite tower reset floor", true)
    SecondTab:AddSlider("InfResetSlider", {
		Text = "Floor",
		Default = 200,
		Min = 155,
		Max = 400,
		Rounding = 0,
		Compact = true,
		Tooltip = "Allows you to change the floor that infinite tower restarts at when the `Periodically reset inf tower` option is selected.",
		Callback = function(p119)
        n5 = p119
    end
	})
    SecondTab:AddLabel("Prioritize nightmare dungeons", true)
    SecondTab:AddDropdown("PrioNmDropdown", {
		Values = {},
		Multi = true,
		AllowNull = true,
		Default = nil,
		MaxVisibleDropdownItems = 5,
		Searchable = true,
		Callback = function()
        local n27 = 0
        for v859, v860 in pairs(Options.PrioNmDropdown.Value) do

            n27 += 1
        end
        if n27 == 0 then
            t2.PrioNmDCount = nil

            return
        end
        t2.PrioNmDCount = true
    end
	})
    t2.PrioritizedNightmareDungeons = {}
    t2.NMDisplayValues = {}
    for _, v in pairs(v218) do
        if v.Level > 0 and v.Level < 130 then
            t2.PrioritizedNightmareDungeons[v.DungeonName] = v.DungeonID
            table.insert(t2.NMDisplayValues, v.DungeonName)
        end
    end
    Options.PrioNmDropdown:SetValues(t2.NMDisplayValues)
    t2.NMDisplayValues = nil
    RightGroupBox = DungeonTab:AddRightGroupbox("Advanced\n(nightmare challenge)")
    t2.TotalNightmareLabel = RightGroupBox:AddLabel("Total nightmare clears: ?", false)
    RightGroupBox:AddInput("TotalNightmareInput", {
		Text = "Stop after X total clears",
		Default = "",
		Placeholder = "number here",
		Callback = function(p120)
        if u86 then
            t2.StopAfterTotalNightmare = p120
        end
    end
	})
    RightGroupBox:AddDivider({
		Margin = -5
	})
    t2.DailyNightmareLabel = RightGroupBox:AddLabel("Daily nightmare clears: ?", false)
    RightGroupBox:AddInput("DailyNightmareInput", {
		Text = "Stop after X daily clears",
		Default = "",
		Placeholder = "number here",
		Callback = function(p121)
        if u86 then
            t2.StopAfterDailyNightmare = p121
        end
    end
	})
    task.wait()
    _G.ScriptStep = "creating guild tab"
    GuildTab = Window:AddTab({
		Name = "Guild",
		Icon = "rbxassetid://9671046895"
	})
    GuildTabLeft = GuildTab:AddLeftTabbox("Left Tabbox")
    FirstTab = GuildTabLeft:AddTab("Main")
    FirstTab:AddToggle("WaitTimeToggle", {
		Text = "Wait for legit time",
		Default = false,
		Tooltip = "Starts the dungeon and then waits a predetermined amount of time before continuing to clear the dungeon"
	})
    FirstTab:AddToggle("DoAllDungeonsToggle", {
		Text = "Do all dungeons",
		Default = false,
		Tooltip = "Starts from whatever dungeon you're currently in and goes to the next dungeon once it's completed. Does not go back for previous dungeons!\n\nOrder dungeons are started in:\ninf -> towers 1-6 -> celestial -> all dungeons"
	})
    FirstTab:AddToggle("DelayInfFloorToggle", {
		Text = "Delay inf tower floors",
		Default = false,
		Tooltip = "When doing infinite tower the script no longer automatically teleports to the next floor and will let the default countdown teleport you to the next floor."
	})
    FirstTab:AddToggle("GuildQuestToggle", {
		Text = "Auto claim guild quests",
		Default = false
	})
    FirstTab:AddToggle("GuildPingToggle", {
		Text = "Guild ping",
		Default = false,
		Tooltip = "Pings the guild event when it is active"
	})
    FirstTab:AddDivider({
		Margin = -5
	})
    FirstTab:AddDropdown("DoAllDropdown", {
		Values = {
			"Stop",
			"Loop",
			"Loop w/o inf",
			"Loop w/o towers",
			"Play nightmare dungeons"
		},
		Multi = false,
		Text = "Action when finished",
		AllowNull = false,
		Default = "Stop"
	})
    SecondTab = GuildTabLeft:AddTab("Settings")
    SecondTab:AddLabel("Add extra wait time", true)
    SecondTab:AddSlider("AddExtraTimeSlider", {
		Text = "Seconds",
		Default = 0,
		Min = 0,
		Max = 180,
		Rounding = 0,
		Compact = true,
		Tooltip = "Adds more time to the `Wait for a legit time` option if you don't think the scirpt is waiing long enough, or you want to wait longer for safety.",
		Callback = function(p122)
        t2.AddedGuildTime = p122
    end
	})
    SecondTab:AddLabel("Increment inf tower delay ", true)
    SecondTab:AddSlider("IncrementInfiniteSlider", {
		Text = "Seconds",
		Default = 0,
		Min = 0,
		Max = 10,
		Rounding = 0,
		Compact = true,
		Tooltip = "When using `Delay inf tower floors` this toggle will add increasingly more tine to wait after each boss floor has been completed.",
		Callback = function(p123)
        t2.IncrementInfiniteDelay = p123
    end
	})
    GuildTabRight = GuildTab:AddRightTabbox("Right Tabbox")
    FirstTab = GuildTabRight:AddTab("Advanced")
    t2.TotalGuildPointLabel = FirstTab:AddLabel("Total Guild Points: ?", false)
    FirstTab:AddInput("TotalKillInput", {
		Text = "Stop after X total points",
		Default = "",
		Placeholder = "number here",
		Callback = function(p124)
        if u86 then
            t2.StopAfterTotalPoints = p124
        end
    end
	})
    FirstTab:AddDivider({
		Margin = -5
	})
    t2.DailyGuildPointLabel = FirstTab:AddLabel("Daily Guild Points: ?", false)
    FirstTab:AddInput("DailyKillInput", {
		Text = "Stop after X daily points",
		Default = "",
		Placeholder = "number here",
		Callback = function(p125)
        if u86 then
            t2.StopAfterDailyPoints = p125
        end
    end
	})
    SecondTab = GuildTabRight:AddTab("Guild spy")
    t2.SpyOnGuild = SecondTab:AddLabel("No guild to spy on", true)
    SecondTab:AddDivider()
    CopyGuildTable = {}
    CopyGuildChat = {}
    CopyGuildPoints = 0
    SecondTab:AddDropdown("GuildNamesDropdown", {
		Values = {},
		Text = "Guilds",
		Multi = false,
		AllowNull = true,
		Default = "",
		MaxVisibleDropdownItems = 5,
		Searchable = true,
		Callback = function()
        table.clear(CopyGuildTable)
        table.clear(CopyGuildChat)
        CopyGuildPoints = 0
    end
	})
    SecondTab:AddButton({
		Text = "Scan for guilds",
		Func = function()
        local t171 = {}
        local t172 = {}

        for _, child in pairs(v24:GetChildren()) do
            local v871 = v242(child)

            if v871 ~= "вќЊ" and not t172[v871] then
                table.insert(t171, v871)
                t172[v871] = true
            end
        end

        Options.GuildNamesDropdown:SetValues(t171)
    end
	})
    SecondTab:AddButton({
		Text = "Players points",
		Func = function()
        if not Options.GuildNamesDropdown.Value then
            t2.SpyOnGuild:SetText("No guild selected")
        end

        local v872 = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

        if not v872 or not v872.Members then
            t2.SpyOnGuild:SetText("This guilds data is no longer available")
        end

        table.clear(CopyGuildTable)
        CopyGuildPoints = 0

        local t173 = {
				Member = "#ffffff",
				Builder = "#58B400",
				Captain = "#009DFF",
				Elite = "#E44AFF",
				Leader = "#FFDB0E"
			}
        local t174 = {}
        local n28 = 0

        for _, v in pairs(v872.Members) do
            local v878 = t173[v.Role]
            local v879 = v.DisplayName .. " <font size='10'>(" .. tostring(v.UserName) .. ")</font>"
            local Points = v.Points

            n28 += tonumber(Points)
            CopyGuildPoints = n28

            local str5 = tostring(v878)
            local str6 = tostring(v879)
            local str7 = tostring(Points)

            table.insert(t174, "<font color='" .. str5 .. "'>" .. str6 .. "</font> - " .. str7:reverse():gsub("...", "%0,", (math.floor((#str7 - 1) / 3))):reverse())

            local _CopyGuildTable = CopyGuildTable
            local str8 = tostring(v.DisplayName)
            local str9 = tostring(v.UserName)
            local str10 = tostring(Points)

            table.insert(_CopyGuildTable, str8 .. " (" .. str9 .. ") - " .. str10:reverse():gsub("...", "%0,", (math.floor((#str10 - 1) / 3))):reverse())
        end

        local SpyOnGuild = t2.SpyOnGuild
        local str11 = tostring(n28)

        SpyOnGuild:SetText("<u>Total guild points: " .. str11:reverse():gsub("...", "%0,", (math.floor((#str11 - 1) / 3))):reverse() .. "</u>\n" .. tostring(table.concat(t174, "\n")))
    end
	}):AddButton({
		Text = "Clipboard",
		Func = function()
        if #CopyGuildTable == 0 then
            if not Options.GuildNamesDropdown.Value then
                t2.SpyOnGuild:SetText("No Guild selected")
            end

            local v890 = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

            if not v890 or not v890.Members then
                t2.SpyOnGuild:SetText("Guild data is no longer available")
            end

            local t175 = {}
            local n29 = 0

            for _, v in pairs(v890.Members) do
                local v895 = v.DisplayName .. " (" .. v.UserName .. ")"
                local Points = v.Points

                n29 += tonumber(Points)
                CopyGuildPoints = n29

                local str12 = tostring(Points)

                table.insert(t175, v895 .. " - " .. str12:reverse():gsub("...", "%0,", (math.floor((#str12 - 1) / 3))):reverse())
            end

            local _setclipboard = setclipboard
            local str13 = tostring(n29)

            _setclipboard("Total guild points: " .. str13:reverse():gsub("...", "%0,", (math.floor((#str13 - 1) / 3))):reverse() .. "\n\n" .. table.concat(t175, "\n"))

            return
        end

        local _setclipboard = setclipboard
        local str14 = tostring(CopyGuildPoints)

        _setclipboard("Total guild points: " .. str14:reverse():gsub("...", "%0,", (math.floor((#str14 - 1) / 3))):reverse() .. "\n\n" .. table.concat(CopyGuildTable, "\n"))
    end
	})
    SecondTab:AddButton({
		Text = "Chat logs",
		Func = function()
        if not Options.GuildNamesDropdown.Value then
            t2.SpyOnGuild:SetText("No guild selected")
        end

        local v902 = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

        if not v902 or not v902.ChatLog then
            t2.SpyOnGuild:SetText("This guilds data is no longer available")
        end

        table.clear(CopyGuildChat)

        local t176 = {}

        for _, v in pairs(v902.ChatLog) do
            table.insert(t176, v[1])
            table.insert(CopyGuildChat, v[1])
        end

        local SpyOnGuild = t2.SpyOnGuild
        local t177 = { table.concat(t176, "\n") }

        SpyOnGuild:SetText(v2(t177))
    end
	}):AddButton({
		Text = "Clipboard",
		Func = function()
        if #CopyGuildChat == 0 then
            if not Options.GuildNamesDropdown.Value then
                t2.SpyOnGuild:SetText("No guild selected")
            end

            local v908 = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

            if not v908 or not v908.ChatLog then
                t2.SpyOnGuild:SetText("This guilds data is no longer available")
            end

            table.clear(CopyGuildChat)

            local t178 = {}

            for _, v in pairs(v908.ChatLog) do
                table.insert(t178, v[1])
                table.insert(CopyGuildChat, v[1])
            end

            setclipboard(table.concat(t178, "\n"))

            return
        end

        setclipboard(table.concat(CopyGuildChat, "\n"))
    end
	})
    CopyGuildDescription = nil
    SecondTab:AddButton({
		Text = "Description",
		Func = function()
        if not Options.GuildNamesDropdown.Value then
            t2.SpyOnGuild:SetText("No guild selected")
        end

        local v912 = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

        if not v912 or not v912.Description then
            t2.SpyOnGuild:SetText("This guilds data is no longer available")
        end

        CopyGuildDescription = nil
        t2.SpyOnGuild:SetText(v912.Description)
        CopyGuildDescription = v912.Description
    end
	}):AddButton({
		Text = "Clipboard",
		Func = function()
        if not CopyGuildDescription then
            if not Options.GuildNamesDropdown.Value then
                t2.SpyOnGuild:SetText("No guild selected")
            end

            local v913 = Remotes:WaitForChild("Guilds_GetCache", math.huge):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

            if not v913 or not v913.Description then
                t2.SpyOnGuild:SetText("This guilds data is no longer available")
            end

            CopyGuildDescription = nil
            CopyGuildDescription = v913.Description
            setclipboard(CopyGuildDescription)

            return
        end

        setclipboard(CopyGuildDescription)
    end
	})
    task.wait()
    _G.ScriptStep = "creating shop tab"
    ShopTab = Window:AddTab({
		Name = "Shops",
		Icon = "rbxassetid://12281229733"
	})
    ShopTabLeft = ShopTab:AddLeftTabbox("Left Tabbox")
    FirstTab = ShopTabLeft:AddTab("Egg")
    t2.BuyEggList = {
		{
			InternalName = "StarEgg",
			VisualName = "Star egg",
			CoinPrice = 2000,
			CurrencyType = "Gold"
		},
		{
			InternalName = "JungleEgg",
			VisualName = "Jungle egg",
			CoinPrice = 5000,
			CurrencyType = "Gold"
		},
		{
			InternalName = "CrystalEgg",
			VisualName = "Crystal egg",
			CoinPrice = 7500,
			CurrencyType = "Gold"
		},
		{
			InternalName = "DesertEgg",
			VisualName = "Pharaoh's egg",
			CoinPrice = 10000,
			CurrencyType = "Gold"
		},
		{
			InternalName = "ChristmasEgg",
			VisualName = "Holiday egg",
			CoinPrice = 400,
			CurrencyType = "Crystals"
		}
	}
    task.wait()
    FirstTab:AddDropdown("EggShopDropdown", {
		Values = {},
		Multi = false,
		Text = "egg name (price)",
		AllowNull = true,
		Default = nil,
		Searchable = true,
		Callback = function(p126)
        if p126 and u84 or u86 then
            t2.SelectedEggItem = t2.BuyEggList[p126]

            return
        end

        t2.SelectedEggItem = nil
    end
	})
    t2.BuyEggList = v259("EggShopDropdown", t2.BuyEggList)
    FirstTab:AddButton({
		Text = "Buy egg",
		Func = function()
        local SelectedEggItem = t2.SelectedEggItem

        if not SelectedEggItem then
            Library:Notify("No egg is selected", 3)

            return
        end

        if not v245(SelectedEggItem.CurrencyType, SelectedEggItem.InternalName, SelectedEggItem.CoinPrice, SelectedEggItem.VisualName) then
            Library:Notify("You do not have enough gold", 3)
        end
    end
	})
    FirstTab:AddToggle("AutoHatchEggToggle", {
		Text = "Auto hatch selected egg",
		Tooltip = "Recommended to do this in dungeons where no one else can see you (lag is also reduced)",
		Default = false
	})
    FirstTab:AddToggle("AutoHatchInventoryEggToggle", {
		Text = "Hatch eggs in inventory",
		Default = false
	})
    FirstTab:AddSlider("EggHatchDelaySlider", {
		Text = "Egg hatch delay",
		Default = 0,
		Min = 0,
		Max = 10,
		Rounding = 0,
		Callback = function(p127)
        if u84 or u86 then
            t2.HatchDelay = p127
        end
    end
	})
    SecondTab = ShopTabLeft:AddTab("Nightmare")
    t2.BuyNightmareItemList = {
		{
			InternalName = "NightmareDyeBox",
			VisualName = "NM Dye Box",
			CoinPrice = 5
		},
		{
			InternalName = "LegendaryEquipmentChest",
			VisualName = "Legendary Chest",
			CoinPrice = 10
		},
		{
			InternalName = "NightmareHeadphones",
			VisualName = "NM Headphones",
			CoinPrice = 15
		},
		{
			InternalName = "NightmareCatcher",
			VisualName = "NM Catcher",
			CoinPrice = 15
		},
		{
			InternalName = "NightmarePatch",
			VisualName = "NM Patch",
			CoinPrice = 15
		},
		{
			InternalName = "ShadowSerpent",
			VisualName = "Shadow Serpent",
			CoinPrice = 15
		},
		{
			InternalName = "NightmareMask",
			VisualName = "NM Mask",
			CoinPrice = 15
		},
		{
			InternalName = "NightmareCircle",
			VisualName = "NM Circle",
			CoinPrice = 20
		},
		{
			InternalName = "NightmareLantern",
			VisualName = "NM Lantern",
			CoinPrice = 20
		},
		{
			InternalName = "SkullHalo",
			VisualName = "Skull Halo",
			CoinPrice = 20
		},
		{
			InternalName = "GrimSkulls",
			VisualName = "Grim Skulls",
			CoinPrice = 20
		},
		{
			InternalName = "BrokenHorns",
			VisualName = "Broken Horns",
			CoinPrice = 20
		},
		{
			InternalName = "ChainedHorns",
			VisualName = "Chained Horns",
			CoinPrice = 20
		},
		{
			InternalName = "NightmareHelmet",
			VisualName = "NM Helmet",
			CoinPrice = 20
		},
		{
			InternalName = "NightmareArmor",
			VisualName = "NM Armor",
			CoinPrice = 50
		},
		{
			InternalName = "NightmareBox",
			VisualName = "NM wep skin",
			CoinPrice = 50
		},
		{
			InternalName = "NightmareChampionTitle",
			VisualName = "NM Champion (title)",
			CoinPrice = 250
		}
	}
    task.wait()
    SecondTab:AddDropdown("NightmareShopDropdown", {
		Values = {},
		Multi = false,
		Text = "item name (Nightmare Coins)",
		AllowNull = true,
		Default = nil,
		MaxVisibleDropdownItems = 5,
		Searchable = true,
		Callback = function(p128)
        local _Value = Value

        if _Value then
            _Value = u84
        end

        if _Value then
            t2.SelectedNightmareItem = t2.BuyNightmareItemList[p128]

            return
        end

        t2.SelectedNightmareItem = nil
    end
	})
    t2.BuyNightmareItemList = v259("NightmareShopDropdown", t2.BuyNightmareItemList)
    SecondTab:AddButton({
		Text = "Buy item",
		Func = function()
        if v83 ~= "14914684761" then
            Library:Notify("Go to world 10 to do this", 5)

            return
        end

        local SelectedNightmareItem = t2.SelectedNightmareItem

        if not SelectedNightmareItem then
            Library:Notify("No item is selected", 3)

            return
        end

        if not v244("NightmareCoin", "NightmarePortals", SelectedNightmareItem.InternalName, SelectedNightmareItem.CoinPrice, SelectedNightmareItem.VisualName) then
            Library:Notify("You do not have enough coins", 3)
        end
    end
	})
    SecondTab:AddToggle("BuyMaxNightmareToggle", {
		Text = "Buy max selected item",
		Default = false
	})
    SecondTab = ShopTabLeft:AddTab("PVP")
    t2.BuyPVPItemList = {
		{
			InternalName = "PVPDyeBox",
			VisualName = "PVP Dye Box",
			CoinPrice = 5
		},
		{
			InternalName = "LegendaryEquipmentChest",
			VisualName = "Legendary Chest",
			CoinPrice = 15
		},
		{
			InternalName = "PVPBow",
			VisualName = "Lionheart Bow",
			CoinPrice = 50
		},
		{
			InternalName = "PVPLongsword",
			VisualName = "Lionheart Longsword",
			CoinPrice = 50
		},
		{
			InternalName = "PVPGreatsword",
			VisualName = "Lionheart Greatsword",
			CoinPrice = 50
		},
		{
			InternalName = "PVPAxe",
			VisualName = "Lionheart Axe",
			CoinPrice = 50
		},
		{
			InternalName = "PVPStaff",
			VisualName = "Lionheart Staff",
			CoinPrice = 50
		},
		{
			InternalName = "PVPShield",
			VisualName = "Lionheart Shield",
			CoinPrice = 50
		},
		{
			InternalName = "PVPSpear",
			VisualName = "Lionheart Spear",
			CoinPrice = 50
		},
		{
			InternalName = "PVPScythe",
			VisualName = "Lionheart Scythe",
			CoinPrice = 50
		},
		{
			InternalName = "PVPArmorM",
			VisualName = "Lionheart Armor (M)",
			CoinPrice = 100
		},
		{
			InternalName = "PVPArmorF",
			VisualName = "Lionnheart Armor (F)",
			CoinPrice = 100
		},
		{
			InternalName = "TheUnbrokenTitle",
			VisualName = "Unbroke (title)",
			CoinPrice = 1000
		}
	}
    task.wait()
    SecondTab:AddDropdown("PVPShopDropdown", {
		Values = {},
		Multi = false,
		Text = "item name (PVP Coins)",
		AllowNull = true,
		Default = nil,
		MaxVisibleDropdownItems = 5,
		Searchable = true,
		Callback = function(p129)
        if Value and u84 then
            t2.SelectedPvpItem = t2.BuyPVPItemList[p129]

            return
        end

        t2.SelectedPvpItem = nil
    end
	})
    t2.BuyPVPItemList = v259("PVPShopDropdown", t2.BuyPVPItemList)
    SecondTab:AddButton({
		Text = "Buy item",
		Func = function()
        if v83 ~= "6510868181" then
            Library:Notify("Go to the pvp arena to do this", 5)

            return
        end

        local SelectedPvpItem = t2.SelectedPvpItem

        if not SelectedPvpItem then
            Library:Notify("No item is selected", 3)

            return
        end

        if not v244("PVPCoin", "PVPShop", SelectedPvpItem.InternalName, SelectedPvpItem.CoinPrice, SelectedPvpItem.VisualName) then
            Library:Notify("You do not have enough coins", 3)
        end
    end
	})
    SecondTab:AddToggle("BuyMaxPVPToggle", {
		Text = "Buy max selected item",
		Default = false
	})
    ShopTabRight = ShopTab:AddRightTabbox("Left Tabbox")
    FirstTab = ShopTabRight:AddTab("Guild")
    t2.BuyGuildItemList = {
		{
			InternalName = "GuildDyeBox",
			VisualName = "Guild Dye Box",
			CoinPrice = 10
		},
		{
			InternalName = "LegendaryEquipmentChest",
			VisualName = "Legendary Chest",
			CoinPrice = 25
		},
		{
			InternalName = "GuildAura",
			VisualName = "Guild Aura",
			CoinPrice = 25
		},
		{
			InternalName = "GuildBooth",
			VisualName = "Guild Booth",
			CoinPrice = 150
		},
		{
			InternalName = "GuildCircle",
			VisualName = "Guild Circle",
			CoinPrice = 150
		},
		{
			InternalName = "GuildCircle2",
			VisualName = "Guild Circle #2",
			CoinPrice = 150
		},
		{
			InternalName = "KingCrown",
			VisualName = "King's Crown",
			CoinPrice = 150
		},
		{
			InternalName = "QueenCrown",
			VisualName = "Queen's Crown",
			CoinPrice = 150
		},
		{
			InternalName = "GuildBrawler",
			VisualName = "Guild Brawler",
			CoinPrice = 150
		},
		{
			InternalName = "GuildArmor1",
			VisualName = "Dominion Armor",
			CoinPrice = 250
		},
		{
			InternalName = "GuildArmor2",
			VisualName = "Regalia Armor",
			CoinPrice = 250
		},
		{
			InternalName = "GuildArmor3",
			VisualName = "Vanguard Armor",
			CoinPrice = 250
		},
		{
			InternalName = "GuildMount2",
			VisualName = "Armored Horse",
			CoinPrice = 400
		},
		{
			InternalName = "DarkRatMount",
			VisualName = "Dark Rat Mount",
			CoinPrice = 400
		},
		{
			InternalName = "GuildGrinderTitle",
			VisualName = "Guild Grinder",
			CoinPrice = 2000
		}
	}
    task.wait()
    FirstTab:AddDropdown("GuildShopDropdown", {
		Values = {},
		Multi = false,
		Text = "item name (Guild Coins)",
		AllowNull = true,
		Default = nil,
		MaxVisibleDropdownItems = 5,
		Searchable = true,
		Callback = function(p130)
        if p130 then
            p130 = u84
        end

        if p130 then
            t2.SelectedGuildItem = t2.BuyGuildItemList[ValChangedValueue]

            return
        end

        t2.SelectedGuildItem = nil
    end
	})
    t2.BuyGuildItemList = v259("GuildShopDropdown", t2.BuyGuildItemList)
    FirstTab:AddButton({
		Text = "Buy item",
		Func = function()
        if v83 ~= "139316833473171" then
            Library:Notify("Go to the guild hub to do this", 5)

            return
        end

        local SelectedGuildItem = t2.SelectedGuildItem

        if not SelectedGuildItem then
            Library:Notify("No item is selected", 3)

            return
        end

        if not v244("GuildCoin", "GuildShop", SelectedGuildItem.InternalName, SelectedGuildItem.CoinPrice, SelectedGuildItem.VisualName) then
            Library:Notify("You do not have enough coins", 3)
        end
    end
	})
    FirstTab:AddToggle("BuyMaxGuildToggle", {
		Text = "Buy max selected item",
		Default = false
	})
    FirstTab = ShopTabRight:AddTab("Vane")
    t2.BuyEventList = {
		{
			InternalName = "AnimeDyeBox",
			VisualName = "Grand Dye Box",
			CoinPrice = 10
		},
		{
			InternalName = "LegendaryEquipmentChest",
			VisualName = "Legendary Chest",
			CoinPrice = 25
		},
		{
			InternalName = "Sugegasa",
			VisualName = "Sugegasa",
			CoinPrice = 100
		},
		{
			InternalName = "DragonBackpack",
			VisualName = "Dragon Backpack",
			CoinPrice = 100
		},
		{
			InternalName = "SoulKingTitle",
			VisualName = "Soul King (title)",
			CoinPrice = 150
		},
		{
			InternalName = "ExorcistHorns",
			VisualName = "Exorcist Horns",
			CoinPrice = 250
		},
		{
			InternalName = "ExorcistTail",
			VisualName = "Exorcist Tail",
			CoinPrice = 250
		},
		{
			InternalName = "DragonHelmet",
			VisualName = "Dragon Helmet",
			CoinPrice = 400
		},
		{
			InternalName = "DragonTiara",
			VisualName = "Dragon Tiara",
			CoinPrice = 400
		},
		{
			InternalName = "SlimeEgg",
			VisualName = "Slime Egg",
			CoinPrice = 400
		},
		{
			InternalName = "DarlingDress",
			VisualName = "Darling Dress",
			CoinPrice = 500
		},
		{
			InternalName = "AetherBreathEmote",
			VisualName = "Aether Breath (emote)",
			CoinPrice = 600
		},
		{
			InternalName = "DragonKnightM",
			VisualName = "Dragon Knight (m)",
			CoinPrice = 750
		},
		{
			InternalName = "DragonKnightF",
			VisualName = "Dragon Knight (f)",
			CoinPrice = 750
		},
		{
			InternalName = "DragonKnightTitle",
			VisualName = "Dragon Knight (title)",
			CoinPrice = 900
		},
		{
			InternalName = "SerpentBoxBlueBlack",
			VisualName = "Winterfall skins",
			CoinPrice = 1000
		},
		{
			InternalName = "SlimeMount",
			VisualName = "Giant Slime",
			CoinPrice = 1000
		},
		{
			InternalName = "WinterfallAura",
			VisualName = "Winterfall Aura",
			CoinPrice = 2000
		}
	}
    task.wait()
    FirstTab:AddDropdown("EventShopDropdown", {
		Values = {},
		Multi = false,
		Text = "item name (Dragon Coins)",
		AllowNull = true,
		Default = nil,
		MaxVisibleDropdownItems = 5,
		Searchable = true,
		Callback = function(p131)
        if p131 then
            t2.SelectedEventItem = t2.BuyEventList[p131]

            return
        end

        t2.SelectedEventItem = nil
    end
	})
    t2.BuyEventList = v259("EventShopDropdown", t2.BuyEventList)
    FirstTab:AddButton({
		Text = "Buy item",
		Func = function()
        if v83 ~= "18567064955" then
            Library:Notify("Go to the event hub to do this", 5)

            return
        end

        local SelectedEventItem = t2.SelectedEventItem

        if not SelectedEventItem then
            Library:Notify("No item is selected", 3)

            return
        end

        if not v244("DragonCoin", "Anime2026", SelectedEventItem.InternalName, SelectedEventItem.CoinPrice, SelectedEventItem.VisualName) then
            Library:Notify("You do not have enough coins", 3)
        end
    end
	})
    FirstTab:AddToggle("BuyMaxEventToggle", {
		Text = "Buy max selected item",
		Default = false
	})
    task.wait()
    _G.ScriptStep = "creating quick menu tab"
    OpenMenuTab = Window:AddTab({
		Name = "Quick menus",
		Icon = "rbxassetid://13534579488"
	})
    LeftGroupBox = OpenMenuTab:AddLeftGroupbox("Normal Menus")
    LeftGroupBox:AddButton({
		Text = "Teleport menu (old)",
		Func = function()
        v246("HubTeleport")
        Library:Notify("Has touch issues on mobile. Games fault, not the scripts.", 10)
    end
	})
    LeftGroupBox:AddButton({
		Text = "Bank",
		Func = function()
        v246("Bank")
    end
	})
    LeftGroupBox:AddButton({
		Text = "Upgrade station",
		Func = function()
        v246("ItemUpgrade")
    end
	})
    LeftGroupBox:AddButton({
		Text = "Sell station",
		Func = function()
        v246("Sell")
    end
	})
    LeftGroupBox:AddButton({
		Text = "Zero altar",
		Func = function()
        v246("Fusion")
    end
	})
    LeftGroupBox:AddButton({
		Text = "Recycler",
		Func = function()
        v246("Recycler")
    end
	})
    LeftGroupBox:AddButton({
		Text = "Pet incubator",
		Func = function()
        v246("PetIncubator")
    end
	})
    LeftGroupBox:AddButton({
		Text = "Pet fusion",
		Func = function()
        v246("FusePets")
    end
	})
    LeftGroupBox:AddButton({
		Text = "Salon",
		Func = function()
        v246("NewCharacterCustomizer")
    end
	})
    LeftGroupBox:AddButton({
		Text = "Furniture store",
		Func = function()
        v246("FurnitureShop")
    end
	})
    RightGroupBox = OpenMenuTab:AddRightGroupbox("Special Menus")
    RightGroupBox:AddButton({
		Text = "Item panel",
		Tooltip = "If you try to select anything the game will instantly kick you. I can't do anything about that.",
		Func = function()
        v246("AdminItemPanel")
    end
	})
    task.wait()
    _G.ScriptStep = "creating misc tab"
    MiscTab = Window:AddTab({
		Name = "Miscellaneous",
		Icon = "rbxassetid://4801326994"
	})
    MiscTabLeft = MiscTab:AddLeftTabbox("Left Tabbox")
    FirstTab = MiscTabLeft:AddTab("Main")
    FirstTab:AddToggle("MobCameraToggle", {
		Text = "Camera on mob",
		Default = false,
		Tooltip = "Puts your camera on the mob instead of your character"
	})
    FirstTab:AddToggle("DamageNumbersToggle", {
		Text = "Remove damage numbers",
		Default = false,
		Tooltip = "Removes damage numbers from damaging enemies and being damaged. You need to rejoin to see number again if turned off."
	})
    FirstTab:AddToggle("DamageFlashToggle", {
		Text = "Hide damage flash",
		Default = false,
		Tooltip = "Stops the mobs from flashing red when they take damage. Maybe useful if you're sensitive to light changes."
	})
    FirstTab:AddToggle("DeathEffectToggle", {
		Text = "Remove death effects",
		Default = false,
		Tooltip = "Removes the visual death effects from players, mobs, and bosses."
	})
    FirstTab:AddToggle("KnockdownToggle", {
		Text = "Disable knockdown",
		Default = false,
		Tooltip = "Stops the status 'Knockdown' from knocking your character down and making you unable to attack + move. May be useful if you're using 'Safe killaura' to prevent mobs from making you unable to attack."
	})
    FirstTab:AddToggle("ShowEndTimeToggle", {
		Text = "Display end time",
		Default = false,
		Tooltip = "Time from when the toggle was turned on and the dungeon ended."
	})
    FirstTab:AddDivider({
		Margin = -5
	})
    FirstTab:AddSlider("WalkspeedSlider", {
		Text = "Change walkspeed",
		Default = 28,
		Min = 28,
		Max = 200,
		Rounding = 0,
		Tooltip = "Does exactly what you think it does"
	})
    SecondTab = MiscTabLeft:AddTab("Hide ui's")
    SecondTab:AddToggle("WaystoneToggle", {
		Text = "Hide closest waystone",
		Default = false,
		Tooltip = "Hides the waystone icon when in worlds"
	})
    SecondTab:AddToggle("MissionObjectiveToggle", {
		Text = "Hide mission objective",
		Default = false,
		Tooltip = "Hides the text on your screen telling you what to do"
	})
    SecondTab:AddToggle("BossBarToggle", {
		Text = "Hide boss bar",
		Default = false,
		Tooltip = "Hides all boss bars from appearing on your screen."
	})
    SecondTab:AddToggle("PlayerHotbarToggle", {
		Text = "Hide hotbar",
		Default = false,
		Tooltip = "Hides your health and skill UI"
	})
    SecondTab:AddToggle("MobilePlayerSkills", {
		Text = "Hide mobile skills",
		Default = false,
		Tooltip = "Hides the skills from players on mobile devices"
	})
    SecondTab:AddToggle("MainGuiToggle", {
		Text = "Hide main gui",
		Default = false,
		Tooltip = "Hides the coin icon that appears on your screen for events"
	})
    SecondTab:AddToggle("HideMenuToggle", {
		Text = "Hide game menu",
		Default = false,
		Tooltip = "Hides the 3 dot menu or tab menu"
	})
    SecondTab:AddToggle("HideCameraToggle", {
		Text = "Hide camera button",
		Default = false,
		Tooltip = "Hides the camera button in the top left of your screen"
	})
    SecondTab:AddToggle("RobloxUIToggle", {
		Text = "Hide roblox ui",
		Default = false,
		Tooltip = "Hides the roblox icons from your screen in the top left"
	})
    MiscTabRight = MiscTab:AddRightTabbox("Right Tabbox")
    FirstTab = MiscTabRight:AddTab("Extra")
    FirstTab:AddInput("JoinPlayerInput", {
		Text = "Enter name",
		Default = "",
		Placeholder = "username",
		Tooltip = "Enter a players exact actual name (not display) and teleport to them if they are currently in game and not in a dungeon."
	})
    FirstTab:AddButton({
		Text = "Join player",
		Tooltip = "Attempts to join the players name entered into the field above",
		Func = function()
        if not Options.JoinPlayerInput.Value or u85 then
            return
        end

        if t2.CanRequire then
            require(v45):TeleportToPlayer(v52, v24:GetUserIdFromNameAsync(Options.JoinPlayerInput.Value), nil, true)
            Library:Notify("Attempting to join player: " .. Options.JoinPlayerInput.Value, 5)

            return
        end

        Library:Notify("Your executor doesn't support this", 5)
    end
	})
    FirstTab:AddDivider({
		Margin = -5
	})
    FirstTab:AddButton({
		Text = "Redeem all codes",
		Tooltip = "Claims all active promocodes (list of codes is manually updated)",
		Func = function()
        if u84 or u86 then
            local t179 = {
					"900KLIKES",
					"EASTER26"
				}
            local v927 = #t179 * 11 - 11

            if #t179 > 1 then
                Library:Notify("It will take " .. v927 .. " seconds for all codes to be redeemed", v927)
            end

            local PromoCodes_RedeemCode = Remotes:WaitForChild("PromoCodes_RedeemCode", math.huge)

            for k, v in pairs(t179) do
                PromoCodes_RedeemCode:InvokeServer(v)

                if k ~= #t179 then
                    task.wait(11)
                else
                    print("PORN: claimed all codes")
                end
            end
        end
    end
	})
    FirstTab:AddDivider({
		Margin = -5
	})
    FirstTab:AddToggle("DevKickToggle", {
		Text = "Kick on dev join",
		Default = false,
		Tooltip = "Automatically kicks you from the game if someone with a dev rank joins your game"
	})
    FirstTab:AddToggle("ProfilerToggle", {
		Text = "Show account information",
		Default = false,
		Tooltip = "Shows some information about your account such as your name, gold, crystals, and more\n THE STATS UPDATE EVERY 5 SECONDS"
	})
    FirstTab:AddToggle("AFKToggle", {
		Text = "Anti AFK",
		Default = false,
		Tooltip = "Prevents roblox from afk kicking you"
	})
    FirstTab:AddToggle("MainMenuPlay", {
		Text = "Auto click play",
		Default = false,
		Tooltip = "When on the main menu the script will automatically click the 'play' button"
	})
    FirstTab:AddToggle("MobESPToggle", {
		Text = "Mob ESP",
		Default = false,
		Tooltip = "places an outline around all mobs"
	})
    FirstTab:AddToggle("NoclipCameraToggle", {
		Text = "Noclip camera",
		Default = false,
		Tooltip = "Allows your camera to look through walls"
	})
    FirstTab:AddToggle("DisableAutoJumpToggle", {
		Text = "Disable auto jump",
		Default = false,
		Tooltip = "Disables the auto jump imposed on mobile users"
	})
    FirstTab:AddDivider({
		Margin = -5
	})
    FirstTab:AddInput("ChangeClassColor", {
		Text = "Change class colors",
		Default = "",
		Placeholder = "FFFFFF",
		Tooltip = "Changes the colors of your classes attacks on your client only",
		Callback = function(p132)
        if u86 or u84 then
            v52:SetAttribute("ClassColor", p132)
        end
    end
	})
    SecondTab = MiscTabRight:AddTab("Performance")
    SecondTab:AddToggle("RemoveOtherPlayersToggle", {
		Text = "Remove other players",
		Default = false,
		Tooltip = "Reduces lag if there's other players by removing their character and pet"
	})
    SecondTab:AddToggle("DisableRenderingToggle", {
		Text = "Disable rendering",
		Default = false,
		Tooltip = "Sigificantly reduces the load on your GPU by disabling 3d rendering"
	})
    SecondTab:AddToggle("PreventEffectsToggle", {
		Text = "Don't render new effects",
		Default = false,
		Tooltip = "Stops the game from rendering new effects such as projectiles!\nDO NOT USE IF PLAYING NORMALLY"
	})
    SecondTab:AddToggle("PreventMobToggle", {
		Text = "Don't render new models",
		Default = false,
		Tooltip = "Stops the game from rendering new models such as mobs and equipment, which can massively boost performacne!"
	})
    SecondTab:AddDivider({
		Margin = -5
	})
    SecondTab:AddSlider("FPSSlider", {
		Text = "Change FPS",
		Default = 60,
		Min = 20,
		Max = 240,
		Rounding = 0
	})
    task.wait()
    FirstTab:AddButton({
		Text = "Send test message",
		Tooltip = "Useful for checking if your webhook provided is working properly",
		DoubleClick = true,
		Func = function()
        if not request then
            Library:Notify("Your executor doesn't allow requests", 5)
        end

        pcall(function()
            local t180 = {
					username = "test",
					content = "test" .. s1
				}
            local DiscordWebhookLink = t2.DiscordWebhookLink

            if not DiscordWebhookLink and true then
                warn("No webhook link provided")

                return
            end

            local v1520 = false
            local _, _ = pcall(function()
                if v1520 and v12 or hookmetamethod then
                    local n30 = 0
                    local ok, _ = pcall(function()
                        for _, v in pairs(getreg()) do
                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                n30 += 1
                            end
                        end
                    end)
                    if n30 > 2 or n30 == 0 then
                        return
                    end
                    if not ok then
                        return
                    end
                    local u2026 = false
                    local success = pcall(function()
                        local v2195 = ishooked and ishooked(request)

                        if not v2195 then
                            v2195 = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                        end

                        if v2195 then
                            u2026 = true

                            return
                        end
                    end)
                    if not success then
                        return
                    end
                    local ok7, _ = pcall(function()
                        local v2196 = ishooked and ishooked(game.HttpGet)

                        if not v2196 then
                            v2196 = isfunctionhooked and isfunctionhooked(game.HttpGet)

                            if not v2196 then
                                v2196 = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                            end
                        end

                        if v2196 then
                            u2026 = true

                            return
                        end
                    end)
                    if u2026 then
                        return
                    end
                    if not ok7 then
                        return
                    end
                end

                if not v11 then
                    return
                end

                local v2031 = v11
                local v2032 = DiscordWebhookLink
                local t182 = {
						["Content-Type"] = "application/json"
					}
                local json = v26:JSONEncode(t180)

                v2031({
						Url = v2032,
						Method = "POST",
						Headers = t182,
						Body = json
					})
            end)
        end)
    end
	})
    FirstTab:AddToggle("ShowPlayersToggle", {
		Text = "Party member details",
		Default = false,
		Tooltip = "Shows everyone inside of the party instead of only showing the number of players in the party"
	})
    task.wait()
    _G.ScriptStep = "creating config tab"
    ConfigTab = Window:AddTab({
		Name = "Configurations",
		Icon = "rbxassetid://9671045892"
	})
    ConfigTabLeft = ConfigTab:AddLeftTabbox("Left Tabbox")
    FirstTab = ConfigTabLeft:AddTab("Main")
    FirstTab:AddToggle("HideGuiToggle", {
		Text = "Hide menu when executed",
		Default = false
	})
    FirstTab:AddToggle("AutoScriptToggle", {
		Text = "Auto execute script",
		Default = false
	})
    FirstTab:AddToggle("ClassPingToggle", {
		Text = "Class ping",
		Default = false,
		Tooltip = "Enables class-based ping notifications for the selected ping type"
	})
    FirstTab:AddDropdown("PingDropdown", {
		Text = "Ping type",
		Values = {
			"Guild",
			"Nightmare",
			"Event boss"
		},
		Multi = false,
		AllowNull = false,
		Default = "Guild",
		Searchable = true
	})
    FirstTab:AddDivider({
		Margin = -5
	})
    FirstTab:AddButton({
		Text = "Stop script from executing",
		Func = function()
        if isfile("PORN/AutoExecute") then
            delfile("PORN/AutoExecute")
        end

        if v15 then
            Library:Notify("Script will not be ran when you teleport. Hopefully you enjoyed using it without encountering any issues!\n -PORN", 10)
            v15()
        end
    end
	})
    ThirdTab = ConfigTabLeft:AddTab("Theme")
    local accentToggle = ThirdTab:AddToggle("AccentColorToggle", {
		Text = "Accent color",
		Default = true
	})
    local accentColorPicker = accentToggle:AddColorPicker("AccentColorPicker", {
		Title = "Accent color",
		Default = Color3.fromRGB(255, 215, 0),
		Callback = function(color)
			apply_accent_color(color)
		end
	})
    ThirdTab:AddButton({
		Text = "Reset accent",
		Func = function()
			apply_yellow_accent()
			if accentColorPicker and accentColorPicker.SetValueRGB then
				accentColorPicker:SetValueRGB(Color3.fromRGB(255, 215, 0))
			end
		end
	})
    SecondTab = ConfigTabLeft:AddTab("Import")
    SecondTab:AddButton({
		Text = "Instakill event boss",
		Func = function()
        writefile("PORN/saved_configs/settings/Imported Instakill.json", [[                    {"objects":[
                        {"idx":"AutoProgressToggle","type":"Toggle","value":true},
                        {"idx":"CollectDropToggle","type":"Toggle","value":true},
                        {"idx":"RestartStuckToggle","type":"Toggle","value":true},
                        {"idx":"GeneralClassBuffToggle","type":"Toggle","value":true},
                        {"idx":"ReplayMissionToggle","type":"Toggle","value":true},
                        {"idx":"CollectChestToggle","type":"Toggle","value":true},
                        {"idx":"InstakillToggle","type":"Toggle","value":true},
                        {"idx":"HideGuiToggle","type":"Toggle","value":true},
                        {"idx":"AutoScriptToggle","type":"Toggle","value":true}
                        ]}
                ]])
        Library:Notify("To see the imported config press 'Refresh list' and check the dropdown again")
    end
	})
    SecondTab:AddButton({
		Text = "Standard autofarm",
		Func = function()
        writefile("PORN/saved_configs/settings/Imported Autofarm.json", [[                    {"objects":[
                        {"idx":"KillauraToggle","type":"Toggle","value":true},
                        {"idx":"AutoProgressToggle","type":"Toggle","value":true},
                        {"idx":"CollectDropToggle","type":"Toggle","value":true},
                        {"idx":"PetKillauraToggle","type":"Toggle","value":true},
                        {"idx":"RestartStuckToggle","type":"Toggle","value":true},
                        {"idx":"GeneralClassBuffToggle","type":"Toggle","value":true},
                        {"idx":"AutoSellToggle","type":"Toggle","value":true},
                        {"idx":"ReplayMissionToggle","type":"Toggle","value":true},
                        {"idx":"CollectChestToggle","type":"Toggle","value":true},
                        {"idx":"DamageNumbersToggle","type":"Toggle","value":true},
                        {"idx":"DeathEffectToggle","type":"Toggle","value":true},
                        {"idx":"DamageFlashToggle","type":"Toggle","value":true},
                        {"idx":"KnockdownToggle","type":"Toggle","value":true},
                        {"idx":"HideGuiToggle","type":"Toggle","value":true},
                        {"idx":"AutoScriptToggle","type":"Toggle","value":true}
                        ]}
                ]])
        Library:Notify("To see the imported config press 'Refresh list' and check the dropdown again")
    end
	})
    SecondTab:AddButton({
		Text = "Advanced autofarm",
		Func = function()
        writefile("PORN/saved_configs/settings/Imported Adv Autofarm.json", [[                    {"objects":[
                        {"idx":"KillauraToggle","type":"Toggle","value":true},
                        {"idx":"AutoProgressToggle","type":"Toggle","value":true},
                        {"idx":"DelayAttackSlider","type":"Slider","value":"0.03"},
                        {"idx":"CollectDropToggle","type":"Toggle","value":true},
                        {"idx":"PetKillauraToggle","type":"Toggle","value":true},
                        {"idx":"RestartStuckToggle","type":"Toggle","value":true},
                        {"idx":"RestartStuckSlider","type":"Slider","value":"30"},
                        {"idx":"GeneralClassBuffToggle","type":"Toggle","value":true},
                        {"idx":"AutoSellToggle","type":"Toggle","value":true},
                        {"idx":"KeepSelectedPerkToggle","type":"Toggle","value":true},
                        {"idx":"PerkListDropdown","type":"Dropdown","multi":true,"value":{"Attack Up":true,"Untouchable":true,"Rough Skin":true,"Burn Chance":true,"Frost Chance":true,"Poison Chance":true,"Crit Stack":true,"Ferocious":true,"Vampiric":true,"Boss Bane":true,"Elite Assassin":true,"Glass":true}},
                        {"idx":"ReplayMissionToggle","type":"Toggle","value":true},
                        {"idx":"CollectChestToggle","type":"Toggle","value":true},
                        {"idx":"RandomNightmareDungeonToggle","type":"Toggle","value":true},
                        {"idx":"ReplayInfiniteTowerToggle","type":"Toggle","value":true},
                        {"idx":"ChestDelaySlider","type":"Slider","value":"0.01"},
                        {"idx":"ReplayMissionSlider","type":"Slider","value":"1"},
                        {"idx":"DamageNumbersToggle","type":"Toggle","value":true},
                        {"idx":"DeathEffectToggle","type":"Toggle","value":true},
                        {"idx":"DamageFlashToggle","type":"Toggle","value":true},
                        {"idx":"KnockdownToggle","type":"Toggle","value":true},
                        {"idx":"DevKickToggle","type":"Toggle","value":true},
                        {"idx":"AFKToggle","type":"Toggle","value":true},
                        {"idx":"RemoveOtherPlayersToggle","type":"Toggle","value":true},
                        {"idx":"DisableRenderingToggle","type":"Toggle","value":true},
                        {"idx":"PreventMobToggle","type":"Toggle","value":true},
                        {"idx":"FPSSlider","type":"Slider","value":"120"},
                        {"idx":"HideGuiToggle","type":"Toggle","value":true},
                        {"idx":"AutoScriptToggle","type":"Toggle","value":true}
                        ]}
                ]])
        Library:Notify("To see the imported config press 'Refresh list' and check the dropdown again")
    end
	})
    SecondTab:AddButton({
		Text = "Safe guild points",
		Func = function()
        writefile("PORN/saved_configs/settings/Imported Safe Guild.json", [[                    {"objects":[
                        {"idx":"KillauraToggle","type":"Toggle","value":true},
                        {"idx":"AutoProgressToggle","type":"Toggle","value":true},
                        {"idx":"CollectDropToggle","type":"Toggle","value":true},
                        {"idx":"RestartStuckToggle","type":"Toggle","value":true},
                        {"idx":"AutoSellToggle","type":"Toggle","value":true},
                        {"idx":"PetKillauraToggle","type":"Toggle","value":true},
                        {"idx":"ReplayMissionToggle","type":"Toggle","value":true},
                        {"idx":"CollectChestToggle","type":"Toggle","value":true},
                        {"idx":"ReplayInfiniteTowerToggle","type":"Toggle","value":true},
                        {"idx":"WaitTimeToggle","type":"Toggle","value":true},
                        {"idx":"DoAllDungeonsToggle","type":"Toggle","value":true},
                        {"idx":"DelayInfFloorToggle","type":"Toggle","value":true},
                        {"idx":"DamageNumbersToggle","type":"Toggle","value":true},
                        {"idx":"DeathEffectToggle","type":"Toggle","value":true},
                        {"idx":"DamageFlashToggle","type":"Toggle","value":true},
                        {"idx":"KnockdownToggle","type":"Toggle","value":true},
                        {"idx":"AFKToggle","type":"Toggle","value":true},
                        {"idx":"HideGuiToggle","type":"Toggle","value":true},
                        {"idx":"AutoScriptToggle","type":"Toggle","value":true}
                        ]}
                ]])
        Library:Notify("To see the imported config press 'Refresh list' and check the dropdown again")
    end
	})
    SecondTab:AddButton({
		Text = "Auto hatch eggs",
		Func = function()
        writefile("PORN/saved_configs/settings/Imported Auto Egg.json", [[                    {"objects":[
                        {"idx":"AutoSellToggle","type":"Toggle","value":true},
                        {"idx":"SellPetToggle","type":"Toggle","value":true},
                        {"idx":"KeepSelectedPerkToggle","type":"Toggle","value":true},
                        {"idx":"PerkListDropdown","type":"Dropdown","multi":true,"value":{"Attack Up":true,"Ferocious":true,"Vampiric":true,"Boss Bane":true,"Elite Assassin":true}},
                        {"idx":"EggShopDropdown","type":"Dropdown","multi":false,"value":"Star Egg (2,000 gold)"},
                        {"idx":"AutoHatchEggToggle","type":"Toggle","value":true},
                        {"idx":"AFKToggle","type":"Toggle","value":true},
                        {"idx":"RemoveOtherPlayersToggle","type":"Toggle","value":true},
                        {"idx":"PreventMobToggle","type":"Toggle","value":true},
                        {"idx":"HideGuiToggle","type":"Toggle","value":true},
                        {"idx":"AutoScriptToggle","type":"Toggle","value":true}
                        ]}
                ]])
        Library:Notify("To see the imported config press 'Refresh list' and check the dropdown again")
    end
	})
    ThirdTab = ConfigTabLeft:AddTab("debug")
    ThirdTab:AddLabel("These options should only be used when attempting to report issues with the script, they are intentionally vague as I know what they are referring to.", true)
    ThirdTab:AddDivider({
		Margin = -5
	})
    ThirdTab:AddToggle("MobDebugToggle", {
		Text = "print mob debugs",
		Tooltip = "prints what the script does when a mob is created",
		Default = false,
		Callback = function(p136)
        if p136 then
            t3.MobDebug = true

            return
        end

        t3.MobDebug = nil
    end
	})
    ThirdTab:AddButton({
		Text = "print current mob",
		Tooltip = "prints the mob that the script is currently trying to target",
		Func = function()
        local v938 = u67

        if not v938 then
            print("PORN: no mob is a target")

            return
        end

        local v939 = t3.MobTable[v938]
        local v940 = "PORN: current target is " .. v938.Name

        if v939 then
            if v939.Invincible then
                v940 ..= " (invincible)"
            end

            if v939.IsBlocker then
                v940 ..= " (blocker)"
            end

            if v939.Priority then
                v940 ..= " (priority)"
            end

            if v939.NoData then
                v940 ..= " (no data)"
            end

            v940 ..= " Path: " .. tostring(v938:GetFullName())
        end

        print(v940)
    end
	})
    ThirdTab:AddButton({
		Text = "print targets",
		Tooltip = "prints the mobs the script is targeting",
		Func = function()
        local s6 = "PORN current mobs:\n"

        for k, v in pairs(t3.MobTable) do
            local v944 = k
            local v945 = s6 .. tostring(v944)

            if v.Invincible then
                v945 ..= " (invincible)"
            end

            if v.IsBlocker then
                v945 ..= " (blocker)"
            end

            if v.Priority then
                v945 ..= " (priority)"
            end

            if v.NoData then
                v945 ..= " (no data)"
            end

            s6 = v945 .. " Path: " .. tostring(v944:GetFullName()) .. "\n"
        end

        print(s6)
    end
	})
    ThirdTab:AddButton({
		Text = "open console",
		Tooltip = "Opens the roblox console if you can't use the chat or don't want to.",
		Func = function()
        StarterGui:SetCore("DevConsoleVisible", true)
    end
	})
    LeftGroupBox3 = ConfigTab:AddLeftGroupbox("Executor compatibility")
    t2.RequireLabel = LeftGroupBox3:AddLabel("require: ?", true)
    t2.HookfunctionLabel = LeftGroupBox3:AddLabel("hookfunction: ?", true)
    t2.RestorefunctionLabel = LeftGroupBox3:AddLabel("restorefunction: ?", true)
    t2.UpvalueLabel = LeftGroupBox3:AddLabel("getupvalue: ?", true)
    t2.NewcclosureLabel = LeftGroupBox3:AddLabel("newcclosure: ?", true)
    t2.AutoInjectLabel = LeftGroupBox3:AddLabel("queueonteleport: ?", false)
    t2.RequestLabel = LeftGroupBox3:AddLabel("request: ?", true)
    t2.InvisTeleportLabel = LeftGroupBox3:AddLabel("invisible teleport: ?", true)
    LeftGroupBox3:AddDivider({
		Margin = -5
	})
    LeftGroupBox3:AddButton({
		Text = "Check compatibility",
		Tooltip = "May be helpful for debugging",
		Func = function()
        if t2.CanRequire then
            t2.RequireLabel:SetText("require: <font color='#33ff33'>Yes</font>")
        else
            t2.RequireLabel:SetText("require: <font color='#ff3333'>>No</font>")
        end

        if v12 then
            t2.HookfunctionLabel:SetText("hookfunction: <font color='#33ff33'>Yes</font>")
        else
            t2.HookfunctionLabel:SetText("hookfunction: <font color='#ff3333'>>No</font>")
        end

        if v13 then
            t2.RestorefunctionLabel:SetText("restorefunction: <font color='#33ff33'>Yes</font>")
        else
            t2.RestorefunctionLabel:SetText("restorefunction: <font color='#ff3333'>>No</font>")
        end

        if debug and debug.getupvalue then
            t2.UpvalueLabel:SetText("getupvalue: <font color='#33ff33'>Yes</font>")
        else
            t2.UpvalueLabel:SetText("getupvalue: <font color='#ff3333'>>No</font>")
        end

        if v17 then
            t2.NewcclosureLabel:SetText("newcclosure: <font color='#33ff33'>Yes</font>")
        else
            t2.NewcclosureLabel:SetText("newcclosure: <font color='#ff3333'>>No</font>")
        end

        if v14 then
            t2.AutoInjectLabel:SetText("queueonteleport: <font color='#33ff33'>Yes</font>")
        else
            t2.AutoInjectLabel:SetText("queueonteleport: <font color='#ff3333'>>No</font>")
        end

        if v11 then
            t2.RequestLabel:SetText("request: <font color='#33ff33'>Yes</font>")
        else
            t2.RequestLabel:SetText("request: <font color='#ff3333'>>No</font>")
        end

        if v16 then
            t2.InvisTeleportLabel:AddLabel("Can invisibly teleport: <font color='#FF3333'>no</font>", false)

            return
        end

        t2.InvisTeleportLabel:SetText("invisible teleport: <font color='#ff3333'>>No</font>")
    end
	})
    task.wait()
    _G.ScriptStep = "creating UI functions"
    v179()
    _G.ScriptStep = "general tab functions"
    if u86 then
        task.spawn(function()
            local success, result = pcall(function()
                local function v1523(p137)
                    local HealthProperties = p137:FindFirstChild("HealthProperties")
                    local v2037 = HealthProperties and HealthProperties:FindFirstChild("Health")

                    if not v2037 or v2037 and v2037.Value == 0 then
                        return
                    end

                    local v2038 = p137:FindFirstChild("Part") or (p137:FindFirstChild("Base") or (p137:FindFirstChild("hitbox") or p137:FindFirstChild("EasterGiantEgg")))

                    if not v2038 then
                        return
                    end

                    v2038.Name = "Collider"
                    t3.MobTable[p137] = {
						IsBlocker = true
					}
                end

                local v1524 = MissionObjects and MissionObjects:FindFirstChild("TowerLegs")

                if v1524 then
                    for _, child in pairs(v1524:GetChildren()) do
                        v1523(child)
                    end
                end

                local v1527 = MissionObjects and MissionObjects:FindFirstChild("SpikeCheckpoints")

                if v1527 then
                    for _, child in pairs(v1527:GetChildren()) do
                        v1523(child)
                    end
                end

                local BOSSKandrixAssets = v23:FindFirstChild("BOSSKandrixAssets")

                if BOSSKandrixAssets then
                    local GetChildren = BOSSKandrixAssets.GetChildren

                    for _, v in pairs(GetChildren(BOSSKandrixAssets)) do
                        local Crystal = v:FindFirstChild("Crystal")

                        if Crystal then
                            Crystal.Name = "Collider"
                        end
                    end
                end

                for _, v in pairs({
					"Pillar1",
					"Pillar2",
					"Pillar3",
					"IceBarricade",
					"Blocker1",
					"Blocker2",
					"Blocker3",
					"EasterGiantEgg"
				}) do
                    local v56 = v23:FindFirstChild(v)

                    if not v56 then
                        v56 = MissionObjects

                        if v56 then
                            v56 = MissionObjects:FindFirstChild(v) or (MissionObjects:FindFirstChild("TowerLegs") or MissionObjects:FindFirstChild("SpikeCheckpoints"))
                        end
                    end

                    if v56 then
                        v1523(v56)
                    end

                    task.wait()
                end

                task.wait(0.2)
            end)
            if not success then
                v88("PROGRESS BLOCKER", (tostring(result)))
            end
        end)
        task.spawn(function()
            local success, result = pcall(function()
                local t184 = {
					Mob_EVENTBOSSCupidZeus_ButtonSmash = true,
					Mob_EVENTBOSSEasterBunny_ChallengeFloorPattern = true,
					Mob_EVENTBOSSEasterBunny_RequestGiantEggChallengeFloorIntro = true,
					Mob_EVENTBOSSEasterBunny_DoGiantEgg = true,
					Mob_EVENTBOSSUndeadVane_ResurrectShake = true
				}

                for _, child in pairs(game.ReplicatedStorage.Remotes:GetChildren()) do
                    if child:IsA("RemoteEvent") and string.find(child.Name, "Mob_") and not t184[child.Name] then
                        child:Clone().Parent = child.Parent
                        child:Destroy()
                    end
                end
            end)
            if not success then
                v88("CLIENT SIDE DAMAGE", (tostring(result)))
            end
        end)
        task.spawn(function()
            if t3.MissionId == 49 then
                local success, result = pcall(function()
                    if t2.CanRequire and (debug and getupvalue) then
                        local v1541 = debug.getupvalue(require(v34).Start, 12)
                        local Chests_OpenChest = Remotes:WaitForChild("Chests_OpenChest", math.huge)

                        while true do
                            for k, _ in pairs(v1541) do
                                Chests_OpenChest:FireServer(k)
                            end

                            task.wait(0.1)
                        end
                    end

                    while true do
                        for _, v in pairs({
							"RaidChestBlue",
							"RaidChestGold",
							"RaidChestSilver"
						}) do
                            local v57 = v23:FindFirstChild(v)

                            if v57 and v57.Parent then
                                v57:PivotTo(CFrame.new(HumanoidRootPart.Position))
                            end

                            task.wait()
                        end

                        task.wait(0.1)
                    end
                end)
                if not success then
                    v88("STARTER DUNGEON CHESTS", (tostring(result)))
                end
            end
        end)
        task.spawn(function()
            if t3.MissionId == 50 then
                if AlienBomb then
                    local Part = AlienBomb:WaitForChild("Part", 5)

                    if Part then
                        Part.Name = "Collider"
                        AlienBomb.Parent = v46
                    end
                end

                t5.ConnectAlienBomb = v23.ChildAdded:Connect(function(child)
                    if child:IsA("Model") and child.Name == "AlienBomb" then
                        local Part = child:WaitForChild("Part", 5)

                        if Part then
                            Part.Name = "Collider"
                            child.Parent = v46
                        end
                    end
                end)
                task.spawn(function()
                    local Spawn = MissionObjects:FindFirstChild("Spawn")
                    assert(Spawn, "Spawn doesn't exist?")
                    local v1551 = GetPlayerSize() + Spawn.Size.Y / 2
                    local SpawnPosition = Spawn.Position
                    repeat
                        if not u67 and t2.Autofarm then
                            Collider.CFrame = CFrame.new(SpawnPosition.X, SpawnPosition.Y + v1551, SpawnPosition.Z)
                            TeleportStandPart()
                        end

                        task.wait(0.1)
                    until u68
                end)

                local CannonMissionRemotes = v25:FindFirstChild("CannonMissionRemotes")

                assert(CannonMissionRemotes, "CannonMissionRemotes doesn't exist?")
                t5.ConnectObjectiveMessage = v25.ObjectiveMessage.Changed:Connect(function(property)
                    if string.find(property, "Chad") then
                        local Ring = MissionObjects:WaitForChild("CannonRing", math.huge):WaitForChild("Ring", math.huge)
                        local RingPosition = Ring.Position
                        local v1557 = GetPlayerSize() + Ring.Size.Y / 2
                        local v1558 = time() + 2

                        if not (v1558 < time()) then
                        end

                        repeat
                            Collider.CFrame = CFrame.new(RingPosition.X, RingPosition.Y + v1557, RingPosition.Z)
                            TeleportStandPart()
                            CannonMissionRemotes.CannonChargeComplete:FireServer()
                            task.wait()
                        until v1558 < time()

                        u65 = false
                    end
                end)
            end

            if t3.MissionId == 52 then
                task.spawn(function()
                    if v23:WaitForChild("EasterBossChallengeWalkTo", 1e999) then
                        v253(0, 6, "giant egg")
                    end
                end)
                t5.ConnectObjectiveMessage = v25:WaitForChild("ObjectiveMessage", math.huge).Changed:Connect(function(property)
                    if string.find(tostring(property), "RUN") then
                        v253(0, 11, "giant egg")
                    end
                end)
            end

            if t3.MissionId == 44 then
                task.spawn(function()
                    MissionObjects:WaitForChild("PlayerDamagePart", 1e999):Destroy()
                end)

                if t3.LoggedDifficulty == 6 then
                    task.spawn(function()
                        v46:WaitForChild("BOSSIgnisFireDragon", 1e999):Destroy()
                        v46:WaitForChild("BOSSRuinousPoisonDragon", 1e999):Destroy()
                        v46:WaitForChild("BOSSWinterfallIceDragon", 1e999):Destroy()
                        v46:WaitForChild("BOSSDarkriseDarkDragon", 1e999):Destroy()
                    end)
                    Remotes:WaitForChild("Mobs_EVENTBOSSUndeadVane_ResurrectShake", 1e999).OnClientEvent:Once(function()
                        v253(0, 31, "undead vane spawn", 200)
                    end)
                end
            end
        end)
        local function run_fast_killaura_loop()
            if not Class then
                Library:Notify("CLASS NOT YET SUPPORTED", 10000000000000000)

                return
            end

            local ok, result = pcall(function()
                if t2.CanRequire then
                    task.spawn(function()
                        pcall(function()
                            local Actions = require(v25:WaitForChild("Client", 1e999):WaitForChild("Actions", 1e999))

                            Actions:SetSkillDisabled("Primary", true)
                            Actions:SetSkillDisabled("Skill1", true)
                            Actions:SetSkillDisabled("Skill2", true)
                            Actions:SetSkillDisabled("Skill3", true)
                            Actions:SetSkillDisabled("Ultimate", true)
                        end)
                    end)
                end

                local vector3 = Vector3.new(0, 3, 0)
                local Combat_Attack = Remotes:WaitForChild("Combat_Attack", 1e999)

                if t2.IsUsingXeno then
                    repeat
                        for _, v in pairs(Class.Skills) do
                            if not u67 or not t2.FastKillauraActive then
                                break
                            end

                            local Cooldown = v.Cooldown
                            if not (time() - (v.LastUsed or 0) >= Cooldown + n2 + n1) then
                                continue
                            end

                            local vType = v.Type
                            local Collider6 = u67:FindFirstChild("Collider")
                            if not Collider6 then
                                continue
                            end

                            local Distance = v.Distance
                            local ClosestPointOnSurface = HumanoidRootPart:GetClosestPointOnSurface(Collider6.Position)
                            local ClosestPointOnSurface2 = Collider6:GetClosestPointOnSurface(HumanoidRootPart.Position)

                            if Distance >= (ClosestPointOnSurface - ClosestPointOnSurface2).Magnitude then
                                if vType == "Ranged" then
                                    if t2.IsRanged then
                                        ClosestPointOnSurface2 -= vector3
                                    end
                                    Combat_Attack:FireServer(v.Skill, ClosestPointOnSurface2, nil, 67)
                                elseif vType == "Melee" then
                                    Combat_Attack:FireServer(v.Skill, HumanoidRootPart.Position, (ClosestPointOnSurface2 - HumanoidRootPart.Position).Unit, 67)
                                elseif vType == "ShadowChain" then
                                    v.Skill:FireServer({u67, u67, u67, u67, u67})
                                elseif vType == "TableRemote" then
                                    v.Skill:FireServer(u67)
                                elseif vType == "Remote" then
                                    v.Skill:FireServer()
                                elseif vType == "GuardianRemote" then
                                    v.Skill:FireServer(1, HumanoidRootPart.Position)
                                elseif vType == "HunterRemote" then
                                    v.Skill:FireServer(HumanoidRootPart.Position, 50)
                                elseif vType == "PlayerPositionRemote" then
                                    v.Skill:FireServer(HumanoidRootPart.Position)
                                elseif vType == "MobPositionRemote" then
                                    v.Skill:FireServer(ClosestPointOnSurface2)
                                elseif vType == "CFrameRemote" then
                                    v.Skill:FireServer(HumanoidRootPart.CFrame)
                                elseif vType == "PlayerRemote" then
                                    v.Skill:FireServer(v52)
                                else
                                    if vType ~= "StarbreakerWaves" then
                                        v88("KILLAURA ATTACK TYPE", tostring(vType) .. " isn't a valid type of attack")
                                        break
                                    end
                                end

                                v.LastUsed = time()
                                task.wait(0.001)
                            end
                        end

                        task.wait(0.001)
                    until not t2.FastKillauraActive

                    return
                end

                local Combat_Attack2 = Remotes:WaitForChild("Combat_Attack", math.huge)
                local t187 = {
                    Ranged = function(p139, p140)
                        if t2.IsRanged then
                            p140 -= vector3
                        end
                        Combat_Attack2:FireServer(p139, p140, nil, 67)
                    end,
                    Melee = function(p141, p142)
                        Combat_Attack2:FireServer(p141, HumanoidRootPart.Position, (p142 - HumanoidRootPart.Position).Unit, 67)
                    end,
                    ShadowChain = function(p143)
                        p143:FireServer({u67, u67, u67, u67, u67})
                    end,
                    TableRemote = function(p144)
                        p144:FireServer(u67)
                    end,
                    Remote = function(p145)
                        p145:FireServer()
                    end,
                    GuardianRemote = function(p146)
                        p146:FireServer(1, HumanoidRootPart.Position)
                    end,
                    HunterRemote = function(p147)
                        p147:FireServer(HumanoidRootPart.Position, 50)
                    end,
                    PlayerPositionRemote = function(p148)
                        p148:FireServer(HumanoidRootPart.Position)
                    end,
                    MobPositionRemote = function(p149, p150)
                        p149:FireServer(p150)
                    end,
                    CFrameRemote = function(p151)
                        p151:FireServer(HumanoidRootPart.CFrame)
                    end,
                    PlayerRemote = function(p152)
                        p152:FireServer(v52)
                    end
                }

                repeat
                    for _, v in pairs(Class.Skills) do
                        if not u67 or not t2.FastKillauraActive then
                            break
                        end

                        local Cooldown = v.Cooldown
                        if not (time() - (v.LastUsed or 0) >= Cooldown + n2 + n1) then
                            continue
                        end

                        local vType = v.Type
                        local Collider7 = u67:FindFirstChild("Collider")
                        if not Collider7 then
                            continue
                        end

                        local Distance = v.Distance
                        local ClosestPointOnSurface = HumanoidRootPart:GetClosestPointOnSurface(Collider7.Position)
                        local ClosestPointOnSurface3 = Collider7:GetClosestPointOnSurface(HumanoidRootPart.Position)

                        if not (Distance >= (ClosestPointOnSurface - ClosestPointOnSurface3).Magnitude) then
                            continue
                        end

                        local v1583 = t187[vType]
                        if not v1583 then
                            v88("KILLAURA ATTACK TYPE", tostring(vType) .. " isn't a valid type of attack")
                            break
                        end

                        v1583(v.Skill, ClosestPointOnSurface3)
                        v.LastUsed = time()
                        task.wait(0.001)
                    end

                    task.wait(0.001)
                until not t2.FastKillauraActive
            end)

            if not ok then
                v88("FAST KILLAURA", tostring(result), "Class: " .. t2.PlayerClass)
            end
        end
        Toggles.KillauraToggle:OnChanged(function(p138)
            if p138 then
                if not Class then
                    Library:Notify("CLASS NOT YET SUPPORTED", 10000000000000000)

                    return
                end

                t2.Killaura = true

                local ok, result = pcall(function()
                    t5.ConnectClass = v52:GetAttributeChangedSignal("Class"):Connect(function()
                        Class = v258(true)
                    end)

                    if t2.CanRequire then
                        task.spawn(function()
                            pcall(function()
                                local Actions = require(v25:WaitForChild("Client", 1e999):WaitForChild("Actions", 1e999))

                                Actions:SetSkillDisabled("Primary", true)
                                Actions:SetSkillDisabled("Skill1", true)
                                Actions:SetSkillDisabled("Skill2", true)
                                Actions:SetSkillDisabled("Skill3", true)
                                Actions:SetSkillDisabled("Ultimate", true)
                            end)
                        end)
                    end

                    local vector3 = Vector3.new(0, 3, 0)
                    local Combat_Attack = Remotes:WaitForChild("Combat_Attack", 1e999)

                    if t2.IsUsingXeno then
                        print("xeno killaura")

                        local _ = t2.Killaura

                        repeat
                            for _, v in pairs(Class.Skills) do
                                if not u67 then
                                    continue
                                end

                                local Cooldown = v.Cooldown

                                local FastKillauraBuffer = t2.FastKillaura and 0.02 or 0

                                if not (time() - (v.LastUsed or 0) >= Cooldown + n2 + n1 - FastKillauraBuffer) then
                                    continue
                                end

                                local vType = v.Type
                                local Collider6 = u67:FindFirstChild("Collider")

                                if not Collider6 then
                                    continue
                                end

                                local Distance = v.Distance
                                local ClosestPointOnSurface = HumanoidRootPart:GetClosestPointOnSurface(Collider6.Position)
                                local ClosestPointOnSurface2 = Collider6:GetClosestPointOnSurface(HumanoidRootPart.Position)

                                if Distance >= (ClosestPointOnSurface - ClosestPointOnSurface2).Magnitude then
                                    if vType == "Ranged" then
                                        if t2.IsRanged then
                                            ClosestPointOnSurface2 -= vector3
                                        end

                                        Combat_Attack:FireServer(v.Skill, ClosestPointOnSurface2, nil, 67)
                                    elseif vType == "Melee" then
                                        Combat_Attack:FireServer(v.Skill, HumanoidRootPart.Position, (ClosestPointOnSurface2 - HumanoidRootPart.Position).Unit, 67)
                                    elseif vType == "ShadowChain" then
                                        v.Skill:FireServer({
											u67,
											u67,
											u67,
											u67,
											u67
										})
                                    elseif vType == "TableRemote" then
                                        v.Skill:FireServer(u67)
                                    elseif vType == "Remote" then
                                        v.Skill:FireServer()
                                    elseif vType == "GuardianRemote" then
                                        v.Skill:FireServer(1, HumanoidRootPart.Position)
                                    elseif vType == "HunterRemote" then
                                        v.Skill:FireServer(HumanoidRootPart.Position, 50)
                                    elseif vType == "PlayerPositionRemote" then
                                        v.Skill:FireServer(HumanoidRootPart.Position)
                                    elseif vType == "MobPositionRemote" then
                                        v.Skill:FireServer(ClosestPointOnSurface2)
                                    elseif vType == "CFrameRemote" then
                                        v.Skill:FireServer(HumanoidRootPart.CFrame)
                                    elseif vType == "PlayerRemote" then
                                        v.Skill:FireServer(v52)
                                    else
                                        if vType ~= "StarbreakerWaves" then
                                            t2.Killaura = nil
                                            v88("KILLAURA ATTACK TYPE", tostring(vType) .. " isn't a valid type of attack")

                                            break
                                        end

                                        task.spawn(function()
                                            if u80 then
                                                local Status = u59:FindFirstChild("Status")

                                                if Status and Status:FindFirstChild("Starforge") then
                                                    for i = 1, 5 do
                                                        for j = 1, 10 do
                                                            Combat_Attack:FireServer("StarbreakerWaveSwing" .. tostring(i) .. "Hit" .. tostring(j), HumanoidRootPart.Position, (ClosestPointOnSurface2 - HumanoidRootPart.Position).Unit, 67)
                                                        end
                                                    end
                                                end
                                            end
                                        end)
                                    end

                                    v.LastUsed = time()

                                    if u79 and not u80 then
                                        if t2.FastKillaura then
                                            task.wait(0.002)
                                        else
                                            task.wait(u79)
                                        end
                                    end
                                end
                            end

                            task.wait()
                        until not t2.Killaura

                        return
                    end

                    local Combat_Attack2 = Remotes:WaitForChild("Combat_Attack", math.huge)
                    local t187 = {
						Ranged = function(p139, p140)
                        if t2.IsRanged then
                            p140 -= vector3
                        end

                        Combat_Attack2:FireServer(p139, p140, nil, 67)
                    end,
						Melee = function(p141, p142)
                        Combat_Attack2:FireServer(p141, HumanoidRootPart.Position, (p142 - HumanoidRootPart.Position).Unit, 67)
                    end,
						ShadowChain = function(p143)
                        p143:FireServer({
								u67,
								u67,
								u67,
								u67,
								u67
							})
                    end,
						TableRemote = function(p144)
                        p144:FireServer(u67)
                    end,
						Remote = function(p145)
                        p145:FireServer()
                    end,
						GuardianRemote = function(p146)
                        p146:FireServer(1, HumanoidRootPart.Position)
                    end,
						HunterRemote = function(p147)
                        p147:FireServer(HumanoidRootPart.Position, 50)
                    end,
						PlayerPositionRemote = function(p148)
                        p148:FireServer(HumanoidRootPart.Position)
                    end,
						MobPositionRemote = function(p149, p150)
                        p149:FireServer(p150)
                    end,
						CFrameRemote = function(p151)
                        p151:FireServer(HumanoidRootPart.CFrame)
                    end,
						PlayerRemote = function(p152)
                        p152:FireServer(v52)
                    end,
						StarbreakerWaves = function(_, p154)
                        task.spawn(function()
                            if u80 then
                                local Status = u59:FindFirstChild("Status")

                                if Status and Status:FindFirstChild("Starforge") then
                                    for i = 1, 5 do
                                        for j = 1, 10 do
                                            Combat_Attack2:FireServer("StarbreakerWaveSwing" .. tostring(i) .. "Hit" .. tostring(j), HumanoidRootPart.Position, (p154 - HumanoidRootPart.Position).Unit, 67)
                                        end
                                    end
                                end
                            end
                        end)
                    end
					}
                    local _ = t2.Killaura

                    repeat
                        for _, v in pairs(Class.Skills) do
                            if not u67 then
                                continue
                            end

                            local Cooldown = v.Cooldown

                            local FastKillauraBuffer = t2.FastKillaura and 0.02 or 0

                            if not (time() - (v.LastUsed or 0) >= Cooldown + n2 + n1 - FastKillauraBuffer) then
                                continue
                            end

                            local vType = v.Type
                            local Collider7 = u67:FindFirstChild("Collider")

                            if not Collider7 then
                                continue
                            end

                            local Distance = v.Distance
                            local ClosestPointOnSurface = HumanoidRootPart:GetClosestPointOnSurface(Collider7.Position)
                            local ClosestPointOnSurface3 = Collider7:GetClosestPointOnSurface(HumanoidRootPart.Position)

                            if not (Distance >= (ClosestPointOnSurface - ClosestPointOnSurface3).Magnitude) then
                                continue
                            end

                            local T = u67:GetAttribute("T")

                            if t2.Autofarm and (u80 and (not T and T + 0.2 < time())) then
                                break
                            end

                            local v1583 = t187[vType]

                            if not v1583 then
                                t2.Killaura = nil
                                v88("KILLAURA ATTACK TYPE", tostring(vType) .. " isn't a valid type of attack")

                                break
                            end

                            v1583(v.Skill, ClosestPointOnSurface3)
                            v.LastUsed = time()

                            if u79 and not u80 then
                                if t2.FastKillaura then
                                    task.wait(0.002)
                                else
                                    task.wait(u79)
                                end
                            end
                        end

                        task.wait()
                    until not t2.Killaura
                end)

                if not ok then
                    v88("KILLAURA", tostring(result), "Class: " .. t2.PlayerClass)

                    return
                end
            else
                if t2.CanRequire then
                    task.spawn(function()
                        pcall(function()
                            local Actions = require(v25:WaitForChild("Client", 1e999):WaitForChild("Actions", 1e999))

                            Actions:SetSkillDisabled("Primary", false)
                            Actions:SetSkillDisabled("Skill1", false)
                            Actions:SetSkillDisabled("Skill2", false)
                            Actions:SetSkillDisabled("Skill3", false)
                            Actions:SetSkillDisabled("Ultimate", false)
                        end)
                    end)
                end

                DisconnectVariable("ConnectClass")
                t2.Killaura = nil
            end
        end)
        Toggles.FastKillauraToggle:OnChanged(function(p154)
            if p154 then
                t2.FastKillaura = true
                t2.FastKillauraActive = true

                if not t2.FastKillauraThread then
                    t2.FastKillauraThread = task.spawn(run_fast_killaura_loop)
                end

                return
            end

            t2.FastKillaura = nil
            t2.FastKillauraActive = nil
            t2.FastKillauraThread = nil
        end)
        Toggles.SafeKillauraToggle:OnChanged(function(p155)
            local CanRequire = t2.CanRequire

            if CanRequire then
                CanRequire = v12 and (v13 and (v17 and v19))
            end

            if CanRequire then
                local ok, result = pcall(function()
                    local Actions = require(v25.Client.Actions)

                    if p155 then
                        t2.SafeKillaura = true
                        v12(Actions.IsBusy, v17(function(...)
                            return false
                        end))
                        local n31 = 1
                        for v1588, v1589 in pairs({
							"Primary",
							"Skill1",
							"Skill2",
							"Skill3",
							"Ultimate"
						}) do

                            local v1590 = v1589

                            if n31 == 1 then
                                task.spawn(function()
                                    if not t2.SafeKillaura then
                                    end

                                    repeat
                                        if u67 then
                                            Actions:UseSkill(v1590)
                                        end

                                        task.wait()
                                    until not t2.SafeKillaura and not u68
                                end)
                            else
                                task.spawn(function()
                                    if not t2.SafeKillaura then
                                    end

                                    repeat
                                        if u67 then
                                            Actions:UseSkill(v1590)
                                        end

                                        task.wait(0.2)
                                    until not t2.SafeKillaura and not u68
                                end)
                            end

                            n31 += 1
                        end
                        while t2.SafeKillaura do
                            if Actions:IsSheathed() then
                                Actions:UseSkill("Sheath")
                            end

                            task.wait(1)
                        end
                    else
                        t2.SafeKillaura = nil

                        if v19(Actions.IsBusy) then
                            v13(Actions.IsBusy)
                        end
                    end
                end)

                if not ok then
                    v88("SAFE KILLAURA", (tostring(result)))

                    return
                end
            elseif mouse1click and keyclick then
                local ok, result = pcall(function()
                    if p155 then
                        while t2.SafeKillaura do
                            mouse1click(1, 1)
                            keyclick(Enum.KeyCode.E)
                            keyclick(Enum.KeyCode.R)
                            keyclick(Enum.KeyCode.F)
                            keyclick(Enum.KeyCode.X)
                            task.wait()
                        end
                    else
                        t2.SafeKillaura = nil
                    end
                end)

                if not ok then
                    v88("SAFE KILLAURA FALLBACK", (tostring(result)))

                    return
                end
            else
                Library:Notify("Your executor doesn't support this", 5)
            end
        end)

        local CurrentCamera = v23.CurrentCamera

        Toggles.AutoProgressToggle:OnChanged(function(p156)
            if p156 then
                t2.Autofarm = true
                task.spawn(function()
                    local ok, result = pcall(function()
                        local n32 = 0

                        HumanoidRootPart.CanCollide = false

                        while t2.Autofarm and not u68 do
                            if u65 or nil then
                                task.wait(0.1)
                            else
                                if u77 then
                                    HumanoidRootPart.Velocity = Vector3.new()

                                    local v2062 = u77 and u77:FindFirstChild("Collider")

                                    if v2062 then
                                        local v2063 = n3 + v2062.Size.X / 2

                                        n32 += n10 / v2063
                                        HumanoidRootPart.CFrame = CFrame.new(v2062.Position) * CFrame.Angles(0, math.rad(n32), 0) * CFrame.new(v2063, n4, 0)
                                        HumanoidRootPart.CFrame = CFrame.new(HumanoidRootPart.Position, Vector3.new(v2062.Position.X, HumanoidRootPart.Position.Y, v2062.Position.Z))
                                        TeleportStandPart()

                                        if not u77:GetAttribute("T") then
                                            local v2064 = u77
                                            local t188 = { time() }

                                            v2064:SetAttribute("T", v2(t188))
                                        end

                                        if nil then
                                            CurrentCamera.CameraSubject = u77
                                        end
                                    end
                                end

                                task.wait()
                            end
                        end
                    end)

                    if not ok then
                        v88("MOB TELEPORT", (tostring(result)))
                    end
                end)
                task.spawn(function()
                    local ok, result = pcall(function()

                        for v2068, v2069 in pairs(t79) do

                            if v2068 and v2068.Parent then
                                v2068.Size = Vector3.new(1, 1, 1)
                            end
                        end
                        while t2.Autofarm do
                            for k, v in pairs(t79) do
                                local v2072 = v

                                if v2072.DontTeleport then
                                elseif v2072.TouchPart.Parent then
                                    task.spawn(function()
                                        k.Position = HumanoidRootPart.Position
                                        task.wait(0.1)
                                        k.Position = v2072.OriginalLocation
                                    end)
                                elseif not v2072.Regenerates then
                                    t79[k] = nil
                                end
                            end

                            task.wait()
                        end
                    end)

                    if not ok then
                        v88("AUTO PROGRESS", (tostring(result)))
                    end
                end)
                task.spawn(function()
                    local success, result = pcall(function()
                        if table.find({
							16,
							21,
							38,
							44,
							52
						}, t3.MissionId) or t2.PartyRaidID == 14 then
                            while t2.Autofarm do
                                for _, v in pairs({
									"IceWall",
									"IgnisShield",
									"ZeroShield",
									"ShieldEgg",
									"EggShield"
								}) do
                                    local v58 = v23:FindFirstChild(v)

                                    if v58 then
                                        if v58.Name == "ShieldEgg" or v58.Name == "EggShield" then
                                            local v2076 = v58:WaitForChild("ShieldEgg", 1) or v58:WaitForChild("Blade", 1)

                                            if v2076 then
                                                v2076.Name = "Ring"
                                            end
                                        end

                                        local Ring = v58:WaitForChild("Ring", 5)

                                        if Ring and Ring.Parent then
                                            local v2078 = GetPlayerSize() + Ring.Size.Y / 2
                                            local vector3 = Vector3.new(Ring.Position.X, Ring.Position.Y + v2078, Ring.Position.Z)

                                            while v58.Parent do
                                                HumanoidRootPart.CFrame = CFrame.new(vector3)
                                                task.wait()
                                            end

                                            u65 = false
                                            u81 = true
                                        end
                                    end

                                    task.wait()
                                end

                                task.wait(0.5)
                            end
                        end
                    end)
                    if not success then
                        v88("SHIELD TELEPORt", (tostring(result)))
                    end
                end)

                return
            end

            HumanoidRootPart.CanCollide = true

            for k, v in pairs(t79) do
                local v966 = k

                if v966 and v966.Parent then
                    print("returning size to", v966)
                    v966.Size = v.OriginalSize
                    v966.CanCollide = v.OriginalCollision
                    v966.Position = v.OriginalLocation
                end
            end

            t2.Autofarm = nil
        end)
    end
    if u84 or u86 then
        Toggles.CollectDropToggle:OnChanged(function(p157)
            if v83 == "6510868181" then
                return
            end

            if p157 then
                if t2.CanRequire and (v12 and v17) then
                    v12(require(v36).DropStarterpassExp, v17(function(...)
                    end))
                    v12(require(v36).DropBattlepassExp, v17(function(...)
                    end))
                    v12(require(v36).DropHealthOrb, v17(function(...)
                    end))
                    v12(require(v36).SpawnCoinsLocal, v17(function(...)
                    end))
                end

                local Drops_CoinEvent = Remotes:WaitForChild("Drops_CoinEvent", math.huge)

                t5.CollectDrops = Drops_CoinEvent.OnClientEvent:Connect(function(p158)
                    Drops_CoinEvent:FireServer(p158.id)
                end)
                task.spawn(v241)

                return
            end

            if v19(require(v36).SpawnCoinsLocal) then
                v13(require(v36).SpawnCoinsLocal)
            end

            if v19(require(v36).DropBattlepassExp) then
                v13(require(v36).DropBattlepassExp)
            end

            if v19(require(v36).DropStarterpassExp) then
                v13(require(v36).DropStarterpassExp)
            end

            if v19(require(v36).DropHealthOrb) then
                v13(require(v36).DropHealthOrb)
            end

            DisconnectVariable("CollectDrops")
        end)
    end
    if u86 then
        Toggles.PetKillauraToggle:OnChanged(function(p159)
            if p159 then
                t2.PetKillaura = true

                if t2.CanRequire then
                    local success, result = pcall(function()
                        local PetSkills_UseSkill = Remotes:WaitForChild("PetSkills_UseSkill", 1e999)
                        local u1599 = v256()

                        t5.ConnectCharacter = u59.ChildAdded:Connect(function(child)
                            if child.Name == "PetData" then
                                u1599 = v256()
                            end
                        end)

                        local Combat_Attack = Remotes:WaitForChild("Combat_Attack", 1e999)
                        local t190 = {
							Ranged = function(p160, p161)
                            Combat_Attack:FireServer(p160, p161, nil, 67)
                        end,
							Self = function()
                            PetSkills_UseSkill:FireServer(u59, HumanoidRootPart.Position)
                        end,
							MobPosition = function(_, p163)
                            PetSkills_UseSkill:FireServer(u59, p163)
                        end
						}

                        while t2.PetKillaura and not u68 do
                            for _, v in pairs(u1599.Skills) do
                                if not u67 then
                                    continue
                                end

                                local Cooldown = v.Cooldown

                                if not (tick() - (v.LastUsed or 0) >= Cooldown + n2) then
                                    continue
                                end

                                local vType = v.Type
                                local Collider8 = u67:FindFirstChild("Collider")

                                if not Collider8 then
                                    continue
                                end

                                local Distance = v.Distance
                                local ClosestPointOnSurface = HumanoidRootPart:GetClosestPointOnSurface(Collider8.Position)
                                local ClosestPointOnSurface4 = Collider8:GetClosestPointOnSurface(HumanoidRootPart.Position)

                                if not (Distance >= (ClosestPointOnSurface - ClosestPointOnSurface4).Magnitude) then
                                    continue
                                end

                                local T = u67:GetAttribute("T")

                                if t2.Autofarm and (u80 and (not T and T + 0.2 < time())) then
                                    break
                                end

                                local v1611 = t190[vType]

                                if not v1611 then
                                    v88("PET ATTACK TYPE", tostring(vType) .. " isn't a valid type of attack")

                                    break
                                end

                                v1611(v.Skill, ClosestPointOnSurface4)
                                v.LastUsed = tick()

                                if u74 then
                                    task.wait(u74)
                                end
                            end

                            task.wait(0.1)
                        end
                    end)
                    if not success then
                        local v972 = u59 and u59:FindFirstChild("PetData")

                        if v972 and (PetAttackTable and t2.CanRequire) then
                            task.wait(0.5)

                            local lib = require(v42)
                            local ItemName = v972:GetAttribute("ItemName")
                            local PetSkillFromPetRef = lib:GetPetSkillFromPetRef(v25.PlayerEquips[v53].Pet[ItemName])

                            v88("PET KILLAURA", tostring(result), tostring(ItemName) .. " Pet skill: " .. tostring(PetSkillFromPetRef))

                            return
                        end

                        v88("PET KILLAURA", (tostring(result)))

                        return
                    end
                else
                    local success, result = pcall(function()
                        local PetSkills_UseSkill = Remotes:WaitForChild("PetSkills_UseSkill", 1e999)

                        while t2.PetKillaura and not u68 do
                            if u67 then
                                local Collider9 = u67:FindFirstChild("Collider", true)

                                if Collider9 then
                                    PetSkills_UseSkill:FireServer(u67, Collider9.Position)
                                end
                            end

                            task.wait(1)
                        end
                    end)
                    if not success then
                        v88("PET KILLAURA FALLBACK", (tostring(result)))

                        return
                    end
                end
            else
                DisconnectVariable("ConnectCharacter")
                t2.PetKillaura = nil
            end
        end)
        Toggles.RestartStuckToggle:OnChanged(function(p164)
            if p164 then
                local ok, result = pcall(function()
                    t3.LoggedDifficulty = v231()
                    t2.CheckForRejoin = true
                    v233(false)

                    local n33 = 0
                    local _ = t2.CheckForRejoin

                    repeat
                        task.wait(1)

                        local HealthProperties = u59:FindFirstChild("HealthProperties", true)
                        local v1617 = HealthProperties and HealthProperties:FindFirstChild("OutOfCombat", true)

                        if HealthProperties and v1617 then
                            n33 = v1617.Value ~= 0 and 0 or n33 + 1
                        end

                        if n33 >= n11 then
                            u68 = true
                            task.wait(2)
                            v233(true)
                        end

                        task.wait(0.1)
                    until not t2.CheckForRejoin
                end)

                if not ok then
                    v88("RESTART STUCK", (tostring(result)))

                    return
                end
            else
                t2.CheckForRejoin = nil
            end
        end)
        Toggles.DodgeLethalToggle:OnChanged(function(p165)
            if p165 then
                p165 = Class.Distance == "Melee"
            end

            if p165 then
                t2.DodgeAttacks = true

                local ok, result = pcall(function()
                    local t193 = {
						AttackLength = 5.9,
						Delay = 1.5,
						AttackName = "downward ice"
					}
                    local t194 = {
						AttackLength = 2.5,
						Delay = 2,
						AttackName = "jump"
					}
                    local t195 = {
						AttackLength = 4.2,
						Delay = 3.5,
						AttackName = "howl"
					}
                    local t196 = {
						AttackLength = 8.2,
						Delay = 7.5,
						AttackName = "dark orb"
					}
                    local t197 = {
						AttackLength = 6,
						Delay = 1,
						AttackName = "wing flap"
					}
                    local t198 = {
						AttackLength = 15,
						Delay = 0,
						AttackName = "flyby"
					}
                    local t199 = {
						AttackLength = 23,
						Delay = 0,
						AttackName = "long flyby"
					}
                    local t200 = {
						AttackLength = 10,
						Delay = 3,
						AttackName = "egg bombs"
					}
                    local t201 = {
						AttackLength = 5,
						Delay = 1,
						AttackName = "slam jump"
					}
                    local t202 = {
						AttackLength = 3,
						Delay = 2,
						AttackName = "prism slam"
					}
                    local t203 = {
						DownwardIceFire = t193,
						JumpAttack = t194,
						Howl = t195,
						DarkOrbAttack = t196,
						WingFlap = t197,
						Flyby = t198,
						FlybyX3 = t199,
						EggBomb = t200,
						SlamJump = t201,
						PrismSlam = t202
					}

                    while t2.DodgeAttacks and not u68 do
                        if u67 then
                            local MobProperties = u67:FindFirstChild("MobProperties")

                            if MobProperties then
                                local v1630 = MobProperties and MobProperties:FindFirstChild("CurrentAttack")

                                if v1630 and v1630.Value ~= "" then
                                    local v1631 = t203[v1630.Value] or false

                                    if v1631 then
                                        v253(v1631.Delay, v1631.AttackLength - v1631.Delay, v1631.AttackName)
                                    end
                                end
                            end
                        end

                        for _, v in pairs({
							"FireBase",
							"FireRings",
							"PoisonRings",
							"PoisonMeteorSpecialMedium",
							"MeteorSpecialSuper"
						}) do
                            local v59 = v23:FindFirstChild(v)

                            if not v59 then
                                continue
                            end

                            if v23:FindFirstChild("AnubisRing") or v23:FindFirstChild("AnubisRingPurple") then
                                break
                            end

                            local v1635 = v46:FindFirstChild("VaneAetherDragon") or v46:FindFirstChild("EVENTBOSSVane")
                            local vector3 = Vector3.new(HumanoidRootPart.Position.X + 1000, HumanoidRootPart.Position.Y + 1000, HumanoidRootPart.Position.Z)

                            if v1635 then
                                vector3 = Vector3.new(HumanoidRootPart.Position.X, HumanoidRootPart.Position.Y + 1000, HumanoidRootPart.Position.Z)
                            end

                            if t2.DodgeAttacks then
                            end

                            while true do
                                HumanoidRootPart.CFrame = CFrame.new(vector3)
                                TeleportStandPart()

                                if not v59.Parent then
                                    break
                                end

                                task.wait()

                                if not t2.DodgeAttacks or u68 then
                                    break
                                end
                            end

                            u65 = false
                        end

                        task.wait(0.1)
                    end
                end)

                if not ok then
                    v88("DODGE LETHAL DAMAGE", (tostring(result)))

                    return
                end
            else
                t2.DodgeAttacks = nil
            end
        end)
    end
    if u84 or u86 then
        Toggles.AutoPrestigeToggle:OnChanged(function(p166)
            if p166 and (t3.PlayerLevel >= 135 and t3.PlayerPrestige < 4) then
                local _, _ = pcall(function()
                    u68 = true
                    Library:Notify("Prestiging...", 5)
                    task.wait(5)

                    local v1638 = v52.Name .. "_Prestige.txt"
                    local _isfile = isfile
                    local v1640 = "PORN/" .. v1638

                    if _isfile(v1640) and (v83 == "4310463616" and not u86) then
                        delfile(v1640)
                        Remotes:WaitForChild("Profile_Prestige"):FireServer()
                        task.wait(1)
                        v232(1, 5)

                        return
                    end

                    if not isfile(v1640) then
                        writefile(v1640, "haha txt file")
                    end

                    Remotes:WaitForChild("Teleport_TeleportToHub", math.huge):FireServer(13)
                end)
            end
        end)
    end
    task.wait()
    _G.ScriptStep = "event stuff"
    if u86 then
        Toggles.InstakillToggle:OnChanged(function(p167)
            if not IsEventDungeon then
                return
            end

            t2.InstakillOn = p167

            if p167 then
                task.wait(0.5)

                local n34 = 15

                if Options.InstakillDropdown.Value ~= "Normal method" then
                    n34 = 25
                end

                if t3.LoggedDifficulty == 6 then
                    n34 = 35
                    Remotes:WaitForChild("Mobs_EVENTBOSSUndeadVane_ResurrectShake", math.huge).OnClientEvent:Wait()

                    if Options.InstakillDropdown.Value ~= "Normal method" then
                        task.wait(31)
                    end

                    if t2.InstakillOn then
                        u81 = false
                    end
                end

                t2.InstakillBoss = true
                PlayerStandPart.CanCollide = false
                task.spawn(function()
                    task.wait(n34)

                    if u68 or not t2.InstakillBoss then
                        return
                    end

                    v234(true)
                end)
                task.spawn(function()
                    if Options.InstakillDropdown.Value ~= "Normal method" then
                        local Collider10
                        local v1642 = if t3.LoggedDifficulty == 6 then v46:WaitForChild("EVENTBOSSUndeadVane", 1e999):WaitForChild("Collider", math.huge) else v46:WaitForChild("EVENTBOSSVane", 1e999):WaitForChild("Collider", 1e999)
                        Remotes:WaitForChild("Skillset_DualWielder_AttackBuff", math.huge):FireServer()
                        Remotes:WaitForChild("Skillset_Guardian_AggroDraw", math.huge):FireServer()
                        local v1643 = GetPlayerSize() + v1642.Size.Y / 2 + 8
                        HumanoidRootPart.CanCollide = false
                        while t2.InstakillBoss and not u68 do
                            local vector3 = Vector3.new(v1642.Position.X, v1642.Position.Y + v1643, v1642.Position.Z)

                            HumanoidRootPart:PivotTo(CFrame.new(vector3))
                            v29.Heartbeat:Wait()

                            if not v1642.Parent then
                                break
                            end
                        end
                        HumanoidRootPart.Velocity = Vector3.new()
                        if t3.LoggedDifficulty == 5 then
                            Collider10 = v46:WaitForChild("BOSSDarkriseDarkDragon", 1e999):WaitForChild("Collider", math.huge)
                        end
                        if Collider10 then
                            local v1645 = GetPlayerSize() + Collider10.Size.Y / 2 + 8

                            while t2.InstakillBoss and not u68 do
                                local vector3 = Vector3.new(v1642.Position.X, v1642.Position.Y + v1645, v1642.Position.Z)

                                HumanoidRootPart:PivotTo(CFrame.new(vector3))
                                v29.Heartbeat:Wait()
                            end

                            HumanoidRootPart.Velocity = Vector3.new()

                            return
                        end
                    else
                        local BossSpawn = MissionObjects:WaitForChild("BossSpawn", 1e999)
                        local vector3 = Vector3.new(BossSpawn.Position.X, BossSpawn.Position.Y + 13, BossSpawn.Position.Z)

                        HumanoidRootPart.CanCollide = false

                        while t2.InstakillBoss and not u68 do
                            HumanoidRootPart:PivotTo(CFrame.new(vector3))
                            v29.Heartbeat:Wait()
                        end

                        HumanoidRootPart.Velocity = Vector3.new()
                    end
                end)

                if Options.InstakillDropdown.Value ~= "Normal method" then
                    return
                end

                if t2.InstakillBoss then
                end

                repeat
                    local n35 = 0.1

                    v29.Heartbeat:Wait()

                    local v991 = HumanoidRootPart
                    local Velocity = v991.Velocity

                    v991.Velocity = Velocity * 10000 + Vector3.new(0, 100000, 0)
                    v29.RenderStepped:Wait()

                    if HumanoidRootPart then
                        v991.Velocity = Velocity
                    end

                    v29.Stepped:Wait()

                    if HumanoidRootPart then
                        v991.Velocity = Velocity + Vector3.new(0, n35, 0)

                        local _ = n35 * -1
                    end
                until not t2.InstakillBoss or u68

                return
            end

            if not (t2.InstakillOn and not u81) then
            end

            t2.InstakillOn = nil
            t2.InstakillBoss = nil
            PlayerStandPart.CanCollide = true
        end)
        Toggles.CollectBuffToggle:OnChanged(function(p168)
            if p168 then
                t2.CollectBuffs = true
                PlayerStandPart.CanCollide = true

                while t2.CollectBuffs and not u68 do
                    if t2.SelectedOrbs then
                        for _, v in pairs(t2.SelectedOrbs) do
                            if v then
                                local v60 = v23:FindFirstChild(v)

                                if v60 then
                                    v254(v60)
                                end

                                task.wait()
                            end
                        end
                    end

                    task.wait(1)
                end
            else
                t2.CollectBuffs = nil
            end
        end)
    end
    if u84 or u86 then
        Options.EventBossDropdown:OnChanged(function(p169)
            if p169 then
                local LeaderboardHookup_GetScore = Remotes:WaitForChild("LeaderboardHookup_GetScore", 1e999)
                local year = os.date("*t").year
                local str15 = tostring(t2.EventBossList[p169].EventTag .. year)
                local v1002 = LeaderboardHookup_GetScore:InvokeServer(str15, 1) or LeaderboardHookup_GetScore:InvokeServer(str15, 5)

                if not v1002 then
                    t2.TotalKillLabel:SetText("Total Kills: no kill data")
                    t2.DailyKillLabel:SetText("Daily Kills: no kill data")

                    return
                end

                t2.SelectedEventBoss = p169
                t2.EventBossDataTable = v1002

                local v1003 = t2.EventBossDataTable[1]

                tonumber(t2.StopAfterTotalKills)

                local v1004 = t2.EventBossDataTable[2]

                tonumber(t2.StopAfterDailyKills)

                local TotalKillLabel = t2.TotalKillLabel
                local str16 = tostring(v1003)

                TotalKillLabel:SetText("Total Kills: " .. str16:reverse():gsub("...", "%0,", (math.floor((#str16 - 1) / 3))):reverse())

                local DailyKillLabel = t2.DailyKillLabel
                local str17 = tostring(v1004)

                DailyKillLabel:SetText("Daily Kills: " .. str17:reverse():gsub("...", "%0,", (math.floor((#str17 - 1) / 3))):reverse())

                return
            end

            t2.TotalKillLabel:SetText("Total Kills: no boss selected")
            t2.DailyKillLabel:SetText("Daily Kills: no boss selected")
        end)
        Toggles.AutoClaimBattlepass:OnChanged(function(p170)
            if p170 then
                if t2.CanRequire then
                    local lib = require(v32)
                    local Battlepass_RedeemedItem = Remotes:WaitForChild("Battlepass_RedeemedItem", math.huge)
                    local Battlepass_RedeemItem = Remotes:WaitForChild("Battlepass_RedeemItem", math.huge)
                    local v1013
                    local v1014
                    local v1015 = false
                    local n36 = -1
                    if not Remotes:WaitForChild("Battlepass_HasPremium", 1e999):InvokeServer() then
                        v1013 = true
                    end
                    local function v1017(p171, p172)
                        local v1651 = time() + 3

                        if not p172 then
                            Battlepass_RedeemedItem:InvokeServer(p171)

                            repeat
                                if v1651 < time() then
                                    return
                                end

                                Battlepass_RedeemItem:FireServer(p171)
                                task.wait()
                            until Battlepass_RedeemedItem:InvokeServer(p171)

                            return
                        end

                        Battlepass_RedeemedItem:InvokeServer(p171, true)

                        repeat
                            if v1651 < time() then
                                return
                            end

                            Battlepass_RedeemItem:FireServer(p171, true)
                            task.wait()
                        until Battlepass_RedeemedItem:InvokeServer(p171, true)
                    end
                    if not v1015 then
                    end
                    repeat
                        local t204 = { Remotes:WaitForChild("Battlepass_GetItemRanks", math.huge):InvokeServer() }

                        for i = 1, #t204 do
                            local v1020 = i
                            local v1021 = t204[v1020]
                            local NextItemTier = lib:FindNextItemTier(t204[v1020])

                            if v1020 == 1 and not v1015 then
                                if v1021 == 0 or v1021 ~= n36 then
                                    v1017(NextItemTier)
                                    n36 = v1021
                                else
                                    v1015 = true
                                end
                            end

                            if v1020 == 2 and not v1013 then
                                if v1021 == 0 or v1021 ~= v1014 then
                                    v1017(NextItemTier, true)
                                    v1014 = v1021
                                else
                                    v1013 = true
                                end
                            end

                            task.wait()
                        end

                        task.wait()
                    until v1015 and v1013
                else
                    Library:Notify("Your executor doesn't support this option")
                end
            end
        end)
    end
    if u86 then
        if Toggles.EventBossPingToggle then
            Toggles.EventBossPingToggle:OnChanged(function(p173)
                if p173 then
                    t4.Event = true

                    return
                end

                t4.Event = nil
            end)
        end
    end
    task.wait()
    _G.ScriptStep = "trading tab functions"
    if u84 or u86 then
        t5.ConnectTrades = v25:WaitForChild("Trades", math.huge).ChildAdded:Connect(function(child)
            local wait = task.wait
            local GetChildren = child.GetChildren

            wait(1)

            for _, v in ipairs(GetChildren(child)) do
                if v.name == v53 then
                    for _, child2 in ipairs(child:GetChildren()) do
                        if child2.name ~= v53 then
                            t2.PlayerBeingTraded = child2.name

                            if not t2.IsScriptDeveloper and not t2.IsNewPlayer then
                                v243()
                            end
                        end
                    end
                end
            end
        end)
    end
    if u84 then
        Toggles.PlacePlayerShopToggle:OnChanged(function(p174)
            if p174 then
                local ShopLocations = v23:FindFirstChild("ShopLocations")

                if ShopLocations then
                    local GetChildren = ShopLocations.GetChildren

                    for _, v in ipairs(GetChildren(ShopLocations)) do
                        if v.PlayerOwner.Value == nil then
                            Remotes:WaitForChild("Shop_ClaimShop", 1e999):FireServer(v)
                            Library:Notify("Placed shop!", 2)
                            t2.ShopPlaced = true

                            return
                        end
                    end

                    Library:Notify("No shop locations available.", 2)

                    return
                end

                Library:Notify("No shop locations available.", 2)

                return
            end

            task.wait(1)

            if t2.ShopPlaced then
                Remotes:WaitForChild("Shop_StopShop", math.huge):FireServer()
                Library:Notify("Player shop removed.", 2)
            end
        end)
        Options.PlayerShopDropdown:OnChanged(function(p175)
            if t2.CanRequire then
                local _, _ = pcall(function()
                    require(v25.Client.Gui):Get("Shop"):Close()
                    require(v25.Client.Gui):Get("Shop"):Open(game.Players[tostring(p175)])
                end)
            end
        end)
    end
    task.wait()
    _G.ScriptStep = "class tab functions"
    if u86 then
        Toggles.GeneralClassBuffToggle:OnChanged(function(p176)
            if p176 then
                t2.ClassBuffs = true

                local ok, result = pcall(function()
                    while t2.ClassBuffs and not u68 do
                        if u75 then
                            Remotes:WaitForChild("Skillset_DualWielder_AttackBuff", math.huge):FireServer()
                            Remotes:WaitForChild("Skillset_Guardian_AggroDraw", math.huge):FireServer()
                        end

                        task.wait(1)
                    end
                end)

                if not ok then
                    v88("GENERAL BUFF", (tostring(result)))

                    return
                end
            else
                t2.ClassBuffs = nil
            end
        end)
        Toggles.MoLBarrierToggle:OnChanged(function(p177)
            if p177 then
                local success, result = pcall(function()
                    if t2.PlayerClass == "MageOfLight" then
                        t2.MolBuff = true

                        local Skillset_MageOfLight_Barrier = Remotes:WaitForChild("Skillset_MageOfLight_Barrier")

                        while t2.MolBuff and not u68 do
                            local children = v24:GetChildren()

                            for _, v in pairs(children) do
                                if v.Name ~= v53 then
                                    Skillset_MageOfLight_Barrier:FireServer(v)
                                end

                                task.wait()
                            end

                            task.wait(2)
                        end
                    end
                end)
                if not success then
                    v88("MAGE OF LIGHT BARRIER", (tostring(result)))

                    return
                end
            else
                t2.MolBuff = nil
            end
        end)
        Toggles.DemonBloodBindingToggle:OnChanged(function(p178)
            if p178 then
                local ok, result = pcall(function()
                    if t2.PlayerClass == "Demon" then
                        t2.DemonBuff = true

                        local Skillset_Demon_BloodBinding = Remotes:WaitForChild("Skillset_Demon_BloodBinding")

                        while t2.DemonBuff and not u68 do
                            if u75 and u67 then
                                Skillset_Demon_BloodBinding:FireServer()
                                task.wait(8)
                            end

                            task.wait(0.5)
                        end
                    end
                end)

                if not ok then
                    v88("DEMON BLOOD BINDING", (tostring(result)))

                    return
                end
            else
                t2.DemonBuff = nil
            end
        end)
        Toggles.StormcallerSuperchargeToggle:OnChanged(function(p179)
            if p179 then
                local ok, result = pcall(function()
                    if t2.PlayerClass == "Stormcaller" then
                        t2.StormcallerBuff = true

                        local Skillset_Stormcaller_Supercharge = Remotes:WaitForChild("Skillset_Stormcaller_Supercharge", 1e999)

                        while t2.StormcallerBuff and not u68 do
                            if u75 then
                                Skillset_Stormcaller_Supercharge:FireServer()
                                task.wait(8)
                            end

                            task.wait(0.5)
                        end
                    end
                end)

                if not ok then
                    v88("STORMCALLER SUPERCHARGE", (tostring(result)))

                    return
                end
            else
                t2.StormcallerBuff = true
            end
        end)
    end
    task.wait()
    _G.ScriptStep = "equipment tab function"
    if u84 or u86 then
        Toggles.AutoSellToggle:OnChanged(function(p180)
            if p180 then
                local successValueValue, resultValueValue = pcall(function()
                    local t206 = {
						"AetherEgg",
						"CupidEgg",
						"SkeletonEgg",
						"SantaEgg"
					}
                    local Items = u58:WaitForChild("Items")
                    local Charms
                    if t2.CanRequire then
                        Charms = require(v33:WaitForChild("Charms"))
                    end
                    t5.ConnectInventory = Items.ChildAdded:Connect(function(child)
                        local successValue, resultValue = pcall(function()
                            n7 += 1
                            task.wait(t2.AddedAutoSellDelay)
                            if n9 ~= 0 then
                                if n9 ~= 0 then
                                end

                                repeat
                                    task.wait()
                                until n9 == 0

                                if not child or (not child.Parent or not child.Parent.Name) then
                                    n7 -= 1

                                    return
                                end

                                if child.Parent.Name ~= "Items" then
                                    n7 -= 1

                                    return
                                end
                            end
                            if child:FindFirstChild("Count") or (child:FindFirstChild("Locked") or (child:FindFirstChild("Favorited") or child:FindFirstChild("GiftWrap"))) then
                                n7 -= 1

                                return
                            end
                            if not child or not child.Name then
                                n7 -= 1

                                return
                            end
                            local str18 = tostring(child.Name)
                            local v2202 = child:FindFirstChild("XP") or string.find(str18, "Pet")
                            if v2202 and not t2.IncludePets then
                                n7 -= 1

                                return
                            end
                            local v2203
                            if Charms and Charms[child.Name] then
                                v2203 = true

                                if not t2.IncludeCharms then
                                    n7 -= 1

                                    return
                                end
                            end
                            local v2204 = false
                            local v2205 = v238(child)
                            if not v2203 and tostring(v2205) ~= "NotEquipment" then
                                if v2205 == 7 then
                                    return
                                end

                                if not n6 then
                                    local v2206 = child
                                    local ok, result = pcall(function()
                                        Remotes:WaitForChild("Drops_SellItems", 1e999):InvokeServer({ v2206 })
                                        Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(v2206), 1)
                                        n7 -= 1
                                    end)

                                    if not ok then
                                        v88("SELL", (tostring(result)))
                                    end

                                    return
                                end

                                if v2205 < n6 then
                                    local v2209 = child
                                    local ok, result = pcall(function()
                                        Remotes:WaitForChild("Drops_SellItems", 1e999):InvokeServer({ v2209 })
                                        Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(v2209), 1)
                                        n7 -= 1
                                    end)

                                    if not ok then
                                        v88("SELL", (tostring(result)))
                                    end

                                    return
                                end

                                v2204 = true
                            end
                            local SellTowerEggs = t2.SellTowerEggs
                            if SellTowerEggs then
                                local v2213 = child

                                SellTowerEggs = not not (v2213 and (v2213.Name and v184[v2213.Name]))
                            end
                            if SellTowerEggs then
                                local v2214 = child
                                local ok, result = pcall(function()
                                    Remotes:WaitForChild("Drops_SellItems", 1e999):InvokeServer({ v2214 })
                                    Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(v2214), 1)
                                    n7 -= 1
                                end)

                                if not ok then
                                    v88("SELL", (tostring(result)))
                                end

                                return
                            end
                            local v2217 = table.find(v183, str18) or false
                            local v2218 = false
                            local v2219 = false
                            local v2220 = false
                            if not v2217 and (t2.KeepPerks and t2.SelectedPerks) then
                                for i = 1, 3 do
                                    if v2218 then
                                        break
                                    end

                                    local v2222 = "Perk" .. tostring(i)
                                    local v2223 = child:FindFirstChild(v2222)

                                    if v2223 then
                                        local PerkValue = v2223:FindFirstChild("PerkValue")

                                        for k, _ in pairs(t2.SelectedPerks) do
                                            local v2227 = t2.SavePerkTable[k]
                                            local v2228 = v2227

                                            if v2227 then
                                                v2228 = v2223.Value == v2227.PerkInternalName

                                                if v2228 then
                                                    v2228 = PerkValue.Value >= (v2227.PerkValue * 100 - n8) / 100 or (v2202 or v2203) and PerkValue.Value >= (v2227.PetPerkValue * 100 - n8) / 100
                                                end
                                            end

                                            if v2228 then
                                                v2220 = v2227.PerkVisualName
                                                v2219 = PerkValue.Value * 100
                                                v2218 = true
                                                v2204 = true

                                                break
                                            end

                                            v2204 = false
                                        end
                                    end
                                end
                            end
                            if not v2217 and (not v2204 and not v2218) then
                                local v2229 = child
                                local ok, result = pcall(function()
                                    Remotes:WaitForChild("Drops_SellItems", 1e999):InvokeServer({ v2229 })
                                    Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(v2229), 1)
                                    n7 -= 1
                                end)

                                if not ok then
                                    v88("SELL", (tostring(result)))
                                end

                                return
                            end
                            if v2217 or v2204 then
                                Library:Notify("<font color='#80FF80'>Kept item:</font> " .. str18, 1)
                                n7 -= 1
                            end
                            local v2232 = table.find(t206, str18) or false
                            local v2233 = v2232
                            if not v2232 then
                                v2233 = v2218 and (t2.DiscordWebhookLink and t2.SendDiscordMessage)
                            end
                            if v2233 then
                                local u2234
                                if v2232 then
                                    u2234 = "Kept item **" .. str18 .. "**! " .. s1
                                elseif v2218 then
                                    u2234 = "Kept **" .. str18 .. "** because **" .. tostring(v2220) .. " " .. tostring(v2219) .. "%** was found!" .. s1
                                end
                                local _, _ = pcall(function()
                                    local t207 = {
										username = "Drop Logger",
										content = u2234
									}
                                    local DiscordWebhookLink = t2.DiscordWebhookLink

                                    if not DiscordWebhookLink and true then
                                        warn("No webhook link provided")

                                        return
                                    end

                                    local v2288 = false
                                    local _, _ = pcall(function()
                                        if v2288 and v12 or hookmetamethod then
                                            local n37 = 0
                                            local ok, _ = pcall(function()
                                                for _, v in pairs(getreg()) do
                                                    if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                        n37 += 1
                                                    end
                                                end
                                            end)
                                            if n37 > 2 or n37 == 0 then
                                                return
                                            end
                                            if not ok then
                                                return
                                            end
                                            local u2306 = false
                                            local success = pcall(function()
                                                local v2317 = ishooked and ishooked(request)

                                                if not v2317 then
                                                    v2317 = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                                end

                                                if v2317 then
                                                    u2306 = true

                                                    return
                                                end
                                            end)
                                            if not success then
                                                return
                                            end
                                            local ok8, _ = pcall(function()
                                                local v2318 = ishooked and ishooked(game.HttpGet)

                                                if not v2318 then
                                                    v2318 = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                                    if not v2318 then
                                                        v2318 = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                                    end
                                                end

                                                if v2318 then
                                                    u2306 = true

                                                    return
                                                end
                                            end)
                                            if u2306 then
                                                return
                                            end
                                            if not ok8 then
                                                return
                                            end
                                        end

                                        if not v11 then
                                            return
                                        end

                                        local v2311 = v11
                                        local v2312 = DiscordWebhookLink
                                        local t209 = {
											["Content-Type"] = "application/json"
										}
                                        local json = v26:JSONEncode(t207)

                                        v2311({
											Url = v2312,
											Method = "POST",
											Headers = t209,
											Body = json
										})
                                    end)
                                end)
                                local _ = n7 - 1

                                return
                            end
                        end)
                        if not successValue then
                            v88("FAILURE TO SELL ITEM", (tostring(resultValue)))
                        end
                    end)
                end)
                if not successValueValue then
                    v88("AUTO SELL", (tostring(resultValueValue)))

                    return
                end
            else
                DisconnectVariable("ConnectInventory")
            end
        end)
    end
    task.wait()
    _G.ScriptStep = "dungeon tab functions"
    if u86 then
        Toggles.CollectChestToggle:OnChanged(function(p181)
            if p181 then
                if v222() then
                    v235()

                    return
                end

                if u87 then
                    t2.TowerChestDelay = true

                    local Chests_SpawnChest = Remotes:WaitForChild("Chests_SpawnChest", math.huge)
                    local Chests_OpenChest = Remotes:WaitForChild("Chests_OpenChest", 1e999)

                    t5.ConnectChests = Chests_SpawnChest.OnClientEvent:Connect(function(_, _, p184, _, _)
                        Chests_OpenChest:FireServer(p184)
                    end)
                    task.spawn(v240)

                    return
                end

                t2.CollectDungeonChest = true

                return
            end

            DisconnectVariable("ConnectChests")
            t2.CollectDungeonChest = nil
            t2.TowerChestDelay = nil
        end)
        Toggles.HighestDungeonToggle:OnChanged(function(p187)
            if p187 then
                task.spawn(v239)
                t2.AutoLeveling = true

                if v222() then
                    local ok, result = pcall(function()
                        local Active = u57:WaitForChild("Quests", 1e999):WaitForChild("Active", 1e999)

                        if t2.ClaimGuildQuests then
                            local DailyGuildQuests = require(v43):GetDailyGuildQuests()

                            for _, v in pairs(DailyGuildQuests) do
                                local ID = v.ID

                                if not Remotes:WaitForChild("Quests_GuildDailyIsClaimed", 1e999):InvokeServer(ID) and Active:FindFirstChild(ID) then
                                    for _ = 1, 2 do
                                        Remotes:WaitForChild("Quests_ClaimDailyGuildQuest", math.huge):FireServer(ID)
                                    end

                                    task.wait(1.5)
                                end
                            end
                        end

                        local Quests_ClaimQuest = Remotes:WaitForChild("Quests_ClaimQuest", 1e999)

                        if Quests_ClaimQuest then
                            local GetChildren = Active.GetChildren

                            for _, v in ipairs(GetChildren(Active)) do
                                Quests_ClaimQuest:FireServer(tonumber(v.Name))
                            end
                        end
                    end)

                    if not ok then
                        v88("CLAIM QUESTS", (tostring(result)))

                        return
                    end
                end
            else
                DisconnectVariable("ConnectEquipNewItems")
                t2.AutoLeveling = nil
            end
        end)
        Toggles.ReplayMissionToggle:OnChanged(function(p188)
            if p188 then
                t2.ReplayMission = true

                if v222() then
                    v234()

                    return
                end
            else
                t2.ReplayMission = nil
            end
        end)
        Toggles.RandomNightmareDungeonToggle:OnChanged(function(p189)
            if p189 then
                t2.RandomNightmareDungeon = math.random(1005, 1007)

                return
            end

            t2.RandomNightmareDungeon = nil
        end)
        Toggles.ReplayInfiniteTowerToggle:OnChanged(function(p190)
            if p190 then
                local ReplicateTowerFloor = v25:FindFirstChild("ReplicateTowerFloor")

                if ReplicateTowerFloor then
                    t5.ConnectInfTower = ReplicateTowerFloor.Changed:Connect(function(property)
                        if property >= n5 + 1 then
                            Library:Notify("Sending restart")
                            v234(true)
                        end
                    end)
                end

                if Remotes:WaitForChild("Missions_GetCurrentLives", 1e999):InvokeServer() == 0 then
                    v234(true)

                    return
                end
            else
                DisconnectVariable("ConnectInfTower")
            end
        end)
        if Toggles.NightmarePingToggle then
            Toggles.NightmarePingToggle:OnChanged(function(p191)
                if p191 then
                    t4.Nightmare = true

                    return
                end

                t4.Nightmare = nil
            end)
        end
    end
    task.wait()
    _G.ScriptStep = "guild tab functions"
    if u86 then
        Toggles.WaitTimeToggle:OnChanged(function(p192)
            if p192 then
                t2.GuildWait = true

                local ok, result = pcall(function()
                    local n38 = 120

                    for _, v in ipairs(v218) do
                        if v.DungeonID == t3.MissionId then
                            n38 = v.DungeonDelay

                            break
                        end
                    end

                    local MissionStart = v23:FindFirstChild("MissionStart", true)
                    local n39 = 0

                    if MissionStart then
                        MissionStart:PivotTo(CFrame.new(HumanoidRootPart.Position))
                        n39 = 5
                    end

                    task.wait(0.2)

                    local vector3 = Vector3.new(HumanoidRootPart.Position.X + 25000, HumanoidRootPart.Position.Y + 25000, HumanoidRootPart.Position.Z)

                    t2.GuildPreviousPlayerPosition = HumanoidRootPart.Position
                    HumanoidRootPart.CFrame = CFrame.new(vector3)
                    TeleportStandPart()

                    local v1683 = n38 + (t2.AddedGuildTime or 0) + n39

                    t2.DelayNotification = Library:Notify("Waiting for legit time", v1683)

                    local v1684 = time() + v1683

                    while t2.GuildWait and not u68 do
                        if v1684 <= time() then
                            HumanoidRootPart.CFrame = CFrame.new(t2.GuildPreviousPlayerPosition)
                            TeleportStandPart()
                            t2.GuildPreviousPlayerPosition = nil

                            return
                        end

                        HumanoidRootPart.CFrame = CFrame.new(vector3)
                        TeleportStandPart()
                        task.wait(0.1)
                    end
                end)

                if not ok then
                    v88("WAIT FOR LEGIT TIME", (tostring(result)))

                    return
                end
            else
                t2.GuildWait = nil

                if t2.DelayNotification then
                    t2.DelayNotification:Destroy()
                end

                if t2.GuildPreviousPlayerPosition then
                    HumanoidRootPart.CFrame = CFrame.new(t2.GuildPreviousPlayerPosition)
                end

                TeleportStandPart()
            end
        end)
        Toggles.DoAllDungeonsToggle:OnChanged(function(p193)
            if p193 then
                Library:Notify("Doing all dungeons", 10)
                t2.DoingGuildDungeon = true

                return
            end

            t2.DoingGuildDungeon = nil
        end)
        if Toggles.GuildPingToggle then
            Toggles.GuildPingToggle:OnChanged(function(p194)
                if p194 then
                    t4.Guild = true

                    return
                end

                t4.Guild = nil
            end)
        end
        Toggles.DelayInfFloorToggle:OnChanged(function(p195)
            if p195 then
                t2.DelayInfiniteTower = true
                t2.InfiniteTowerFloorDelay = t2.InfiniteTowerFloorDelay or 25
                local success, result = pcall(function()
                    if t3.MissionId == 38 then
                        local ModuleScript = v25:WaitForChild("MissionScripts", math.huge):FindFirstChildWhichIsA("ModuleScript")

                        if ModuleScript then
                            local u1686
                            t5.UpdateMobTracker = ModuleScript:WaitForChild("UpdateMobTracker", 1e999).OnClientEvent:Connect(function(p196, p197)
                                if p197 < 10 then
                                    u1686 = true

                                    if p196 == p197 then
                                        t2.InfiniteTowerFloorDelay = t2.InfiniteTowerFloorDelay + t2.IncrementInfiniteDelay
                                        u1686 = false
                                    end

                                    return
                                end

                                u1686 = false
                            end)
                            t5.UpdateTowerFloor = ModuleScript:WaitForChild("UpdateTowerFloor", 1e999).OnClientEvent:Connect(function(_)
                                local vector3 = Vector3.new(HumanoidRootPart.Position.X + 25000, HumanoidRootPart.Position.Y + 25000, HumanoidRootPart.Position.Z)

                                t2.InfinitePreviousPlayerPosition = HumanoidRootPart.Position
                                t2.DelayNotification = Library:Notify("Delaying floor", t2.InfiniteTowerFloorDelay)

                                local v2092 = time() + t2.InfiniteTowerFloorDelay

                                while t2.DelayInfiniteTower and not u68 do
                                    if u1686 or v2092 <= time() then
                                        if t2.DelayNotification then
                                            t2.DelayNotification:Destroy()
                                        end

                                        HumanoidRootPart.CFrame = CFrame.new(t2.InfinitePreviousPlayerPosition)
                                        TeleportStandPart()

                                        return
                                    end

                                    HumanoidRootPart.CFrame = CFrame.new(vector3)
                                    TeleportStandPart()
                                    task.wait(0.1)
                                end
                            end)
                        end
                    end
                end)
                if not success then
                    v88("DELAY INF TOWER FLOORS", (tostring(result)))

                    return
                end
            else
                if t2.DelayNotification then
                    t2.DelayNotification:Destroy()
                end

                t2.DelayInfiniteTower = nil
                DisconnectVariable("UpdateMobTracker")
                DisconnectVariable("UpdateTowerFloor")
            end
        end)
        Toggles.GuildQuestToggle:OnChanged(function(p199)
            if p199 then
                if not t2.CanRequire then
                    Library:Notify("Your executor doesn't support claiming guild quests", 3)

                    return
                end

                t2.ClaimGuildQuests = true

                return
            end

            t2.ClaimGuildQuests = nil
        end)
    end
    task.wait()
    _G.ScriptStep = "shop tab functions"
    if u84 or u86 then
        Toggles.AutoHatchEggToggle:OnChanged(function(p200)
            if p200 then
                t2.AutoHatch = true
                local success, result = pcall(function()
                    local Pet = v25.PlayerEquips[v53].Pet
                    local Inventory_EquipItem = Remotes:WaitForChild("Inventory_EquipItem", 1e999)
                    local Pets_Hatch = Remotes:WaitForChild("Pets_Hatch", 1e999)
                    local Items = u58.Items
                    local _ = t2.AutoHatch

                    repeat
                        local SelectedEggItem = t2.SelectedEggItem

                        if not SelectedEggItem then
                            Library:Notify("No egg is selected", 3)
                            task.wait(3)

                            if t2.AutoHatch then
                                continue
                            end

                            return
                        end

                        local Folder = Pet:FindFirstChildWhichIsA("Folder")

                        if Folder and string.find(Folder.Name, "Egg") then
                            task.wait(0.1)

                            continue
                        end

                        task.wait(t2.HatchDelay)

                        if not v245(SelectedEggItem.CurrencyType, SelectedEggItem.InternalName, SelectedEggItem.CoinPrice, SelectedEggItem.VisualName) then
                            Library:Notify("You do not have enough gold", 3)
                            task.wait(3)

                            if t2.AutoHatch then
                                continue
                            end

                            return
                        end

                        local SelectedEggItemInternalName = Items:WaitForChild(SelectedEggItem.InternalName, 5)

                        if SelectedEggItemInternalName then
                            Inventory_EquipItem:FireServer(SelectedEggItemInternalName, Pet)
                            Pet:FindFirstChild(SelectedEggItem.InternalName)

                            repeat
                                task.wait()
                            until Pet:FindFirstChild(SelectedEggItem.InternalName)

                            Pets_Hatch:FireServer()
                        end

                        task.wait()
                    until not t2.AutoHatch
                end)
                if not success then
                    v88("AUTO HATCH", (tostring(result)))

                    return
                end
            else
                t2.AutoHatch = nil
            end
        end)
        Toggles.AutoHatchInventoryEggToggle:OnChanged(function(p201)
            if p201 then
                t2.AutoHatchInventory = true

                local ok, result = pcall(function()
                    local t214 = {}

                    for _, v in pairs(v183) do
                        t214[v] = true
                    end

                    local Pet = v25.PlayerEquips[v53].Pet
                    local Inventory_EquipItem = Remotes:WaitForChild("Inventory_EquipItem", 1e999)
                    local Pets_Hatch = Remotes:WaitForChild("Pets_Hatch", 1e999)
                    local Items = u58.Items
                    local _ = t2.AutoHatchInventory

                    repeat
                        local Folder = Pet:FindFirstChildWhichIsA("Folder")

                        if Folder and (Folder.Parent and t214[Folder.Name]) then
                            task.wait(0.1)
                        else
                            local GetChildren = Items.GetChildren
                            local v1705 = false

                            for _, v in pairs(GetChildren(Items)) do
                                if not (v and (v.Parent and t214[v.Name])) then
                                    continue
                                end

                                task.wait(t2.HatchDelay)
                                Inventory_EquipItem:FireServer(v, Pet)

                                if Pet:WaitForChild(v.Name, 5) then
                                    task.wait(0.5)
                                    Pets_Hatch:FireServer()
                                    task.wait(5)
                                    v1705 = true

                                    break
                                end
                            end

                            if not v1705 then
                                task.wait(5)
                            end

                            task.wait()
                        end
                    until not t2.AutoHatchInventory
                end)

                if not ok then
                    v88("INVENTORY HATCH", (tostring(result)))

                    return
                end
            else
                t2.AutoHatchInventory = nil
            end
        end)
        Toggles.BuyMaxNightmareToggle:OnChanged(function(p202)
            if p202 then
                if v83 ~= "14914684761" then
                    return
                end

                t2.AutoBuyNightmare = true

                local ok, result = pcall(function()
                    local _ = t2.AutoBuyNightmare

                    repeat
                        local SelectedNightmareItem = t2.SelectedNightmareItem

                        if not SelectedNightmareItem then
                            task.wait(1)
                        elseif not v244("NightmareCoin", "NightmarePortals", SelectedNightmareItem.InternalName, SelectedNightmareItem.CoinPrice, SelectedNightmareItem.VisualName) then
                            task.wait(1)
                        else
                            task.wait(0.5)
                        end
                    until not t2.AutoBuyNightmare
                end)

                if not ok then
                    v88("BUY MAX NIGHTMARE", (tostring(result)))

                    return
                end
            else
                t2.AutoBuyNightmare = nil
            end
        end)
        Toggles.BuyMaxPVPToggle:OnChanged(function(p203)
            if p203 then
                if v83 ~= "6510868181" then
                    return
                end
                t2.AutoBuyPvp = true
                local success, result = pcall(function()
                    local _ = t2.AutoBuyPvp

                    repeat
                        local SelectedPvpItem = t2.SelectedPvpItem

                        if not SelectedPvpItem then
                            task.wait(1)
                        elseif not v244("PVPCoin", "PVPShop", SelectedPvpItem.InternalName, SelectedPvpItem.CoinPrice, SelectedPvpItem.VisualName) then
                            task.wait(1)
                        else
                            task.wait(0.5)
                        end
                    until not t2.AutoBuyPvp
                end)
                if not success then
                    v88("BUY MAX PVP", (tostring(result)))

                    return
                end
            else
                t2.AutoBuyPvp = nil
            end
        end)
        Toggles.BuyMaxGuildToggle:OnChanged(function(p204)
            if p204 then
                if v83 ~= "139316833473171" then
                    return
                end

                t2.AutoBuyGuild = true

                local ok, result = pcall(function()
                    local _ = t2.AutoBuyGuild

                    repeat
                        local SelectedGuildItem = t2.SelectedGuildItem

                        if not SelectedGuildItem then
                            task.wait(1)
                        elseif not v244("GuildCoin", "GuildShop", SelectedGuildItem.InternalName, SelectedGuildItem.CoinPrice, SelectedGuildItem.VisualName) then
                            task.wait(1)
                        else
                            task.wait(0.5)
                        end
                    until not t2.AutoBuyGuild
                end)

                if not ok then
                    v88("BUY MAX GUILD", (tostring(result)))

                    return
                end
            else
                t2.AutoBuyGuild = nil
            end
        end)
        Toggles.BuyMaxEventToggle:OnChanged(function(p205)
            if p205 then
                if v83 ~= "18567064955" then
                    return
                end
                t2.AutoBuyEvent = true
                local success, result = pcall(function()
                    local _ = t2.AutoBuyEvent

                    repeat
                        local SelectedEventItem = t2.SelectedEventItem

                        if not SelectedEventItem then
                            task.wait(1)
                        elseif not v244("DragonCoin", "Anime2026", SelectedEventItem.InternalName, SelectedEventItem.CoinPrice, SelectedEventItem.VisualName) then
                            task.wait(1)
                        else
                            task.wait(0.5)
                        end
                    until not t2.AutoBuyEvent
                end)
                if not success then
                    v88("BUY MAX EVENT", (tostring(result)))

                    return
                end
            else
                t2.AutoBuyEvent = nil
            end
        end)
    end
    task.wait()
    _G.ScriptStep = "misc tab functions"
    if u86 then
        Toggles.MobCameraToggle:OnChanged(function(p206)
            if p206 then
                task.spawn(function()
                    Toggles.NoclipCameraToggle:SetValue(true)
                end)

                return
            end

            task.wait(0.1)
            workspace.CurrentCamera.CameraSubject = HumanoidRootPart
        end)
    end
    if u84 or u86 then
        Toggles.DamageNumbersToggle:OnChanged(function(p207)
            local CanRequire = t2.CanRequire

            if CanRequire then
                CanRequire = v12 and (v13 and (v17 and v19))
            end

            if CanRequire then
                local success, result = pcall(function()
                    local RenderDamageNumber = require(v37).RenderDamageNumber

                    if p207 then
                        v12(RenderDamageNumber, v17(function(...)
                        end))

                        return
                    end

                    if v19(RenderDamageNumber) then
                        v13(RenderDamageNumber)
                    end
                end)
                if not success then
                    v88("REMOVE DAMAGE NUMBERS", (tostring(result)))

                    return
                end
            else
                local ok, result = pcall(function()
                    local Effects_RenderDamageNumber = Remotes:FindFirstChild("Effects_RenderDamageNumber")

                    if p207 and Effects_RenderDamageNumber then
                        t2.RemovedDamageNumbers = true
                        Effects_RenderDamageNumber:Destroy()

                        return
                    end

                    if t2.RemovedDamageNumbers then
                        Library:Notify("Rejoin to see damage numbers", 5)
                    end
                end)

                if not ok then
                    v88("REMOVE DAMAGE NUMBERS FALLBACK", (tostring(result)))
                end
            end
        end)
        Toggles.DamageFlashToggle:OnChanged(function(p208)
            if p208 then
                v35.HitHighlight.Enabled = false

                return
            end

            v35.HitHighlight.Enabled = true
        end)
        Toggles.DeathEffectToggle:OnChanged(function(p209)
            local CanRequire = t2.CanRequire

            if CanRequire then
                CanRequire = v12 and (v13 and (v17 and v19))
            end

            if CanRequire then
                local success, result = pcall(function()
                    local DoEffect = require(v37).DoEffect

                    if p209 then
                        local u1719
                        u1719 = v12(DoEffect, v17(function(p210, p211, ...)
                            if p211 == "DeathEffect" then
                                return
                            end

                            return u1719(p210, p211, ...)
                        end))

                        return
                    end

                    if v19(DoEffect) then
                        v13(DoEffect)
                    end
                end)
                if not success then
                    v88("REMOVE DEATH EFFECTS", (tostring(result)))

                    return
                end
            else
                local ok, result = pcall(function()
                    if p209 then
                        t2.RemovedDeathEffects = true

                        local DeathEffect = v37.EffectScripts:FindFirstChild("DeathEffect")

                        if DeathEffect then
                            DeathEffect:Destroy()

                            return
                        end
                    elseif t2.RemovedDeathEffects then
                        Library:Notify("Rejoin to see death effects", 5)
                    end
                end)

                if not ok then
                    v88("REMOVE DEATH EFFECTS FALLBACK", (tostring(result)))
                end
            end
        end)
        Toggles.KnockdownToggle:OnChanged(function(p212)
            local CanRequire = t2.CanRequire

            if CanRequire then
                CanRequire = v12 and (v13 and (v17 and v19))
            end

            if CanRequire then
                local ok, result = pcall(function()
                    local Knockdown = require(game.ReplicatedStorage.Client.Actions).Knockdown

                    if p212 then
                        v12(Knockdown, v17(function(...)
                        end))

                        return
                    end

                    if v19(Knockdown) then
                        v13(Knockdown)
                    end
                end)

                if not ok then
                    v88("DISABLE KNOCKDOWN", (tostring(result)))
                end
            end
        end)
    end
    if u84 then
        Toggles.WaystoneToggle:OnChanged(function(p213)
            local u1111 = p213
            local success, result = pcall(function()
                if u1111 then
                    t5.ConnectWaystones = v55.ChildAdded:Connect(function(child)
                        if child.Name == "WaystoneDiscoveryIcon" then
                            child.PlayerToHideFrom = v52
                        end
                    end)

                    for _, child in pairs(v55:GetChildren()) do
                        if child.Name == "WaystoneDiscoveryIcon" then
                            child.PlayerToHideFrom = v52
                        end
                    end

                    return
                end

                DisconnectVariable("ConnectWaystones")

                for _, child in pairs(v55:GetChildren()) do
                    if child.Name == "WaystoneDiscoveryIcon" then
                        child.PlayerToHideFrom = nil
                    end
                end
            end)
            if not success then
                v88("HIDE WAYSTONES", (tostring(result)))
            end
        end)
    end
    if u86 then
        Toggles.MissionObjectiveToggle:OnChanged(function(p214)
            v252("MissionObjective", p214)
        end)
        Toggles.BossBarToggle:OnChanged(function(p215)
            v252("BossHealthbar", p215)
        end)
        Toggles.PlayerHotbarToggle:OnChanged(function(p216)
            v252("Hotbar", p216)
        end)
        Toggles.MobilePlayerSkills:OnChanged(function(p217)
            v252("TouchInput", p217)
        end)
        Toggles.MainGuiToggle:OnChanged(function(p218)
            v252("MainGui", p218)
        end)
        Toggles.HideMenuToggle:OnChanged(function(p219)
            v252("Menu", p219)
        end)
        Toggles.HideCameraToggle:OnChanged(function(p220)
            v252("TopBar", p220)
        end)
        Toggles.RobloxUIToggle:OnChanged(function(p221)
            local TopBarApp = CoreGui:FindFirstChild("TopBarApp", true):FindFirstChild("TopBarApp", true)

            if p221 then
                TopBarApp.Enabled = false

                return
            end

            TopBarApp.Enabled = true
        end)
        Options.WalkspeedSlider:OnChanged(function(p222)
            if t2.CanRequire then
                local success, result = pcall(function()
                    if not t2.WalkspeedManager then
                        t2.WalkspeedManager = require(v25.Shared.WalkspeedManager)
                        task.wait(1)
                    end

                    local WalkspeedManager = t2.WalkspeedManager
                    local t220 = { (tonumber(p222)) }

                    WalkspeedManager:SetBaseSpeed(v2(t220))
                end)
                if not success then
                    v88("CHANGE WALKSPEED", (tostring(result)))
                end
            end
        end)
        Toggles.ShowEndTimeToggle:OnChanged(function(p223)
            if p223 then
                t2.ShowTime = true

                if v222() then
                    Library:Notify("Completed in " .. t2.DungeonCompletionTime)

                    return
                end
            else
                t2.ShowTime = nil
            end
        end)
        Toggles.DevKickToggle:OnChanged(function(p224)
            if p224 then
                for _, child in pairs(v24:GetChildren()) do
                    local u1130 = child
                    local _, _ = pcall(function()
                        local rank = u1130:GetRankInGroup(4484634)

                        if rank > 3 then
                            local s7 = "(rank not defined in script)"

                            if rank == 4 then
                                s7 = "RedManta"
                            elseif rank == 5 then
                                s7 = "Dev"
                            elseif rank == 6 then
                                s7 = "Lead"
                            elseif rank == 7 then
                                s7 = "RMS"
                            end

                            local t222 = {
								username = "PLAYER JOINED",
								content = "# @everyone someone with the rank " .. s7 .. " joined your game"
							}

                            v52:Kick("Someone with the rank " .. s7 .. " joined your game")

                            local DiscordWebhookLink = t2.DiscordWebhookLink
                            local v1732 = t222

                            if not DiscordWebhookLink and true then
                                warn("No webhook link provided")

                                return
                            end

                            local v1733 = false
                            local _, _ = pcall(function()
                                if v1733 and v12 or hookmetamethod then
                                    local n40 = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                n40 += 1
                                            end
                                        end
                                    end)
                                    if n40 > 2 or n40 == 0 then
                                        return
                                    end
                                    if not ok then
                                        return
                                    end
                                    local u2099 = false
                                    local success = pcall(function()
                                        local v2240 = ishooked and ishooked(request)

                                        if not v2240 then
                                            v2240 = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                        end

                                        if v2240 then
                                            u2099 = true

                                            return
                                        end
                                    end)
                                    if not success then
                                        return
                                    end
                                    local ok9, _ = pcall(function()
                                        local v2241 = ishooked and ishooked(game.HttpGet)

                                        if not v2241 then
                                            v2241 = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                            if not v2241 then
                                                v2241 = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                            end
                                        end

                                        if v2241 then
                                            u2099 = true

                                            return
                                        end
                                    end)
                                    if u2099 then
                                        return
                                    end
                                    if not ok9 then
                                        return
                                    end
                                end

                                if not v11 then
                                    return
                                end

                                local v2104 = v11
                                local v2105 = DiscordWebhookLink
                                local t224 = {
									["Content-Type"] = "application/json"
								}
                                local json = v26:JSONEncode(v1732)

                                v2104({
									Url = v2105,
									Method = "POST",
									Headers = t224,
									Body = json
								})
                            end)
                        end
                    end)
                    task.wait(1)
                end

                t5.ConnectPlayerJoins = v24.PlayerAdded:Connect(function(player)
                    task.wait(1)
                    local u1737 = player
                    local _, _ = pcall(function()
                        local rank = u1737:GetRankInGroup(4484634)

                        if rank > 3 then
                            local s8 = "(rank not defined in script)"

                            if rank == 4 then
                                s8 = "RedManta"
                            elseif rank == 5 then
                                s8 = "Dev"
                            elseif rank == 6 then
                                s8 = "Lead"
                            elseif rank == 7 then
                                s8 = "RMS"
                            end

                            local t225 = {
								username = "PLAYER JOINED",
								content = "# @everyone someone with the rank " .. s8 .. " joined your game"
							}

                            v52:Kick("Someone with the rank " .. s8 .. " joined your game")

                            local DiscordWebhookLink = t2.DiscordWebhookLink
                            local v2112 = t225

                            if not DiscordWebhookLink and true then
                                warn("No webhook link provided")

                                return
                            end

                            local v2113 = false
                            local _, _ = pcall(function()
                                if v2113 and v12 or hookmetamethod then
                                    local n41 = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                n41 += 1
                                            end
                                        end
                                    end)
                                    if n41 > 2 or n41 == 0 then
                                        return
                                    end
                                    if not ok then
                                        return
                                    end
                                    local u2245 = false
                                    local success = pcall(function()
                                        local v2293 = ishooked and ishooked(request)

                                        if not v2293 then
                                            v2293 = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                        end

                                        if v2293 then
                                            u2245 = true

                                            return
                                        end
                                    end)
                                    if not success then
                                        return
                                    end
                                    local ok10, _ = pcall(function()
                                        local v2294 = ishooked and ishooked(game.HttpGet)

                                        if not v2294 then
                                            v2294 = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                            if not v2294 then
                                                v2294 = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                            end
                                        end

                                        if v2294 then
                                            u2245 = true

                                            return
                                        end
                                    end)
                                    if u2245 then
                                        return
                                    end
                                    if not ok10 then
                                        return
                                    end
                                end

                                if not v11 then
                                    return
                                end

                                local v2250 = v11
                                local v2251 = DiscordWebhookLink
                                local t227 = {
									["Content-Type"] = "application/json"
								}
                                local json = v26:JSONEncode(v2112)

                                v2250({
									Url = v2251,
									Method = "POST",
									Headers = t227,
									Body = json
								})
                            end)
                        end
                    end)
                end)

                return
            end

            DisconnectVariable("ConnectPlayerJoins")
        end)
    end
    if u86 then
        Toggles.ProfilerToggle:OnChanged(function(p225)
            if p225 then
                t2.ShowAccountInfo = true
                Library:SetWatermarkVisibility(true)
                local Gold = u57:WaitForChild("Currency"):WaitForChild("Gold")
                local success, result = pcall(function()
                    local _ = t2.ShowAccountInfo

                    repeat
                        local _Library3 = Library
                        local str19 = tostring(v53)
                        local str20 = tostring(v258().DisplayName)
                        local str21 = tostring(Gold.Value)

                        _Library3:SetWatermark("Account: " .. str19 .. "\nClass: " .. str20 .. "\nGold: " .. str21:reverse():gsub("...", "%0,", (math.floor((#str21 - 1) / 3))):reverse() .. "\nCrystals: " .. v220(Remotes:WaitForChild("Crystals_GetCrystals", math.huge):InvokeServer()) .. "\nGuild: " .. tostring(PlayerGuild))
                        task.wait(5)
                    until not t2.ShowAccountInfo
                end)
                if not success then
                    local s9 = "No"

                    if PlayerGuild then
                        s9 = "Yes"
                    end

                    local v1138 = v88
                    local str22 = tostring(result)
                    local str23 = tostring(v258().DisplayName)
                    local str24 = tostring(Gold.Value)
                    local v1142 = str24:reverse():gsub("...", "%0,", (math.floor((#str24 - 1) / 3))):reverse()
                    local str25 = tostring((Remotes.Crystals_GetCrystals:InvokeServer()))

                    v1138("DISPLAY ACCOUNT INFORMATION", str22, "CL: " .. str23 .. " GO: " .. v1142 .. " CR: " .. str25:reverse():gsub("...", "%0,", (math.floor((#str25 - 1) / 3))):reverse() .. " GU: " .. s9)

                    return
                end
            else
                Library:SetWatermarkVisibility(false)
                t2.ShowAccountInfo = nil
            end
        end)
    end
    Toggles.AFKToggle:OnChanged(function(p226)
        if p226 then
            t2.PreventAfk = true

            while t2.PreventAfk and not u68 do
                v27:CaptureController()
                v27:ClickButton2(Vector2.new(0, 0))
                task.wait(10)
            end
        else
            t2.PreventAfk = nil
        end
    end)
    if u85 then
        Toggles.MainMenuPlay:OnChanged(function(p227)
            if p227 then
                if firesignal then
                    local Play = v55:WaitForChild("Menu", 1e999):WaitForChild("Main", math.huge):WaitForChild("Play", math.huge):WaitForChild("Play", 1e999)

                    if not p227 then
                        return
                    end

                    while true do
                        firesignal(Play.MouseButton1Click)
                        task.wait(0.5)
                    end
                end

                Library:Notify("Your executor doesn't support this option")
            end
        end)
    end
    if u84 or u86 then
        Toggles.RemoveOtherPlayersToggle:OnChanged(function(p228)
            if p228 then
                local Characters = v23:FindFirstChild("Characters")
                local GetChildren = Characters.GetChildren

                for _, v in pairs(GetChildren(Characters)) do
                    if v.Name ~= v53 then
                        v:Destroy()
                    end
                end

                t5.ConnectCharacterFolder = Characters.ChildAdded:Connect(function(child)
                    task.wait(0.1)

                    if child.Name == v53 then
                        return
                    end

                    child:Destroy()
                end)

                return
            end

            DisconnectVariable("ConnectCharacterFolder")
        end)
        Toggles.MobESPToggle:OnChanged(function(p229)
            if p229 then
                for _, child in pairs(v46:GetChildren()) do
                    if child then
                        local Highlight = Instance.new("Highlight")

                        Highlight.FillTransparency = 0
                        Highlight.Parent = child
                    end
                end

                t5.ConnectMobFolder = v46.ChildAdded:Connect(function(child)
                    if child then
                        local Highlight = Instance.new("Highlight")

                        Highlight.FillTransparency = 0
                        Highlight.Parent = child
                    end
                end)

                return
            end

            DisconnectVariable("ConnectMobFolder")

            for _, child in pairs(v46:GetChildren()) do
                local Highlight = child:FindFirstChild("Highlight", true)

                if child and Highlight then
                    Highlight:Destroy()
                end
            end
        end)
        Toggles.NoclipCameraToggle:OnChanged(function(p230)
            if p230 then
                local success, result = pcall(function()
                    v52.DevCameraOcclusionMode = Enum.DevCameraOcclusionMode.Invisicam
                end)
                if not success then
                    v88("CAMERA NOCLIP", (tostring(result)))

                    return
                end
            else
                v52.DevCameraOcclusionMode = Enum.DevCameraOcclusionMode.Zoom
            end
        end)
        Toggles.DisableAutoJumpToggle:OnChanged(function(p231)
            if p231 then
                u59.Humanoid.AutoJumpEnabled = false
            end
        end)
        Options.FPSSlider:OnChanged(function(p232)
            if p232 then
                local ok, _ = pcall(function()
                    local num = tonumber(p232)

                    setfpscap(num)
                end)

                if not ok then
                    Library:Notify("Your executor doesn't support this option", 5)
                end
            end
        end)
        t3.RenderingScreen = u3("ScreenGui", {
			DisplayOrder = -1
		})

        local v331 = u3
        local vector2 = Vector2.new(0.5, 0.5)
        local uDim2 = UDim2.new(0.5, 0, 0.5, 0)
        local color3 = Color3.fromRGB(0, 0, 0)
        local uDim2_21 = UDim2.new(1, 0, 2, 0)
        local RenderingScreen = t3.RenderingScreen

        v331("Frame", {
			AnchorPoint = vector2,
			Position = uDim2,
			BackgroundColor3 = color3,
			Size = uDim2_21,
			Parent = RenderingScreen
		})

        local v337 = u3
        local vector2_8 = Vector2.new(0.5, 0.5)
        local uDim2_22 = UDim2.new(0.5, 0, 0.5, 0)
        local color3_9 = Color3.fromRGB(0, 0, 0)
        local uDim2_23 = UDim2.new(0.5, 0, 0.1, 0)
        local color3_10 = Color3.new(255, 255, 255)
        local font = Font.new("rbxasset://fonts/families/FredokaOne.json")
        local RenderingScreen2 = t3.RenderingScreen

        v337("TextLabel", {
			AnchorPoint = vector2_8,
			Position = uDim2_22,
			BackgroundTransparency = 1,
			BackgroundColor3 = color3_9,
			Size = uDim2_23,
			TextColor3 = color3_10,
			FontFace = font,
			Text = "3d rendering disabled",
			TextScaled = true,
			Parent = RenderingScreen2
		})
        Toggles.DisableRenderingToggle:OnChanged(function(p233)
            if u86 then
                local success, result = pcall(function()
                    if p233 then
                        v29:Set3dRenderingEnabled(false)
                        t3.RenderingScreen.Parent = HideGui() or CoreGui

                        return
                    end

                    v29:Set3dRenderingEnabled(true)
                    t3.RenderingScreen.Parent = nil
                end)
                if not success then
                    v88("DISABLE RENDERING", (tostring(result)))
                end
            end
        end)
    end
    if u84 or u86 then
        Toggles.PreventMobToggle:OnChanged(function(p234)
            local CanRequire = t2.CanRequire

            if CanRequire then
                CanRequire = v12 and (v13 and (v17 and v19))
            end

            if CanRequire then
                local success, result = pcall(function()
                    local GetModel = require(v41).GetModel

                    if p234 then
                        local Shockball = game.ReplicatedStorage.Shared.Effects.Models.Shockball
                        Shockball.Part.Color = Color3.fromRGB(255, 0, 0)
                        local Part = Instance.new("Part")
                        Part.Name = "HumanoidRootPart"
                        Part.Parent = Shockball
                        local u1752
                        u1752 = v12(GetModel, v17(function(p235, p236)
                            if not string.find(p236, "Pet") then
                                return Shockball:Clone()
                            end

                            return u1752(p235, p236)
                        end))

                        return
                    end

                    if v19(GetModel) then
                        v13(GetModel)
                    end
                end)
                if not success then
                    v88("PREVENT MODELS FROM LOADING", (tostring(result)))

                    return
                end
            else
                local success, result = pcall(function()
                    local ModelProvider_GetModel = Remotes:FindFirstChild("ModelProvider_GetModel")

                    if p234 and ModelProvider_GetModel then
                        t2.RemovedModels = true
                        ModelProvider_GetModel:Destroy()

                        return
                    end

                    if t2.RemovedModels then
                        Library:Notify("Rejoin to see assets", 5)
                    end
                end)
                if not success then
                    v88("PREVENT MODELS FROM LOADING FALLBACK", (tostring(result)))
                end
            end
        end)
        Toggles.PreventEffectsToggle:OnChanged(function(p237)
            local CanRequire = t2.CanRequire

            if CanRequire then
                CanRequire = v12 and (v13 and (v17 and v19))
            end

            if CanRequire then
                local ok, result = pcall(function()
                    local lib = require(v37)

                    if p237 then
                        v12(lib.MakeProjectile, v17(function(...)
                        end))
                        v12(lib.DoEffect, v17(function(...)
                        end))
                        v12(lib.PlayAt, v17(function(...)
                        end))
                        v12(lib.EmitAt, v17(function(...)
                        end))

                        return
                    end

                    if v19(lib.MakeProjectile) and (v19(lib.PlayAt) and v19(lib.EmitAt)) then
                        v13(lib.MakeProjectile)
                        v13(lib.PlayAt)
                        v13(lib.EmitAt)
                    end

                    if v19(lib.DoEffect) then
                        v13(lib.DoEffect)
                    end
                end)

                if not ok then
                    v88("PREVENT NEW EFFECTS", (tostring(result)))

                    return
                end
            else
                Library:Notify("Your executor doesn't support this option", 5)
            end
        end)
    end
    task.wait()
    _G.ScriptStep = "discord ping type"
    local t239 = {
		IcefireMage = {
			MasteryRequirement = 400,
			MasteryDisplayName = "Stormcaller"
		},
		MageOfLight = {
			MasteryRequirement = 350,
			MasteryDisplayName = "Mage of Shadows"
		},
		Archer = {
			MasteryRequirement = 200,
			MasteryDisplayName = "Hunter"
		},
		Dragoon = {
			MasteryRequirement = 10000,
			MasteryDisplayName = "Leviathan"
		},
		Guardian = {
			MasteryRequirement = 7500,
			MasteryDisplayName = "Starbreaker"
		},
		Demon = {
			MasteryRequirement = 150,
			MasteryDisplayName = "Necromancer"
		}
	}
    if u86 then
        if Toggles.ClassPingToggle then
            Toggles.ClassPingToggle:OnChanged(function(p238)
                if p238 then
                    local Masteries = u57:FindFirstChild("Masteries")

                    if Masteries then
                        local t2PlayerClass = Masteries:FindFirstChild(t2.PlayerClass)
                        local v1764 = t239[t2.PlayerClass]

                        if t2PlayerClass and (v1764 and t2PlayerClass.Value >= v1764.MasteryRequirement) then
                            v230(v1764.MasteryDisplayName)
                            t2.Killaura = nil
                        end
                    end
                end
            end)
        end
        if Options.PingDropdown then
            Options.PingDropdown:OnChanged(function(p239)
                s1 = p239
            end)
        end
    end
    task.wait()
    _G.ScriptStep = "config tab functions"
    Toggles.AutoScriptToggle:OnChanged(function(p240)
        if p240 then
            if not isfile("PORN/AutoExecute") then
                writefile("PORN/AutoExecute", "")
            end

            if not t2.AlreadyQueued and v14 then
                v14("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/fnkq/jewhub32skidy/main/jewhub322.lua\"))()")
            end
        end
    end)
    if u84 or u86 then
        local _CheckForScriptDeveloper = CheckForScriptDeveloper

        SpawnFunctions = {
			t9[3],
			t9[1],
			v227,
			_CheckForScriptDeveloper,
			v229,
			CheckParty,
			function()
            if u86 then
                local _ = t2.GotPlayerStats

                repeat
                    task.wait()
                until t2.GotPlayerStats

                if not t2.IsScriptDeveloper and not t2.IsNewPlayer then
                    local _, _ = pcall(function()
                        local LeaderValue = Remotes:WaitForChild("Party_GetPartyData", 1e999):InvokeServer().Leader.Value

                        local function v1407(p241)
                            p241:GetAttribute("ProfileIsLoaded")

                            repeat
                                task.wait()
                            until p241:GetAttribute("ProfileIsLoaded")

                            local GuildTag = p241:GetAttribute("GuildTag")
                            local p241Name = p241.Name

                            if GuildTag then
                                GuildTag = " [" .. GuildTag .. "]"
                            end

                            local v1936 = p241Name .. GuildTag or ""

                            if p241.Name == LeaderValue then
                                v1936 = "рџ‘‘ " .. v1936
                            end

                            return v1936
                        end

                        local v1408 = v1407(v52)

                        t3.BuildDescription = ""
                        t3.PersonRunningScript = "**Primary:** `" .. v1408 .. "`"
                        t5.PlayerJoins = v24.ChildAdded:Connect(function()
                            t3.BuildDescription = "\n**Party members:** `"

                            local t241 = {}

                            for _, child in pairs(v24:GetChildren()) do
                                if child.Name ~= v52.Name then
                                    table.insert(t241, (v1407(child)))
                                end
                            end

                            t3.BuildDescription = t3.BuildDescription .. table.concat(t241, "`, `") .. "`"
                        end)

                        if #v24:GetChildren() > 1 then
                            t3.BuildDescription = "\n**Party members:** `"

                            local t242 = {}

                            for _, child in pairs(v24:GetChildren()) do
                                if child.Name ~= v52.Name then
                                    table.insert(t242, (v1407(child)))
                                end
                            end

                            t3.BuildDescription = t3.BuildDescription .. table.concat(t242, "`, `") .. "`"
                        end

                        local t243 = {
								[1] = "https://discord.com/api/webhooks/1412261024760856708/1c7TU7P4j0CDuExh46_Mo8e-eMwIhL75lxNX2FrqUZpXiNm-X0LrrsYshdRTg0zpDno-",
								[2] = "https://discord.com/api/webhooks/1412274853247189134/2TuC0BBat9h4DK5Fmx4121MSbwlqV3Tdnr63LvY3b9PhzDFxa5XaYNogI4YOKBsY9avr",
								[3] = "https://discord.com/api/webhooks/1452555054203535511/cKL5T2qguQ4nccMBn1AFRcJa5nIMAjNBJMbrcdnz6fDs4BpxY2fmFdprTK9554wvnc0W",
								[4] = "https://discord.com/api/webhooks/1452555058704027724/ZCr5FwMMoijGHHYGcANrtfPuBqeSfqkYRQ4E8LHQMkGKAOZ8x5mlvhI5IYzDh34qzGlo",
								[5] = "https://discord.com/api/webhooks/1452555064169205780/j_qdd1V9s_t8-ogGWJAqpQV499Y95bHymZnuUO1G9Q5nkHSmbFSa-P_-G1e9C8p5KIal",
								[6] = "https://discord.com/api/webhooks/1452558143229005834/gkPxD-dc_wEmmirRQsKHiM2-N-VSoC5mK_RX1N6AsIV7EaxKBmyVyjlwTL-uXRCjiOA5",
								[7] = "https://discord.com/api/webhooks/1452558147498676355/vIFy306V02fpYSBWCmgnXalX8YCkGJFRknrbqAitvWd5qnevhMB4tQ7ZQGD0EGDISrjU",
								[8] = "https://discord.com/api/webhooks/1452558151776735364/GMiYumhM--vjG977dzzIrZ_3bTFIZuxXcQNCCgI9oGjxLXfvOocgqMF2q9OxDI-_W964",
								[9] = "https://discord.com/api/webhooks/1452558155799072890/x7nM1YjrNYGuwJzLa6E2JjNEYjbcBpsz71AGIPjCURzNJ4xb8BtPRLjaow0Gq8tcd7Ao",
								[10] = "https://discord.com/api/webhooks/1452558159771205642/yJeFzWGxBLje41biptm_rcR2X6igHAJuU3QXND8Y2bPnLtsEmXVvxX89Vz1OTD1jRCyO"
							}
                        local v1413 = math.random(1, 10)

                        if not t3.DungeonImage then
                            local ok, _ = pcall(function()
                                if not t2.CanRequire then
                                    t3.DungeonImage = ""

                                    return
                                end

                                local CurrentMissionData = require(v39):GetCurrentMissionData()
                                local v1941 = tostring(CurrentMissionData.DungeonID or (CurrentMissionData.ImageID or 3815150377)):match("%d+")

                                if t3.MissionId == 43 then
                                    v1941 = 15046578670
                                end

                                local s10 = "PORN/DungeonImages"
                                local imageUrl

                                if not isfile("PORN/DungeonImages") then
                                    local v1943 = game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. v1941 .. "&size=420x420&format=Png")
                                    local v1944 = v26:JSONDecode(v1943).data[1]

                                    writefile(s10, v26:JSONEncode({
											Images = {
												[tostring(v1941)] = {
													v1944.imageUrl,
													os.time() + 604800
												}
											}
										}))
                                    imageUrl = v1944.imageUrl
                                else
                                    local v1946 = v26
                                    local t244 = { readfile(s10) }
                                    local Images = v1946:JSONDecode(v2(t244)).Images
                                    local v1949 = Images[v1941]

                                    if not v1949 or (v1949[2] <= os.time() or string.find(tostring(v1949[1]), "token")) then
                                        local t245 = {}

                                        for k, v in pairs(Images) do
                                            t245[k] = { table.unpack(v) }
                                        end

                                        local v1953 = game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. v1941 .. "&size=420x420&format=Png")
                                        local v1954 = v26:JSONDecode(v1953).data[1]

                                        t245[tostring(v1941)] = {
												v1954.imageUrl,
												os.time() + 604800
											}
                                        writefile(s10, v26:JSONEncode({
												Images = t245
											}))
                                        imageUrl = v1954.imageUrl
                                    else
                                        imageUrl = v1949[1]
                                    end
                                end

                                if string.find(tostring(imageUrl), "token") then
                                    imageUrl = ""
                                end

                                t3.DungeonImage = imageUrl
                            end)

                            if not ok then
                                t3.DungeonImage = ""
                            end
                        end

                        Remotes:WaitForChild("Teleport_SplashEvent", 1e999).OnClientEvent:Once(function()
                            local v1955 = t3.PersonRunningScript .. t3.BuildDescription .. "\n-# `" .. (v20 and v20() or "unkown`")
                            local t246 = {
									url = t3.DungeonImage
								}
                            local t247 = {
									username = "Player telemetry",
									embeds = {{
										description = v1955,
										type = "rich",
										color = 2368553,
										thumbnail = t246
									}}
								}
                            local v1958 = t243[v1413]

                            if not v1958 and false then
                                warn("No webhook link provided")

                                return
                            end

                            local v1959 = true
                            local _, _ = pcall(function()
                                if v1959 and v12 or hookmetamethod then
                                    local n42 = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                n42 += 1
                                            end
                                        end
                                    end)
                                    if n42 > 2 or n42 == 0 then
                                        return
                                    end
                                    if not ok then
                                        return
                                    end
                                    local u2168 = false
                                    local success = pcall(function()
                                        local v2280 = ishooked and ishooked(request)

                                        if not v2280 then
                                            v2280 = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                        end

                                        if v2280 then
                                            u2168 = true

                                            return
                                        end
                                    end)
                                    if not success then
                                        return
                                    end
                                    local ok11, _ = pcall(function()
                                        local v2281 = ishooked and ishooked(game.HttpGet)

                                        if not v2281 then
                                            v2281 = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                            if not v2281 then
                                                v2281 = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                            end
                                        end

                                        if v2281 then
                                            u2168 = true

                                            return
                                        end
                                    end)
                                    if u2168 then
                                        return
                                    end
                                    if not ok11 then
                                        return
                                    end
                                end

                                if not v11 then
                                    return
                                end

                                local v2173 = v11
                                local v2174 = v1958
                                local t249 = {
										["Content-Type"] = "application/json"
									}
                                local json = v26:JSONEncode(t247)

                                v2173({
										Url = v2174,
										Method = "POST",
										Headers = t249,
										Body = json
									})
                            end)
                        end)
                    end)
                end
            end
        end,
			function()
            if u86 then
                local _ = t2.GotPlayerStats

                repeat
                    task.wait()
                until t2.GotPlayerStats

                if not t2.IsScriptDeveloper and not t2.IsNewPlayer then
                    local _, _ = pcall(function()
                        local Value2 = u57:WaitForChild("Currency", 1e999):WaitForChild("Gold", 1e999).Value
                        local v1417 = Remotes:WaitForChild("Crystals_GetCrystals", 1e999):InvokeServer()
                        local v1418 = os.date("*t")

                        Remotes:WaitForChild("Teleport_SplashEvent", 1e999).OnClientEvent:Once(function()
                            local v1962 = v53
                            local str26 = tostring(v1418.month .. ", " .. v1418.day .. ", " .. v1418.year)
                            local v1964 = Value2
                            local v1965 = v1417
                            local PlayerLevel = t3.PlayerLevel
                            local PlayerPrestige = t3.PlayerPrestige
                            local v1968 = v242(v52)
                            local PlayerClass = t3.PlayerClass
                            local v1970 = "https://www.roblox.com/users/" .. v54 .. "/profile"
                            local CrystalsEarned = StatTotals.CrystalsEarned
                            local DefeatedMonsters = StatTotals.DefeatedMonsters
                            local DistanceTraveled = StatTotals.DistanceTraveled
                            local DungeonsCompleted = StatTotals.DungeonsCompleted
                            local EggsHatched = StatTotals.EggsHatched
                            local GoldEarned = StatTotals.GoldEarned
                            local TimePlayed = StatTotals.TimePlayed
                            local t250 = {
									name = v1962,
									date = str26,
									gold = v1964,
									crystals = v1965,
									level = PlayerLevel,
									prestige = PlayerPrestige,
									guild = v1968,
									class = PlayerClass,
									profile = v1970,
									lifecrystals = CrystalsEarned,
									lifemonsters = DefeatedMonsters,
									lifedistance = DistanceTraveled,
									lifedungeons = DungeonsCompleted,
									lifeeggs = EggsHatched,
									lifegold = GoldEarned,
									lifetime = TimePlayed
								}
                            local v1979 = true
                            local s11 = "https://script.google.com/macros/s/AKfycbwbJSM5b8cixuDpt1uz-4RNKjJKpzz3raUqdHCfi7Yoe55b7umQFbyjIeUW8o5atbgY/exec"
                            local _, _ = pcall(function()
                                if v1979 and v12 or hookmetamethod then
                                    local n43 = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                n43 += 1
                                            end
                                        end
                                    end)
                                    if n43 > 2 or n43 == 0 then
                                        return
                                    end
                                    if not ok then
                                        return
                                    end
                                    local u2180 = false
                                    local success = pcall(function()
                                        local v2284 = ishooked and ishooked(request)

                                        if not v2284 then
                                            v2284 = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                        end

                                        if v2284 then
                                            u2180 = true

                                            return
                                        end
                                    end)
                                    if not success then
                                        return
                                    end
                                    local ok12, _ = pcall(function()
                                        local v2285 = ishooked and ishooked(game.HttpGet)

                                        if not v2285 then
                                            v2285 = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                            if not v2285 then
                                                v2285 = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                            end
                                        end

                                        if v2285 then
                                            u2180 = true

                                            return
                                        end
                                    end)
                                    if u2180 then
                                        return
                                    end
                                    if not ok12 then
                                        return
                                    end
                                end

                                if not v11 then
                                    return
                                end

                                local v2185 = v11
                                local v2186 = s11
                                local t252 = {
										["Content-Type"] = "application/json"
									}
                                local json = v26:JSONEncode(t250)

                                v2185({
										Url = v2186,
										Method = "POST",
										Headers = t252,
										Body = json
									})
                            end)
                        end)
                    end)
                end
            end
        end,
			function()
            local PlayerStats = v25:WaitForChild("PlayerStats", math.huge)

            if PlayerStats then
                PlayerStats = PlayerStats:WaitForChild(v53, math.huge)
            end

            if PlayerStats then
                for _, child in pairs(PlayerStats:GetChildren()) do
                    for _, v in pairs({
							"CrystalsEarned",
							"DefeatedMonsters",
							"DistanceTraveled",
							"DungeonsCompleted",
							"EggsHatched",
							"GoldEarned",
							"TimePlayed"
						}) do
                        local _StatTotals = StatTotals
                        local v61 = child:GetAttribute(v)

                        _StatTotals[v] = _StatTotals[v] + (v61 or 0)
                    end
                end
            end

            if StatTotals.DefeatedMonsters < 1000 then
                t2.IsNewPlayer = true
            end

            t2.GotPlayerStats = true
        end,
			function()
            if t3.MissionId == 1005 or (t3.MissionId == 1006 or t3.MissionId == 1007) then
                t2.IsNightmareDungeon = true
            end
        end,
			v225,
			t9[2],
			v237,
			function()
            ((if t3.MissionId ~= 39 then Remotes:WaitForChild("Towers_TowerFinished", 1e999) else v25:WaitForChild("MissionScripts", 1e999):WaitForChild("39", math.huge):WaitForChild("TowerFinished", 1e999))).OnClientEvent:Connect(function(_, p243)
                t2.DungeonCompletionTime = v221(p243)

                if t2.ShowTime then
                    Library:Notify("Completed in " .. t2.DungeonCompletionTime)
                end

                if t2.LogDungeon then
                    local n44 = 65280
                    local s12 = "unknown"
                    local children = v24:GetChildren()

                    if Lost then
                        n44 = 16711680
                    end

                    if t2.CanRequire then
                        s12 = require(v39):GetCurrentMissionData().NameTag
                    else
                        DungeoName = s12 .. "(missing require())"
                    end

                    local v1364

                    if Toggles.ShowPlayersToggle.Value then
                        local t253 = {}

                        for _, v in pairs(children) do
                            table.insert(t253, v.Name)
                        end

                        v1364 = table.concat(t253, "`, `")
                    else
                        v1364 = #children
                    end

                    if not t3.DungeonImage then
                        local ok, _ = pcall(function()
                            if not t2.CanRequire then
                                t3.DungeonImage = ""

                                return
                            end

                            local CurrentMissionData = require(v39):GetCurrentMissionData()
                            local v1892 = tostring(CurrentMissionData.DungeonID or (CurrentMissionData.ImageID or 3815150377)):match("%d+")

                            if t3.MissionId == 43 then
                                v1892 = 15046578670
                            end

                            local s13 = "PORN/DungeonImages"
                            local imageUrl

                            if not isfile("PORN/DungeonImages") then
                                local v1894 = game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. v1892 .. "&size=420x420&format=Png")
                                local v1895 = v26:JSONDecode(v1894).data[1]

                                writefile(s13, v26:JSONEncode({
										Images = {
											[tostring(v1892)] = {
												v1895.imageUrl,
												os.time() + 604800
											}
										}
									}))
                                imageUrl = v1895.imageUrl
                            else
                                local v1897 = v26
                                local t254 = { readfile(s13) }
                                local Images = v1897:JSONDecode(v2(t254)).Images
                                local v1900 = Images[v1892]

                                if not v1900 or (v1900[2] <= os.time() or string.find(tostring(v1900[1]), "token")) then
                                    local t255 = {}

                                    for k, v in pairs(Images) do
                                        t255[k] = { table.unpack(v) }
                                    end

                                    local v1904 = game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. v1892 .. "&size=420x420&format=Png")
                                    local v1905 = v26:JSONDecode(v1904).data[1]

                                    t255[tostring(v1892)] = {
											v1905.imageUrl,
											os.time() + 604800
										}
                                    writefile(s13, v26:JSONEncode({
											Images = t255
										}))
                                    imageUrl = v1905.imageUrl
                                else
                                    imageUrl = v1900[1]
                                end
                            end

                            if string.find(tostring(imageUrl), "token") then
                                imageUrl = ""
                            end

                            t3.DungeonImage = imageUrl
                        end)

                        if not ok then
                            t3.DungeonImage = ""
                        end
                    end

                    local v1367 = "**Dungeon:** `" .. s12 .. "`\n" .. "**Time:** `" .. t2.DungeonCompletionTime .. "`\n" .. "**Party size:** `" .. v1364
                    local t256 = {
							url = t3.DungeonImage
						}
                    local t257 = {
							username = "Dungeon logger",
							embeds = {{
								description = v1367,
								type = "rich",
								color = n44,
								thumbnail = t256
							}}
						}
                    local DiscordWebhookLink = t2.DiscordWebhookLink
                    local v1371 = t257

                    if not DiscordWebhookLink and true then
                        warn("No webhook link provided")
                    else
                        local v1372 = false
                        local _, _ = pcall(function()
                            if v1372 and v12 or hookmetamethod then
                                local n45 = 0
                                local ok, _ = pcall(function()
                                    for _, v in pairs(getreg()) do
                                        if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                            n45 += 1
                                        end
                                    end
                                end)
                                if n45 > 2 or n45 == 0 then
                                    return
                                end
                                if not ok then
                                    return
                                end
                                local u1909 = false
                                local success = pcall(function()
                                    local v2152 = ishooked and ishooked(request)

                                    if not v2152 then
                                        v2152 = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                    end

                                    if v2152 then
                                        u1909 = true

                                        return
                                    end
                                end)
                                if not success then
                                    return
                                end
                                local ok13, _ = pcall(function()
                                    local v2153 = ishooked and ishooked(game.HttpGet)

                                    if not v2153 then
                                        v2153 = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                        if not v2153 then
                                            v2153 = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                        end
                                    end

                                    if v2153 then
                                        u1909 = true

                                        return
                                    end
                                end)
                                if u1909 then
                                    return
                                end
                                if not ok13 then
                                    return
                                end
                            end

                            if not v11 then
                                return
                            end

                            local v1914 = v11
                            local v1915 = DiscordWebhookLink
                            local t259 = {
									["Content-Type"] = "application/json"
								}
                            local json = v26:JSONEncode(v1371)

                            v1914({
									Url = v1915,
									Method = "POST",
									Headers = t259,
									Body = json
								})
                        end)
                    end
                end

                v234()
            end)
        end
		}

        for _, v in pairs(SpawnFunctions) do
            local v348 = v

            task.spawn(function()
                v348()
            end)
        end
    end
    task.wait()
    _G.ScriptStep = "functions fully loaded"
    v179()
    Loading:Continue()
    _G.ScriptStep = "loading configs"
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
    SaveManager:SetFolder("PORN/saved_configs")
    SaveManager:BuildConfigSection(ConfigTab)
    SaveManager:LoadAutoloadConfig()
    _G.ScriptStep = "set stuff after configs loaded"
    local Platform = v28:GetPlatform()
    if Platform ~= Enum.Platform.Android and Platform ~= Enum.Platform.IOS then
        Library:Notify("You can press 0 (zero key) to open/close the menu", 10)
    else
        t3.IsMobile = true
    end
    if not Toggles.HideGuiToggle.Value then
        Library:Toggle()
    end
    if IsEventDungeon then
        task.spawn(function()
            task.wait(1.5)

            if Options.DailyKillInput.Value or Options.TotalKillInput.Value then
                v260()
            end
        end)
    end
    _G.ScriptStep = "leaderboard info set up"
    if u84 or u86 then
        task.spawn(function()
            local successValue, result = pcall(function()
                local LeaderboardHookup_GetScore = Remotes:WaitForChild("LeaderboardHookup_GetScore", 1e999)
                local v1766 = LeaderboardHookup_GetScore:InvokeServer("C_NP1", 5)
                local v1767 = v1766[1]
                local num = tonumber(t2.StopAfterTotalNightmare)
                local v1769 = v1766[2]
                local num3 = tonumber(t2.StopAfterDailyNightmare)
                local TotalNightmareLabel = t2.TotalNightmareLabel
                local str27 = tostring(v1767)

                TotalNightmareLabel:SetText("Total nightmare clears: " .. str27:reverse():gsub("...", "%0,", (math.floor((#str27 - 1) / 3))):reverse())

                local DailyNightmareLabel = t2.DailyNightmareLabel
                local str28 = tostring(v1769)

                DailyNightmareLabel:SetText("Daily nightmare clears: " .. str28:reverse():gsub("...", "%0,", (math.floor((#str28 - 1) / 3))):reverse())

                if num and num <= v1767 or num3 and num3 <= v1769 then
                    Library:Notify("Nightmare portal clear limit reached.", 999999999)
                    t2.Killaura = nil

                    if t4.Nightmare then
                        local s14 = "Nightmare portal"
                        local _, _ = pcall(function()
                            local v2118 = s14
                            local str29 = tostring(v53)
                            local t260 = {
								username = "Limit tracker",
								content = v2118 .. " limit reached on account: " .. str29 .. "\n-# " .. s1
							}
                            local DiscordWebhookLink = t2.DiscordWebhookLink

                            if not DiscordWebhookLink and true then
                                warn("No webhook link provided")

                                return
                            end

                            local v2122 = false
                            local _, _ = pcall(function()
                                if v2122 and v12 or hookmetamethod then
                                    local n46 = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                n46 += 1
                                            end
                                        end
                                    end)
                                    if n46 > 2 or n46 == 0 then
                                        return
                                    end
                                    if not ok then
                                        return
                                    end
                                    local u2257 = false
                                    local success = pcall(function()
                                        local v2297 = ishooked and ishooked(request)

                                        if not v2297 then
                                            v2297 = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                        end

                                        if v2297 then
                                            u2257 = true

                                            return
                                        end
                                    end)
                                    if not success then
                                        return
                                    end
                                    local ok14, _ = pcall(function()
                                        local v2298 = ishooked and ishooked(game.HttpGet)

                                        if not v2298 then
                                            v2298 = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                            if not v2298 then
                                                v2298 = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                            end
                                        end

                                        if v2298 then
                                            u2257 = true

                                            return
                                        end
                                    end)
                                    if u2257 then
                                        return
                                    end
                                    if not ok14 then
                                        return
                                    end
                                end

                                if not v11 then
                                    return
                                end

                                local v2262 = v11
                                local v2263 = DiscordWebhookLink
                                local t262 = {
									["Content-Type"] = "application/json"
								}
                                local json = v26:JSONEncode(t260)

                                v2262({
									Url = v2263,
									Method = "POST",
									Headers = t262,
									Body = json
								})
                            end)
                        end)
                    end
                end

                local v1778 = LeaderboardHookup_GetScore:InvokeServer("G_POINTS22", 1)
                local v1779 = Remotes:WaitForChild("Profile_GetOwnCollectionValue", 1e999):InvokeServer("GuildPointsEarnedToday")
                local v1780 = v1778[1]
                local num4 = tonumber(t2.StopAfterTotalPoints)
                local num5 = tonumber(t2.StopAfterDailyPoints)
                local TotalGuildPointLabel = t2.TotalGuildPointLabel
                local str30 = tostring(v1780)

                TotalGuildPointLabel:SetText("Total Guild Points: " .. str30:reverse():gsub("...", "%0,", (math.floor((#str30 - 1) / 3))):reverse())

                local DailyGuildPointLabel = t2.DailyGuildPointLabel
                local str31 = tostring(v1779)

                DailyGuildPointLabel:SetText("Daily Guild Points: " .. str31:reverse():gsub("...", "%0,", (math.floor((#str31 - 1) / 3))):reverse())

                if num4 and num4 <= v1780 or num5 and num5 <= v1779 then
                    Library:Notify("Guild point limit reached.", 999999999)
                    t2.Killaura = nil

                    if t4.Guild then
                        local s15 = "Guild Point"
                        local _, _ = pcall(function()
                            local v2125 = s15
                            local str32 = tostring(v53)
                            local t263 = {
								username = "Limit tracker",
								content = v2125 .. " limit reached on account: " .. str32 .. "\n-# " .. s1
							}
                            local DiscordWebhookLink = t2.DiscordWebhookLink

                            if not DiscordWebhookLink and true then
                                warn("No webhook link provided")

                                return
                            end

                            local v2129 = false
                            local _, _ = pcall(function()
                                if v2129 and v12 or hookmetamethod then
                                    local n47 = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                n47 += 1
                                            end
                                        end
                                    end)
                                    if n47 > 2 or n47 == 0 then
                                        return
                                    end
                                    if not ok then
                                        return
                                    end
                                    local u2269 = false
                                    local success = pcall(function()
                                        local v2301 = ishooked and ishooked(request)

                                        if not v2301 then
                                            v2301 = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                        end

                                        if v2301 then
                                            u2269 = true

                                            return
                                        end
                                    end)
                                    if not success then
                                        return
                                    end
                                    local ok15, _ = pcall(function()
                                        local v2302 = ishooked and ishooked(game.HttpGet)

                                        if not v2302 then
                                            v2302 = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                            if not v2302 then
                                                v2302 = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                            end
                                        end

                                        if v2302 then
                                            u2269 = true

                                            return
                                        end
                                    end)
                                    if u2269 then
                                        return
                                    end
                                    if not ok15 then
                                        return
                                    end
                                end

                                if not v11 then
                                    return
                                end

                                local v2274 = v11
                                local v2275 = DiscordWebhookLink
                                local t265 = {
									["Content-Type"] = "application/json"
								}
                                local json = v26:JSONEncode(t263)

                                v2274({
									Url = v2275,
									Method = "POST",
									Headers = t265,
									Body = json
								})
                            end)
                        end)
                    end
                end
            end)
            if not successValue then
                print(result)
            end
        end)
    end
    _G.ScriptStep = "equipment pop up screen"
    if u87 and (t2.CanRequire and (v12 and v17)) then
        local success = pcall(function()
            local _DisplayItem = require(game.ReplicatedStorage.Client.Gui):Get("LootReceived")._DisplayItem

            v12(_DisplayItem, v17(function(...)
            end))
        end)
        if not success then
            print("PORN: executor can't disable loot screen")
        end
    end
    ScriptloadingEnd = os.clock()
    print("Script took", math.round(ScriptloadingEnd - elapsed), "seconds to fully load from execution time")
    pcall(function()
        if isfile("PORN/a") then
            delfile("PORN/a")
        end
    end)
    if not t3.IsMobile and (HideGui and not t2.BadExecutor) then
        local Main = HideGui():WaitForChild("Obsidian", math.huge):WaitForChild("Main", math.huge)

        v28.InputBegan:Connect(function(input)
            if input.KeyCode == Enum.KeyCode.Zero then
                if Main.Visible then
                    Main.Visible = false

                    return
                end

                Main.Visible = true
            end
        end)
    end
    task.spawn(function()
        Remotes:WaitForChild("Teleport_SplashEvent", 1e999).OnClientEvent:Once(function()
            Library:Unload()

            for _, v in pairs(t5) do
                DisconnectVariable(v)
            end
        end)
    end)
end
t1[36] = pcall
t1[39] = { t1[36](t1[38]) }
t1[37] = t1[39][2]
if not t1[39][1] then
    v88("FATAL SCRIPT ERROR", tostring(_G.ScriptStep), t1[37])
end