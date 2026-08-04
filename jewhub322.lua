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

local _t = {}
local Unpack = unpack or table.unpack

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

local CI = create_instance

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

local function ShowErrorScreen(p1, p2, p3)
    local v92 = p3 or "N/A"
    local CI = CI
    local v94 = get_ui_parent()
    local CI = CI("ScreenGui", {
		Name = "Script_Error",
		DisplayOrder = 1e999,
		Parent = v94
	})
    local CI = CI
    local vector2 = Vector2.new(0.5, 0.5)
    local uDim2 = UDim2.new(0.5, 0, 0.5, 0)
    local uDim2_2 = UDim2.new(1, 0, 1, 0)
    local CI = CI("Frame", {
		Name = "Script_Error",
		AnchorPoint = vector2,
		BackgroundTransparency = 1,
		Position = uDim2,
		Size = uDim2_2,
		Parent = CI
	})
    local CI = CI
    local vector2_2 = Vector2.new(0.5, 0.5)
    local color3 = Color3.fromRGB(255, 215, 0)
    local uDim2_3 = UDim2.new(0.5, 0, 0.5, 0)
    local uDim2_4 = UDim2.new(0.4, 0, 0.4, 0)
    local CI = CI("Frame", {
		Name = "Error_Frame",
		AnchorPoint = vector2_2,
		BackgroundColor3 = color3,
		Position = uDim2_3,
		Size = uDim2_4,
		Parent = CI
	})

    CI("UICorner", {
		CornerRadius = UDim.new(0.05, 0),
		Parent = CI
	})

    local CI = CI
    local uDim2_5 = UDim2.new(0.025, 0, 0.05, 0)
    local uDim2_6 = UDim2.new(0.55, 0, 0.1, 0)
    local font = Font.new("rbxasset://fonts/families/FredokaOne.json")
    local color3_2 = Color3.fromRGB(0, 0, 0)

    CI("TextLabel", {
		Name = "Error_Title",
		BackgroundTransparency = 1,
		Position = uDim2_5,
		Size = uDim2_6,
		FontFace = font,
		Text = "A script error has occured",
		TextColor3 = color3_2,
		TextScaled = true,
		Parent = CI
	})

    local CI = CI
    local vector2_3 = Vector2.new(0.5, 0.5)
    local uDim2_7 = UDim2.new(0.5, 0, 0.5, 0)
    local uDim2_8 = UDim2.new(0.9, 0, 0.6, 0)
    local font2 = Font.new("rbxasset://fonts/families/FredokaOne.json")
    local v117 = "<u>" .. p1 .. "</u>\n" .. p2 .. "\nExtra: " .. v92
    local color3_3 = Color3.fromRGB(243, 51, 51)

    CI("TextLabel", {
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
		Parent = CI
	})

    local CI = CI
    local color3_6 = Color3.fromRGB(145, 145, 145)
    local uDim2_13 = UDim2.new(0.436, 0, 0.808, 0)
    local uDim2_14 = UDim2.new(0.25, 0, 0.15, 0)
    local CI = CI("ImageButton", {
		Name = "Close_Button",
		BackgroundColor3 = color3_6,
		BackgroundTransparency = 0.75,
		Position = uDim2_13,
		Size = uDim2_14,
		Parent = CI
	})

    CI("UICorner", {
		CornerRadius = UDim.new(0.25, 0),
		Parent = CI
	})

    local CI = CI
    local vector2_5 = Vector2.new(0.5, 0.5)
    local uDim2_15 = UDim2.new(0.5, 0, 0.5, 0)
    local uDim2_16 = UDim2.new(1, 0, 1, 0)
    local font4 = Font.new("rbxasset://fonts/families/FredokaOne.json")
    local color3_7 = Color3.fromRGB(0, 0, 0)

    CI("TextLabel", {
		AnchorPoint = vector2_5,
		BackgroundTransparency = 1,
		Position = uDim2_15,
		Size = uDim2_16,
		FontFace = font4,
		Text = "Close menu",
		TextColor3 = color3_7,
		TextScaled = true,
		Parent = CI
	})

    local CI = CI
    local vector2_6 = Vector2.new(0.5, 0.5)
    local uDim2_17 = UDim2.new(0.5, 0, 0.5, 0)
    local uDim2_18 = UDim2.new(0.4, 0, 0.4, 0)
    local CI = CI("Frame", {
		Name = "Error_Glow",
		AnchorPoint = vector2_6,
		BackgroundTransparency = 1,
		Position = uDim2_17,
		Interactable = false,
		ZIndex = -1,
		Size = uDim2_18,
		Parent = CI
	})
    local CI = CI
    local vector2_7 = Vector2.new(0.5, 0.5)
    local uDim2_19 = UDim2.new(0.5, 0, 0.5, 0)
    local uDim2_20 = UDim2.new(1.1, 0, 1.1, 0)
    local color3_8 = Color3.fromRGB(255, 255, 255)

    CI("ImageButton", {
		AnchorPoint = vector2_7,
		BackgroundTransparency = 1,
		Position = uDim2_19,
		Size = uDim2_20,
		ZIndex = -1,
		Image = "rbxassetid://136878391730807",
		ImageColor3 = color3_8,
		ImageTransparency = 0.5,
		Parent = CI
	})

    local CI = CI("BlurEffect", {
		Size = 50,
		Parent = Lighting
	})
    CI.MouseButton1Click:Once(function()
        CI:Destroy()
        CI:Destroy()
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
_t[1] = tostring(game.GameId)
if _t[1] ~= "985731078" then
    print("u r not in world zero skid")
    wait(.5)
    game:Shutdown()
end
_G.ScriptStep = "executor function references"
local IdentifyExecutor = identifyexecutor or (getexecutorname or false)
local ExecSuccess, ExecVersion, ExecRequest = IdentifyExecutor()
_t[13] = ExecSuccess
_t[14] = ExecVersion
_t[15] = ExecRequest
local ExecName = _t[13]
local ExecVersionStr = _t[14]
_t[11] = http_request
_t[2] = _t[11]
if not _t[11] then
    _t[3] = request
    _t[11] = _t[3]

    if not _t[3] then
        _t[5] = ExecName and ExecName.request
        _t[3] = _t[5]

        if not _t[5] then
            _t[3] = ExecName and ExecName.http_request or not not http and (http.request or false)
        end

        _t[11] = _t[3]
    end

    _t[2] = _t[11]
end
local HttpRequest = _t[2]
_t[2] = hookfunc or (hookfunction or false)
local HookFunction = _t[2]
_t[2] = restorefunc or (restorefunction or false)
local RestoreFunction = _t[2]
_t[4] = queue_on_teleport
_t[2] = _t[4]
if not _t[4] then
    _t[2] = queueonteleport or (queue_on_tp or (queueontp or (queueteleport or false)))
end
local QueueOnTeleport = _t[2]
_t[5] = clear_teleport_queue
_t[2] = _t[5]
if not _t[5] then
    _t[7] = clearqueueonteleport
    _t[5] = _t[7]

    if not _t[7] then
        _t[5] = clearteleportqueue or (clear_tp_queue or (cleartpqueue or (clear_queue_on_teleport or false)))
    end

    _t[2] = _t[5]
end
local ClearTeleportQueue = _t[2]
_t[6] = rnet and rnet.desync
_t[2] = _t[6]
if not _t[6] then
    _t[2] = raknet and raknet.desync or not not RakNet and (RakNet.desync or false)
end
local NetDesync = _t[2]
_t[7] = get_hidden_gui
_t[2] = _t[7]
if not _t[7] then
    _t[2] = gethui or (gethiddengui or (get_hidden_ui or (gethiddenui or false)))
end
HideGui = _t[2]
_t[8] = newcclosure
local NewCClosure = _t[8] or false
_t[6] = cloneref or (clonereference or false)
local CloneRef = _t[6]
_t[6] = ishooked or (isfunctionhooked or (is_hooked or (is_function_hooked or false)))
local IsHooked = _t[6]
_t[9] = gethwid
_t[6] = _t[9]
if not _t[9] then
    _t[6] = get_hwid or (get_device_id or (getsystemid or "unknown"))
end
local GetHWID = _t[6]
_G.ScriptStep = "return things for the script"
_t[6] = function(p4)
    local p4_2 = game:GetService(p4)

    if p4_2 then
        return CloneRef(p4_2)
    end

    warn("Unable to get service", p4)
end
_t[9] = function(p5)
    return CloneRef(Shared:WaitForChild(p5, 1e999))
end
_t[10] = function(p6, p7)
    return CloneRef(p6:WaitForChild(p7, 1e999))
end
_t[16] = function(p8, p9)
    p8:GetAttribute(p9)

    repeat
        task.wait()
    until p8:GetAttribute(p9)

    return p8:GetAttribute(p9)
end
local GetServiceCloned = _t[10]
local WaitForAttribute = _t[16]
_G.ScriptStep = "setting up roblox services variables"
_t[16] = _t[6]("Workspace")
local Workspace = _t[16]
_t[16] = _t[6]("Players")
local Players = _t[16]
CoreGui = _t[6]("CoreGui")
StarterGui = _t[6]("StarterGui")
Lighting = _t[6]("Lighting")
_t[17] = _t[6]("ReplicatedStorage")
local ReplicatedStorage = _t[17]
_t[17] = _t[6]("HttpService")
local HttpService = _t[17]
_t[17] = _t[6]("VirtualUser")
local VirtualUser = _t[17]
_t[17] = _t[6]("UserInputService")
local UserInputService = _t[17]
_t[17] = _t[6]("RunService")
local RunService = _t[17]
_t[17] = _t[6]("MarketplaceService")
local MarketplaceService = _t[17]
_t[17] = _t[6]("TeleportService")
local TeleportService = _t[17]
_G.ScriptStep = "setting up game variables"
Shared = GetServiceCloned(ReplicatedStorage, "Shared")
Remotes = GetServiceCloned(ReplicatedStorage, "Remotes")
_t[17] = _t[9]("Battlepass")
local Battlepass = _t[17]
_t[17] = _t[9]("Charms")
local Charms = _t[17]
_t[17] = _t[9]("Chests")
local Chests = _t[17]
_t[17] = _t[9]("Combat")
local Combat = _t[17]
_t[9]("Crystals")
_t[19] = _t[9]("Drops")
local Drops = _t[19]
_t[19] = _t[9]("Effects")
local Effects = _t[19]
_t[9]("Guilds")
_t[9]("Health")
_t[9]("Inventory")
_t[9]("ItemUpgrade")
_t[22] = _t[9]("Items")
local Items = _t[22]
_t[22] = _t[9]("Missions")
local Missions = _t[22]
_t[22] = _t[9]("Mobs")
local Mobs = _t[22]
_t[22] = _t[9]("ModelProvider")
local ModelProvider = _t[22]
_t[9]("Party")
_t[23] = _t[9]("Pets")
local Pets = _t[23]
_t[23] = _t[9]("Quests")
local Quests = _t[23]
_t[23] = _t[9]("Shop")
local Shop = _t[23]
_t[9]("Skills")
_t[18] = _t[9]("Teleport")
local TeleportModule = _t[18]
_G.ScriptStep = "setting up more game variables"
GetServiceCloned(Workspace, "Camera")
_t[25] = GetServiceCloned(Workspace, "Mobs")
local MobsFolder = _t[25]
local MissionObjects
_G.ScriptStep = "setting up script variables"
local Settings = {}
local Tracking = {}
_t[25] = Tracking
_t[20] = {}
_t[25].MobTable = _t[20]
local Flags = {}
local Connections = {}
_t[25] = Players.LocalPlayer
local LocalPlayer = _t[25]
_t[25] = LocalPlayer.AccountAge
_t[21] = LocalPlayer.Name
local PlayerName = _t[21]
_t[21] = LocalPlayer.UserId
local UserId = _t[21]
_t[26] = GetServiceCloned(LocalPlayer, "PlayerGui")
local PlayerGui = _t[26]
local PingAdjusted = 0
local CharacterData
local PlayerBackpack
local Character
local Collider
local HumanoidRootPart
local AttackDelay = 0
local MeleeMinDist = 0
local MeleeMaxDist = 0
local RotationEnabled
local RangedDistance = 200
local CurrentTargetMob
local MissionDone
local SellRarityThreshold = 5
local ActiveSellCount = 0
local PerkTolerance = 0
local BuySellLock = 0
local MaxDamageReduction = 20
local CombatActive
local IsInCombat
local WebhookMention = "@everyone"
local IsMobAlive
local MaxPingTolerance = 60
local AttackReady
local CanAttack
local SkillActive = true
local MaxDungeonLevel = 1
if QueueOnTeleport then
    _t[28] = isfile("PORN/AutoExecute")

    if _t[28] then
        QueueOnTeleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/fnkq/jewhub32skidy/main/jewhub322.lua\"))()")
        _t[27] = Settings
        _t[28] = "AlreadyQueued"
        _t[27][_t[28]] = true
    end
end
_t[26] = ExecName == "Xeno" or (ExecName == "Solara" or ExecName == "Velocity")
if _t[26] then
    _t[26] = Settings
    _t[27] = "BadExecutor"
    _t[26][_t[27]] = true
end
_G.ScriptStep = "setting up location identifier"
_t[27] = tostring(game.PlaceId)
local PlaceIdStr = _t[27]
local InLobby = false
local InMainMenu = false
local InDungeon = false
local InTower = false
_t[29] = {
	["2727067538"] = true
}
_t[30] = {
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
_t[31] = {
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
_t[32] = {
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
_t[34] = {
	["5703353651"] = 21,
	["6075085184"] = 23,
	["7071564842"] = 27,
	["10089970465"] = 29,
	["10795158121"] = 34,
	["15121292578"] = 43,
	["14400549310"] = 39,
	["13988110964"] = 38
}
_t[27] = {
	MainMenu = _t[29],
	WorldHubs = _t[30],
	Dungeons = _t[31],
	EventDungeons = _t[32],
	Towers = _t[34]
}
if _t[27].MainMenu[PlaceIdStr] then
    InMainMenu = true
    print("PORN: player in main menu")
elseif _t[27].WorldHubs[PlaceIdStr] then
    InLobby = true
    print("PORN: player in lobby")
elseif _t[27].Dungeons[PlaceIdStr] then
    InDungeon = true
    print("PORN: player in dungeon")
elseif _t[27].Towers[PlaceIdStr] then
    InDungeon = true
    InTower = true
    print("PORN: player in tower")
elseif _t[27].EventDungeons[PlaceIdStr] then
    IsEventDungeon = true
    InDungeon = true
    print("PORN: player is in event dungeon")
else
    InLobby = true
    print("PORN: cannot determine where player is located... placeid: " .. PlaceIdStr)
end
_t[34] = InLobby or InMainMenu
if not _t[34] then
    _t[33] = Tracking
    _t[34] = "CurrentDungeonID"
    _t[35] = _t[27].EventDungeons[PlaceIdStr] or (_t[27].Dungeons[PlaceIdStr] or (_t[27].Towers[PlaceIdStr] or nil))
    _t[33][_t[34]] = _t[35]
end
task.wait()
_G.ScriptStep = "message handler"
task.wait()
_G.ScriptStep = "save error"
_t[36] = function(p10, p11, p12)
    if isfile("PORN_script_error.txt") then
        appendfile("PORN_script_error.txt", "\n\nError:\n" .. p11 .. "\nLocation: " .. p10)
    else
        writefile("PORN_script_error.txt", "Error:\n" .. p11 .. "\nLocation: " .. p10)
    end

    ShowErrorScreen(p10, p11, p12, nil)

    local v169 = "**Error:** `" .. p11 .. "`\n**Extra Info:** `" .. tostring(p12) .. "`\n**Executor:** `" .. ExecName .. "`"
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
        if v171 and HookFunction or hookmetamethod then
            local DamageReduction = 0
            local ok, _ = pcall(function()
                for _, v in pairs(getreg()) do
                    if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                        DamageReduction += 1
                    end
                end
            end)
            if DamageReduction > 2 or DamageReduction == 0 then
                return
            end
            if not ok then
                return
            end
            local TeleportState = false
            local success = pcall(function()
                local v1194 = ishooked and ishooked(request)

                if not v1194 then
                    v1194 = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                end

                if v1194 then
                    TeleportState = true

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
                    TeleportState = true

                    return
                end
            end)
            if TeleportState then
                return
            end
            if not ok2 then
                return
            end
        end

        if not HttpRequest then
            return
        end

        local v373 = HttpRequest
        local v374 = s2
        local t8 = {
			["Content-Type"] = "application/json"
		}
        local json = HttpService:JSONEncode(t6)

        v373({
			Url = v374,
			Method = "POST",
			Headers = t8,
			Body = json
		})
    end)
end
local HandleError = _t[36]
_t[38] = function()
    local Helpers = {}
    local elapsed = os.clock()
    task.wait()
    _G.ScriptStep = "not in main menu"
    if not InMainMenu then
        Helpers[3] = Tracking
        Helpers[1] = "PlayerClass"
        Helpers[2] = WaitForAttribute(LocalPlayer, "Class")
        Helpers[3][Helpers[1]] = Helpers[2]
        Helpers[3] = Tracking
        Helpers[1] = "PlayerLevel"
        Helpers[2] = WaitForAttribute(LocalPlayer, "Level")
        Helpers[3][Helpers[1]] = Helpers[2]
        Helpers[3] = Tracking
        Helpers[1] = "PlayerPrestige"
        Helpers[2] = WaitForAttribute(LocalPlayer, "Prestige")
        Helpers[3][Helpers[1]] = Helpers[2]
        CharacterData = GetServiceCloned(PlayerGui, "Profile")
        PlayerBackpack = GetServiceCloned(CharacterData, "Inventory")
        Helpers[3] = Settings
        Helpers[2] = "Parties"
        Helpers[1] = GetServiceCloned(ReplicatedStorage, "Parties")
        Helpers[3][Helpers[2]] = Helpers[1]
    end
    task.spawn(function()
        local ok, result = pcall(function()
            print("PORN: player is using", ExecName, ExecVersionStr)

            local v1196 = string.lower((tostring(ExecName)))

            if string.find(v1196, "xeno") then
                print("PORN: xeno fixes")
                Settings.IsUsingXeno = true
            end
        end)

        if not ok then
            if not IdentifyExecutor then
                print("PORN: couldn't identify executor, identity function missing.")

                return
            end

            print("PORN: couldn't identify executor,", (tostring(result)))
        end
    end)
    task.wait()
    _G.ScriptStep = "load and save files"
    local function FileCache(p13, p14, p15)
        local MissionTimer
        local ok, result = pcall(function()
            if isfile and (writefile and readfile) then
                local EventDungeonCheck = "PORN/ignore/" .. p14

                if p15 and isfile(EventDungeonCheck) then
                    delfile(EventDungeonCheck)
                    task.wait(1)
                end

                if not isfile(EventDungeonCheck) then
                    while true do
                        local success, result = pcall(function()
                            writefile(EventDungeonCheck, game:HttpGet(p13))
                        end)
                        if success then
                            break
                        end
                        warn("writefile() failed... trying again in 2 seconds...\nReasom: " .. tostring(result))
                        task.wait(2)
                    end
                end

                local v1200 = EventDungeonCheck .. "_tfwd"
                local EventDungeonState = os.date("*t")

                if isfile(v1200) then
                    local v1202 = HttpService
                    local t11 = { readfile(v1200) }
                    local data = v1202:JSONDecode(Unpack(t11))

                    if EventDungeonState.day > data.dd or EventDungeonState.month > data.md then
                        while true do
                            local success, result = pcall(function()
                                writefile(EventDungeonCheck, game:HttpGet(p13))
                            end)
                            if success then
                                break
                            end
                            warn("writefile() failed... trying again in 2 seconds...\nReasom: " .. tostring(result))
                            task.wait(2)
                        end

                        local _writefile = writefile
                        local v1208 = HttpService
                        local day = EventDungeonState.day
                        local month = EventDungeonState.month

                        _writefile(v1200, v1208:JSONEncode({
							dd = day,
							md = month
						}))
                    end
                else
                    local _writefile = writefile
                    local v1212 = HttpService
                    local day = EventDungeonState.day
                    local month = EventDungeonState.month

                    _writefile(v1200, v1212:JSONEncode({
						dd = day,
						md = month
					}))
                end

                local _loadstring = loadstring
                local t13 = { readfile(EventDungeonCheck) }

                MissionTimer = _loadstring(Unpack(t13))()

                return
            end

            MissionTimer = loadstring(game:HttpGet(p13))()
        end)
        if not ok then
            HandleError("FAILED TO GET FILE", tostring(result), (tostring(p14)))
        end
        if MissionTimer == nil then
            warn(p14 .. " has no data? Trying to download it again...")
            MissionTimer = FileCache(p13, p14, true)
        end
        if MissionTimer then
            return MissionTimer
        end
    end
    task.wait()
    _G.ScriptStep = "obsidian library"
    Helpers[2] = Settings
    if Helpers[2].BadExecutor then
        Library = FileCache("https://raw.githubusercontent.com/fnkq/jewhub32skidy/refs/heads/main/old_obsidian_library", "GlobalFlag1")
    else
        Library = FileCache("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua", "GlobalFlag1")
    end
    task.wait()
    _G.ScriptStep = "obsidian theme manager"
    ThemeManager = FileCache("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua", "GlobalFlag2")
    task.wait()
    _G.ScriptStep = "obsidian save manager"
    SaveManager = FileCache("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua", "GlobalFlag3")
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
    local DamageIncrease = 0
    local function UpdateLoadProgress(p16)
        DamageIncrease += 1

        if p16 then
            Loading:SetCurrentStep(5)
            Loading.Sidebar:AddLabel("<font color='#FF3333'>LOADING EXCEPTION FOUND.\nFORCING DUNGEON RESTART.</font>")

            return
        end

        Loading:SetCurrentStep(DamageIncrease)
        Loading.Sidebar:AddLabel(_G.ScriptStep)
    end
    _G.ScriptStep = "setting up..."
    UpdateLoadProgress()
    task.wait()
    _G.ScriptStep = "creating important tables"
    Helpers[2] = {
		"MissionStart",
		DescendantCheck = true
	}
    local t14 = { Helpers[2] }
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
    Helpers[3] = {
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
    local v182 = Helpers[3]
    task.wait()
    Helpers[3] = {
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
    local v183 = Helpers[3]
    task.wait()
    Helpers[3] = {
		MoltenEgg = true,
		OceanEgg = true,
		SkyEgg = true,
		AlligatorEgg = true,
		FairyEgg = true,
		ArcaneEgg = true
	}
    local v184 = Helpers[3]
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
    Helpers[2] = {
		Level = 105,
		DungeonName = "Ruin Rush",
		DungeonDelay = 65,
		DungeonID = 31
	}
    Helpers[1] = {
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
    Helpers[3] = {
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
    Helpers[3] = {
		t16,
		t17,
		t18,
		t19,
		t20,
		Helpers[2],
		Helpers[1],
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
		Helpers[3],
		t41,
		t42,
		t43,
		t44,
		t45,
		t46,
		t47,
		t48
	}
    local v218 = Helpers[3]
    task.wait()
    local MissionScriptRef = {}
    _G.ScriptStep = "loading script functions"
    UpdateLoadProgress()
    _G.ScriptStep = "nmumber format"
    local function FormatNumberWithCommas(p17)
        local str = tostring(p17)

        return str:reverse():gsub("...", "%0,", (math.floor((#str - 1) / 3))):reverse()
    end
    task.wait()
    _G.ScriptStep = "seconds to string"
    Helpers[3] = function(p18)
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
    local FormatSecondsToString = Helpers[3]
    task.wait()
    _G.ScriptStep = "is mission over"
    Helpers[3] = function()
        local MissionCleared = Workspace:GetAttribute("MissionCleared")

        if MissionCleared and MissionCleared == true then
            task.spawn(function()
                task.wait(2)
                MissionDone = true
            end)

            return true
        end

        return false
    end
    local IsMissionCleared = Helpers[3]
    task.wait()
    _G.ScriptStep = "connect mission cleared"
    Helpers[2] = function()
        if InDungeon then
            Workspace:GetAttributeChangedSignal("MissionCleared"):Once(function()
                if IsMissionCleared() then
                    print("Mission is finished")
                end
            end)
        end
    end
    task.wait()
    _G.ScriptStep = "check for avoid mobs"
    Helpers[3] = function()
        if InDungeon then
            local ok, result = pcall(function()
                for _, child in pairs(Settings.Parties:GetChildren()) do
                    local RaidID = child:FindFirstChild("RaidID")

                    if RaidID then
                        Settings.PartyRaidID = RaidID.Value

                        if not Settings.CanRequire then
                            if Settings.PartyRaidID == 1 then
                                MissionScriptRef.BOSSDireBoarwolf = true
                                MissionScriptRef.BOSSTreeEnt = true
                            end

                            if Settings.PartyRaidID == 20 then
                                MissionScriptRef.BOSSAnubis = true
                                MissionScriptRef.BOSSHogRider = true
                            end

                            if Settings.PartyRaidID == 22 then
                                MissionScriptRef.BOSSFallenKing = true
                            end

                            if Settings.PartyRaidID == 24 then
                                MissionScriptRef.CorruptedGreaterTree = true
                            end

                            if Settings.PartyRaidID == 25 then
                                MissionScriptRef.BOSSKrakenMain = true
                                MissionScriptRef.DavyJones = true
                                MissionScriptRef.Nautilus = true
                                MissionScriptRef.PirateCrab = true
                            end

                            if Settings.PartyRaidID == 26 then
                                MissionScriptRef.HadesCerberus = true
                                MissionScriptRef.SentryOfCerberus = true
                                MissionScriptRef.MinotaurDungeonBoss = true
                            end

                            if Settings.PartyRaidID == 28 then
                                MissionScriptRef.BOSSEvilSanta = true
                            end

                            if Settings.PartyRaidID == 32 then
                                MissionScriptRef.RustyCommander = true
                                MissionScriptRef.AetherKing = true
                            end

                            if Settings.PartyRaidID == 41 then
                                MissionScriptRef.MiniBossCrystalWeaver = true
                                MissionScriptRef.DungeonBOSSCrystalWolf = true
                                MissionScriptRef.BOSSKandrix = true
                            end

                            if Settings.PartyRaidID == 44 then
                                MissionScriptRef.EVENTBOSSVane = true
                                MissionScriptRef.BOSSDarkriseDarkDragon = true
                            end

                            if Settings.PartyRaidID == 45 then
                                MissionScriptRef.EVENTBOSSKraken = true
                                MissionScriptRef.EVENTBOSSDavyJones = true
                            end

                            if Settings.PartyRaidID == 46 then
                                MissionScriptRef.EVENTBOSSCupid = true
                            end
                        end
                    end
                end
            end)

            if not ok then
                HandleError("BOSS MOBS", (tostring(result)))
            end
        end
    end
    local _task = task
    Helpers[1] = Helpers[3]
    _task.wait()
    _G.ScriptStep = "check player ping"
    Helpers[3] = function()
        local ok, result = pcall(function()
            while true do
                if MaxDungeonLevel ~= 0 then
                    PingAdjusted = LocalPlayer:GetNetworkPing() * MaxDungeonLevel
                else
                    PingAdjusted = 0
                end

                task.wait(1)
            end
        end)

        if not ok then
            HandleError("PLAYER PING", (tostring(result)))
        end
    end
    local _task2 = task
    local GetPlayerPing = Helpers[3]
    _task2.wait()
    _G.ScriptStep = "mob scanner"
    Helpers[3] = function()
        if (InLobby or InDungeon) and (Settings.CanRequire and (HookFunction and NewCClosure)) then
            local PlayerRemover = require(Mobs:WaitForChild("PlayerRemover", 1e999))

            HookFunction(PlayerRemover.AddMobToSearch, NewCClosure(function()
            end))

            for _, child in pairs(MobsFolder:GetChildren()) do
                PlayerRemover:RemoveMobFromSearch(child)
            end
        end

        if InDungeon then
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
                    local v1794 = Tracking.MobTable[p19]

                    if v1794 then
                        if p20 then
                            v1794.Invincible = true

                            return
                        end

                        v1794.Invincible = false
                    end
                end)

                if Settings.CanRequire then
                    local lib = require(Mobs)
                    local PetDamageBoost = 1e999
                    local function v1234(p21, p22)
                        local MobDebug = Tracking.MobDebug

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
                            Tracking.MobTable[p21] = {
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
                                    if Tracking.MobDebug then
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
                                Tracking.MobTable[p21] = {
									Priority = true
								}

                                if MobDebug then
                                    print("PORN:", p22, "(added, priority)")
                                end

                                return
                            end
                            if MobData then
                                Tracking.MobTable[p21] = {}

                                if MobDebug then
                                    print("PORN:", p22, "(added)")

                                    return
                                end
                            else
                                Tracking.MobTable[p21] = {
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
                    Connections.ConnectMobCreated = Remotes:WaitForChild("Health_InstanceAdded").OnClientEvent:Connect(function(p23)
                        if p23.Parent == ReplicatedStorage then
                        end

                        repeat
                            task.wait()
                        until p23.Parent ~= ReplicatedStorage

                        v1234(p23)
                    end)
                    Connections.ConnectMobDied = Remotes:WaitForChild("Mobs_MobDied", math.huge).OnClientEvent:Connect(function(p24, p25)
                        if Tracking.MobTable[p25] then
                            Tracking.MobTable[p25] = nil

                            if Tracking.MobDebug then
                                warn("PORN:", p24, "(died)")
                            end
                        end
                    end)
                    local _pairs = pairs
                    for v1238, v1239 in _pairs(MobsFolder:GetChildren()) do

                        _pairs = v1234
                        _pairs(v1239)
                    end
                    while not MissionDone do
                        if not SkillActive then
                            _pairs = nil
                            CurrentTargetMob = nil
                            task.wait()
                        else
                            local v1240 = PetDamageBoost
                            local MobTable = Tracking.MobTable
                            local v1242
                            local v1243 = PetDamageBoost
                            local v1244
                            local v1245
                            for k, v in pairs(MobTable) do
                                local PlayerHealthInstance = k

                                if not PlayerHealthInstance then
                                    continue
                                end

                                if not PlayerHealthInstance.Parent then
                                    if Tracking.MobDebug then
                                        warn("PORN:", PlayerHealthInstance.Name, "(no parent)")
                                    end

                                    MobTable[PlayerHealthInstance] = nil

                                    continue
                                end

                                local HealthProperties = PlayerHealthInstance:FindFirstChild("HealthProperties")

                                if HealthProperties then
                                    HealthProperties = HealthProperties:FindFirstChild("Health")
                                end

                                if HealthProperties then
                                    HealthProperties = HealthProperties.Value == 0
                                end

                                if HealthProperties then
                                    if Tracking.MobDebug then
                                        warn("PORN:", PlayerHealthInstance.Name, "(zero health)")
                                    end

                                    MobTable[PlayerHealthInstance] = nil

                                    continue
                                end

                                if v.IsBlocker then
                                    v1242 = PlayerHealthInstance

                                    break
                                end

                                local MobData = lib:GetMobData(PlayerHealthInstance)

                                if v.NoData and MobData then
                                    v.NoData = nil
                                end

                                if not MobData then
                                    local Collider3 = PlayerHealthInstance:FindFirstChild("Collider")

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
                                            v1242 = PlayerHealthInstance
                                            v1240 = Magnitude
                                        end
                                    elseif v.NoData then
                                        v1245 = PlayerHealthInstance
                                    elseif Magnitude < v1243 then
                                        v1244 = PlayerHealthInstance
                                        v1243 = Magnitude
                                    end
                                end
                            end
                            IsMobAlive = v1242 or v1244
                            if v1242 then
                                CanAttack = false
                                IsInCombat = true
                                CurrentTargetMob = v1242
                            elseif v1244 then
                                CanAttack = true
                                IsInCombat = true
                                CurrentTargetMob = v1244
                            elseif v1245 then
                                CurrentTargetMob = v1245
                            else
                                IsInCombat = nil
                                CurrentTargetMob = nil
                            end
                            task.wait()
                        end
                    end
                else
                    for _, child in ipairs(Settings.Parties:GetChildren()) do
                        if child:WaitForChild("RaidID").Value == 30 then
                            t50.Part = true
                        end
                    end
                    local function v1255(p26, p27)
                        local MobDebug = Tracking.MobDebug

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
                            Tracking.MobTable[p26] = {
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
                                Tracking.MobTable[p26] = {
									Priority = true
								}

                                if MobDebug then
                                    print("PORN:", p27, "(priority)")
                                end

                                return
                            end

                            Tracking.MobTable[p26] = {}

                            if MobDebug then
                                print("PORN:", p27, "(added)")
                            end
                        end
                    end
                    Connections.ConnectMobCreated = Remotes:WaitForChild("Health_InstanceAdded").OnClientEvent:Connect(function(p28)
                        if p28.Parent == ReplicatedStorage then
                        end

                        repeat
                            task.wait()
                        until p28.Parent ~= ReplicatedStorage

                        v1255(p28)
                    end)
                    Connections.ConnectMobDied = Remotes:WaitForChild("Mobs_MobDied", math.huge).OnClientEvent:Connect(function(p29, p30)
                        if Tracking.MobTable[p30] then
                            Tracking.MobTable[p30] = nil

                            if Tracking.MobDebug then
                                warn("PORN:", p29, "(died)")
                            end
                        end
                    end)
                    for v1258, v1259 in pairs(MobsFolder:GetChildren()) do

                        local v1260 = v1259

                        task.spawn(function()
                            v1255(v1260)
                        end)
                    end
                    while not MissionDone do
                        if not SkillActive then
                            CurrentTargetMob = nil
                            task.wait()
                        else
                            local MobTable = Tracking.MobTable
                            local v1262
                            local huge = math.huge
                            local v1264
                            local huge2 = math.huge
                            for MobsInstanceAdded, v1269 in pairs(MobTable) do

                                if MobsInstanceAdded.Parent then
                                    local HealthProperties = MobsInstanceAdded:FindFirstChild("HealthProperties")

                                    if HealthProperties then
                                        HealthProperties = HealthProperties:FindFirstChild("Health")
                                    end

                                    if HealthProperties then
                                        HealthProperties = HealthProperties.Value == 0
                                    end

                                    if HealthProperties then
                                        MobTable[MobsInstanceAdded] = nil

                                        if Tracking.MobDebug then
                                            warn("PORN:", MobsInstanceAdded.Name, "(zero health)")
                                        end

                                        continue
                                    end

                                    if v1269.Invincible then
                                        continue
                                    end

                                    local Collider5 = MobsInstanceAdded:FindFirstChild("Collider")

                                    if not Collider5 then
                                        continue
                                    end

                                    if v1269.Priority then
                                        v1262 = MobsInstanceAdded

                                        break
                                    end

                                    local Magnitude = (Collider.Position - Collider5.Position).Magnitude

                                    if MissionScriptRef[MobsInstanceAdded.Name] then
                                        if Magnitude < huge2 then
                                            v1264 = MobsInstanceAdded
                                            huge2 = Magnitude
                                        end
                                    elseif Magnitude < huge then
                                        v1262 = MobsInstanceAdded
                                        huge = Magnitude
                                    end

                                    continue
                                end

                                MobTable[MobsInstanceAdded] = nil

                                if Tracking.MobDebug then
                                    warn("PORN:", MobsInstanceAdded.Name, "(no parent)")
                                end
                            end
                            IsMobAlive = v1262 or v1264
                            if v1262 and huge then
                                IsInCombat = true
                                CanAttack = false
                                CurrentTargetMob = v1262
                            elseif not v1262 and (v1264 and huge2) then
                                IsInCombat = true
                                CanAttack = true
                                CurrentTargetMob = v1264
                            else
                                IsInCombat = false
                                CurrentTargetMob = nil
                            end
                            task.wait()
                        end
                    end
                end
            end)
            if not success then
                HandleError("MOB SCANNER", (tostring(result)))
            end
        end
    end
    local _task3 = task
    local ScanForMobs = Helpers[3]
    _task3.wait()
    _G.ScriptStep = "destroy mission scripts"
    Helpers[3] = function()
        if InDungeon then
            local t58 = {
				FireDart = true,
				HammerHit = true,
				CreateBolder = true,
				ToxinTrigger = true,
				RollingBoulder = true
			}
            local ModuleScript = ReplicatedStorage:WaitForChild("MissionScripts", math.huge):FindFirstChildWhichIsA("ModuleScript")

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
    local DestroyMissionScripts = Helpers[3]
    _task4.wait()
    _G.ScriptStep = "ping once unlocked"
    Helpers[3] = function(p31)
        local _, _ = pcall(function()
            local v1273 = p31
            local str = tostring(PlayerName)
            local t59 = {
				username = "Mastery tracker",
				content = v1273 .. " unlocked on account: " .. str .. "\n-# " .. WebhookMention
			}
            local DiscordWebhookLink = Settings.DiscordWebhookLink

            if not DiscordWebhookLink and true then
                warn("No webhook link provided")

                return
            end

            local v1277 = false
            local _, _ = pcall(function()
                if v1277 and HookFunction or hookmetamethod then
                    local PetKillCount = 0
                    local ok, _ = pcall(function()
                        for _, v in pairs(getreg()) do
                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                PetKillCount += 1
                            end
                        end
                    end)
                    if PetKillCount > 2 or PetKillCount == 0 then
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

                if not HttpRequest then
                    return
                end

                local v1826 = HttpRequest
                local v1827 = DiscordWebhookLink
                local t61 = {
					["Content-Type"] = "application/json"
				}
                local json = HttpService:JSONEncode(t59)

                v1826({
					Url = v1827,
					Method = "POST",
					Headers = t61,
					Body = json
				})
            end)
        end)
    end
    local PingMasteryTracker = Helpers[3]
    task.wait()
    _G.ScriptStep = "ping for cap"
    task.wait()
    _G.ScriptStep = "get difficulty"
    Helpers[3] = function()
        return Remotes:WaitForChild("Missions_GetDifficulty", 1e999):InvokeServer()
    end
    local GetDifficulty = Helpers[3]
    task.spawn(function()
        if InDungeon then
            Tracking.LoggedDifficulty = GetDifficulty()
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
    Helpers[3] = function(p32, p33)
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
            HandleError("REPLAY DUNGEON", (tostring(result)))
        end
    end
    local ReplayDungeon = Helpers[3]
    task.wait()
    _G.ScriptStep = "rejoin last dungeon"
    Helpers[3] = function(p34)
        local DungeonId = p34
        local ok, result = pcall(function()
            local v1295 = "PORN/" .. PlayerName .. "_Rejoin"

            if isfile(v1295) then
                if Loading then
                    DamageIncrease += 1
                    Loading:SetCurrentStep(5)
                    Loading.Sidebar:AddLabel("<font color='#FF3333'>LOADING EXCEPTION FOUND.\nFORCING DUNGEON RESTART.</font>")
                end
                local CombatState
                pcall(function()
                    CombatState = HttpService:JSONDecode(readfile(v1295))
                end)
                if CombatState and CombatState ~= "" then
                    local Dungeon = CombatState.Dungeon
                    local RejoinDifficulty = CombatState.RejoinDifficulty
                    local DisconnectedTime = CombatState.DisconnectedTime

                    delfile(v1295)

                    if DisconnectedTime + 300 > os.time() then
                        MissionDone = true
                        ReplayDungeon(Dungeon, RejoinDifficulty)
                    end
                else
                    delfile(v1295)

                    if IsEventDungeon then
                        ReplayDungeon(Tracking.CurrentDungeonID, 1)
                    elseif InDungeon then
                        ReplayDungeon(Tracking.CurrentDungeonID, 5)
                    elseif InTower then
                        ReplayDungeon(Tracking.CurrentDungeonID, false)
                    end
                end
            end

            if DungeonId then
                if Loading then
                    DamageIncrease += 1
                    Loading:SetCurrentStep(5)
                    Loading.Sidebar:AddLabel("<font color='#FF3333'>LOADING EXCEPTION FOUND.\nFORCING DUNGEON RESTART.</font>")
                end

                local LoggedDifficulty = Tracking.LoggedDifficulty

                if InTower then
                    LoggedDifficulty = nil
                end

                local MissionId = Tracking.MissionId
                local timestamp = os.time()

                DungeonData = {
					Dungeon = MissionId,
					RejoinDifficulty = LoggedDifficulty,
					DisconnectedTime = timestamp
				}
                writefile(v1295, HttpService:JSONEncode(DungeonData))
                TeleportService:Teleport(tonumber("4310463616"), LocalPlayer)
            end
        end)
        if not ok then
            HandleError("REJOIN LAST DUNGEON", (tostring(result)))
        end
    end
    local RejoinLastDungeon = Helpers[3]
    task.wait()
    _G.ScriptStep = "restart dungeon"
    Helpers[3] = function(p35)
        if not Settings.ReplayMission and (not Settings.DoingGuildDungeon and not p35) then
            return
        end

        if Settings.TowerChestDelay then
            task.wait(6)
        end

        local v430 = GetDifficulty()
        local v432

        if Settings.Parties then
            local Leader = Remotes:WaitForChild("Party_GetPartyData", math.huge):InvokeServer().Leader

            v432 = PlayerName == Leader.Value
        else
            v432 = false
        end

        if not v432 then
            Remotes:WaitForChild("Missions_LeaveChoice", math.huge):FireServer(true)
            Remotes:WaitForChild("Missions_NotifyReadyToLeave", math.huge):FireServer()

            return
        end

        Library:Notify("Teleporting...", Settings.RestartDungeonDelay)
        MissionDone = true
        task.wait(Settings.RestartDungeonDelay)

        if InTower then
            v430 = nil
        end

        if Remotes:WaitForChild("Missions_GetCurrentLives", 1e999):InvokeServer() == 0 then
            ReplayDungeon(Tracking.MissionId, v430)
        end

        if Settings.DoingGuildDungeon and not Settings.IsNightmareDungeon then
            if Tracking.MissionId ~= 42 or v430 ~= 5 then
                if v430 == 1 and not InTower then
                    Library:Notify("Moving to challenge mode", 1)
                    ReplayDungeon(Tracking.MissionId, 5)
                else
                    local v433
                    for i, v in ipairs(v218) do
                        if v.DungeonID == Tracking.MissionId then
                            v433 = i - 1

                            break
                        end
                    end
                    local v436 = v218[v433]
                    Library:Notify("Moving to " .. v436.DungeonName, 1)
                    if v436.Level > 0 then
                        ReplayDungeon(v436.DungeonID, 1)
                    else
                        ReplayDungeon(v436.DungeonID, nil)
                    end
                end
            else
                local DoAllDropdownValue = Options.DoAllDropdown.Value

                if DoAllDropdownValue == "Stop" then
                    Library:Notify("Finished doing all dungeons", 10000000000000000)

                    return
                end

                if DoAllDropdownValue == "Loop" then
                    ReplayDungeon(38, nil)
                elseif DoAllDropdownValue == "Loop w/o inf" then
                    ReplayDungeon(21, nil)
                elseif DoAllDropdownValue == "Loop w/o towers" then
                    ReplayDungeon(1, 1)
                elseif DoAllDropdownValue == "Play nightmare dungeons" then
                    ReplayDungeon(1005, 5)
                end
            end
        end

        local IsNightmareDungeon = Settings.IsNightmareDungeon

        if IsNightmareDungeon then
            IsNightmareDungeon = Settings.PrioNmDCount

            if IsNightmareDungeon then
                IsNightmareDungeon = Tracking.PlayerLevel == 150
            end
        end

        if IsNightmareDungeon then
            local v439 = Remotes:WaitForChild("Missions_GetCurrentDailyDungeon", math.huge):InvokeServer()

            for _, v in pairs(v439) do
                local InternalID = v.InternalID

                for k, _ in pairs(Options.PrioNmDropdown.Value) do
                    if InternalID == Settings.PrioritizedNightmareDungeons[k] then
                        ReplayDungeon(v.ID, v430)
                    end
                end
            end
        end

        if Settings.AutoLeveling and not IsEventDungeon then
            local children = Players:GetChildren()
            local PetKillCountMax = 1e999

            if #children > 1 then
                for _, v in pairs(children) do
                    local Level = v:GetAttribute("Level")

                    if Level and Level < PetKillCountMax then
                        PetKillCountMax = Level
                    end
                end
            else
                PetKillCountMax = LocalPlayer:GetAttribute("Level")
            end

            for _, v in ipairs(v218) do
                if PetKillCountMax >= v.Level then
                    if v.DungeonID == Tracking.MissionId then
                        Library:Notify("Replaying: " .. v.DungeonName, 2)
                    else
                        Library:Notify("Moving to: " .. v.DungeonName, 2)
                    end

                    ReplayDungeon(v.DungeonID, 5)
                end
            end
        end

        if Settings.RandomNightmareDungeon and Settings.IsNightmareDungeon then
            Tracking.MissionId = Settings.RandomNightmareDungeon
        end

        ReplayDungeon(Tracking.MissionId, v430)
    end
    local RestartDungeon = Helpers[3]
    task.wait()
    _G.ScriptStep = "wait for game crash"
    task.spawn(function()
        if InDungeon then
            CoreGui:WaitForChild("RobloxPromptGui", 1e999):WaitForChild("promptOverlay", 1e999):WaitForChild("ErrorPrompt", math.huge)
            RejoinLastDungeon(true)
        end
    end)
    if InLobby or InDungeon then
        Helpers[3] = LocalPlayer.Character

        repeat
            task.wait()
        until LocalPlayer.Character
    end
    task.wait()
    _G.ScriptStep = "collect chests"
    Helpers[3] = function()
        local u454 = true
        local t62 = {}
        local u452 = false
        local success, result = pcall(function()
            if Settings.CanRequire then
                u452 = require(Items)
            end

            local ok, _ = pcall(function()
                u454 = MarketplaceService:UserOwnsGamePassAsync(UserId, 8136250)
            end)

            if not ok then
                warn("unable to check if user owns extra chest gamepass")
            end

            local Missions_GetMissionPrize = Remotes:WaitForChild("Missions_GetMissionPrize", 1e999)

            for i = 1, 3 do
                if i == 3 and not u454 then
                    return
                end

                task.wait(Settings.CollectChestsDelay)

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
            HandleError("COLLECT DUNGEON CHESTS", (tostring(result)))
        end

        return t62
    end
    local CollectChests = Helpers[3]
    task.wait()
    _G.ScriptStep = "claim all quests"
    task.wait()
    _G.ScriptStep = "getting current dungeon"
    task.wait()
    _G.ScriptStep = "connect mission finished"
    Helpers[3] = function()
        if InDungeon then
            Remotes:WaitForChild("Missions_MissionFinished", 1e999).OnClientEvent:Once(function(p36, _, p38)
                Settings.DungeonCompletionTime = FormatSecondsToString(p36)

                if Settings.ShowTime then
                    Library:Notify("Completed in " .. Settings.DungeonCompletionTime)
                end

                if Settings.AutoLeveling then
                    local ok, result = pcall(function()
                        local Active = CharacterData:WaitForChild("Quests", 1e999):WaitForChild("Active", 1e999)

                        if Settings.ClaimGuildQuests then
                            local DailyGuildQuests = require(Quests):GetDailyGuildQuests()

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
                        HandleError("CLAIM QUESTS", (tostring(result)))
                    end
                end

                local t64 = { "none" }

                if Settings.CollectDungeonChest then
                    t64 = CollectChests()
                end

                if Settings.LogDungeon then
                    local PetAttackSpeed = 65280
                    local s3 = "unknown"
                    local children = Players:GetChildren()

                    if p38 then
                        PetAttackSpeed = 16711680
                    end

                    if Settings.CanRequire then
                        s3 = require(Missions):GetCurrentMissionData().NameTag
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

                    if not Tracking.DungeonImage then
                        local ok, _ = pcall(function()
                            if not Settings.CanRequire then
                                Tracking.DungeonImage = ""

                                return
                            end

                            local CurrentMissionData = require(Missions):GetCurrentMissionData()
                            local v1865 = tostring(CurrentMissionData.DungeonID or (CurrentMissionData.ImageID or 3815150377)):match("%d+")

                            if Tracking.MissionId == 43 then
                                v1865 = 15046578670
                            end

                            local s4 = "PORN/DungeonImages"
                            local imageUrl

                            if not isfile("PORN/DungeonImages") then
                                local v1867 = game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. v1865 .. "&size=420x420&format=Png")
                                local v1868 = HttpService:JSONDecode(v1867).data[1]

                                writefile(s4, HttpService:JSONEncode({
									Images = {
										[tostring(v1865)] = {
											v1868.imageUrl,
											os.time() + 604800
										}
									}
								}))
                                imageUrl = v1868.imageUrl
                            else
                                local v1870 = HttpService
                                local t66 = { readfile(s4) }
                                local Images = v1870:JSONDecode(Unpack(t66)).Images
                                local v1873 = Images[v1865]

                                if not v1873 or (v1873[2] <= os.time() or string.find(tostring(v1873[1]), "token")) then
                                    local t67 = {}

                                    for k, v in pairs(Images) do
                                        t67[k] = { table.unpack(v) }
                                    end

                                    local v1877 = game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. v1865 .. "&size=420x420&format=Png")
                                    local v1878 = HttpService:JSONDecode(v1877).data[1]

                                    t67[tostring(v1865)] = {
										v1878.imageUrl,
										os.time() + 604800
									}
                                    writefile(s4, HttpService:JSONEncode({
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

                            Tracking.DungeonImage = imageUrl
                        end)

                        if not ok then
                            Tracking.DungeonImage = ""
                        end
                    end

                    local v1348 = "**Dungeon:** `" .. s3 .. "`\n" .. "**Time:** `" .. Settings.DungeonCompletionTime .. "`\n" .. "**Party size:** `" .. v1345 .. "`\n" .. "**Chest drops:** `" .. table.concat(t64, "`, `") .. "`"
                    local t68 = {
						url = Tracking.DungeonImage
					}
                    local t69 = {
						username = "Dungeon logger",
						embeds = {{
							description = v1348,
							type = "rich",
							color = PetAttackSpeed,
							thumbnail = t68
						}}
					}
                    local DiscordWebhookLink = Settings.DiscordWebhookLink
                    local v1352 = t69

                    if not DiscordWebhookLink and true then
                        warn("No webhook link provided")
                    else
                        local v1353 = false
                        local _, _ = pcall(function()
                            if v1353 and HookFunction or hookmetamethod then
                                local PlayerPing = 0
                                local ok, _ = pcall(function()
                                    for _, v in pairs(getreg()) do
                                        if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                            PlayerPing += 1
                                        end
                                    end
                                end)
                                if PlayerPing > 2 or PlayerPing == 0 then
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

                            if not HttpRequest then
                                return
                            end

                            local v1887 = HttpRequest
                            local v1888 = DiscordWebhookLink
                            local t71 = {
								["Content-Type"] = "application/json"
							}
                            local json = HttpService:JSONEncode(v1352)

                            v1887({
								Url = v1888,
								Method = "POST",
								Headers = t71,
								Body = json
							})
                        end)
                    end
                end

                if ActiveSellCount == 0 then
                    if BuySellLock ~= 0 then
                    end
                end

                repeat
                    task.wait(1)
                until ActiveSellCount == 0 and BuySellLock == 0

                RestartDungeon()
            end)
        end
    end
    local _task5 = task
    local ConnectMissionFinished = Helpers[3]
    _task5.wait()
    _G.ScriptStep = "connect tower finished"
    task.wait()
    _G.ScriptStep = "get rarity"
    local function GetRarity(p39)
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
    Helpers[3] = function()
        local ok, result = pcall(function()
            local Items = PlayerBackpack:WaitForChild("Items")
            local t72 = {
				"Armor",
				"Primary",
				"Offhand"
			}
            local v1377 = ReplicatedStorage.PlayerEquips[LocalPlayer.Name]
            local Inventory_EquipItem = Remotes:WaitForChild("Inventory_EquipItem", 1e999)

            Connections.ConnectEquipNewItems = Items.ChildAdded:Connect(function(child)
                local ok, result = pcall(function()
                    BuySellLock += 1
                    task.wait(1)

                    if not child:FindFirstChild("Level") then
                        BuySellLock -= 1

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
                                    local v2159 = GetRarity(child)
                                    local v2160 = GetRarity(Folder)

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
                    BuySellLock -= 1
                end)

                if not ok then
                    HandleError("SCAN ITEM TO EQUIP", tostring(result), child)
                end
            end)
        end)

        if not ok then
            HandleError("EQUIP NEW ITEM", (tostring(result)))
        end
    end
    local EquipNewItem = Helpers[3]
    task.wait()
    _G.ScriptStep = "character respawn"
    Helpers[3] = function()
        if InDungeon or InLobby then
            Connections.ConnectNewCharacter = LocalPlayer.CharacterAdded:Connect(function(character)
                Character = character
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
            LocalPlayer:Kick("did you really think there was a secret key? рџ‚")

            return
        end

        if InDungeon or InLobby then
            local t73 = {
				ouiPYM1v390ceedpctxE = true
			}
            local GUID = CharacterData:WaitForChild("GUID", math.huge)

            if GUID then
                GUID = t73[tostring(GUID.Value)]
            end

            if GUID then
                Settings.IsScriptDeveloper = true
            end
        end
    end)
    task.wait()
    _G.ScriptStep = "nightmare check"
    task.wait()
    _G.ScriptStep = "collect tower chests"
    local function CollectTowerChests()
        if InTower then
            local success, result = pcall(function()
                local Chests_OpenChest = Remotes:WaitForChild("Chests_OpenChest", 1e999)

                if Settings.CanRequire and (debug and getupvalue) then
                    local v1381 = debug.getupvalue(require(Chests).Start, 12)

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
                    local v3 = Workspace:FindFirstChild(v)

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
                HandleError("COLLECT TOWER CHEST", (tostring(result)))
            end
        end
    end
    task.wait()
    _G.ScriptStep = "collect coins"
    local function CollectCoinsAndDrops()
        if Settings.CanRequire and (debug and getupvalue) then
            local ok, result = pcall(function()
                local v1387 = debug.getupvalue(require(Drops).Start, 6)
                local Drops_CoinEvent = Remotes:WaitForChild("Drops_CoinEvent", math.huge)

                for k, v in pairs(v1387) do
                    v.model:Destroy()
                    v.followPart:Destroy()
                    table.remove(v1387, k)
                    Drops_CoinEvent:FireServer(v.id)
                end
            end)

            if not ok then
                HandleError("COLLECT DROP", (tostring(result)))

                return
            end
        else
            local ok, result = pcall(function()
                local Coins = Workspace:WaitForChild("Coins", 1e999)
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
                HandleError("COLLECT DROP FALLBACK", (tostring(result)))
            end
        end
    end
    task.wait()
    _G.ScriptStep = "get guild"
    local function GetGuildTag(p40)
        return p40:GetAttribute("GuildTag") or "вќЊ"
    end
    task.wait()
    _G.ScriptStep = "open trade again"
    local function OpenTradeNotification()
        if InLobby or InDungeon then
            local _, _ = pcall(function()
                local t2PlayerBeingTraded = Players:FindFirstChild(Settings.PlayerBeingTraded)
                local v1397 = GetGuildTag(t2PlayerBeingTraded)
                local v1398 = PlayerName
                local v1399 = GetGuildTag(LocalPlayer)
                local PlayerBeingTraded = Settings.PlayerBeingTraded
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
                    if v1403 and HookFunction or hookmetamethod then
                        local AutoDamageReduction = 0
                        local ok, _ = pcall(function()
                            for _, v in pairs(getreg()) do
                                if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                    AutoDamageReduction += 1
                                end
                            end
                        end)
                        if AutoDamageReduction > 2 or AutoDamageReduction == 0 then
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

                    if not HttpRequest then
                        return
                    end

                    local v1929 = HttpRequest
                    local v1930 = v1402
                    local t77 = {
						["Content-Type"] = "application/json"
					}
                    local json = HttpService:JSONEncode(t75)

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
    local function BuyFromLocalShop(p41, p42, p43, p44, p45)
        if not p43 or (not p44 or not p45) then
            return false
        end
        local Shop_BuyLocal = Remotes:FindFirstChild("Shop_BuyLocal")
        local p41_2 = PlayerBackpack:WaitForChild("Items", 1e999):FindFirstChild(p41)
        if not p41_2 or not Shop_BuyLocal then
            return false
        end
        local v500 = p41_2 and p41_2:FindFirstChild("Count")
        if not v500 or not (p44 <= tonumber(v500.Value)) then
            return false
        end
        local success, result = pcall(function()
            Shop_BuyLocal:InvokeServer(p42, Shop.LocalShops[p42].Items[p43])
        end)
        if not success then
            HandleError("BUY FROM LOCAL SHOP", (tostring(result)))

            return false
        end
        Library:Notify("Purchased " .. p45 .. "!", 1)

        return true
    end
    task.wait()
    _G.ScriptStep = "buy from egg shop"
    local function BuyFromEggShop(p46, p47, p48, p49)
        local Pets_BuyEgg = Remotes:FindFirstChild("Pets_BuyEgg")

        if p46 == "Gold" then
            local Currency = CharacterData:FindFirstChild("Currency")

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
    local function OpenMenu(p50)
        local ok, _ = pcall(function()
            require(ReplicatedStorage.Client.Gui):Get(p50):Open()
        end)

        if not ok then
            Library:Notify("Function is unsupported by your executor", 5)
        end
    end
    task.wait()
    _G.ScriptStep = "upgrade to max"
    local function UpgradeToMax(p51)
        if InDungeon or InLobby then
            local ok, result = pcall(function()
                local Folder = ReplicatedStorage.PlayerEquips[PlayerName][p51]:FindFirstChildWhichIsA("Folder")
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
                HandleError("UPGRADE", (tostring(result)))
            end
        end
    end
    task.wait()
    _G.ScriptStep = "expand part size"
    if InDungeon then
        MissionObjects = Workspace:WaitForChild("MissionObjects", math.huge)
        Tracking.MissionId = WaitForAttribute(Workspace, "MissionId")
    end
    task.wait()
    _G.ScriptStep = "scan parts to touch"
    local PartsList = {}
    local function ScanPartsToTouch(p52, p53)
        local v521
        if not p52 then
            v521 = MissionObjects
        elseif p52 == "CheckpointGates" then
            v521 = MissionObjects:WaitForChild("CheckpointGates", math.huge)
        elseif p52 == "NoParent" then
            v521 = Workspace
        end
        for v524, v525 in pairs(p53) do

            if type(v525) == "string" then
                v521 = v521:WaitForChild(v525, 1e999)
            end
        end
        local ChestClearedCheck
        if p53.DescendantCheck then
            for _, descendant in pairs(v521:GetDescendants()) do
                if descendant.ClassName == "TouchTransmitter" then
                    ChestClearedCheck = descendant
                    v521 = descendant.Parent

                    break
                end
            end
        else
            ChestClearedCheck = v521:WaitForChild("TouchInterest", 1e999)
        end
        local Size = v521.Size
        local CanCollide = v521.CanCollide
        local Position = v521.Position
        v521.Size = Vector3.new(1, 1, 1)
        v521.CanCollide = false
        local v532 = PartsList
        local v533 = p53.Regenerates or nil
        v532[v521] = {
			TouchPart = ChestClearedCheck,
			OriginalLocation = Position,
			OriginalSize = Size,
			OriginalCollision = CanCollide,
			Regenerates = v533
		}
        if p53.Regenerates then
            while not MissionDone do
                local _ = ChestClearedCheck.Parent

                repeat
                    task.wait(0.5)
                until not ChestClearedCheck.Parent

                ChestClearedCheck = v521:WaitForChild("TouchInterest", math.huge)
                v521.Size = Vector3.new(1, 1, 1)
                v521.CanCollide = false

                local v535 = PartsList
                local v536 = p53.Regenerates or nil

                v535[v521] = {
					TouchPart = ChestClearedCheck,
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
    if InDungeon then
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
			})[tostring(Tracking.CurrentDungeonID)]

            if not v553 then
                HandleError("DUNGEON UNSUPPORTED", "an update to the script is required for this dungeon to work", "if this is a new dungeon please wait until I can update the script")

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
                        ScanPartsToTouch(nil, v)
                    end)
                else
                    for _, v48 in pairs(v) do
                        local v563 = v48

                        task.spawn(function()
                            ScanPartsToTouch(tostring(k), v563)
                        end)
                        task.wait()
                    end
                end

                task.wait()
            end

            if InTower then
                task.spawn(function()
                    local WaveExit
                    Connections.ConnectTower = Remotes:WaitForChild("Towers_UpdateChests", 1e999).OnClientEvent:Connect(function(_, p55, p56, _, _)
                        if WaveExit then
                            if p55 == p56 then
                                PartsList[WaveExit].DontTeleport = nil

                                return
                            end

                            PartsList[WaveExit].DontTeleport = true
                        end
                    end)
                    Connections.ConnectTowerPrint = Remotes:WaitForChild("Towers_Print").OnClientEvent:Connect(function(p59)
                        if WaveExit and string.find(p59, "false") then
                            DisconnectVariable("ConnectTower")
                            PartsList[WaveExit].DontTeleport = true
                            DisconnectVariable("ConnectTowerPrint")
                        end
                    end)
                    WaveExit = MissionObjects:WaitForChild("WaveExit", 1e999)
                end)
            end
        end)

        if not ok then
            HandleError("FIND TELEPORT PARTS", (tostring(result)))
        end
    end
    task.wait()
    _G.ScriptStep = "toggle menu"
    local function ToggleMenuUI(p60, p61)
        local MenuState = p60
        local MenuValue = p61
        local success, result = pcall(function()
            local v1423 = PlayerGui:FindFirstChild(MenuState)

            if v1423 and MenuValue then
                v1423.Enabled = false

                return
            end

            if v1423 and not MenuValue then
                v1423.Enabled = true
            end
        end)
        if not success then
            HandleError("MENU TOGGLE", (tostring(result)))
        end
    end
    task.wait()
    _G.ScriptStep = "dodge current attack"
    local function DodgeCurrentAttack(p62, p63, p64, p65)
        local success, result = pcall(function()
            local v1424 = p65 or 0

            Settings.DodgingAttack = true
            task.wait(p62)

            if Settings.SafeKillaura then
                SkillActive = false
            end

            local v1425 = time() + p63
            local vector3 = Vector3.new(HumanoidRootPart.Position.X, HumanoidRootPart.Position.Y + 100, HumanoidRootPart.Position.Z + v1424)

            Library:Notify("Dodging attack: " .. p64, p63)

            while v1425 > time() and true do
                RotationEnabled = true
                HumanoidRootPart.CFrame = CFrame.new(vector3)
                TeleportStandPart()
                task.wait()
            end

            RotationEnabled = false
            SkillActive = true
            Settings.DodgingAttack = nil
        end)
        if not success then
            HandleError("DODGING ATTACK", (tostring(result)))
        end
    end
    task.wait()
    _G.ScriptStep = "teleport to orb"
    local function TeleportToOrb(p66)
        local OrbTarget = p66
        local success, result = pcall(function()
            while Settings.DodgingAttack do
                task.wait()
            end

            local v1427 = OrbTarget:WaitForChild("Particles", 5) or false

            if not v1427 then
                print("Unable to locate orb part")

                return
            end

            if Settings.SafeKillaura then
                SkillActive = false
            end

            local v1428 = time() + 0.5

            while v1428 > time() do
                RotationEnabled = true
                HumanoidRootPart.CFrame = CFrame.new(v1427.Position)
                TeleportStandPart()
                task.wait()
            end

            SkillActive = true
            RotationEnabled = false
        end)
        if not success then
            HandleError("TELEPORT TO ORB", (tostring(result)))
        end
    end
    task.wait()
    _G.ScriptStep = "format pet skill"
    local function FormatPetSkill(p67, p68)
        p67.Skills = p67.Skills or {}

        local PetSkillData = p67[p68]

        for i = 1, PetSkillData[1] do
            local v584 = i

            if v584 == 1 and PetSkillData.SkipFirst then
                v584 = ""
            end

            if type(PetSkillData[2]) == "table" then
                for _, v in pairs(PetSkillData[2]) do
                    if v584 == "" then
                        local insert = table.insert
                        local Skills = p67.Skills
                        local v589 = PetSkillData[3]
                        local v590 = PetSkillData[4]

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
                        local v594 = PetSkillData[3]
                        local v595 = PetSkillData[4]

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
                local v598 = PetSkillData[2] .. v584
                local v599 = PetSkillData[3]
                local v600 = PetSkillData[4]

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
    local function GetPlayerPet()
        local lib = require(Pets)
        local v602
        local ItemName
        local ItemName2
        local PetSkillFromPetRef
        while true do
            while true do
                while true do
                    while true do
                        v602 = Character and Character:FindFirstChild("PetData")

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

                ItemName2 = ReplicatedStorage.PlayerEquips[PlayerName].Pet:FindFirstChild(ItemName)

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
                FormatPetSkill(PetAttackTable[PetSkillFromPetRef], (tostring(k)))
            end
        end

        return PetAttackTable[PetSkillFromPetRef]
    end
    task.wait()
    _G.ScriptStep = "format class skill"
    local function FormatClassSkill(p69)
        p69.Skills = p69.Skills or {}

        for _, v in pairs(p69.SkillInfo) do
            local v612 = v[5]
            local OnMobDied = v[3]

            for i = 1, v[1] do
                local MobsOnClientEvent = i
                local v616 = MobsOnClientEvent

                if type(v[2]) == "table" then
                    for _, v49 in pairs(v[2]) do
                        local v619 = v49
                        local v620 = v[4]
                        local IncrementD = v.IncrementD
                        local IncrementC = v.IncrementC
                        local AddCd = v.AddCd

                        if IncrementD and MobsOnClientEvent >= IncrementD[1] then
                            v612 += IncrementD[2]
                        end

                        if IncrementC and MobsOnClientEvent >= IncrementC[1] then
                            OnMobDied += IncrementC[2]
                        end

                        if AddCd and MobsOnClientEvent >= AddCd[1] then
                            OnMobDied = v[3] + AddCd[2]
                        end

                        if v.SkipFirst and MobsOnClientEvent == 1 then
                            v616 = ""
                        end

                        if v616 == "" then
                            table.insert(p69.Skills, {
								Skill = v619,
								Cooldown = OnMobDied,
								Type = v620,
								Distance = v612
							})
                        else
                            table.insert(p69.Skills, {
								Skill = v619 .. MobsOnClientEvent,
								Cooldown = OnMobDied,
								Type = v620,
								Distance = v612
							})
                        end

                        if AddCd then
                            MobsOnClientEvent += 1
                        end
                    end
                else
                    local v624 = v[2]
                    local v625 = v[4]
                    local IncrementD = v.IncrementD
                    local IncrementC = v.IncrementC
                    local AddCd = v.AddCd

                    if IncrementD and MobsOnClientEvent >= IncrementD[1] then
                        v612 += IncrementD[2]
                    end

                    if IncrementC and MobsOnClientEvent >= IncrementC[1] then
                        OnMobDied += IncrementC[2]
                    end

                    if AddCd and MobsOnClientEvent >= AddCd[1] then
                        OnMobDied = v[3] + AddCd[2]
                    end

                    if v.SkipFirst and MobsOnClientEvent == 1 then
                        v616 = ""
                    end

                    if v616 == "" then
                        table.insert(p69.Skills, {
							Skill = v624,
							Cooldown = OnMobDied,
							Type = v625,
							Distance = v612
						})
                    else
                        table.insert(p69.Skills, {
							Skill = v624 .. MobsOnClientEvent,
							Cooldown = OnMobDied,
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
    local function GetPlayerClass(p70)
        Settings.PlayerClass = LocalPlayer:GetAttribute("Class")

        if Connections.ClassConnection then
            DisconnectVariable("ClassConnection")
        end

        task.spawn(function()
            if Settings.PlayerClass == "Summoner" then
                local Effect_SoulObject_OnCollected = Remotes:WaitForChild("Effect_SoulObject_OnCollected", math.huge)

                Connections.ClassConnection = Effect_SoulObject_OnCollected.OnClientEvent:Connect(function(_, _, p73, _, _)
                    Effect_SoulObject_OnCollected:FireServer(p73)
                end)

                return
            end

            if Settings.PlayerClass == "Necromancer" then
                local Effect_SoulObjectNecromancer_OnCollected = Remotes:WaitForChild("Effect_SoulObjectNecromancer_OnCollected", math.huge)

                Connections.ClassConnection = Effect_SoulObjectNecromancer_OnCollected.OnClientEvent:Connect(function(_, _, p78, _, _)
                    Effect_SoulObjectNecromancer_OnCollected:FireServer(p78)
                end)

                return
            end

            if Settings.PlayerClass == "Dragoon" then
                Connections.ClassConnection = Remotes:WaitForChild("Combat_EnemyMarked", 1e999).OnClientEvent:Connect(function(_, _, _, _)
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

            if Settings.PlayerClass == "Demon" then
                local Skillset_Demon_Lifesteal = Remotes:WaitForChild("Skillset_Demon_Lifesteal", 1e999)

                while Settings.PlayerClass == "Demon" and not MissionDone do

                    repeat
                        task.wait()
                    until CurrentTargetMob
                    Skillset_Demon_Lifesteal:FireServer({
						CurrentTargetMob,
						CurrentTargetMob,
						CurrentTargetMob
					})
                    task.wait(8.1)
                end
            end
        end)

        if AttackTable then
            if AttackTable[Settings.PlayerClass].Distance == "Ranged" then
                Settings.IsRanged = true
            else
                Settings.IsRanged = nil
            end

            if not p70 then
                return AttackTable[Settings.PlayerClass]
            end

            if not AttackTable[Settings.PlayerClass].Skills then
                FormatClassSkill(AttackTable[Settings.PlayerClass])
            end

            return AttackTable[Settings.PlayerClass]
        end

        HandleError("PLAYER CLASS", "Unable to identify players class. Attack data does not exist.", Tracking.PlayerClass)
    end
    task.wait()
    _G.ScriptStep = "build shop values"
    local function BuildShopValues(p85, p86)
        if type(p86) ~= "table" then
            Options[p85]:SetValues({ "can't build shop, got " .. type(p86) })

            return {}
        end

        local t99 = {}
        local t100 = {}
        local ok, result = pcall(function()

            for v1435, TowerChestOnClientEvent in pairs(p86) do

                local v1439

                if TowerChestOnClientEvent and TowerChestOnClientEvent.CurrencyType then
                    local VisualName = TowerChestOnClientEvent.VisualName
                    local str = tostring(TowerChestOnClientEvent.CoinPrice)

                    v1439 = VisualName .. " (" .. str:reverse():gsub("...", "%0,", (math.floor((#str - 1) / 3))):reverse() .. " " .. TowerChestOnClientEvent.CurrencyType .. ")"
                else
                    local VisualName = TowerChestOnClientEvent.VisualName
                    local str = tostring(TowerChestOnClientEvent.CoinPrice)

                    v1439 = VisualName .. " (" .. str:reverse():gsub("...", "%0,", (math.floor((#str - 1) / 3))):reverse() .. ")"
                end

                table.insert(t99, v1439)
                t100[v1439] = TowerChestOnClientEvent
            end
            if #t99 == 0 then
                print("No shop data available for", p85)

                return
            end
            Options[p85]:SetValues(t99)
        end)

        if not ok then
            HandleError("BUILDING SHOP DATA FOR " .. p85, (tostring(result)))
        end

        return t100
    end
    task.wait()
    _G.ScriptStep = "disconnect variables"
    function DisconnectVariable(p87)
        if Connections[p87] then
            Connections[p87]:Disconnect()
            Connections[p87] = nil
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
    local function CheckKillCount()
        if not Settings.EventBossDataTable then
            return
        end

        if CheckingKillCount or (InMainMenu or InLobby) then
            return
        end

        if KillCountLabel then
            KillCountLabel:Destroy()
        end

        CheckingKillCount = true

        local v637 = Settings.EventBossDataTable[1]
        local num = tonumber(Settings.StopAfterTotalKills)
        local v639 = Settings.EventBossDataTable[2]
        local num2 = tonumber(Settings.StopAfterDailyKills)

        if num then
            num = num <= v637
        end

        if num or num2 and num2 <= v639 then
            KillCountLabel = Library:Notify(Settings.SelectedEventBoss .. " kill limit reached... Dungeon restart required.", 1e999)
            SkillActive = false
            RotationEnabled = true

            if Flags.Event then
                local SelectedEventBoss = Settings.SelectedEventBoss
                local u642 = SelectedEventBoss
                local _, _ = pcall(function()
                    local v1442 = u642
                    local str = tostring(PlayerName)
                    local t101 = {
						username = "Limit tracker",
						content = v1442 .. " limit reached on account: " .. str .. "\n-# " .. WebhookMention
					}
                    local DiscordWebhookLink = Settings.DiscordWebhookLink

                    if not DiscordWebhookLink and true then
                        warn("No webhook link provided")

                        return
                    end

                    local v1446 = false
                    local _, _ = pcall(function()
                        if v1446 and HookFunction or hookmetamethod then
                            local PlayerPingCheck = 0
                            local ok, _ = pcall(function()
                                for _, v in pairs(getreg()) do
                                    if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                        PlayerPingCheck += 1
                                    end
                                end
                            end)
                            if PlayerPingCheck > 2 or PlayerPingCheck == 0 then
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

                        if not HttpRequest then
                            return
                        end

                        local v2012 = HttpRequest
                        local v2013 = DiscordWebhookLink
                        local t103 = {
							["Content-Type"] = "application/json"
						}
                        local json = HttpService:JSONEncode(t101)

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
            SkillActive = true
            RotationEnabled = false
        end

        CheckingKillCount = false
    end
    task.wait()
    _G.ScriptStep = "get attack data"
    Class = nil
    AttackTable = nil
    PetAttackTable = nil
    if InDungeon and not MissionDone then
        local success, result = pcall(function()
            AttackTable = FileCache("https://raw.githubusercontent.com/fnkq/jewhub32skidy/refs/heads/main/Classtables33", "c3_3")
            PetAttackTable = FileCache("https://raw.githubusercontent.com/fnkq/jewhub32skidy/refs/heads/main/pettables25", "p2_5")

            if AttackTable and PetAttackTable then
                Class = GetPlayerClass(true)

                if Class ~= nil then
                    local Distance = Class.Distance

                    if Distance == "Ranged" then
                        MeleeMinDist = 20
                        MeleeMaxDist = 50

                        return
                    end

                    if Distance == "Melee" then
                        MeleeMinDist = 13
                        MeleeMaxDist = 8

                        return
                    end
                end
            else
                warn("couldn't retrieve class/pet data. Possible rate limit?")
            end
        end)
        if not success then
            HandleError("ATTACK DATA", (tostring(result)))
        end
    end
    if not InMainMenu then
        local u263 = false
        local u264 = false
        local _ = LocalPlayer.Character

        repeat
            if InDungeon then
                task.spawn(function()
                    if u264 then
                        return
                    end

                    u264 = true

                    if Remotes:WaitForChild("Missions_GetCurrentLives", 1e999):InvokeServer() == 0 then
                        u263 = true
                        DamageIncrease += 1
                        Loading:SetCurrentStep(5)
                        Loading.Sidebar:AddLabel("<font color='#FF3333'>LOADING EXCEPTION FOUND.\nFORCING DUNGEON RESTART.</font>")
                        RejoinLastDungeon(false)
                        RestartDungeon(true)

                        return
                    end

                    u264 = false
                end)
            elseif InLobby then
                RejoinLastDungeon(false)
            end

            task.wait(0.2)
        until LocalPlayer.Character

        if u263 then
            return
        end

        Character = LocalPlayer.Character
        Collider = Character:WaitForChild("Collider")
        HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
        print("PORN: local player character found")
    end
    _G.ScriptStep = "require() check"
    if InDungeon or InLobby and Character then
        local success = pcall(function()
            require(LocalPlayer:WaitForChild("PlayerScripts", 1e999):WaitForChild("PlayerModule", 1e999))
        end)
        if not success then
            Settings.CanRequire = nil
            print("PORN: executor doesn't support require(). Applying fixes.")
        else
            Settings.CanRequire = true
        end
    end
    task.spawn(function()
        pcall(function()
            if InDungeon and (CoreGui and CoreGui:FindFirstChild("PurchasePromptApp")) then
                CoreGui:FindFirstChild("PurchasePromptApp"):Destroy()
            end
        end)
    end)
    task.wait()
    _G.ScriptStep = "prevent falling part"
    PlayerStandPart = nil
    StandPartHeight = nil
    if InDungeon then
        PlayerStandPart = Instance.new("Part")
        PlayerStandPart.Name = "MissionSpawnPart"
        PlayerStandPart.Size = Vector3.new(3, 1, 3)
        PlayerStandPart.Parent = Workspace
        PlayerStandPart.Anchored = true
        PlayerStandPart.Transparency = 1
        PlayerStandPart.CanCollide = true
        PlayerStandPart.CanTouch = false
        PlayerStandPart.CanQuery = false
        StandPartHeight = GetPlayerSize() + PlayerStandPart.Size.Y / 2.75
    end
    task.wait()
    _G.ScriptStep = "creating Obsidian UI"
    UpdateLoadProgress()
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
    if InMainMenu or InLobby then
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
        Settings.FastKillaura = p89 and true or nil

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
        MaxDungeonLevel = p90 / 100
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
        AttackDelay = p91
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
            AttackReady = false

            return
        end

        AttackReady = p92
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
        MaxDamageReduction = p93
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
            CombatActive = false

            return
        end

        CombatActive = p94
    end
	})
    SecondTab:AddLabel("Rejoin on error delay", true)
    local _SecondTab = SecondTab
    local v273 = MaxPingTolerance
    _SecondTab:AddSlider("RestartStuckSlider", {
		Text = "Seconds",
		Default = v273,
		Min = 30,
		Max = 120,
		Rounding = 0,
		Compact = true,
		Tooltip = "Controls how long it takes for the script to rejoin the dungeon when something in the dungeon or script has broken causing you to be unable to complete it.",
		Callback = function(p95)
        MaxPingTolerance = p95
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
    Settings.BuffOrbList = {
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
        if InDungeon and Options.OrbBuffDropdown:GetActiveValues(true) > 0 then
            Settings.SelectedOrbs = {}

            for k, _ in pairs(p96) do
                table.insert(Settings.SelectedOrbs, Settings.BuffOrbList[k])
            end

            return
        end

        Settings.SelectedOrbs = nil
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
    local v279 = Settings
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
    Settings.TotalKillLabel = FirstTab:AddLabel("Total Kills: ?", false)
    FirstTab:AddInput("TotalEventInput", {
		Text = "Stop after X total kills",
		Default = "",
		Placeholder = "number here",
		Callback = function(p97)
        if InDungeon then
            Settings.StopAfterTotalKills = p97
        end
    end
	})
    FirstTab:AddDivider({
		Margin = -5
	})
    Settings.DailyKillLabel = FirstTab:AddLabel("Daily Kills: ?", false)
    FirstTab:AddInput("DailyEventInput", {
		Text = "Stop after X daily kills",
		Default = "",
		Placeholder = "number here",
		Callback = function(p98)
        if InDungeon then
            Settings.StopAfterDailyKills = p98
        end
    end
	})
    EventTabRight = EventTab:AddRightTabbox("Right Tabbox")
    FirstTab = EventTabRight:AddTab("Wheel")
    Settings.CoinSpinLabel = FirstTab:AddLabel("Coin cost: 5", true)
    FirstTab:AddInput("WheelSpinInput", {
		Text = "Wheel spin amount",
		Default = 1,
		Placeholder = "1",
		Callback = function(p99)
        local u660 = p99
        local success, result = pcall(function()
            if u660 == "" then
                Settings.CoinSpinLabel:SetText("Coin cost: 0")

                return
            end

            if not tonumber(u660) then
                Settings.CoinSpinLabel:SetText("Coin cost: <font color=\"rgb(255, 0, 0)\">invalid number</font>")

                return
            end

            local str = tostring(u660 * 5)
            local v1450 = str:reverse():gsub("...", "%0,", (math.floor((#str - 1) / 3))):reverse()

            Settings.CoinSpinLabel:SetText("Coin cost: " .. v1450)
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

            local ServerTick = 0

            while true do
                ServerTick += 1

                if not (ServerTick <= num) then
                    break
                end

                EventSpinner_JoinQueue:FireServer(LocalPlayer)
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
        local Cosmetics = PlayerBackpack:FindFirstChild("Cosmetics")
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
        if NetDesync then
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
            if IsFindingHidden or InMainMenu then
                return
            end

            local EventFinderReward = Workspace:FindFirstChild("EventFinderReward", true)

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

            local EventObbyReward = Workspace:FindFirstChild("EventObbyReward", true)

            if EventObbyReward then
                table.insert(t116, EventObbyReward.Base)
            end

            local EventDailyReward = Workspace:FindFirstChild("EventDailyReward", true)

            if EventDailyReward then
                table.insert(t116, EventDailyReward.Base)
            end

            if NetDesync then
                NetDesync(true)
                Remotes:WaitForChild("Health_Reset", 1e999):FireServer()
                task.wait(1)
                Remotes:WaitForChild("Health_Reset", math.huge):FireServer()
                LocalPlayer.CharacterAdded:Wait()
                task.wait(1)
            end

            Remotes:WaitForChild("SetMounted", math.huge):FireServer(true)
            task.wait(1)

            for _, v in pairs(t116) do
                HumanoidRootPart.CFrame = CFrame.new(Vector3.new(v.Position.X, v.Position.Y + v.Size.Y / 2, v.Position.Z))
                task.wait(0.5)
            end

            local Spawn = Workspace:FindFirstChild("Spawn")
            local v1463 = Spawn.Size.Y / 2
            local vector3 = Vector3.new(Spawn.Position.X, Spawn.Position.Y + v1463, Spawn.Position.Z)

            HumanoidRootPart.CFrame = CFrame.new(vector3)
            task.wait(1)
            Remotes:WaitForChild("SetMounted", 1e999):FireServer(false)

            if NetDesync then
                NetDesync(false)
            end

            for _, child in pairs(Workspace.Coins:GetChildren()) do
                if child.Parent and child:IsA("Part") then
                    child.CanCollide = false
                    child.Anchored = true
                    child.CFrame = CFrame.new(HumanoidRootPart.Position.X, HumanoidRootPart.Position.Y - GetPlayerSize(), HumanoidRootPart.Position.Z)
                end
            end

            IsFindingHidden = false
        end)

        if not ok then
            HandleError("TELEPORT DAILY REWARDS", (tostring(result)))
        end
    end
	}):AddButton({
		Text = "ESP",
		Tooltip = "Adds a highlight around all hidden daily rewards around an event hubs map if available.",
		Func = function()
        if ChangingHiddenESP then
            return
        end

        local EventFinderReward = Workspace:FindFirstChild("EventFinderReward", true)

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

        local EventObbyReward = Workspace:FindFirstChild("EventObbyReward", true)

        if EventObbyReward then
            table.insert(t117, EventObbyReward.Base)
        end

        local EventDailyReward = Workspace:FindFirstChild("EventDailyReward", true)

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
        if TeleportingHoops > 0 or InMainMenu then
            return
        end

        local Hoops = Workspace:FindFirstChild("Hoops")

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
            if not InLobby or IsFindingEggs then
                return
            end
            local ScavengerHunts = Workspace:FindFirstChild("ScavengerHunts")
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
            if NetDesync then
                NetDesync(true)
                Remotes:WaitForChild("Health_Reset", 1e999):FireServer()
                task.wait(1)
                Remotes:WaitForChild("Health_Reset", math.huge):FireServer()
                LocalPlayer.CharacterAdded:Wait()
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
            local Spawn = Workspace:FindFirstChild("Spawn")
            if not Spawn then
                return
            end
            local v1479 = Spawn.Size.Y / 2
            local vector3 = Vector3.new(Spawn.Position.X, Spawn.Position.Y + v1479, Spawn.Position.Z)
            HumanoidRootPart.CFrame = CFrame.new(vector3)
            task.wait(1)
            Remotes:WaitForChild("SetMounted", math.huge):FireServer(false)
            if NetDesync then
                NetDesync(false)
            end
            for _, child in pairs(Workspace.Coins:GetChildren()) do
                if child.Parent and child:IsA("Part") then
                    child.CanCollide = false
                    child.Anchored = true
                    child.CFrame = CFrame.new(HumanoidRootPart.Position.X, HumanoidRootPart.Position.Y - GetPlayerSize(), HumanoidRootPart.Position.Z)
                end
            end
            IsFindingEggs = false
        end)
        if not success then
            HandleError("FIND ALL EGGS", (tostring(result)))
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

            local ScavengerHunts = Workspace:FindFirstChild("ScavengerHunts")

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
            HandleError("FIND ALL EGGS", (tostring(result)))
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
            if v:IsA("ObjectValue") and v.Name == "PlayerOwner" and v.Value ~= PlayerName then
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
        if Settings.CheckingTrade or InMainMenu then
            return
        end

        Settings.CheckingTrade = true

        local ok, result = pcall(function()
            local Items = PlayerBackpack.Items
            local v1491 = ReplicatedStorage.PlayerEquips:FindFirstChild(PlayerName)
            local v1492
            local PingCheckValue = 0
            local PingCheckCount = 0
            local t121 = {}
            local function v1496(p100)
                local _ = p100.ID.Value

                for _, v in pairs(t121) do
                    if v.ID.Value == p100.ID.Value then
                        local Folder = Instance.new("Folder")

                        Folder.Name = "Exploited"
                        Folder.Parent = v
                        Library:Notify("Found duped item: " .. v.Name, 3)
                        PingCheckValue += 1

                        return
                    end
                end
            end
            local v1497, v1498, v1499 = pairs(ReplicatedStorage:FindFirstChild("Trades"):GetChildren())
            local GlobalCache
            local v1500
            repeat
                v1499, v1500 = v1497(v1498, v1499)

                if not v1499 then
                    GlobalCache = true
                end

                if GlobalCache then
                    break
                end
            until v1500:FindFirstChild(PlayerName)
            if not GlobalCache then
                v1492 = v1500
            end
            GlobalCache = false
            if not v1492 then
                Library:Notify("You are not trading anyone", 3)
                Settings.CheckingTrade = nil

                return
            end
            for v1504, v1505 in pairs(v1492:GetChildren()) do

                if v1505.Name ~= LocalPlayer.Name then
                    for _, descendant in pairs(v1505:GetDescendants()) do
                        if descendant.Name == "ID" then
                            PingCheckCount += 1
                            table.insert(t121, descendant.Parent)
                        end
                    end
                end
            end
            if PingCheckCount == 0 then
                Library:Notify("No items to check", 3)
                Settings.CheckingTrade = nil

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
            if PingCheckValue == 0 then
                Library:Notify("No duped items found", 3)
                Settings.CheckingTrade = nil

                return
            end
        end)

        if not ok then
            HandleError("SCAN TRADE FOR DUPE", (tostring(result)))
        end

        Settings.CheckingTrade = nil
    end
	})
    RightGroupBox:AddButton({
		Text = "Trade with last person",
		Func = function()
        if Settings.PlayerBeingTraded ~= nil then
            Remotes:WaitForChild("Trade_Accept"):FireServer(Players[Settings.PlayerBeingTraded])
            Library:Notify("Attempted to open last trade!", 2)
            OpenTradeNotification()

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
        local children = PlayerBackpack:FindFirstChild("Cosmetics"):GetChildren()
        local children2 = PlayerBackpack:FindFirstChild("Items"):GetChildren()
        local DebugTable = {}
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

        if not Settings.CanRequire then

            for v729, v730 in pairs(children2) do

                local Name = v730.Name

                if not DebugTable[Name] and (not v730:FindFirstChild("Locked") and not v730:FindFirstChild("Favorited")) then
                    DebugTable[Name] = true
                    table.insert(t123, Name)
                    t124[Name] = Name
                end
            end
            for _, v in pairs(children) do
                local vName = v.Name

                if not DebugTable[vName] and (not v:FindFirstChild("Locked") and not v:FindFirstChild("Favorited")) then
                    DebugTable[vName] = true
                    table.insert(t123, vName)
                    t124[vName] = vName
                end
            end
        else
            local lib = require(Items)
            for v738, DungeonEventConnect in pairs(children2) do

                local DisplayKey = lib[DungeonEventConnect.Name].DisplayKey

                if not DebugTable[DungeonEventConnect.Name] then
                    local v741 = v726(DisplayKey)

                    if not DungeonEventConnect:FindFirstChild("Locked") and (not DungeonEventConnect:FindFirstChild("Favorited") and not lib[DungeonEventConnect.Name].Untradeable) then
                        DebugTable[DungeonEventConnect.Name] = true
                        table.insert(t123, v741)
                        t124[v741] = DungeonEventConnect.Name
                    end
                end
            end
            for _, v in pairs(children) do
                local DisplayKey = lib[v.Name].DisplayKey

                if not DebugTable[v.Name] then
                    local v745 = v726(DisplayKey)

                    if not v:FindFirstChild("Locked") and (not v:FindFirstChild("Favorited") and not lib[v.Name].Untradeable) then
                        DebugTable[v.Name] = true
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

        local PingTolerance = 0
        local children = PlayerBackpack:WaitForChild("Items", 1e999):GetChildren()
        local children3 = PlayerBackpack:WaitForChild("Cosmetics", 1e999):GetChildren()
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
                PingTolerance += 1
            end
        until PingTolerance == 20

        if PingTolerance == 20 then
            return
        end

        for _, v in pairs(children3) do
            if t125[v.Name] then
                Trade_AddItem:FireServer(v, 1e999)
                PingTolerance += 1
            end

            if PingTolerance == 20 then
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
    Settings.RangedClassLabel = FirstTab:AddLabel("Ranged class distance", false)
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
            MeleeMinDist = p102
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
            MeleeMaxDist = p103
        end
    end
	})
    FirstTab:AddDivider({
		Margin = -5
	})
    Settings.MeleeClassLabel = FirstTab:AddLabel("Melee class distance", false)
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
            MeleeMinDist = p104
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
            MeleeMaxDist = p105
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
    local v285 = Settings
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
    Settings.AutoSellOptions = {
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
        if p106 and InDungeon or InLobby then
            SellRarityThreshold = Settings.AutoSellOptions[p106]
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
            p107 = InDungeon or InLobby
        end

        if p107 then
            Settings.KeepPerks = true

            return
        end

        Settings.KeepPerks = nil
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
        Settings.SelectedPerks = {}
        local PingCheckTimeout = 0
        for v771, v772 in pairs(p108) do

            Settings.SelectedPerks[tostring(v771)] = Settings.SavePerkTable[v771]
            PingCheckTimeout += 1
        end
        if PingCheckTimeout == 0 then
            Settings.SelectedPerks = nil
        end
    end
	})
    FirstTab:AddButton({
		Text = "Sell inventory",
		DoubleClick = true,
		Tooltip = "all options including perk filtering are taken into account when selling your inventory",
		Func = function()
        local Charms
        if Settings.CanRequire then
            Charms = require(Charms:WaitForChild("Charms"))
        end
        local Items = PlayerBackpack:WaitForChild("Items")
        local GetChildren = Items.GetChildren
        for _, v in pairs(GetChildren(Items)) do
            ActiveSellCount += 1

            if not (v:FindFirstChild("Count") or (v:FindFirstChild("Locked") or (v:FindFirstChild("Favorited") or v:FindFirstChild("GiftWrap")))) then
                local str = tostring(v.Name)
                local v779 = v:FindFirstChild("XP") or string.find(str, "Pet")
                local v780 = v779
                if v780 then
                    v779 = not Settings.IncludePets
                end
                if v779 then
                    ActiveSellCount -= 1

                    continue
                end
                local v781
                if Charms and Charms[v.Name] then
                    v781 = true

                    if not Settings.IncludeCharms then
                        ActiveSellCount -= 1

                        return
                    end
                end
                local v782 = false
                local v783 = GetRarity(v)
                if not v781 and tostring(v783) ~= "NotEquipment" then
                    if v783 == 7 then
                        ActiveSellCount -= 1

                        continue
                    end

                    if not SellRarityThreshold then
                        local ok, result = pcall(function()
                            Remotes:WaitForChild("Drops_SellItems", 1e999):InvokeServer({ v })
                            Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(v), 1)
                            ActiveSellCount -= 1
                        end)

                        if not ok then
                            HandleError("SELL", (tostring(result)))
                        end

                        continue
                    end

                    if v783 < SellRarityThreshold then
                        local ok, result = pcall(function()
                            Remotes:WaitForChild("Drops_SellItems", 1e999):InvokeServer({ v })
                            Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(v), 1)
                            ActiveSellCount -= 1
                        end)

                        if not ok then
                            HandleError("SELL", (tostring(result)))
                        end

                        continue
                    end

                    v782 = true
                end
                if Settings.SellTowerEggs and not not (v and (v.Name and v184[v.Name])) then
                    local ok, result = pcall(function()
                        Remotes:WaitForChild("Drops_SellItems", 1e999):InvokeServer({ v })
                        Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(v), 1)
                        ActiveSellCount -= 1
                    end)

                    if not ok then
                        HandleError("SELL", (tostring(result)))
                    end

                    return
                end
                local v790 = table.find(v183, str) or false
                local v791 = false
                if not v790 and (Settings.KeepPerks and Settings.SelectedPerks) then
                    for i = 1, 3 do
                        if v791 then
                            break
                        end

                        local v793 = v:FindFirstChild("Perk" .. tostring(i))

                        if v793 then
                            local PerkValue = v793:FindFirstChild("PerkValue")

                            for k, _ in pairs(Settings.SelectedPerks) do
                                local v797 = Settings.SavePerkTable[k]
                                local v798 = v793.Value == v797.PerkInternalName

                                if v798 then
                                    v798 = PerkValue.Value >= (v797.PerkValue * 100 - PerkTolerance) / 100 or (v780 or v781) and PerkValue.Value >= (v797.PetPerkValue * 100 - PerkTolerance) / 100
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
                        ActiveSellCount -= 1
                    end)

                    if not ok then
                        HandleError("SELL", (tostring(result)))
                    end
                else
                    ActiveSellCount -= 1
                end

                continue
            end

            ActiveSellCount -= 1
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
            p109 = InDungeon or InLobby
        end

        if p109 then
            Settings.IncludePets = true

            return
        end

        Settings.IncludePets = nil
    end
	})
    SecondTab:AddToggle("SellTowerEggToggle", {
		Text = "Sell tower eggs",
		Default = false,
		Tooltip = "Automatically sell eggs from towers if you are able to collect them",
		Callback = function(p110)
        if p110 then
            p110 = InDungeon
        end

        if p110 then
            Settings.SellTowerEggs = true

            return
        end

        Settings.SellTowerEggs = nil
    end
	})
    SecondTab:AddToggle("SellPetToggle", {
		Text = "Sell charms",
		Default = false,
		Tooltip = "Allow the auto sell functionalities to apply to charms as well",
		Callback = function(p111)
        if p111 and not Settings.CanRequire then
            Library:Notify("Your executor doesn't allow charms to be identified")

            return
        end

        if p111 and InDungeon or InLobby then
            Settings.IncludeCharms = true

            return
        end

        Settings.IncludeCharms = nil
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
        Settings.AddedAutoSellDelay = p112
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
        PerkTolerance = p113
    end
	})
    FirstTab = InventoryTabLeft:AddTab("Equips")
    FirstTab:AddButton({
		Text = "Max upgrade armor",
		Func = function()
        UpgradeToMax("Armor")
    end
	})
    FirstTab:AddButton({
		Text = "Max primary weapon",
		Func = function()
        UpgradeToMax("Primary")
    end
	})
    FirstTab:AddButton({
		Text = "Max offhand weapon",
		Func = function()
        UpgradeToMax("Offhand")
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
        if Settings.CanRequire then
            lib = require(Items)
        end
        local Cosmetics = PlayerBackpack:FindFirstChild("Cosmetics")
        local t165 = {}
        local t166 = {}
        local t167 = {}
        if not Settings.CanRequire then
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
        Settings.RealCosmeticTable = t167
    end
	})
    function RecycleFromInventory(p114)
        local t168 = {}
        for v820, v821 in pairs(Options.CosmeticDropdown.Value) do

            if v820 then
                t168[Settings.RealCosmeticTable[v820]] = true
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
        for v834, v835 in pairs(PlayerBackpack:FindFirstChild("Cosmetics"):GetChildren()) do

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
    local v325 = Settings
    local _SecondTab2 = SecondTab
    local str = tostring(#v182)
    v325.NumberOfEnteredHexes = _SecondTab2:AddLabel("Number of saved hexes: " .. str:reverse():gsub("...", "%0,", (math.floor((#str - 1) / 3))):reverse())
    Settings.UserEnteredHexes = SecondTab:AddLabel("Saved hexes:\nn/a\n+ (all special hexes)", true)
    SecondTab:AddDivider()
    SecondTab:AddInput("SaveUserHexesInput", {
		Text = "Enter hexes to save",
		Default = "",
		ClearTextOnFocus = false,
		Placeholder = "hexes here",
		Callback = function(p115)
        local v842 = InLobby

        if not v842 then
            v842 = InDungeon
        end

        if v842 then
            local str2 = tostring(p115)
            local v844 = string.lower(str2)

            if v844 == "" or v844 == " " then
                local NumberOfEnteredHexes = Settings.NumberOfEnteredHexes
                local str3 = tostring(#v182)

                NumberOfEnteredHexes:SetText("Number of saved hexes: " .. str3:reverse():gsub("...", "%0,", (math.floor((#str3 - 1) / 3))):reverse())
                Settings.UserEnteredHexes:SetText("Saved hexes:\nn/a\n+ (all special hexes)")

                return
            end

            local v847 = string.gsub(Options.SaveUserHexesInput.Value, ", ", ",")
            local v848 = string.gsub(v847, "#", "")
            local parts = string.split(v848, ",")
            local NumberOfEnteredHexes = Settings.NumberOfEnteredHexes
            local str4 = tostring(#v182 + #parts)

            NumberOfEnteredHexes:SetText("Number of saved hexes: " .. str4:reverse():gsub("...", "%0,", (math.floor((#str4 - 1) / 3))):reverse())
            Settings.UserEnteredHexes:SetText("Saved hexes:\n<font color='#33FF33'>" .. v844 .. "</font>\n+ (all special hexes)")

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
        if InDungeon and p116 then
            Settings.RandomNightmareDungeon = math.random(1005, 1007)

            return
        end

        Settings.RandomNightmareDungeon = nil
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
        Settings.RestartDungeonDelay = p117
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
        Settings.CollectChestsDelay = p118
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
        RangedDistance = p119
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
        local PingCheckDelay = 0
        for v859, v860 in pairs(Options.PrioNmDropdown.Value) do

            PingCheckDelay += 1
        end
        if PingCheckDelay == 0 then
            Settings.PrioNmDCount = nil

            return
        end
        Settings.PrioNmDCount = true
    end
	})
    Settings.PrioritizedNightmareDungeons = {}
    Settings.NMDisplayValues = {}
    for _, v in pairs(v218) do
        if v.Level > 0 and v.Level < 130 then
            Settings.PrioritizedNightmareDungeons[v.DungeonName] = v.DungeonID
            table.insert(Settings.NMDisplayValues, v.DungeonName)
        end
    end
    Options.PrioNmDropdown:SetValues(Settings.NMDisplayValues)
    Settings.NMDisplayValues = nil
    RightGroupBox = DungeonTab:AddRightGroupbox("Advanced\n(nightmare challenge)")
    Settings.TotalNightmareLabel = RightGroupBox:AddLabel("Total nightmare clears: ?", false)
    RightGroupBox:AddInput("TotalNightmareInput", {
		Text = "Stop after X total clears",
		Default = "",
		Placeholder = "number here",
		Callback = function(p120)
        if InDungeon then
            Settings.StopAfterTotalNightmare = p120
        end
    end
	})
    RightGroupBox:AddDivider({
		Margin = -5
	})
    Settings.DailyNightmareLabel = RightGroupBox:AddLabel("Daily nightmare clears: ?", false)
    RightGroupBox:AddInput("DailyNightmareInput", {
		Text = "Stop after X daily clears",
		Default = "",
		Placeholder = "number here",
		Callback = function(p121)
        if InDungeon then
            Settings.StopAfterDailyNightmare = p121
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
        Settings.AddedGuildTime = p122
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
        Settings.IncrementInfiniteDelay = p123
    end
	})
    GuildTabRight = GuildTab:AddRightTabbox("Right Tabbox")
    FirstTab = GuildTabRight:AddTab("Advanced")
    Settings.TotalGuildPointLabel = FirstTab:AddLabel("Total Guild Points: ?", false)
    FirstTab:AddInput("TotalKillInput", {
		Text = "Stop after X total points",
		Default = "",
		Placeholder = "number here",
		Callback = function(p124)
        if InDungeon then
            Settings.StopAfterTotalPoints = p124
        end
    end
	})
    FirstTab:AddDivider({
		Margin = -5
	})
    Settings.DailyGuildPointLabel = FirstTab:AddLabel("Daily Guild Points: ?", false)
    FirstTab:AddInput("DailyKillInput", {
		Text = "Stop after X daily points",
		Default = "",
		Placeholder = "number here",
		Callback = function(p125)
        if InDungeon then
            Settings.StopAfterDailyPoints = p125
        end
    end
	})
    SecondTab = GuildTabRight:AddTab("Guild spy")
    Settings.SpyOnGuild = SecondTab:AddLabel("No guild to spy on", true)
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

        for _, child in pairs(Players:GetChildren()) do
            local v871 = GetGuildTag(child)

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
            Settings.SpyOnGuild:SetText("No guild selected")
        end

        local v872 = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

        if not v872 or not v872.Members then
            Settings.SpyOnGuild:SetText("This guilds data is no longer available")
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
        local MaxDamageAmount = 0

        for _, v in pairs(v872.Members) do
            local v878 = t173[v.Role]
            local v879 = v.DisplayName .. " <font size='10'>(" .. tostring(v.UserName) .. ")</font>"
            local Points = v.Points

            MaxDamageAmount += tonumber(Points)
            CopyGuildPoints = MaxDamageAmount

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

        local SpyOnGuild = Settings.SpyOnGuild
        local str11 = tostring(MaxDamageAmount)

        SpyOnGuild:SetText("<u>Total guild points: " .. str11:reverse():gsub("...", "%0,", (math.floor((#str11 - 1) / 3))):reverse() .. "</u>\n" .. tostring(table.concat(t174, "\n")))
    end
	}):AddButton({
		Text = "Clipboard",
		Func = function()
        if #CopyGuildTable == 0 then
            if not Options.GuildNamesDropdown.Value then
                Settings.SpyOnGuild:SetText("No Guild selected")
            end

            local v890 = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

            if not v890 or not v890.Members then
                Settings.SpyOnGuild:SetText("Guild data is no longer available")
            end

            local t175 = {}
            local MinDamageAmount = 0

            for _, v in pairs(v890.Members) do
                local v895 = v.DisplayName .. " (" .. v.UserName .. ")"
                local Points = v.Points

                MinDamageAmount += tonumber(Points)
                CopyGuildPoints = MinDamageAmount

                local str12 = tostring(Points)

                table.insert(t175, v895 .. " - " .. str12:reverse():gsub("...", "%0,", (math.floor((#str12 - 1) / 3))):reverse())
            end

            local _setclipboard = setclipboard
            local str13 = tostring(MinDamageAmount)

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
            Settings.SpyOnGuild:SetText("No guild selected")
        end

        local v902 = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

        if not v902 or not v902.ChatLog then
            Settings.SpyOnGuild:SetText("This guilds data is no longer available")
        end

        table.clear(CopyGuildChat)

        local t176 = {}

        for _, v in pairs(v902.ChatLog) do
            table.insert(t176, v[1])
            table.insert(CopyGuildChat, v[1])
        end

        local SpyOnGuild = Settings.SpyOnGuild
        local t177 = { table.concat(t176, "\n") }

        SpyOnGuild:SetText(Unpack(t177))
    end
	}):AddButton({
		Text = "Clipboard",
		Func = function()
        if #CopyGuildChat == 0 then
            if not Options.GuildNamesDropdown.Value then
                Settings.SpyOnGuild:SetText("No guild selected")
            end

            local v908 = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

            if not v908 or not v908.ChatLog then
                Settings.SpyOnGuild:SetText("This guilds data is no longer available")
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
            Settings.SpyOnGuild:SetText("No guild selected")
        end

        local v912 = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

        if not v912 or not v912.Description then
            Settings.SpyOnGuild:SetText("This guilds data is no longer available")
        end

        CopyGuildDescription = nil
        Settings.SpyOnGuild:SetText(v912.Description)
        CopyGuildDescription = v912.Description
    end
	}):AddButton({
		Text = "Clipboard",
		Func = function()
        if not CopyGuildDescription then
            if not Options.GuildNamesDropdown.Value then
                Settings.SpyOnGuild:SetText("No guild selected")
            end

            local v913 = Remotes:WaitForChild("Guilds_GetCache", math.huge):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

            if not v913 or not v913.Description then
                Settings.SpyOnGuild:SetText("This guilds data is no longer available")
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
    Settings.BuyEggList = {
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
        if p126 and InLobby or InDungeon then
            Settings.SelectedEggItem = Settings.BuyEggList[p126]

            return
        end

        Settings.SelectedEggItem = nil
    end
	})
    Settings.BuyEggList = BuildShopValues("EggShopDropdown", Settings.BuyEggList)
    FirstTab:AddButton({
		Text = "Buy egg",
		Func = function()
        local SelectedEggItem = Settings.SelectedEggItem

        if not SelectedEggItem then
            Library:Notify("No egg is selected", 3)

            return
        end

        if not BuyFromEggShop(SelectedEggItem.CurrencyType, SelectedEggItem.InternalName, SelectedEggItem.CoinPrice, SelectedEggItem.VisualName) then
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
        if InLobby or InDungeon then
            Settings.HatchDelay = p127
        end
    end
	})
    SecondTab = ShopTabLeft:AddTab("Nightmare")
    Settings.BuyNightmareItemList = {
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
            _Value = InLobby
        end

        if _Value then
            Settings.SelectedNightmareItem = Settings.BuyNightmareItemList[p128]

            return
        end

        Settings.SelectedNightmareItem = nil
    end
	})
    Settings.BuyNightmareItemList = BuildShopValues("NightmareShopDropdown", Settings.BuyNightmareItemList)
    SecondTab:AddButton({
		Text = "Buy item",
		Func = function()
        if PlaceIdStr ~= "14914684761" then
            Library:Notify("Go to world 10 to do this", 5)

            return
        end

        local SelectedNightmareItem = Settings.SelectedNightmareItem

        if not SelectedNightmareItem then
            Library:Notify("No item is selected", 3)

            return
        end

        if not BuyFromLocalShop("NightmareCoin", "NightmarePortals", SelectedNightmareItem.InternalName, SelectedNightmareItem.CoinPrice, SelectedNightmareItem.VisualName) then
            Library:Notify("You do not have enough coins", 3)
        end
    end
	})
    SecondTab:AddToggle("BuyMaxNightmareToggle", {
		Text = "Buy max selected item",
		Default = false
	})
    SecondTab = ShopTabLeft:AddTab("PVP")
    Settings.BuyPVPItemList = {
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
        if Value and InLobby then
            Settings.SelectedPvpItem = Settings.BuyPVPItemList[p129]

            return
        end

        Settings.SelectedPvpItem = nil
    end
	})
    Settings.BuyPVPItemList = BuildShopValues("PVPShopDropdown", Settings.BuyPVPItemList)
    SecondTab:AddButton({
		Text = "Buy item",
		Func = function()
        if PlaceIdStr ~= "6510868181" then
            Library:Notify("Go to the pvp arena to do this", 5)

            return
        end

        local SelectedPvpItem = Settings.SelectedPvpItem

        if not SelectedPvpItem then
            Library:Notify("No item is selected", 3)

            return
        end

        if not BuyFromLocalShop("PVPCoin", "PVPShop", SelectedPvpItem.InternalName, SelectedPvpItem.CoinPrice, SelectedPvpItem.VisualName) then
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
    Settings.BuyGuildItemList = {
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
            p130 = InLobby
        end

        if p130 then
            Settings.SelectedGuildItem = Settings.BuyGuildItemList[ValChangedValueue]

            return
        end

        Settings.SelectedGuildItem = nil
    end
	})
    Settings.BuyGuildItemList = BuildShopValues("GuildShopDropdown", Settings.BuyGuildItemList)
    FirstTab:AddButton({
		Text = "Buy item",
		Func = function()
        if PlaceIdStr ~= "139316833473171" then
            Library:Notify("Go to the guild hub to do this", 5)

            return
        end

        local SelectedGuildItem = Settings.SelectedGuildItem

        if not SelectedGuildItem then
            Library:Notify("No item is selected", 3)

            return
        end

        if not BuyFromLocalShop("GuildCoin", "GuildShop", SelectedGuildItem.InternalName, SelectedGuildItem.CoinPrice, SelectedGuildItem.VisualName) then
            Library:Notify("You do not have enough coins", 3)
        end
    end
	})
    FirstTab:AddToggle("BuyMaxGuildToggle", {
		Text = "Buy max selected item",
		Default = false
	})
    FirstTab = ShopTabRight:AddTab("Vane")
    Settings.BuyEventList = {
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
            Settings.SelectedEventItem = Settings.BuyEventList[p131]

            return
        end

        Settings.SelectedEventItem = nil
    end
	})
    Settings.BuyEventList = BuildShopValues("EventShopDropdown", Settings.BuyEventList)
    FirstTab:AddButton({
		Text = "Buy item",
		Func = function()
        if PlaceIdStr ~= "18567064955" then
            Library:Notify("Go to the event hub to do this", 5)

            return
        end

        local SelectedEventItem = Settings.SelectedEventItem

        if not SelectedEventItem then
            Library:Notify("No item is selected", 3)

            return
        end

        if not BuyFromLocalShop("DragonCoin", "Anime2026", SelectedEventItem.InternalName, SelectedEventItem.CoinPrice, SelectedEventItem.VisualName) then
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
        OpenMenu("HubTeleport")
        Library:Notify("Has touch issues on mobile. Games fault, not the scripts.", 10)
    end
	})
    LeftGroupBox:AddButton({
		Text = "Bank",
		Func = function()
        OpenMenu("Bank")
    end
	})
    LeftGroupBox:AddButton({
		Text = "Upgrade station",
		Func = function()
        OpenMenu("ItemUpgrade")
    end
	})
    LeftGroupBox:AddButton({
		Text = "Sell station",
		Func = function()
        OpenMenu("Sell")
    end
	})
    LeftGroupBox:AddButton({
		Text = "Zero altar",
		Func = function()
        OpenMenu("Fusion")
    end
	})
    LeftGroupBox:AddButton({
		Text = "Recycler",
		Func = function()
        OpenMenu("Recycler")
    end
	})
    LeftGroupBox:AddButton({
		Text = "Pet incubator",
		Func = function()
        OpenMenu("PetIncubator")
    end
	})
    LeftGroupBox:AddButton({
		Text = "Pet fusion",
		Func = function()
        OpenMenu("FusePets")
    end
	})
    LeftGroupBox:AddButton({
		Text = "Salon",
		Func = function()
        OpenMenu("NewCharacterCustomizer")
    end
	})
    LeftGroupBox:AddButton({
		Text = "Furniture store",
		Func = function()
        OpenMenu("FurnitureShop")
    end
	})
    RightGroupBox = OpenMenuTab:AddRightGroupbox("Special Menus")
    RightGroupBox:AddButton({
		Text = "Item panel",
		Tooltip = "If you try to select anything the game will instantly kick you. I can't do anything about that.",
		Func = function()
        OpenMenu("AdminItemPanel")
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
        if not Options.JoinPlayerInput.Value or InMainMenu then
            return
        end

        if Settings.CanRequire then
            require(TeleportModule):TeleportToPlayer(LocalPlayer, Players:GetUserIdFromNameAsync(Options.JoinPlayerInput.Value), nil, true)
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
        if InLobby or InDungeon then
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
        if InDungeon or InLobby then
            LocalPlayer:SetAttribute("ClassColor", p132)
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
					content = "test" .. WebhookMention
				}
            local DiscordWebhookLink = Settings.DiscordWebhookLink

            if not DiscordWebhookLink and true then
                warn("No webhook link provided")

                return
            end

            local v1520 = false
            local _, _ = pcall(function()
                if v1520 and HookFunction or hookmetamethod then
                    local MaxDamageCheck = 0
                    local ok, _ = pcall(function()
                        for _, v in pairs(getreg()) do
                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                MaxDamageCheck += 1
                            end
                        end
                    end)
                    if MaxDamageCheck > 2 or MaxDamageCheck == 0 then
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

                if not HttpRequest then
                    return
                end

                local v2031 = HttpRequest
                local v2032 = DiscordWebhookLink
                local t182 = {
						["Content-Type"] = "application/json"
					}
                local json = HttpService:JSONEncode(t180)

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

        if ClearTeleportQueue then
            Library:Notify("Script will not be ran when you teleport. Hopefully you enjoyed using it without encountering any issues!\n -PORN", 10)
            ClearTeleportQueue()
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
            Tracking.MobDebug = true

            return
        end

        Tracking.MobDebug = nil
    end
	})
    ThirdTab:AddButton({
		Text = "print current mob",
		Tooltip = "prints the mob that the script is currently trying to target",
		Func = function()
        local v938 = CurrentTargetMob

        if not v938 then
            print("PORN: no mob is a target")

            return
        end

        local v939 = Tracking.MobTable[v938]
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

        for k, v in pairs(Tracking.MobTable) do
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
    Settings.RequireLabel = LeftGroupBox3:AddLabel("require: ?", true)
    Settings.HookfunctionLabel = LeftGroupBox3:AddLabel("hookfunction: ?", true)
    Settings.RestorefunctionLabel = LeftGroupBox3:AddLabel("restorefunction: ?", true)
    Settings.UpvalueLabel = LeftGroupBox3:AddLabel("getupvalue: ?", true)
    Settings.NewcclosureLabel = LeftGroupBox3:AddLabel("newcclosure: ?", true)
    Settings.AutoInjectLabel = LeftGroupBox3:AddLabel("queueonteleport: ?", false)
    Settings.RequestLabel = LeftGroupBox3:AddLabel("request: ?", true)
    Settings.InvisTeleportLabel = LeftGroupBox3:AddLabel("invisible teleport: ?", true)
    LeftGroupBox3:AddDivider({
		Margin = -5
	})
    LeftGroupBox3:AddButton({
		Text = "Check compatibility",
		Tooltip = "May be helpful for debugging",
		Func = function()
        if Settings.CanRequire then
            Settings.RequireLabel:SetText("require: <font color='#33ff33'>Yes</font>")
        else
            Settings.RequireLabel:SetText("require: <font color='#ff3333'>>No</font>")
        end

        if HookFunction then
            Settings.HookfunctionLabel:SetText("hookfunction: <font color='#33ff33'>Yes</font>")
        else
            Settings.HookfunctionLabel:SetText("hookfunction: <font color='#ff3333'>>No</font>")
        end

        if RestoreFunction then
            Settings.RestorefunctionLabel:SetText("restorefunction: <font color='#33ff33'>Yes</font>")
        else
            Settings.RestorefunctionLabel:SetText("restorefunction: <font color='#ff3333'>>No</font>")
        end

        if debug and debug.getupvalue then
            Settings.UpvalueLabel:SetText("getupvalue: <font color='#33ff33'>Yes</font>")
        else
            Settings.UpvalueLabel:SetText("getupvalue: <font color='#ff3333'>>No</font>")
        end

        if NewCClosure then
            Settings.NewcclosureLabel:SetText("newcclosure: <font color='#33ff33'>Yes</font>")
        else
            Settings.NewcclosureLabel:SetText("newcclosure: <font color='#ff3333'>>No</font>")
        end

        if QueueOnTeleport then
            Settings.AutoInjectLabel:SetText("queueonteleport: <font color='#33ff33'>Yes</font>")
        else
            Settings.AutoInjectLabel:SetText("queueonteleport: <font color='#ff3333'>>No</font>")
        end

        if HttpRequest then
            Settings.RequestLabel:SetText("request: <font color='#33ff33'>Yes</font>")
        else
            Settings.RequestLabel:SetText("request: <font color='#ff3333'>>No</font>")
        end

        if NetDesync then
            Settings.InvisTeleportLabel:AddLabel("Can invisibly teleport: <font color='#FF3333'>no</font>", false)

            return
        end

        Settings.InvisTeleportLabel:SetText("invisible teleport: <font color='#ff3333'>>No</font>")
    end
	})
    task.wait()
    _G.ScriptStep = "creating UI functions"
    UpdateLoadProgress()
    _G.ScriptStep = "general tab functions"
    if InDungeon then
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
                    Tracking.MobTable[p137] = {
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

                local BOSSKandrixAssets = Workspace:FindFirstChild("BOSSKandrixAssets")

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
                    local v56 = Workspace:FindFirstChild(v)

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
                HandleError("PROGRESS BLOCKER", (tostring(result)))
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
                HandleError("CLIENT SIDE DAMAGE", (tostring(result)))
            end
        end)
        task.spawn(function()
            if Tracking.MissionId == 49 then
                local success, result = pcall(function()
                    if Settings.CanRequire and (debug and getupvalue) then
                        local v1541 = debug.getupvalue(require(Chests).Start, 12)
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
                            local v57 = Workspace:FindFirstChild(v)

                            if v57 and v57.Parent then
                                v57:PivotTo(CFrame.new(HumanoidRootPart.Position))
                            end

                            task.wait()
                        end

                        task.wait(0.1)
                    end
                end)
                if not success then
                    HandleError("STARTER DUNGEON CHESTS", (tostring(result)))
                end
            end
        end)
        task.spawn(function()
            if Tracking.MissionId == 50 then
                if AlienBomb then
                    local Part = AlienBomb:WaitForChild("Part", 5)

                    if Part then
                        Part.Name = "Collider"
                        AlienBomb.Parent = MobsFolder
                    end
                end

                Connections.ConnectAlienBomb = Workspace.ChildAdded:Connect(function(child)
                    if child:IsA("Model") and child.Name == "AlienBomb" then
                        local Part = child:WaitForChild("Part", 5)

                        if Part then
                            Part.Name = "Collider"
                            child.Parent = MobsFolder
                        end
                    end
                end)
                task.spawn(function()
                    local Spawn = MissionObjects:FindFirstChild("Spawn")
                    assert(Spawn, "Spawn doesn't exist?")
                    local v1551 = GetPlayerSize() + Spawn.Size.Y / 2
                    local SpawnPosition = Spawn.Position
                    repeat
                        if not CurrentTargetMob and Settings.Autofarm then
                            Collider.CFrame = CFrame.new(SpawnPosition.X, SpawnPosition.Y + v1551, SpawnPosition.Z)
                            TeleportStandPart()
                        end

                        task.wait(0.1)
                    until MissionDone
                end)

                local CannonMissionRemotes = ReplicatedStorage:FindFirstChild("CannonMissionRemotes")

                assert(CannonMissionRemotes, "CannonMissionRemotes doesn't exist?")
                Connections.ConnectObjectiveMessage = ReplicatedStorage.ObjectiveMessage.Changed:Connect(function(property)
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

                        RotationEnabled = false
                    end
                end)
            end

            if Tracking.MissionId == 52 then
                task.spawn(function()
                    if Workspace:WaitForChild("EasterBossChallengeWalkTo", 1e999) then
                        DodgeCurrentAttack(0, 6, "giant egg")
                    end
                end)
                Connections.ConnectObjectiveMessage = ReplicatedStorage:WaitForChild("ObjectiveMessage", math.huge).Changed:Connect(function(property)
                    if string.find(tostring(property), "RUN") then
                        DodgeCurrentAttack(0, 11, "giant egg")
                    end
                end)
            end

            if Tracking.MissionId == 44 then
                task.spawn(function()
                    MissionObjects:WaitForChild("PlayerDamagePart", 1e999):Destroy()
                end)

                if Tracking.LoggedDifficulty == 6 then
                    task.spawn(function()
                        MobsFolder:WaitForChild("BOSSIgnisFireDragon", 1e999):Destroy()
                        MobsFolder:WaitForChild("BOSSRuinousPoisonDragon", 1e999):Destroy()
                        MobsFolder:WaitForChild("BOSSWinterfallIceDragon", 1e999):Destroy()
                        MobsFolder:WaitForChild("BOSSDarkriseDarkDragon", 1e999):Destroy()
                    end)
                    Remotes:WaitForChild("Mobs_EVENTBOSSUndeadVane_ResurrectShake", 1e999).OnClientEvent:Once(function()
                        DodgeCurrentAttack(0, 31, "undead vane spawn", 200)
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
                if Settings.CanRequire then
                    task.spawn(function()
                        pcall(function()
                            local Actions = require(ReplicatedStorage:WaitForChild("Client", 1e999):WaitForChild("Actions", 1e999))

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

                if Settings.IsUsingXeno then
                    repeat
                        for _, v in pairs(Class.Skills) do
                            if not CurrentTargetMob or not Settings.FastKillauraActive then
                                break
                            end

                            local Cooldown = v.Cooldown
                            if not (time() - (v.LastUsed or 0) >= Cooldown + AttackDelay + PingAdjusted) then
                                continue
                            end

                            local vType = v.Type
                            local Collider6 = CurrentTargetMob:FindFirstChild("Collider")
                            if not Collider6 then
                                continue
                            end

                            local Distance = v.Distance
                            local ClosestPointOnSurface = HumanoidRootPart:GetClosestPointOnSurface(Collider6.Position)
                            local ClosestPointOnSurface2 = Collider6:GetClosestPointOnSurface(HumanoidRootPart.Position)

                            if Distance >= (ClosestPointOnSurface - ClosestPointOnSurface2).Magnitude then
                                if vType == "Ranged" then
                                    if Settings.IsRanged then
                                        ClosestPointOnSurface2 -= vector3
                                    end
                                    Combat_Attack:FireServer(v.Skill, ClosestPointOnSurface2, nil, 67)
                                elseif vType == "Melee" then
                                    Combat_Attack:FireServer(v.Skill, HumanoidRootPart.Position, (ClosestPointOnSurface2 - HumanoidRootPart.Position).Unit, 67)
                                elseif vType == "ShadowChain" then
                                    v.Skill:FireServer({CurrentTargetMob, CurrentTargetMob, CurrentTargetMob, CurrentTargetMob, CurrentTargetMob})
                                elseif vType == "TableRemote" then
                                    v.Skill:FireServer(CurrentTargetMob)
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
                                    v.Skill:FireServer(LocalPlayer)
                                else
                                    if vType ~= "StarbreakerWaves" then
                                        HandleError("KILLAURA ATTACK TYPE", tostring(vType) .. " isn't a valid type of attack")
                                        break
                                    end
                                end

                                v.LastUsed = time()
                                task.wait(0.001)
                            end
                        end

                        task.wait(0.001)
                    until not Settings.FastKillauraActive

                    return
                end

                local Combat_Attack2 = Remotes:WaitForChild("Combat_Attack", math.huge)
                local t187 = {
                    Ranged = function(p139, p140)
                        if Settings.IsRanged then
                            p140 -= vector3
                        end
                        Combat_Attack2:FireServer(p139, p140, nil, 67)
                    end,
                    Melee = function(p141, p142)
                        Combat_Attack2:FireServer(p141, HumanoidRootPart.Position, (p142 - HumanoidRootPart.Position).Unit, 67)
                    end,
                    ShadowChain = function(p143)
                        p143:FireServer({CurrentTargetMob, CurrentTargetMob, CurrentTargetMob, CurrentTargetMob, CurrentTargetMob})
                    end,
                    TableRemote = function(p144)
                        p144:FireServer(CurrentTargetMob)
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
                        p152:FireServer(LocalPlayer)
                    end
                }

                repeat
                    for _, v in pairs(Class.Skills) do
                        if not CurrentTargetMob or not Settings.FastKillauraActive then
                            break
                        end

                        local Cooldown = v.Cooldown
                        if not (time() - (v.LastUsed or 0) >= Cooldown + AttackDelay + PingAdjusted) then
                            continue
                        end

                        local vType = v.Type
                        local Collider7 = CurrentTargetMob:FindFirstChild("Collider")
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
                            HandleError("KILLAURA ATTACK TYPE", tostring(vType) .. " isn't a valid type of attack")
                            break
                        end

                        v1583(v.Skill, ClosestPointOnSurface3)
                        v.LastUsed = time()
                        task.wait(0.001)
                    end

                    task.wait(0.001)
                until not Settings.FastKillauraActive
            end)

            if not ok then
                HandleError("FAST KILLAURA", tostring(result), "Class: " .. Settings.PlayerClass)
            end
        end
        Toggles.KillauraToggle:OnChanged(function(p138)
            if p138 then
                if not Class then
                    Library:Notify("CLASS NOT YET SUPPORTED", 10000000000000000)

                    return
                end

                Settings.Killaura = true

                local ok, result = pcall(function()
                    Connections.ConnectClass = LocalPlayer:GetAttributeChangedSignal("Class"):Connect(function()
                        Class = GetPlayerClass(true)
                    end)

                    if Settings.CanRequire then
                        task.spawn(function()
                            pcall(function()
                                local Actions = require(ReplicatedStorage:WaitForChild("Client", 1e999):WaitForChild("Actions", 1e999))

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

                    if Settings.IsUsingXeno then
                        print("xeno killaura")

                        local _ = Settings.Killaura

                        repeat
                            for _, v in pairs(Class.Skills) do
                                if not CurrentTargetMob then
                                    continue
                                end

                                local Cooldown = v.Cooldown

                                local FastKillauraBuffer = Settings.FastKillaura and 0.02 or 0

                                if not (time() - (v.LastUsed or 0) >= Cooldown + AttackDelay + PingAdjusted - FastKillauraBuffer) then
                                    continue
                                end

                                local vType = v.Type
                                local Collider6 = CurrentTargetMob:FindFirstChild("Collider")

                                if not Collider6 then
                                    continue
                                end

                                local Distance = v.Distance
                                local ClosestPointOnSurface = HumanoidRootPart:GetClosestPointOnSurface(Collider6.Position)
                                local ClosestPointOnSurface2 = Collider6:GetClosestPointOnSurface(HumanoidRootPart.Position)

                                if Distance >= (ClosestPointOnSurface - ClosestPointOnSurface2).Magnitude then
                                    if vType == "Ranged" then
                                        if Settings.IsRanged then
                                            ClosestPointOnSurface2 -= vector3
                                        end

                                        Combat_Attack:FireServer(v.Skill, ClosestPointOnSurface2, nil, 67)
                                    elseif vType == "Melee" then
                                        Combat_Attack:FireServer(v.Skill, HumanoidRootPart.Position, (ClosestPointOnSurface2 - HumanoidRootPart.Position).Unit, 67)
                                    elseif vType == "ShadowChain" then
                                        v.Skill:FireServer({
											CurrentTargetMob,
											CurrentTargetMob,
											CurrentTargetMob,
											CurrentTargetMob,
											CurrentTargetMob
										})
                                    elseif vType == "TableRemote" then
                                        v.Skill:FireServer(CurrentTargetMob)
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
                                        v.Skill:FireServer(LocalPlayer)
                                    else
                                        if vType ~= "StarbreakerWaves" then
                                            Settings.Killaura = nil
                                            HandleError("KILLAURA ATTACK TYPE", tostring(vType) .. " isn't a valid type of attack")

                                            break
                                        end

                                        task.spawn(function()
                                            if CanAttack then
                                                local Status = Character:FindFirstChild("Status")

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

                                    if AttackReady and not CanAttack then
                                        if Settings.FastKillaura then
                                            task.wait(0.002)
                                        else
                                            task.wait(AttackReady)
                                        end
                                    end
                                end
                            end

                            task.wait()
                        until not Settings.Killaura

                        return
                    end

                    local Combat_Attack2 = Remotes:WaitForChild("Combat_Attack", math.huge)
                    local t187 = {
						Ranged = function(p139, p140)
                        if Settings.IsRanged then
                            p140 -= vector3
                        end

                        Combat_Attack2:FireServer(p139, p140, nil, 67)
                    end,
						Melee = function(p141, p142)
                        Combat_Attack2:FireServer(p141, HumanoidRootPart.Position, (p142 - HumanoidRootPart.Position).Unit, 67)
                    end,
						ShadowChain = function(p143)
                        p143:FireServer({
								CurrentTargetMob,
								CurrentTargetMob,
								CurrentTargetMob,
								CurrentTargetMob,
								CurrentTargetMob
							})
                    end,
						TableRemote = function(p144)
                        p144:FireServer(CurrentTargetMob)
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
                        p152:FireServer(LocalPlayer)
                    end,
						StarbreakerWaves = function(_, p154)
                        task.spawn(function()
                            if CanAttack then
                                local Status = Character:FindFirstChild("Status")

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
                    local _ = Settings.Killaura

                    repeat
                        for _, v in pairs(Class.Skills) do
                            if not CurrentTargetMob then
                                continue
                            end

                            local Cooldown = v.Cooldown

                            local FastKillauraBuffer = Settings.FastKillaura and 0.02 or 0

                            if not (time() - (v.LastUsed or 0) >= Cooldown + AttackDelay + PingAdjusted - FastKillauraBuffer) then
                                continue
                            end

                            local vType = v.Type
                            local Collider7 = CurrentTargetMob:FindFirstChild("Collider")

                            if not Collider7 then
                                continue
                            end

                            local Distance = v.Distance
                            local ClosestPointOnSurface = HumanoidRootPart:GetClosestPointOnSurface(Collider7.Position)
                            local ClosestPointOnSurface3 = Collider7:GetClosestPointOnSurface(HumanoidRootPart.Position)

                            if not (Distance >= (ClosestPointOnSurface - ClosestPointOnSurface3).Magnitude) then
                                continue
                            end

                            local T = CurrentTargetMob:GetAttribute("T")

                            if Settings.Autofarm and (CanAttack and (not T and T + 0.2 < time())) then
                                break
                            end

                            local v1583 = t187[vType]

                            if not v1583 then
                                Settings.Killaura = nil
                                HandleError("KILLAURA ATTACK TYPE", tostring(vType) .. " isn't a valid type of attack")

                                break
                            end

                            v1583(v.Skill, ClosestPointOnSurface3)
                            v.LastUsed = time()

                            if AttackReady and not CanAttack then
                                if Settings.FastKillaura then
                                    task.wait(0.002)
                                else
                                    task.wait(AttackReady)
                                end
                            end
                        end

                        task.wait()
                    until not Settings.Killaura
                end)

                if not ok then
                    HandleError("KILLAURA", tostring(result), "Class: " .. Settings.PlayerClass)

                    return
                end
            else
                if Settings.CanRequire then
                    task.spawn(function()
                        pcall(function()
                            local Actions = require(ReplicatedStorage:WaitForChild("Client", 1e999):WaitForChild("Actions", 1e999))

                            Actions:SetSkillDisabled("Primary", false)
                            Actions:SetSkillDisabled("Skill1", false)
                            Actions:SetSkillDisabled("Skill2", false)
                            Actions:SetSkillDisabled("Skill3", false)
                            Actions:SetSkillDisabled("Ultimate", false)
                        end)
                    end)
                end

                DisconnectVariable("ConnectClass")
                Settings.Killaura = nil
            end
        end)
        Toggles.FastKillauraToggle:OnChanged(function(p154)
            if p154 then
                Settings.FastKillaura = true
                Settings.FastKillauraActive = true

                if not Settings.FastKillauraThread then
                    Settings.FastKillauraThread = task.spawn(run_fast_killaura_loop)
                end

                return
            end

            Settings.FastKillaura = nil
            Settings.FastKillauraActive = nil
            Settings.FastKillauraThread = nil
        end)
        Toggles.SafeKillauraToggle:OnChanged(function(p155)
            local CanRequire = Settings.CanRequire

            if CanRequire then
                CanRequire = HookFunction and (RestoreFunction and (NewCClosure and IsHooked))
            end

            if CanRequire then
                local ok, result = pcall(function()
                    local Actions = require(ReplicatedStorage.Client.Actions)

                    if p155 then
                        Settings.SafeKillaura = true
                        HookFunction(Actions.IsBusy, NewCClosure(function(...)
                            return false
                        end))
                        local PingResetValue = 1
                        for v1588, v1589 in pairs({
							"Primary",
							"Skill1",
							"Skill2",
							"Skill3",
							"Ultimate"
						}) do

                            local v1590 = v1589

                            if PingResetValue == 1 then
                                task.spawn(function()
                                    if not Settings.SafeKillaura then
                                    end

                                    repeat
                                        if CurrentTargetMob then
                                            Actions:UseSkill(v1590)
                                        end

                                        task.wait()
                                    until not Settings.SafeKillaura and not MissionDone
                                end)
                            else
                                task.spawn(function()
                                    if not Settings.SafeKillaura then
                                    end

                                    repeat
                                        if CurrentTargetMob then
                                            Actions:UseSkill(v1590)
                                        end

                                        task.wait(0.2)
                                    until not Settings.SafeKillaura and not MissionDone
                                end)
                            end

                            PingResetValue += 1
                        end
                        while Settings.SafeKillaura do
                            if Actions:IsSheathed() then
                                Actions:UseSkill("Sheath")
                            end

                            task.wait(1)
                        end
                    else
                        Settings.SafeKillaura = nil

                        if IsHooked(Actions.IsBusy) then
                            RestoreFunction(Actions.IsBusy)
                        end
                    end
                end)

                if not ok then
                    HandleError("SAFE KILLAURA", (tostring(result)))

                    return
                end
            elseif mouse1click and keyclick then
                local ok, result = pcall(function()
                    if p155 then
                        while Settings.SafeKillaura do
                            mouse1click(1, 1)
                            keyclick(Enum.KeyCode.E)
                            keyclick(Enum.KeyCode.R)
                            keyclick(Enum.KeyCode.F)
                            keyclick(Enum.KeyCode.X)
                            task.wait()
                        end
                    else
                        Settings.SafeKillaura = nil
                    end
                end)

                if not ok then
                    HandleError("SAFE KILLAURA FALLBACK", (tostring(result)))

                    return
                end
            else
                Library:Notify("Your executor doesn't support this", 5)
            end
        end)

        local CurrentCamera = Workspace.CurrentCamera

        Toggles.AutoProgressToggle:OnChanged(function(p156)
            if p156 then
                Settings.Autofarm = true
                task.spawn(function()
                    local ok, result = pcall(function()
                        local DamageCheckValue = 0

                        HumanoidRootPart.CanCollide = false

                        while Settings.Autofarm and not MissionDone do
                            if RotationEnabled or nil then
                                task.wait(0.1)
                            else
                                if IsMobAlive then
                                    HumanoidRootPart.Velocity = Vector3.new()

                                    local v2062 = IsMobAlive and IsMobAlive:FindFirstChild("Collider")

                                    if v2062 then
                                        local v2063 = MeleeMinDist + v2062.Size.X / 2

                                        DamageCheckValue += MaxDamageReduction / v2063
                                        HumanoidRootPart.CFrame = CFrame.new(v2062.Position) * CFrame.Angles(0, math.rad(DamageCheckValue), 0) * CFrame.new(v2063, MeleeMaxDist, 0)
                                        HumanoidRootPart.CFrame = CFrame.new(HumanoidRootPart.Position, Vector3.new(v2062.Position.X, HumanoidRootPart.Position.Y, v2062.Position.Z))
                                        TeleportStandPart()

                                        if not IsMobAlive:GetAttribute("T") then
                                            local v2064 = IsMobAlive
                                            local t188 = { time() }

                                            v2064:SetAttribute("T", Unpack(t188))
                                        end

                                        if nil then
                                            CurrentCamera.CameraSubject = IsMobAlive
                                        end
                                    end
                                end

                                task.wait()
                            end
                        end
                    end)

                    if not ok then
                        HandleError("MOB TELEPORT", (tostring(result)))
                    end
                end)
                task.spawn(function()
                    local ok, result = pcall(function()

                        for v2068, v2069 in pairs(PartsList) do

                            if v2068 and v2068.Parent then
                                v2068.Size = Vector3.new(1, 1, 1)
                            end
                        end
                        while Settings.Autofarm do
                            for k, v in pairs(PartsList) do
                                local v2072 = v

                                if v2072.DontTeleport then
                                elseif v2072.TouchPart.Parent then
                                    task.spawn(function()
                                        k.Position = HumanoidRootPart.Position
                                        task.wait(0.1)
                                        k.Position = v2072.OriginalLocation
                                    end)
                                elseif not v2072.Regenerates then
                                    PartsList[k] = nil
                                end
                            end

                            task.wait()
                        end
                    end)

                    if not ok then
                        HandleError("AUTO PROGRESS", (tostring(result)))
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
						}, Tracking.MissionId) or Settings.PartyRaidID == 14 then
                            while Settings.Autofarm do
                                for _, v in pairs({
									"IceWall",
									"IgnisShield",
									"ZeroShield",
									"ShieldEgg",
									"EggShield"
								}) do
                                    local InEventDungeon = Workspace:FindFirstChild(v)

                                    if InEventDungeon then
                                        if InEventDungeon.Name == "ShieldEgg" or InEventDungeon.Name == "EggShield" then
                                            local v2076 = InEventDungeon:WaitForChild("ShieldEgg", 1) or InEventDungeon:WaitForChild("Blade", 1)

                                            if v2076 then
                                                v2076.Name = "Ring"
                                            end
                                        end

                                        local Ring = InEventDungeon:WaitForChild("Ring", 5)

                                        if Ring and Ring.Parent then
                                            local v2078 = GetPlayerSize() + Ring.Size.Y / 2
                                            local vector3 = Vector3.new(Ring.Position.X, Ring.Position.Y + v2078, Ring.Position.Z)

                                            while InEventDungeon.Parent do
                                                HumanoidRootPart.CFrame = CFrame.new(vector3)
                                                task.wait()
                                            end

                                            RotationEnabled = false
                                            SkillActive = true
                                        end
                                    end

                                    task.wait()
                                end

                                task.wait(0.5)
                            end
                        end
                    end)
                    if not success then
                        HandleError("SHIELD TELEPORt", (tostring(result)))
                    end
                end)

                return
            end

            HumanoidRootPart.CanCollide = true

            for k, v in pairs(PartsList) do
                local v966 = k

                if v966 and v966.Parent then
                    print("returning size to", v966)
                    v966.Size = v.OriginalSize
                    v966.CanCollide = v.OriginalCollision
                    v966.Position = v.OriginalLocation
                end
            end

            Settings.Autofarm = nil
        end)
    end
    if InLobby or InDungeon then
        Toggles.CollectDropToggle:OnChanged(function(p157)
            if PlaceIdStr == "6510868181" then
                return
            end

            if p157 then
                if Settings.CanRequire and (HookFunction and NewCClosure) then
                    HookFunction(require(Drops).DropStarterpassExp, NewCClosure(function(...)
                    end))
                    HookFunction(require(Drops).DropBattlepassExp, NewCClosure(function(...)
                    end))
                    HookFunction(require(Drops).DropHealthOrb, NewCClosure(function(...)
                    end))
                    HookFunction(require(Drops).SpawnCoinsLocal, NewCClosure(function(...)
                    end))
                end

                local Drops_CoinEvent = Remotes:WaitForChild("Drops_CoinEvent", math.huge)

                Connections.CollectDrops = Drops_CoinEvent.OnClientEvent:Connect(function(p158)
                    Drops_CoinEvent:FireServer(p158.id)
                end)
                task.spawn(CollectCoinsAndDrops)

                return
            end

            if IsHooked(require(Drops).SpawnCoinsLocal) then
                RestoreFunction(require(Drops).SpawnCoinsLocal)
            end

            if IsHooked(require(Drops).DropBattlepassExp) then
                RestoreFunction(require(Drops).DropBattlepassExp)
            end

            if IsHooked(require(Drops).DropStarterpassExp) then
                RestoreFunction(require(Drops).DropStarterpassExp)
            end

            if IsHooked(require(Drops).DropHealthOrb) then
                RestoreFunction(require(Drops).DropHealthOrb)
            end

            DisconnectVariable("CollectDrops")
        end)
    end
    if InDungeon then
        Toggles.PetKillauraToggle:OnChanged(function(p159)
            if p159 then
                Settings.PetKillaura = true

                if Settings.CanRequire then
                    local success, result = pcall(function()
                        local PetSkills_UseSkill = Remotes:WaitForChild("PetSkills_UseSkill", 1e999)
                        local u1599 = GetPlayerPet()

                        Connections.ConnectCharacter = Character.ChildAdded:Connect(function(child)
                            if child.Name == "PetData" then
                                u1599 = GetPlayerPet()
                            end
                        end)

                        local Combat_Attack = Remotes:WaitForChild("Combat_Attack", 1e999)
                        local t190 = {
							Ranged = function(p160, p161)
                            Combat_Attack:FireServer(p160, p161, nil, 67)
                        end,
							Self = function()
                            PetSkills_UseSkill:FireServer(Character, HumanoidRootPart.Position)
                        end,
							MobPosition = function(_, p163)
                            PetSkills_UseSkill:FireServer(Character, p163)
                        end
						}

                        while Settings.PetKillaura and not MissionDone do
                            for _, v in pairs(u1599.Skills) do
                                if not CurrentTargetMob then
                                    continue
                                end

                                local Cooldown = v.Cooldown

                                if not (tick() - (v.LastUsed or 0) >= Cooldown + AttackDelay) then
                                    continue
                                end

                                local vType = v.Type
                                local Collider8 = CurrentTargetMob:FindFirstChild("Collider")

                                if not Collider8 then
                                    continue
                                end

                                local Distance = v.Distance
                                local ClosestPointOnSurface = HumanoidRootPart:GetClosestPointOnSurface(Collider8.Position)
                                local ClosestPointOnSurface4 = Collider8:GetClosestPointOnSurface(HumanoidRootPart.Position)

                                if not (Distance >= (ClosestPointOnSurface - ClosestPointOnSurface4).Magnitude) then
                                    continue
                                end

                                local T = CurrentTargetMob:GetAttribute("T")

                                if Settings.Autofarm and (CanAttack and (not T and T + 0.2 < time())) then
                                    break
                                end

                                local v1611 = t190[vType]

                                if not v1611 then
                                    HandleError("PET ATTACK TYPE", tostring(vType) .. " isn't a valid type of attack")

                                    break
                                end

                                v1611(v.Skill, ClosestPointOnSurface4)
                                v.LastUsed = tick()

                                if CombatActive then
                                    task.wait(CombatActive)
                                end
                            end

                            task.wait(0.1)
                        end
                    end)
                    if not success then
                        local v972 = Character and Character:FindFirstChild("PetData")

                        if v972 and (PetAttackTable and Settings.CanRequire) then
                            task.wait(0.5)

                            local lib = require(Pets)
                            local ItemName = v972:GetAttribute("ItemName")
                            local PetSkillFromPetRef = lib:GetPetSkillFromPetRef(ReplicatedStorage.PlayerEquips[PlayerName].Pet[ItemName])

                            HandleError("PET KILLAURA", tostring(result), tostring(ItemName) .. " Pet skill: " .. tostring(PetSkillFromPetRef))

                            return
                        end

                        HandleError("PET KILLAURA", (tostring(result)))

                        return
                    end
                else
                    local success, result = pcall(function()
                        local PetSkills_UseSkill = Remotes:WaitForChild("PetSkills_UseSkill", 1e999)

                        while Settings.PetKillaura and not MissionDone do
                            if CurrentTargetMob then
                                local Collider9 = CurrentTargetMob:FindFirstChild("Collider", true)

                                if Collider9 then
                                    PetSkills_UseSkill:FireServer(CurrentTargetMob, Collider9.Position)
                                end
                            end

                            task.wait(1)
                        end
                    end)
                    if not success then
                        HandleError("PET KILLAURA FALLBACK", (tostring(result)))

                        return
                    end
                end
            else
                DisconnectVariable("ConnectCharacter")
                Settings.PetKillaura = nil
            end
        end)
        Toggles.RestartStuckToggle:OnChanged(function(p164)
            if p164 then
                local ok, result = pcall(function()
                    Tracking.LoggedDifficulty = GetDifficulty()
                    Settings.CheckForRejoin = true
                    RejoinLastDungeon(false)

                    local DamageCheckTimer = 0
                    local _ = Settings.CheckForRejoin

                    repeat
                        task.wait(1)

                        local HealthProperties = Character:FindFirstChild("HealthProperties", true)
                        local v1617 = HealthProperties and HealthProperties:FindFirstChild("OutOfCombat", true)

                        if HealthProperties and v1617 then
                            DamageCheckTimer = v1617.Value ~= 0 and 0 or DamageCheckTimer + 1
                        end

                        if DamageCheckTimer >= MaxPingTolerance then
                            MissionDone = true
                            task.wait(2)
                            RejoinLastDungeon(true)
                        end

                        task.wait(0.1)
                    until not Settings.CheckForRejoin
                end)

                if not ok then
                    HandleError("RESTART STUCK", (tostring(result)))

                    return
                end
            else
                Settings.CheckForRejoin = nil
            end
        end)
        Toggles.DodgeLethalToggle:OnChanged(function(p165)
            if p165 then
                p165 = Class.Distance == "Melee"
            end

            if p165 then
                Settings.DodgeAttacks = true

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

                    while Settings.DodgeAttacks and not MissionDone do
                        if CurrentTargetMob then
                            local MobProperties = CurrentTargetMob:FindFirstChild("MobProperties")

                            if MobProperties then
                                local v1630 = MobProperties and MobProperties:FindFirstChild("CurrentAttack")

                                if v1630 and v1630.Value ~= "" then
                                    local v1631 = t203[v1630.Value] or false

                                    if v1631 then
                                        DodgeCurrentAttack(v1631.Delay, v1631.AttackLength - v1631.Delay, v1631.AttackName)
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
                            local v59 = Workspace:FindFirstChild(v)

                            if not v59 then
                                continue
                            end

                            if Workspace:FindFirstChild("AnubisRing") or Workspace:FindFirstChild("AnubisRingPurple") then
                                break
                            end

                            local v1635 = MobsFolder:FindFirstChild("VaneAetherDragon") or MobsFolder:FindFirstChild("EVENTBOSSVane")
                            local vector3 = Vector3.new(HumanoidRootPart.Position.X + 1000, HumanoidRootPart.Position.Y + 1000, HumanoidRootPart.Position.Z)

                            if v1635 then
                                vector3 = Vector3.new(HumanoidRootPart.Position.X, HumanoidRootPart.Position.Y + 1000, HumanoidRootPart.Position.Z)
                            end

                            if Settings.DodgeAttacks then
                            end

                            while true do
                                HumanoidRootPart.CFrame = CFrame.new(vector3)
                                TeleportStandPart()

                                if not v59.Parent then
                                    break
                                end

                                task.wait()

                                if not Settings.DodgeAttacks or MissionDone then
                                    break
                                end
                            end

                            RotationEnabled = false
                        end

                        task.wait(0.1)
                    end
                end)

                if not ok then
                    HandleError("DODGE LETHAL DAMAGE", (tostring(result)))

                    return
                end
            else
                Settings.DodgeAttacks = nil
            end
        end)
    end
    if InLobby or InDungeon then
        Toggles.AutoPrestigeToggle:OnChanged(function(p166)
            if p166 and (Tracking.PlayerLevel >= 135 and Tracking.PlayerPrestige < 4) then
                local _, _ = pcall(function()
                    MissionDone = true
                    Library:Notify("Prestiging...", 5)
                    task.wait(5)

                    local v1638 = LocalPlayer.Name .. "_Prestige.txt"
                    local _isfile = isfile
                    local v1640 = "PORN/" .. v1638

                    if _isfile(v1640) and (PlaceIdStr == "4310463616" and not InDungeon) then
                        delfile(v1640)
                        Remotes:WaitForChild("Profile_Prestige"):FireServer()
                        task.wait(1)
                        ReplayDungeon(1, 5)

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
    if InDungeon then
        Toggles.InstakillToggle:OnChanged(function(p167)
            if not IsEventDungeon then
                return
            end

            Settings.InstakillOn = p167

            if p167 then
                task.wait(0.5)

                local DamageCheckMax = 15

                if Options.InstakillDropdown.Value ~= "Normal method" then
                    DamageCheckMax = 25
                end

                if Tracking.LoggedDifficulty == 6 then
                    DamageCheckMax = 35
                    Remotes:WaitForChild("Mobs_EVENTBOSSUndeadVane_ResurrectShake", math.huge).OnClientEvent:Wait()

                    if Options.InstakillDropdown.Value ~= "Normal method" then
                        task.wait(31)
                    end

                    if Settings.InstakillOn then
                        SkillActive = false
                    end
                end

                Settings.InstakillBoss = true
                PlayerStandPart.CanCollide = false
                task.spawn(function()
                    task.wait(DamageCheckMax)

                    if MissionDone or not Settings.InstakillBoss then
                        return
                    end

                    RestartDungeon(true)
                end)
                task.spawn(function()
                    if Options.InstakillDropdown.Value ~= "Normal method" then
                        local Collider10
                        local SoulObjectCollected = if Tracking.LoggedDifficulty == 6 then MobsFolder:WaitForChild("EVENTBOSSUndeadVane", 1e999):WaitForChild("Collider", math.huge) else MobsFolder:WaitForChild("EVENTBOSSVane", 1e999):WaitForChild("Collider", 1e999)
                        Remotes:WaitForChild("Skillset_DualWielder_AttackBuff", math.huge):FireServer()
                        Remotes:WaitForChild("Skillset_Guardian_AggroDraw", math.huge):FireServer()
                        local v1643 = GetPlayerSize() + SoulObjectCollected.Size.Y / 2 + 8
                        HumanoidRootPart.CanCollide = false
                        while Settings.InstakillBoss and not MissionDone do
                            local vector3 = Vector3.new(SoulObjectCollected.Position.X, SoulObjectCollected.Position.Y + v1643, SoulObjectCollected.Position.Z)

                            HumanoidRootPart:PivotTo(CFrame.new(vector3))
                            RunService.Heartbeat:Wait()

                            if not SoulObjectCollected.Parent then
                                break
                            end
                        end
                        HumanoidRootPart.Velocity = Vector3.new()
                        if Tracking.LoggedDifficulty == 5 then
                            Collider10 = MobsFolder:WaitForChild("BOSSDarkriseDarkDragon", 1e999):WaitForChild("Collider", math.huge)
                        end
                        if Collider10 then
                            local v1645 = GetPlayerSize() + Collider10.Size.Y / 2 + 8

                            while Settings.InstakillBoss and not MissionDone do
                                local vector3 = Vector3.new(SoulObjectCollected.Position.X, SoulObjectCollected.Position.Y + v1645, SoulObjectCollected.Position.Z)

                                HumanoidRootPart:PivotTo(CFrame.new(vector3))
                                RunService.Heartbeat:Wait()
                            end

                            HumanoidRootPart.Velocity = Vector3.new()

                            return
                        end
                    else
                        local BossSpawn = MissionObjects:WaitForChild("BossSpawn", 1e999)
                        local vector3 = Vector3.new(BossSpawn.Position.X, BossSpawn.Position.Y + 13, BossSpawn.Position.Z)

                        HumanoidRootPart.CanCollide = false

                        while Settings.InstakillBoss and not MissionDone do
                            HumanoidRootPart:PivotTo(CFrame.new(vector3))
                            RunService.Heartbeat:Wait()
                        end

                        HumanoidRootPart.Velocity = Vector3.new()
                    end
                end)

                if Options.InstakillDropdown.Value ~= "Normal method" then
                    return
                end

                if Settings.InstakillBoss then
                end

                repeat
                    local DamageCheckMin = 0.1

                    RunService.Heartbeat:Wait()

                    local v991 = HumanoidRootPart
                    local Velocity = v991.Velocity

                    v991.Velocity = Velocity * 10000 + Vector3.new(0, 100000, 0)
                    RunService.RenderStepped:Wait()

                    if HumanoidRootPart then
                        v991.Velocity = Velocity
                    end

                    RunService.Stepped:Wait()

                    if HumanoidRootPart then
                        v991.Velocity = Velocity + Vector3.new(0, DamageCheckMin, 0)

                        local _ = DamageCheckMin * -1
                    end
                until not Settings.InstakillBoss or MissionDone

                return
            end

            if not (Settings.InstakillOn and not SkillActive) then
            end

            Settings.InstakillOn = nil
            Settings.InstakillBoss = nil
            PlayerStandPart.CanCollide = true
        end)
        Toggles.CollectBuffToggle:OnChanged(function(p168)
            if p168 then
                Settings.CollectBuffs = true
                PlayerStandPart.CanCollide = true

                while Settings.CollectBuffs and not MissionDone do
                    if Settings.SelectedOrbs then
                        for _, v in pairs(Settings.SelectedOrbs) do
                            if v then
                                local v60 = Workspace:FindFirstChild(v)

                                if v60 then
                                    TeleportToOrb(v60)
                                end

                                task.wait()
                            end
                        end
                    end

                    task.wait(1)
                end
            else
                Settings.CollectBuffs = nil
            end
        end)
    end
    if InLobby or InDungeon then
        Options.EventBossDropdown:OnChanged(function(p169)
            if p169 then
                local LeaderboardHookup_GetScore = Remotes:WaitForChild("LeaderboardHookup_GetScore", 1e999)
                local year = os.date("*t").year
                local str15 = tostring(Settings.EventBossList[p169].EventTag .. year)
                local v1002 = LeaderboardHookup_GetScore:InvokeServer(str15, 1) or LeaderboardHookup_GetScore:InvokeServer(str15, 5)

                if not v1002 then
                    Settings.TotalKillLabel:SetText("Total Kills: no kill data")
                    Settings.DailyKillLabel:SetText("Daily Kills: no kill data")

                    return
                end

                Settings.SelectedEventBoss = p169
                Settings.EventBossDataTable = v1002

                local v1003 = Settings.EventBossDataTable[1]

                tonumber(Settings.StopAfterTotalKills)

                local v1004 = Settings.EventBossDataTable[2]

                tonumber(Settings.StopAfterDailyKills)

                local TotalKillLabel = Settings.TotalKillLabel
                local str16 = tostring(v1003)

                TotalKillLabel:SetText("Total Kills: " .. str16:reverse():gsub("...", "%0,", (math.floor((#str16 - 1) / 3))):reverse())

                local DailyKillLabel = Settings.DailyKillLabel
                local str17 = tostring(v1004)

                DailyKillLabel:SetText("Daily Kills: " .. str17:reverse():gsub("...", "%0,", (math.floor((#str17 - 1) / 3))):reverse())

                return
            end

            Settings.TotalKillLabel:SetText("Total Kills: no boss selected")
            Settings.DailyKillLabel:SetText("Daily Kills: no boss selected")
        end)
        Toggles.AutoClaimBattlepass:OnChanged(function(p170)
            if p170 then
                if Settings.CanRequire then
                    local lib = require(Battlepass)
                    local Battlepass_RedeemedItem = Remotes:WaitForChild("Battlepass_RedeemedItem", math.huge)
                    local Battlepass_RedeemItem = Remotes:WaitForChild("Battlepass_RedeemItem", math.huge)
                    local v1013
                    local v1014
                    local v1015 = false
                    local MaxDmgCheck = -1
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
                                if v1021 == 0 or v1021 ~= MaxDmgCheck then
                                    v1017(NextItemTier)
                                    MaxDmgCheck = v1021
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
    if InDungeon then
        if Toggles.EventBossPingToggle then
            Toggles.EventBossPingToggle:OnChanged(function(p173)
                if p173 then
                    Flags.Event = true

                    return
                end

                Flags.Event = nil
            end)
        end
    end
    task.wait()
    _G.ScriptStep = "trading tab functions"
    if InLobby or InDungeon then
        Connections.ConnectTrades = ReplicatedStorage:WaitForChild("Trades", math.huge).ChildAdded:Connect(function(child)
            local wait = task.wait
            local GetChildren = child.GetChildren

            wait(1)

            for _, v in ipairs(GetChildren(child)) do
                if v.name == PlayerName then
                    for _, child2 in ipairs(child:GetChildren()) do
                        if child2.name ~= PlayerName then
                            Settings.PlayerBeingTraded = child2.name

                            if not Settings.IsScriptDeveloper and not Settings.IsNewPlayer then
                                OpenTradeNotification()
                            end
                        end
                    end
                end
            end
        end)
    end
    if InLobby then
        Toggles.PlacePlayerShopToggle:OnChanged(function(p174)
            if p174 then
                local ShopLocations = Workspace:FindFirstChild("ShopLocations")

                if ShopLocations then
                    local GetChildren = ShopLocations.GetChildren

                    for _, v in ipairs(GetChildren(ShopLocations)) do
                        if v.PlayerOwner.Value == nil then
                            Remotes:WaitForChild("Shop_ClaimShop", 1e999):FireServer(v)
                            Library:Notify("Placed shop!", 2)
                            Settings.ShopPlaced = true

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

            if Settings.ShopPlaced then
                Remotes:WaitForChild("Shop_StopShop", math.huge):FireServer()
                Library:Notify("Player shop removed.", 2)
            end
        end)
        Options.PlayerShopDropdown:OnChanged(function(p175)
            if Settings.CanRequire then
                local _, _ = pcall(function()
                    require(ReplicatedStorage.Client.Gui):Get("Shop"):Close()
                    require(ReplicatedStorage.Client.Gui):Get("Shop"):Open(game.Players[tostring(p175)])
                end)
            end
        end)
    end
    task.wait()
    _G.ScriptStep = "class tab functions"
    if InDungeon then
        Toggles.GeneralClassBuffToggle:OnChanged(function(p176)
            if p176 then
                Settings.ClassBuffs = true

                local ok, result = pcall(function()
                    while Settings.ClassBuffs and not MissionDone do
                        if IsInCombat then
                            Remotes:WaitForChild("Skillset_DualWielder_AttackBuff", math.huge):FireServer()
                            Remotes:WaitForChild("Skillset_Guardian_AggroDraw", math.huge):FireServer()
                        end

                        task.wait(1)
                    end
                end)

                if not ok then
                    HandleError("GENERAL BUFF", (tostring(result)))

                    return
                end
            else
                Settings.ClassBuffs = nil
            end
        end)
        Toggles.MoLBarrierToggle:OnChanged(function(p177)
            if p177 then
                local success, result = pcall(function()
                    if Settings.PlayerClass == "MageOfLight" then
                        Settings.MolBuff = true

                        local Skillset_MageOfLight_Barrier = Remotes:WaitForChild("Skillset_MageOfLight_Barrier")

                        while Settings.MolBuff and not MissionDone do
                            local children = Players:GetChildren()

                            for _, v in pairs(children) do
                                if v.Name ~= PlayerName then
                                    Skillset_MageOfLight_Barrier:FireServer(v)
                                end

                                task.wait()
                            end

                            task.wait(2)
                        end
                    end
                end)
                if not success then
                    HandleError("MAGE OF LIGHT BARRIER", (tostring(result)))

                    return
                end
            else
                Settings.MolBuff = nil
            end
        end)
        Toggles.DemonBloodBindingToggle:OnChanged(function(p178)
            if p178 then
                local ok, result = pcall(function()
                    if Settings.PlayerClass == "Demon" then
                        Settings.DemonBuff = true

                        local Skillset_Demon_BloodBinding = Remotes:WaitForChild("Skillset_Demon_BloodBinding")

                        while Settings.DemonBuff and not MissionDone do
                            if IsInCombat and CurrentTargetMob then
                                Skillset_Demon_BloodBinding:FireServer()
                                task.wait(8)
                            end

                            task.wait(0.5)
                        end
                    end
                end)

                if not ok then
                    HandleError("DEMON BLOOD BINDING", (tostring(result)))

                    return
                end
            else
                Settings.DemonBuff = nil
            end
        end)
        Toggles.StormcallerSuperchargeToggle:OnChanged(function(p179)
            if p179 then
                local ok, result = pcall(function()
                    if Settings.PlayerClass == "Stormcaller" then
                        Settings.StormcallerBuff = true

                        local Skillset_Stormcaller_Supercharge = Remotes:WaitForChild("Skillset_Stormcaller_Supercharge", 1e999)

                        while Settings.StormcallerBuff and not MissionDone do
                            if IsInCombat then
                                Skillset_Stormcaller_Supercharge:FireServer()
                                task.wait(8)
                            end

                            task.wait(0.5)
                        end
                    end
                end)

                if not ok then
                    HandleError("STORMCALLER SUPERCHARGE", (tostring(result)))

                    return
                end
            else
                Settings.StormcallerBuff = true
            end
        end)
    end
    task.wait()
    _G.ScriptStep = "equipment tab function"
    if InLobby or InDungeon then
        Toggles.AutoSellToggle:OnChanged(function(p180)
            if p180 then
                local successValueValue, resultValueValue = pcall(function()
                    local t206 = {
						"AetherEgg",
						"CupidEgg",
						"SkeletonEgg",
						"SantaEgg"
					}
                    local Items = PlayerBackpack:WaitForChild("Items")
                    local Charms
                    if Settings.CanRequire then
                        Charms = require(Charms:WaitForChild("Charms"))
                    end
                    Connections.ConnectInventory = Items.ChildAdded:Connect(function(child)
                        local successValue, resultValue = pcall(function()
                            ActiveSellCount += 1
                            task.wait(Settings.AddedAutoSellDelay)
                            if BuySellLock ~= 0 then
                                if BuySellLock ~= 0 then
                                end

                                repeat
                                    task.wait()
                                until BuySellLock == 0

                                if not child or (not child.Parent or not child.Parent.Name) then
                                    ActiveSellCount -= 1

                                    return
                                end

                                if child.Parent.Name ~= "Items" then
                                    ActiveSellCount -= 1

                                    return
                                end
                            end
                            if child:FindFirstChild("Count") or (child:FindFirstChild("Locked") or (child:FindFirstChild("Favorited") or child:FindFirstChild("GiftWrap"))) then
                                ActiveSellCount -= 1

                                return
                            end
                            if not child or not child.Name then
                                ActiveSellCount -= 1

                                return
                            end
                            local str18 = tostring(child.Name)
                            local v2202 = child:FindFirstChild("XP") or string.find(str18, "Pet")
                            if v2202 and not Settings.IncludePets then
                                ActiveSellCount -= 1

                                return
                            end
                            local v2203
                            if Charms and Charms[child.Name] then
                                v2203 = true

                                if not Settings.IncludeCharms then
                                    ActiveSellCount -= 1

                                    return
                                end
                            end
                            local v2204 = false
                            local v2205 = GetRarity(child)
                            if not v2203 and tostring(v2205) ~= "NotEquipment" then
                                if v2205 == 7 then
                                    return
                                end

                                if not SellRarityThreshold then
                                    local v2206 = child
                                    local ok, result = pcall(function()
                                        Remotes:WaitForChild("Drops_SellItems", 1e999):InvokeServer({ v2206 })
                                        Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(v2206), 1)
                                        ActiveSellCount -= 1
                                    end)

                                    if not ok then
                                        HandleError("SELL", (tostring(result)))
                                    end

                                    return
                                end

                                if v2205 < SellRarityThreshold then
                                    local v2209 = child
                                    local ok, result = pcall(function()
                                        Remotes:WaitForChild("Drops_SellItems", 1e999):InvokeServer({ v2209 })
                                        Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(v2209), 1)
                                        ActiveSellCount -= 1
                                    end)

                                    if not ok then
                                        HandleError("SELL", (tostring(result)))
                                    end

                                    return
                                end

                                v2204 = true
                            end
                            local SellTowerEggs = Settings.SellTowerEggs
                            if SellTowerEggs then
                                local v2213 = child

                                SellTowerEggs = not not (v2213 and (v2213.Name and v184[v2213.Name]))
                            end
                            if SellTowerEggs then
                                local v2214 = child
                                local ok, result = pcall(function()
                                    Remotes:WaitForChild("Drops_SellItems", 1e999):InvokeServer({ v2214 })
                                    Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(v2214), 1)
                                    ActiveSellCount -= 1
                                end)

                                if not ok then
                                    HandleError("SELL", (tostring(result)))
                                end

                                return
                            end
                            local v2217 = table.find(v183, str18) or false
                            local v2218 = false
                            local v2219 = false
                            local v2220 = false
                            if not v2217 and (Settings.KeepPerks and Settings.SelectedPerks) then
                                for i = 1, 3 do
                                    if v2218 then
                                        break
                                    end

                                    local v2222 = "Perk" .. tostring(i)
                                    local v2223 = child:FindFirstChild(v2222)

                                    if v2223 then
                                        local PerkValue = v2223:FindFirstChild("PerkValue")

                                        for k, _ in pairs(Settings.SelectedPerks) do
                                            local v2227 = Settings.SavePerkTable[k]
                                            local v2228 = v2227

                                            if v2227 then
                                                v2228 = v2223.Value == v2227.PerkInternalName

                                                if v2228 then
                                                    v2228 = PerkValue.Value >= (v2227.PerkValue * 100 - PerkTolerance) / 100 or (v2202 or v2203) and PerkValue.Value >= (v2227.PetPerkValue * 100 - PerkTolerance) / 100
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
                                    ActiveSellCount -= 1
                                end)

                                if not ok then
                                    HandleError("SELL", (tostring(result)))
                                end

                                return
                            end
                            if v2217 or v2204 then
                                Library:Notify("<font color='#80FF80'>Kept item:</font> " .. str18, 1)
                                ActiveSellCount -= 1
                            end
                            local v2232 = table.find(t206, str18) or false
                            local v2233 = v2232
                            if not v2232 then
                                v2233 = v2218 and (Settings.DiscordWebhookLink and Settings.SendDiscordMessage)
                            end
                            if v2233 then
                                local u2234
                                if v2232 then
                                    u2234 = "Kept item **" .. str18 .. "**! " .. WebhookMention
                                elseif v2218 then
                                    u2234 = "Kept **" .. str18 .. "** because **" .. tostring(v2220) .. " " .. tostring(v2219) .. "%** was found!" .. WebhookMention
                                end
                                local _, _ = pcall(function()
                                    local t207 = {
										username = "Drop Logger",
										content = u2234
									}
                                    local DiscordWebhookLink = Settings.DiscordWebhookLink

                                    if not DiscordWebhookLink and true then
                                        warn("No webhook link provided")

                                        return
                                    end

                                    local v2288 = false
                                    local _, _ = pcall(function()
                                        if v2288 and HookFunction or hookmetamethod then
                                            local MinDmgCheck = 0
                                            local ok, _ = pcall(function()
                                                for _, v in pairs(getreg()) do
                                                    if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                        MinDmgCheck += 1
                                                    end
                                                end
                                            end)
                                            if MinDmgCheck > 2 or MinDmgCheck == 0 then
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

                                        if not HttpRequest then
                                            return
                                        end

                                        local v2311 = HttpRequest
                                        local v2312 = DiscordWebhookLink
                                        local t209 = {
											["Content-Type"] = "application/json"
										}
                                        local json = HttpService:JSONEncode(t207)

                                        v2311({
											Url = v2312,
											Method = "POST",
											Headers = t209,
											Body = json
										})
                                    end)
                                end)
                                local _ = ActiveSellCount - 1

                                return
                            end
                        end)
                        if not successValue then
                            HandleError("FAILURE TO SELL ITEM", (tostring(resultValue)))
                        end
                    end)
                end)
                if not successValueValue then
                    HandleError("AUTO SELL", (tostring(resultValueValue)))

                    return
                end
            else
                DisconnectVariable("ConnectInventory")
            end
        end)
    end
    task.wait()
    _G.ScriptStep = "dungeon tab functions"
    if InDungeon then
        Toggles.CollectChestToggle:OnChanged(function(p181)
            if p181 then
                if IsMissionCleared() then
                    CollectChests()

                    return
                end

                if InTower then
                    Settings.TowerChestDelay = true

                    local Chests_SpawnChest = Remotes:WaitForChild("Chests_SpawnChest", math.huge)
                    local Chests_OpenChest = Remotes:WaitForChild("Chests_OpenChest", 1e999)

                    Connections.ConnectChests = Chests_SpawnChest.OnClientEvent:Connect(function(_, _, p184, _, _)
                        Chests_OpenChest:FireServer(p184)
                    end)
                    task.spawn(CollectTowerChests)

                    return
                end

                Settings.CollectDungeonChest = true

                return
            end

            DisconnectVariable("ConnectChests")
            Settings.CollectDungeonChest = nil
            Settings.TowerChestDelay = nil
        end)
        Toggles.HighestDungeonToggle:OnChanged(function(p187)
            if p187 then
                task.spawn(EquipNewItem)
                Settings.AutoLeveling = true

                if IsMissionCleared() then
                    local ok, result = pcall(function()
                        local Active = CharacterData:WaitForChild("Quests", 1e999):WaitForChild("Active", 1e999)

                        if Settings.ClaimGuildQuests then
                            local DailyGuildQuests = require(Quests):GetDailyGuildQuests()

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
                        HandleError("CLAIM QUESTS", (tostring(result)))

                        return
                    end
                end
            else
                DisconnectVariable("ConnectEquipNewItems")
                Settings.AutoLeveling = nil
            end
        end)
        Toggles.ReplayMissionToggle:OnChanged(function(p188)
            if p188 then
                Settings.ReplayMission = true

                if IsMissionCleared() then
                    RestartDungeon()

                    return
                end
            else
                Settings.ReplayMission = nil
            end
        end)
        Toggles.RandomNightmareDungeonToggle:OnChanged(function(p189)
            if p189 then
                Settings.RandomNightmareDungeon = math.random(1005, 1007)

                return
            end

            Settings.RandomNightmareDungeon = nil
        end)
        Toggles.ReplayInfiniteTowerToggle:OnChanged(function(p190)
            if p190 then
                local ReplicateTowerFloor = ReplicatedStorage:FindFirstChild("ReplicateTowerFloor")

                if ReplicateTowerFloor then
                    Connections.ConnectInfTower = ReplicateTowerFloor.Changed:Connect(function(property)
                        if property >= RangedDistance + 1 then
                            Library:Notify("Sending restart")
                            RestartDungeon(true)
                        end
                    end)
                end

                if Remotes:WaitForChild("Missions_GetCurrentLives", 1e999):InvokeServer() == 0 then
                    RestartDungeon(true)

                    return
                end
            else
                DisconnectVariable("ConnectInfTower")
            end
        end)
        if Toggles.NightmarePingToggle then
            Toggles.NightmarePingToggle:OnChanged(function(p191)
                if p191 then
                    Flags.Nightmare = true

                    return
                end

                Flags.Nightmare = nil
            end)
        end
    end
    task.wait()
    _G.ScriptStep = "guild tab functions"
    if InDungeon then
        Toggles.WaitTimeToggle:OnChanged(function(p192)
            if p192 then
                Settings.GuildWait = true

                local ok, result = pcall(function()
                    local MaxDmgCheckVal = 120

                    for _, v in ipairs(v218) do
                        if v.DungeonID == Tracking.MissionId then
                            MaxDmgCheckVal = v.DungeonDelay

                            break
                        end
                    end

                    local MissionStart = Workspace:FindFirstChild("MissionStart", true)
                    local MinDmgCheckVal = 0

                    if MissionStart then
                        MissionStart:PivotTo(CFrame.new(HumanoidRootPart.Position))
                        MinDmgCheckVal = 5
                    end

                    task.wait(0.2)

                    local vector3 = Vector3.new(HumanoidRootPart.Position.X + 25000, HumanoidRootPart.Position.Y + 25000, HumanoidRootPart.Position.Z)

                    Settings.GuildPreviousPlayerPosition = HumanoidRootPart.Position
                    HumanoidRootPart.CFrame = CFrame.new(vector3)
                    TeleportStandPart()

                    local v1683 = MaxDmgCheckVal + (Settings.AddedGuildTime or 0) + MinDmgCheckVal

                    Settings.DelayNotification = Library:Notify("Waiting for legit time", v1683)

                    local v1684 = time() + v1683

                    while Settings.GuildWait and not MissionDone do
                        if v1684 <= time() then
                            HumanoidRootPart.CFrame = CFrame.new(Settings.GuildPreviousPlayerPosition)
                            TeleportStandPart()
                            Settings.GuildPreviousPlayerPosition = nil

                            return
                        end

                        HumanoidRootPart.CFrame = CFrame.new(vector3)
                        TeleportStandPart()
                        task.wait(0.1)
                    end
                end)

                if not ok then
                    HandleError("WAIT FOR LEGIT TIME", (tostring(result)))

                    return
                end
            else
                Settings.GuildWait = nil

                if Settings.DelayNotification then
                    Settings.DelayNotification:Destroy()
                end

                if Settings.GuildPreviousPlayerPosition then
                    HumanoidRootPart.CFrame = CFrame.new(Settings.GuildPreviousPlayerPosition)
                end

                TeleportStandPart()
            end
        end)
        Toggles.DoAllDungeonsToggle:OnChanged(function(p193)
            if p193 then
                Library:Notify("Doing all dungeons", 10)
                Settings.DoingGuildDungeon = true

                return
            end

            Settings.DoingGuildDungeon = nil
        end)
        if Toggles.GuildPingToggle then
            Toggles.GuildPingToggle:OnChanged(function(p194)
                if p194 then
                    Flags.Guild = true

                    return
                end

                Flags.Guild = nil
            end)
        end
        Toggles.DelayInfFloorToggle:OnChanged(function(p195)
            if p195 then
                Settings.DelayInfiniteTower = true
                Settings.InfiniteTowerFloorDelay = Settings.InfiniteTowerFloorDelay or 25
                local success, result = pcall(function()
                    if Tracking.MissionId == 38 then
                        local ModuleScript = ReplicatedStorage:WaitForChild("MissionScripts", math.huge):FindFirstChildWhichIsA("ModuleScript")

                        if ModuleScript then
                            local EventState
                            Connections.UpdateMobTracker = ModuleScript:WaitForChild("UpdateMobTracker", 1e999).OnClientEvent:Connect(function(p196, p197)
                                if p197 < 10 then
                                    EventState = true

                                    if p196 == p197 then
                                        Settings.InfiniteTowerFloorDelay = Settings.InfiniteTowerFloorDelay + Settings.IncrementInfiniteDelay
                                        EventState = false
                                    end

                                    return
                                end

                                EventState = false
                            end)
                            Connections.UpdateTowerFloor = ModuleScript:WaitForChild("UpdateTowerFloor", 1e999).OnClientEvent:Connect(function(_)
                                local vector3 = Vector3.new(HumanoidRootPart.Position.X + 25000, HumanoidRootPart.Position.Y + 25000, HumanoidRootPart.Position.Z)

                                Settings.InfinitePreviousPlayerPosition = HumanoidRootPart.Position
                                Settings.DelayNotification = Library:Notify("Delaying floor", Settings.InfiniteTowerFloorDelay)

                                local v2092 = time() + Settings.InfiniteTowerFloorDelay

                                while Settings.DelayInfiniteTower and not MissionDone do
                                    if EventState or v2092 <= time() then
                                        if Settings.DelayNotification then
                                            Settings.DelayNotification:Destroy()
                                        end

                                        HumanoidRootPart.CFrame = CFrame.new(Settings.InfinitePreviousPlayerPosition)
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
                    HandleError("DELAY INF TOWER FLOORS", (tostring(result)))

                    return
                end
            else
                if Settings.DelayNotification then
                    Settings.DelayNotification:Destroy()
                end

                Settings.DelayInfiniteTower = nil
                DisconnectVariable("UpdateMobTracker")
                DisconnectVariable("UpdateTowerFloor")
            end
        end)
        Toggles.GuildQuestToggle:OnChanged(function(p199)
            if p199 then
                if not Settings.CanRequire then
                    Library:Notify("Your executor doesn't support claiming guild quests", 3)

                    return
                end

                Settings.ClaimGuildQuests = true

                return
            end

            Settings.ClaimGuildQuests = nil
        end)
    end
    task.wait()
    _G.ScriptStep = "shop tab functions"
    if InLobby or InDungeon then
        Toggles.AutoHatchEggToggle:OnChanged(function(p200)
            if p200 then
                Settings.AutoHatch = true
                local success, result = pcall(function()
                    local Pet = ReplicatedStorage.PlayerEquips[PlayerName].Pet
                    local Inventory_EquipItem = Remotes:WaitForChild("Inventory_EquipItem", 1e999)
                    local Pets_Hatch = Remotes:WaitForChild("Pets_Hatch", 1e999)
                    local Items = PlayerBackpack.Items
                    local _ = Settings.AutoHatch

                    repeat
                        local SelectedEggItem = Settings.SelectedEggItem

                        if not SelectedEggItem then
                            Library:Notify("No egg is selected", 3)
                            task.wait(3)

                            if Settings.AutoHatch then
                                continue
                            end

                            return
                        end

                        local Folder = Pet:FindFirstChildWhichIsA("Folder")

                        if Folder and string.find(Folder.Name, "Egg") then
                            task.wait(0.1)

                            continue
                        end

                        task.wait(Settings.HatchDelay)

                        if not BuyFromEggShop(SelectedEggItem.CurrencyType, SelectedEggItem.InternalName, SelectedEggItem.CoinPrice, SelectedEggItem.VisualName) then
                            Library:Notify("You do not have enough gold", 3)
                            task.wait(3)

                            if Settings.AutoHatch then
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
                    until not Settings.AutoHatch
                end)
                if not success then
                    HandleError("AUTO HATCH", (tostring(result)))

                    return
                end
            else
                Settings.AutoHatch = nil
            end
        end)
        Toggles.AutoHatchInventoryEggToggle:OnChanged(function(p201)
            if p201 then
                Settings.AutoHatchInventory = true

                local ok, result = pcall(function()
                    local t214 = {}

                    for _, v in pairs(v183) do
                        t214[v] = true
                    end

                    local Pet = ReplicatedStorage.PlayerEquips[PlayerName].Pet
                    local Inventory_EquipItem = Remotes:WaitForChild("Inventory_EquipItem", 1e999)
                    local Pets_Hatch = Remotes:WaitForChild("Pets_Hatch", 1e999)
                    local Items = PlayerBackpack.Items
                    local _ = Settings.AutoHatchInventory

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

                                task.wait(Settings.HatchDelay)
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
                    until not Settings.AutoHatchInventory
                end)

                if not ok then
                    HandleError("INVENTORY HATCH", (tostring(result)))

                    return
                end
            else
                Settings.AutoHatchInventory = nil
            end
        end)
        Toggles.BuyMaxNightmareToggle:OnChanged(function(p202)
            if p202 then
                if PlaceIdStr ~= "14914684761" then
                    return
                end

                Settings.AutoBuyNightmare = true

                local ok, result = pcall(function()
                    local _ = Settings.AutoBuyNightmare

                    repeat
                        local SelectedNightmareItem = Settings.SelectedNightmareItem

                        if not SelectedNightmareItem then
                            task.wait(1)
                        elseif not BuyFromLocalShop("NightmareCoin", "NightmarePortals", SelectedNightmareItem.InternalName, SelectedNightmareItem.CoinPrice, SelectedNightmareItem.VisualName) then
                            task.wait(1)
                        else
                            task.wait(0.5)
                        end
                    until not Settings.AutoBuyNightmare
                end)

                if not ok then
                    HandleError("BUY MAX NIGHTMARE", (tostring(result)))

                    return
                end
            else
                Settings.AutoBuyNightmare = nil
            end
        end)
        Toggles.BuyMaxPVPToggle:OnChanged(function(p203)
            if p203 then
                if PlaceIdStr ~= "6510868181" then
                    return
                end
                Settings.AutoBuyPvp = true
                local success, result = pcall(function()
                    local _ = Settings.AutoBuyPvp

                    repeat
                        local SelectedPvpItem = Settings.SelectedPvpItem

                        if not SelectedPvpItem then
                            task.wait(1)
                        elseif not BuyFromLocalShop("PVPCoin", "PVPShop", SelectedPvpItem.InternalName, SelectedPvpItem.CoinPrice, SelectedPvpItem.VisualName) then
                            task.wait(1)
                        else
                            task.wait(0.5)
                        end
                    until not Settings.AutoBuyPvp
                end)
                if not success then
                    HandleError("BUY MAX PVP", (tostring(result)))

                    return
                end
            else
                Settings.AutoBuyPvp = nil
            end
        end)
        Toggles.BuyMaxGuildToggle:OnChanged(function(p204)
            if p204 then
                if PlaceIdStr ~= "139316833473171" then
                    return
                end

                Settings.AutoBuyGuild = true

                local ok, result = pcall(function()
                    local _ = Settings.AutoBuyGuild

                    repeat
                        local SelectedGuildItem = Settings.SelectedGuildItem

                        if not SelectedGuildItem then
                            task.wait(1)
                        elseif not BuyFromLocalShop("GuildCoin", "GuildShop", SelectedGuildItem.InternalName, SelectedGuildItem.CoinPrice, SelectedGuildItem.VisualName) then
                            task.wait(1)
                        else
                            task.wait(0.5)
                        end
                    until not Settings.AutoBuyGuild
                end)

                if not ok then
                    HandleError("BUY MAX GUILD", (tostring(result)))

                    return
                end
            else
                Settings.AutoBuyGuild = nil
            end
        end)
        Toggles.BuyMaxEventToggle:OnChanged(function(p205)
            if p205 then
                if PlaceIdStr ~= "18567064955" then
                    return
                end
                Settings.AutoBuyEvent = true
                local success, result = pcall(function()
                    local _ = Settings.AutoBuyEvent

                    repeat
                        local SelectedEventItem = Settings.SelectedEventItem

                        if not SelectedEventItem then
                            task.wait(1)
                        elseif not BuyFromLocalShop("DragonCoin", "Anime2026", SelectedEventItem.InternalName, SelectedEventItem.CoinPrice, SelectedEventItem.VisualName) then
                            task.wait(1)
                        else
                            task.wait(0.5)
                        end
                    until not Settings.AutoBuyEvent
                end)
                if not success then
                    HandleError("BUY MAX EVENT", (tostring(result)))

                    return
                end
            else
                Settings.AutoBuyEvent = nil
            end
        end)
    end
    task.wait()
    _G.ScriptStep = "misc tab functions"
    if InDungeon then
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
    if InLobby or InDungeon then
        Toggles.DamageNumbersToggle:OnChanged(function(p207)
            local CanRequire = Settings.CanRequire

            if CanRequire then
                CanRequire = HookFunction and (RestoreFunction and (NewCClosure and IsHooked))
            end

            if CanRequire then
                local success, result = pcall(function()
                    local RenderDamageNumber = require(Effects).RenderDamageNumber

                    if p207 then
                        HookFunction(RenderDamageNumber, NewCClosure(function(...)
                        end))

                        return
                    end

                    if IsHooked(RenderDamageNumber) then
                        RestoreFunction(RenderDamageNumber)
                    end
                end)
                if not success then
                    HandleError("REMOVE DAMAGE NUMBERS", (tostring(result)))

                    return
                end
            else
                local ok, result = pcall(function()
                    local Effects_RenderDamageNumber = Remotes:FindFirstChild("Effects_RenderDamageNumber")

                    if p207 and Effects_RenderDamageNumber then
                        Settings.RemovedDamageNumbers = true
                        Effects_RenderDamageNumber:Destroy()

                        return
                    end

                    if Settings.RemovedDamageNumbers then
                        Library:Notify("Rejoin to see damage numbers", 5)
                    end
                end)

                if not ok then
                    HandleError("REMOVE DAMAGE NUMBERS FALLBACK", (tostring(result)))
                end
            end
        end)
        Toggles.DamageFlashToggle:OnChanged(function(p208)
            if p208 then
                Combat.HitHighlight.Enabled = false

                return
            end

            Combat.HitHighlight.Enabled = true
        end)
        Toggles.DeathEffectToggle:OnChanged(function(p209)
            local CanRequire = Settings.CanRequire

            if CanRequire then
                CanRequire = HookFunction and (RestoreFunction and (NewCClosure and IsHooked))
            end

            if CanRequire then
                local success, result = pcall(function()
                    local DoEffect = require(Effects).DoEffect

                    if p209 then
                        local u1719
                        u1719 = HookFunction(DoEffect, NewCClosure(function(p210, p211, ...)
                            if p211 == "DeathEffect" then
                                return
                            end

                            return u1719(p210, p211, ...)
                        end))

                        return
                    end

                    if IsHooked(DoEffect) then
                        RestoreFunction(DoEffect)
                    end
                end)
                if not success then
                    HandleError("REMOVE DEATH EFFECTS", (tostring(result)))

                    return
                end
            else
                local ok, result = pcall(function()
                    if p209 then
                        Settings.RemovedDeathEffects = true

                        local DeathEffect = Effects.EffectScripts:FindFirstChild("DeathEffect")

                        if DeathEffect then
                            DeathEffect:Destroy()

                            return
                        end
                    elseif Settings.RemovedDeathEffects then
                        Library:Notify("Rejoin to see death effects", 5)
                    end
                end)

                if not ok then
                    HandleError("REMOVE DEATH EFFECTS FALLBACK", (tostring(result)))
                end
            end
        end)
        Toggles.KnockdownToggle:OnChanged(function(p212)
            local CanRequire = Settings.CanRequire

            if CanRequire then
                CanRequire = HookFunction and (RestoreFunction and (NewCClosure and IsHooked))
            end

            if CanRequire then
                local ok, result = pcall(function()
                    local Knockdown = require(game.ReplicatedStorage.Client.Actions).Knockdown

                    if p212 then
                        HookFunction(Knockdown, NewCClosure(function(...)
                        end))

                        return
                    end

                    if IsHooked(Knockdown) then
                        RestoreFunction(Knockdown)
                    end
                end)

                if not ok then
                    HandleError("DISABLE KNOCKDOWN", (tostring(result)))
                end
            end
        end)
    end
    if InLobby then
        Toggles.WaystoneToggle:OnChanged(function(p213)
            local u1111 = p213
            local success, result = pcall(function()
                if u1111 then
                    Connections.ConnectWaystones = PlayerGui.ChildAdded:Connect(function(child)
                        if child.Name == "WaystoneDiscoveryIcon" then
                            child.PlayerToHideFrom = LocalPlayer
                        end
                    end)

                    for _, child in pairs(PlayerGui:GetChildren()) do
                        if child.Name == "WaystoneDiscoveryIcon" then
                            child.PlayerToHideFrom = LocalPlayer
                        end
                    end

                    return
                end

                DisconnectVariable("ConnectWaystones")

                for _, child in pairs(PlayerGui:GetChildren()) do
                    if child.Name == "WaystoneDiscoveryIcon" then
                        child.PlayerToHideFrom = nil
                    end
                end
            end)
            if not success then
                HandleError("HIDE WAYSTONES", (tostring(result)))
            end
        end)
    end
    if InDungeon then
        Toggles.MissionObjectiveToggle:OnChanged(function(p214)
            ToggleMenuUI("MissionObjective", p214)
        end)
        Toggles.BossBarToggle:OnChanged(function(p215)
            ToggleMenuUI("BossHealthbar", p215)
        end)
        Toggles.PlayerHotbarToggle:OnChanged(function(p216)
            ToggleMenuUI("Hotbar", p216)
        end)
        Toggles.MobilePlayerSkills:OnChanged(function(p217)
            ToggleMenuUI("TouchInput", p217)
        end)
        Toggles.MainGuiToggle:OnChanged(function(p218)
            ToggleMenuUI("MainGui", p218)
        end)
        Toggles.HideMenuToggle:OnChanged(function(p219)
            ToggleMenuUI("Menu", p219)
        end)
        Toggles.HideCameraToggle:OnChanged(function(p220)
            ToggleMenuUI("TopBar", p220)
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
            if Settings.CanRequire then
                local success, result = pcall(function()
                    if not Settings.WalkspeedManager then
                        Settings.WalkspeedManager = require(ReplicatedStorage.Shared.WalkspeedManager)
                        task.wait(1)
                    end

                    local WalkspeedManager = Settings.WalkspeedManager
                    local t220 = { (tonumber(p222)) }

                    WalkspeedManager:SetBaseSpeed(Unpack(t220))
                end)
                if not success then
                    HandleError("CHANGE WALKSPEED", (tostring(result)))
                end
            end
        end)
        Toggles.ShowEndTimeToggle:OnChanged(function(p223)
            if p223 then
                Settings.ShowTime = true

                if IsMissionCleared() then
                    Library:Notify("Completed in " .. Settings.DungeonCompletionTime)

                    return
                end
            else
                Settings.ShowTime = nil
            end
        end)
        Toggles.DevKickToggle:OnChanged(function(p224)
            if p224 then
                for _, child in pairs(Players:GetChildren()) do
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

                            LocalPlayer:Kick("Someone with the rank " .. s7 .. " joined your game")

                            local DiscordWebhookLink = Settings.DiscordWebhookLink
                            local v1732 = t222

                            if not DiscordWebhookLink and true then
                                warn("No webhook link provided")

                                return
                            end

                            local v1733 = false
                            local _, _ = pcall(function()
                                if v1733 and HookFunction or hookmetamethod then
                                    local DmgCheckMax = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                DmgCheckMax += 1
                                            end
                                        end
                                    end)
                                    if DmgCheckMax > 2 or DmgCheckMax == 0 then
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

                                if not HttpRequest then
                                    return
                                end

                                local v2104 = HttpRequest
                                local v2105 = DiscordWebhookLink
                                local t224 = {
									["Content-Type"] = "application/json"
								}
                                local json = HttpService:JSONEncode(v1732)

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

                Connections.ConnectPlayerJoins = Players.PlayerAdded:Connect(function(player)
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

                            LocalPlayer:Kick("Someone with the rank " .. s8 .. " joined your game")

                            local DiscordWebhookLink = Settings.DiscordWebhookLink
                            local v2112 = t225

                            if not DiscordWebhookLink and true then
                                warn("No webhook link provided")

                                return
                            end

                            local v2113 = false
                            local _, _ = pcall(function()
                                if v2113 and HookFunction or hookmetamethod then
                                    local DmgCheckMin = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                DmgCheckMin += 1
                                            end
                                        end
                                    end)
                                    if DmgCheckMin > 2 or DmgCheckMin == 0 then
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

                                if not HttpRequest then
                                    return
                                end

                                local v2250 = HttpRequest
                                local v2251 = DiscordWebhookLink
                                local t227 = {
									["Content-Type"] = "application/json"
								}
                                local json = HttpService:JSONEncode(v2112)

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
    if InDungeon then
        Toggles.ProfilerToggle:OnChanged(function(p225)
            if p225 then
                Settings.ShowAccountInfo = true
                Library:SetWatermarkVisibility(true)
                local Gold = CharacterData:WaitForChild("Currency"):WaitForChild("Gold")
                local success, result = pcall(function()
                    local _ = Settings.ShowAccountInfo

                    repeat
                        local _Library3 = Library
                        local str19 = tostring(PlayerName)
                        local str20 = tostring(GetPlayerClass().DisplayName)
                        local str21 = tostring(Gold.Value)

                        _Library3:SetWatermark("Account: " .. str19 .. "\nClass: " .. str20 .. "\nGold: " .. str21:reverse():gsub("...", "%0,", (math.floor((#str21 - 1) / 3))):reverse() .. "\nCrystals: " .. FormatNumberWithCommas(Remotes:WaitForChild("Crystals_GetCrystals", math.huge):InvokeServer()) .. "\nGuild: " .. tostring(PlayerGuild))
                        task.wait(5)
                    until not Settings.ShowAccountInfo
                end)
                if not success then
                    local s9 = "No"

                    if PlayerGuild then
                        s9 = "Yes"
                    end

                    local v1138 = HandleError
                    local str22 = tostring(result)
                    local str23 = tostring(GetPlayerClass().DisplayName)
                    local str24 = tostring(Gold.Value)
                    local v1142 = str24:reverse():gsub("...", "%0,", (math.floor((#str24 - 1) / 3))):reverse()
                    local str25 = tostring((Remotes.Crystals_GetCrystals:InvokeServer()))

                    v1138("DISPLAY ACCOUNT INFORMATION", str22, "CL: " .. str23 .. " GO: " .. v1142 .. " CR: " .. str25:reverse():gsub("...", "%0,", (math.floor((#str25 - 1) / 3))):reverse() .. " GU: " .. s9)

                    return
                end
            else
                Library:SetWatermarkVisibility(false)
                Settings.ShowAccountInfo = nil
            end
        end)
    end
    Toggles.AFKToggle:OnChanged(function(p226)
        if p226 then
            Settings.PreventAfk = true

            while Settings.PreventAfk and not MissionDone do
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0))
                task.wait(10)
            end
        else
            Settings.PreventAfk = nil
        end
    end)
    if InMainMenu then
        Toggles.MainMenuPlay:OnChanged(function(p227)
            if p227 then
                if firesignal then
                    local Play = PlayerGui:WaitForChild("Menu", 1e999):WaitForChild("Main", math.huge):WaitForChild("Play", math.huge):WaitForChild("Play", 1e999)

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
    if InLobby or InDungeon then
        Toggles.RemoveOtherPlayersToggle:OnChanged(function(p228)
            if p228 then
                local Characters = Workspace:FindFirstChild("Characters")
                local GetChildren = Characters.GetChildren

                for _, v in pairs(GetChildren(Characters)) do
                    if v.Name ~= PlayerName then
                        v:Destroy()
                    end
                end

                Connections.ConnectCharacterFolder = Characters.ChildAdded:Connect(function(child)
                    task.wait(0.1)

                    if child.Name == PlayerName then
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
                for _, child in pairs(MobsFolder:GetChildren()) do
                    if child then
                        local Highlight = Instance.new("Highlight")

                        Highlight.FillTransparency = 0
                        Highlight.Parent = child
                    end
                end

                Connections.ConnectMobFolder = MobsFolder.ChildAdded:Connect(function(child)
                    if child then
                        local Highlight = Instance.new("Highlight")

                        Highlight.FillTransparency = 0
                        Highlight.Parent = child
                    end
                end)

                return
            end

            DisconnectVariable("ConnectMobFolder")

            for _, child in pairs(MobsFolder:GetChildren()) do
                local Highlight = child:FindFirstChild("Highlight", true)

                if child and Highlight then
                    Highlight:Destroy()
                end
            end
        end)
        Toggles.NoclipCameraToggle:OnChanged(function(p230)
            if p230 then
                local success, result = pcall(function()
                    LocalPlayer.DevCameraOcclusionMode = Enum.DevCameraOcclusionMode.Invisicam
                end)
                if not success then
                    HandleError("CAMERA NOCLIP", (tostring(result)))

                    return
                end
            else
                LocalPlayer.DevCameraOcclusionMode = Enum.DevCameraOcclusionMode.Zoom
            end
        end)
        Toggles.DisableAutoJumpToggle:OnChanged(function(p231)
            if p231 then
                Character.Humanoid.AutoJumpEnabled = false
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
        Tracking.RenderingScreen = CI("ScreenGui", {
			DisplayOrder = -1
		})

        local CI = CI
        local vector2 = Vector2.new(0.5, 0.5)
        local uDim2 = UDim2.new(0.5, 0, 0.5, 0)
        local color3 = Color3.fromRGB(0, 0, 0)
        local uDim2_21 = UDim2.new(1, 0, 2, 0)
        local RenderingScreen = Tracking.RenderingScreen

        CI("Frame", {
			AnchorPoint = vector2,
			Position = uDim2,
			BackgroundColor3 = color3,
			Size = uDim2_21,
			Parent = RenderingScreen
		})

        local CI = CI
        local vector2_8 = Vector2.new(0.5, 0.5)
        local uDim2_22 = UDim2.new(0.5, 0, 0.5, 0)
        local color3_9 = Color3.fromRGB(0, 0, 0)
        local uDim2_23 = UDim2.new(0.5, 0, 0.1, 0)
        local color3_10 = Color3.new(255, 255, 255)
        local font = Font.new("rbxasset://fonts/families/FredokaOne.json")
        local RenderingScreen2 = Tracking.RenderingScreen

        CI("TextLabel", {
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
            if InDungeon then
                local success, result = pcall(function()
                    if p233 then
                        RunService:Set3dRenderingEnabled(false)
                        Tracking.RenderingScreen.Parent = HideGui() or CoreGui

                        return
                    end

                    RunService:Set3dRenderingEnabled(true)
                    Tracking.RenderingScreen.Parent = nil
                end)
                if not success then
                    HandleError("DISABLE RENDERING", (tostring(result)))
                end
            end
        end)
    end
    if InLobby or InDungeon then
        Toggles.PreventMobToggle:OnChanged(function(p234)
            local CanRequire = Settings.CanRequire

            if CanRequire then
                CanRequire = HookFunction and (RestoreFunction and (NewCClosure and IsHooked))
            end

            if CanRequire then
                local success, result = pcall(function()
                    local GetModel = require(ModelProvider).GetModel

                    if p234 then
                        local Shockball = game.ReplicatedStorage.Shared.Effects.Models.Shockball
                        Shockball.Part.Color = Color3.fromRGB(255, 0, 0)
                        local Part = Instance.new("Part")
                        Part.Name = "HumanoidRootPart"
                        Part.Parent = Shockball
                        local u1752
                        u1752 = HookFunction(GetModel, NewCClosure(function(p235, p236)
                            if not string.find(p236, "Pet") then
                                return Shockball:Clone()
                            end

                            return u1752(p235, p236)
                        end))

                        return
                    end

                    if IsHooked(GetModel) then
                        RestoreFunction(GetModel)
                    end
                end)
                if not success then
                    HandleError("PREVENT MODELS FROM LOADING", (tostring(result)))

                    return
                end
            else
                local success, result = pcall(function()
                    local ModelProvider_GetModel = Remotes:FindFirstChild("ModelProvider_GetModel")

                    if p234 and ModelProvider_GetModel then
                        Settings.RemovedModels = true
                        ModelProvider_GetModel:Destroy()

                        return
                    end

                    if Settings.RemovedModels then
                        Library:Notify("Rejoin to see assets", 5)
                    end
                end)
                if not success then
                    HandleError("PREVENT MODELS FROM LOADING FALLBACK", (tostring(result)))
                end
            end
        end)
        Toggles.PreventEffectsToggle:OnChanged(function(p237)
            local CanRequire = Settings.CanRequire

            if CanRequire then
                CanRequire = HookFunction and (RestoreFunction and (NewCClosure and IsHooked))
            end

            if CanRequire then
                local ok, result = pcall(function()
                    local lib = require(Effects)

                    if p237 then
                        HookFunction(lib.MakeProjectile, NewCClosure(function(...)
                        end))
                        HookFunction(lib.DoEffect, NewCClosure(function(...)
                        end))
                        HookFunction(lib.PlayAt, NewCClosure(function(...)
                        end))
                        HookFunction(lib.EmitAt, NewCClosure(function(...)
                        end))

                        return
                    end

                    if IsHooked(lib.MakeProjectile) and (IsHooked(lib.PlayAt) and IsHooked(lib.EmitAt)) then
                        RestoreFunction(lib.MakeProjectile)
                        RestoreFunction(lib.PlayAt)
                        RestoreFunction(lib.EmitAt)
                    end

                    if IsHooked(lib.DoEffect) then
                        RestoreFunction(lib.DoEffect)
                    end
                end)

                if not ok then
                    HandleError("PREVENT NEW EFFECTS", (tostring(result)))

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
    if InDungeon then
        if Toggles.ClassPingToggle then
            Toggles.ClassPingToggle:OnChanged(function(p238)
                if p238 then
                    local Masteries = CharacterData:FindFirstChild("Masteries")

                    if Masteries then
                        local t2PlayerClass = Masteries:FindFirstChild(Settings.PlayerClass)
                        local v1764 = t239[Settings.PlayerClass]

                        if t2PlayerClass and (v1764 and t2PlayerClass.Value >= v1764.MasteryRequirement) then
                            PingMasteryTracker(v1764.MasteryDisplayName)
                            Settings.Killaura = nil
                        end
                    end
                end
            end)
        end
        if Options.PingDropdown then
            Options.PingDropdown:OnChanged(function(p239)
                WebhookMention = p239
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

            if not Settings.AlreadyQueued and QueueOnTeleport then
                QueueOnTeleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/fnkq/jewhub32skidy/main/jewhub322.lua\"))()")
            end
        end
    end)
    if InLobby or InDungeon then
        local _CheckForScriptDeveloper = CheckForScriptDeveloper

        SpawnFunctions = {
			Helpers[3],
			Helpers[1],
			ScanForMobs,
			_CheckForScriptDeveloper,
			DestroyMissionScripts,
			CheckParty,
			function()
            if InDungeon then
                local _ = Settings.GotPlayerStats

                repeat
                    task.wait()
                until Settings.GotPlayerStats

                if not Settings.IsScriptDeveloper and not Settings.IsNewPlayer then
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

                        local v1408 = v1407(LocalPlayer)

                        Tracking.BuildDescription = ""
                        Tracking.PersonRunningScript = "**Primary:** `" .. v1408 .. "`"
                        Connections.PlayerJoins = Players.ChildAdded:Connect(function()
                            Tracking.BuildDescription = "\n**Party members:** `"

                            local t241 = {}

                            for _, child in pairs(Players:GetChildren()) do
                                if child.Name ~= LocalPlayer.Name then
                                    table.insert(t241, (v1407(child)))
                                end
                            end

                            Tracking.BuildDescription = Tracking.BuildDescription .. table.concat(t241, "`, `") .. "`"
                        end)

                        if #Players:GetChildren() > 1 then
                            Tracking.BuildDescription = "\n**Party members:** `"

                            local t242 = {}

                            for _, child in pairs(Players:GetChildren()) do
                                if child.Name ~= LocalPlayer.Name then
                                    table.insert(t242, (v1407(child)))
                                end
                            end

                            Tracking.BuildDescription = Tracking.BuildDescription .. table.concat(t242, "`, `") .. "`"
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

                        if not Tracking.DungeonImage then
                            local ok, _ = pcall(function()
                                if not Settings.CanRequire then
                                    Tracking.DungeonImage = ""

                                    return
                                end

                                local CurrentMissionData = require(Missions):GetCurrentMissionData()
                                local v1941 = tostring(CurrentMissionData.DungeonID or (CurrentMissionData.ImageID or 3815150377)):match("%d+")

                                if Tracking.MissionId == 43 then
                                    v1941 = 15046578670
                                end

                                local s10 = "PORN/DungeonImages"
                                local imageUrl

                                if not isfile("PORN/DungeonImages") then
                                    local v1943 = game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. v1941 .. "&size=420x420&format=Png")
                                    local v1944 = HttpService:JSONDecode(v1943).data[1]

                                    writefile(s10, HttpService:JSONEncode({
											Images = {
												[tostring(v1941)] = {
													v1944.imageUrl,
													os.time() + 604800
												}
											}
										}))
                                    imageUrl = v1944.imageUrl
                                else
                                    local v1946 = HttpService
                                    local t244 = { readfile(s10) }
                                    local Images = v1946:JSONDecode(Unpack(t244)).Images
                                    local v1949 = Images[v1941]

                                    if not v1949 or (v1949[2] <= os.time() or string.find(tostring(v1949[1]), "token")) then
                                        local t245 = {}

                                        for k, v in pairs(Images) do
                                            t245[k] = { table.unpack(v) }
                                        end

                                        local v1953 = game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. v1941 .. "&size=420x420&format=Png")
                                        local v1954 = HttpService:JSONDecode(v1953).data[1]

                                        t245[tostring(v1941)] = {
												v1954.imageUrl,
												os.time() + 604800
											}
                                        writefile(s10, HttpService:JSONEncode({
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

                                Tracking.DungeonImage = imageUrl
                            end)

                            if not ok then
                                Tracking.DungeonImage = ""
                            end
                        end

                        Remotes:WaitForChild("Teleport_SplashEvent", 1e999).OnClientEvent:Once(function()
                            local v1955 = Tracking.PersonRunningScript .. Tracking.BuildDescription .. "\n-# `" .. (GetHWID and GetHWID() or "unkown`")
                            local t246 = {
									url = Tracking.DungeonImage
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
                                if v1959 and HookFunction or hookmetamethod then
                                    local DmgCheckMaxVal = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                DmgCheckMaxVal += 1
                                            end
                                        end
                                    end)
                                    if DmgCheckMaxVal > 2 or DmgCheckMaxVal == 0 then
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

                                if not HttpRequest then
                                    return
                                end

                                local v2173 = HttpRequest
                                local v2174 = v1958
                                local t249 = {
										["Content-Type"] = "application/json"
									}
                                local json = HttpService:JSONEncode(t247)

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
            if InDungeon then
                local _ = Settings.GotPlayerStats

                repeat
                    task.wait()
                until Settings.GotPlayerStats

                if not Settings.IsScriptDeveloper and not Settings.IsNewPlayer then
                    local _, _ = pcall(function()
                        local Value2 = CharacterData:WaitForChild("Currency", 1e999):WaitForChild("Gold", 1e999).Value
                        local v1417 = Remotes:WaitForChild("Crystals_GetCrystals", 1e999):InvokeServer()
                        local v1418 = os.date("*t")

                        Remotes:WaitForChild("Teleport_SplashEvent", 1e999).OnClientEvent:Once(function()
                            local v1962 = PlayerName
                            local str26 = tostring(v1418.month .. ", " .. v1418.day .. ", " .. v1418.year)
                            local v1964 = Value2
                            local v1965 = v1417
                            local PlayerLevel = Tracking.PlayerLevel
                            local PlayerPrestige = Tracking.PlayerPrestige
                            local v1968 = GetGuildTag(LocalPlayer)
                            local PlayerClass = Tracking.PlayerClass
                            local v1970 = "https://www.roblox.com/users/" .. UserId .. "/profile"
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
                                if v1979 and HookFunction or hookmetamethod then
                                    local DmgCheckMinVal = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                DmgCheckMinVal += 1
                                            end
                                        end
                                    end)
                                    if DmgCheckMinVal > 2 or DmgCheckMinVal == 0 then
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

                                if not HttpRequest then
                                    return
                                end

                                local v2185 = HttpRequest
                                local v2186 = s11
                                local t252 = {
										["Content-Type"] = "application/json"
									}
                                local json = HttpService:JSONEncode(t250)

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
            local PlayerStats = ReplicatedStorage:WaitForChild("PlayerStats", math.huge)

            if PlayerStats then
                PlayerStats = PlayerStats:WaitForChild(PlayerName, math.huge)
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
                Settings.IsNewPlayer = true
            end

            Settings.GotPlayerStats = true
        end,
			function()
            if Tracking.MissionId == 1005 or (Tracking.MissionId == 1006 or Tracking.MissionId == 1007) then
                Settings.IsNightmareDungeon = true
            end
        end,
			GetPlayerPing,
			Helpers[2],
			ConnectMissionFinished,
			function()
            ((if Tracking.MissionId ~= 39 then Remotes:WaitForChild("Towers_TowerFinished", 1e999) else ReplicatedStorage:WaitForChild("MissionScripts", 1e999):WaitForChild("39", math.huge):WaitForChild("TowerFinished", 1e999))).OnClientEvent:Connect(function(_, p243)
                Settings.DungeonCompletionTime = FormatSecondsToString(p243)

                if Settings.ShowTime then
                    Library:Notify("Completed in " .. Settings.DungeonCompletionTime)
                end

                if Settings.LogDungeon then
                    local MaxDmgVal = 65280
                    local s12 = "unknown"
                    local children = Players:GetChildren()

                    if Lost then
                        MaxDmgVal = 16711680
                    end

                    if Settings.CanRequire then
                        s12 = require(Missions):GetCurrentMissionData().NameTag
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

                    if not Tracking.DungeonImage then
                        local ok, _ = pcall(function()
                            if not Settings.CanRequire then
                                Tracking.DungeonImage = ""

                                return
                            end

                            local CurrentMissionData = require(Missions):GetCurrentMissionData()
                            local v1892 = tostring(CurrentMissionData.DungeonID or (CurrentMissionData.ImageID or 3815150377)):match("%d+")

                            if Tracking.MissionId == 43 then
                                v1892 = 15046578670
                            end

                            local s13 = "PORN/DungeonImages"
                            local imageUrl

                            if not isfile("PORN/DungeonImages") then
                                local v1894 = game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. v1892 .. "&size=420x420&format=Png")
                                local v1895 = HttpService:JSONDecode(v1894).data[1]

                                writefile(s13, HttpService:JSONEncode({
										Images = {
											[tostring(v1892)] = {
												v1895.imageUrl,
												os.time() + 604800
											}
										}
									}))
                                imageUrl = v1895.imageUrl
                            else
                                local v1897 = HttpService
                                local t254 = { readfile(s13) }
                                local Images = v1897:JSONDecode(Unpack(t254)).Images
                                local v1900 = Images[v1892]

                                if not v1900 or (v1900[2] <= os.time() or string.find(tostring(v1900[1]), "token")) then
                                    local t255 = {}

                                    for k, v in pairs(Images) do
                                        t255[k] = { table.unpack(v) }
                                    end

                                    local v1904 = game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. v1892 .. "&size=420x420&format=Png")
                                    local v1905 = HttpService:JSONDecode(v1904).data[1]

                                    t255[tostring(v1892)] = {
											v1905.imageUrl,
											os.time() + 604800
										}
                                    writefile(s13, HttpService:JSONEncode({
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

                            Tracking.DungeonImage = imageUrl
                        end)

                        if not ok then
                            Tracking.DungeonImage = ""
                        end
                    end

                    local v1367 = "**Dungeon:** `" .. s12 .. "`\n" .. "**Time:** `" .. Settings.DungeonCompletionTime .. "`\n" .. "**Party size:** `" .. v1364
                    local t256 = {
							url = Tracking.DungeonImage
						}
                    local t257 = {
							username = "Dungeon logger",
							embeds = {{
								description = v1367,
								type = "rich",
								color = MaxDmgVal,
								thumbnail = t256
							}}
						}
                    local DiscordWebhookLink = Settings.DiscordWebhookLink
                    local v1371 = t257

                    if not DiscordWebhookLink and true then
                        warn("No webhook link provided")
                    else
                        local v1372 = false
                        local _, _ = pcall(function()
                            if v1372 and HookFunction or hookmetamethod then
                                local MinDmgVal = 0
                                local ok, _ = pcall(function()
                                    for _, v in pairs(getreg()) do
                                        if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                            MinDmgVal += 1
                                        end
                                    end
                                end)
                                if MinDmgVal > 2 or MinDmgVal == 0 then
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

                            if not HttpRequest then
                                return
                            end

                            local v1914 = HttpRequest
                            local v1915 = DiscordWebhookLink
                            local t259 = {
									["Content-Type"] = "application/json"
								}
                            local json = HttpService:JSONEncode(v1371)

                            v1914({
									Url = v1915,
									Method = "POST",
									Headers = t259,
									Body = json
								})
                        end)
                    end
                end

                RestartDungeon()
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
    UpdateLoadProgress()
    Loading:Continue()
    _G.ScriptStep = "loading configs"
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
    SaveManager:SetFolder("PORN/saved_configs")
    SaveManager:BuildConfigSection(ConfigTab)
    SaveManager:LoadAutoloadConfig()
    _G.ScriptStep = "set stuff after configs loaded"
    local Platform = UserInputService:GetPlatform()
    if Platform ~= Enum.Platform.Android and Platform ~= Enum.Platform.IOS then
        Library:Notify("You can press 0 (zero key) to open/close the menu", 10)
    else
        Tracking.IsMobile = true
    end
    if not Toggles.HideGuiToggle.Value then
        Library:Toggle()
    end
    if IsEventDungeon then
        task.spawn(function()
            task.wait(1.5)

            if Options.DailyKillInput.Value or Options.TotalKillInput.Value then
                CheckKillCount()
            end
        end)
    end
    _G.ScriptStep = "leaderboard info set up"
    if InLobby or InDungeon then
        task.spawn(function()
            local successValue, result = pcall(function()
                local LeaderboardHookup_GetScore = Remotes:WaitForChild("LeaderboardHookup_GetScore", 1e999)
                local v1766 = LeaderboardHookup_GetScore:InvokeServer("C_NP1", 5)
                local v1767 = v1766[1]
                local num = tonumber(Settings.StopAfterTotalNightmare)
                local v1769 = v1766[2]
                local num3 = tonumber(Settings.StopAfterDailyNightmare)
                local TotalNightmareLabel = Settings.TotalNightmareLabel
                local str27 = tostring(v1767)

                TotalNightmareLabel:SetText("Total nightmare clears: " .. str27:reverse():gsub("...", "%0,", (math.floor((#str27 - 1) / 3))):reverse())

                local DailyNightmareLabel = Settings.DailyNightmareLabel
                local str28 = tostring(v1769)

                DailyNightmareLabel:SetText("Daily nightmare clears: " .. str28:reverse():gsub("...", "%0,", (math.floor((#str28 - 1) / 3))):reverse())

                if num and num <= v1767 or num3 and num3 <= v1769 then
                    Library:Notify("Nightmare portal clear limit reached.", 999999999)
                    Settings.Killaura = nil

                    if Flags.Nightmare then
                        local s14 = "Nightmare portal"
                        local _, _ = pcall(function()
                            local v2118 = s14
                            local str29 = tostring(PlayerName)
                            local t260 = {
								username = "Limit tracker",
								content = v2118 .. " limit reached on account: " .. str29 .. "\n-# " .. WebhookMention
							}
                            local DiscordWebhookLink = Settings.DiscordWebhookLink

                            if not DiscordWebhookLink and true then
                                warn("No webhook link provided")

                                return
                            end

                            local v2122 = false
                            local _, _ = pcall(function()
                                if v2122 and HookFunction or hookmetamethod then
                                    local DmgCheckValMax = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                DmgCheckValMax += 1
                                            end
                                        end
                                    end)
                                    if DmgCheckValMax > 2 or DmgCheckValMax == 0 then
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

                                if not HttpRequest then
                                    return
                                end

                                local v2262 = HttpRequest
                                local v2263 = DiscordWebhookLink
                                local t262 = {
									["Content-Type"] = "application/json"
								}
                                local json = HttpService:JSONEncode(t260)

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
                local num4 = tonumber(Settings.StopAfterTotalPoints)
                local num5 = tonumber(Settings.StopAfterDailyPoints)
                local TotalGuildPointLabel = Settings.TotalGuildPointLabel
                local str30 = tostring(v1780)

                TotalGuildPointLabel:SetText("Total Guild Points: " .. str30:reverse():gsub("...", "%0,", (math.floor((#str30 - 1) / 3))):reverse())

                local DailyGuildPointLabel = Settings.DailyGuildPointLabel
                local str31 = tostring(v1779)

                DailyGuildPointLabel:SetText("Daily Guild Points: " .. str31:reverse():gsub("...", "%0,", (math.floor((#str31 - 1) / 3))):reverse())

                if num4 and num4 <= v1780 or num5 and num5 <= v1779 then
                    Library:Notify("Guild point limit reached.", 999999999)
                    Settings.Killaura = nil

                    if Flags.Guild then
                        local s15 = "Guild Point"
                        local _, _ = pcall(function()
                            local v2125 = s15
                            local str32 = tostring(PlayerName)
                            local t263 = {
								username = "Limit tracker",
								content = v2125 .. " limit reached on account: " .. str32 .. "\n-# " .. WebhookMention
							}
                            local DiscordWebhookLink = Settings.DiscordWebhookLink

                            if not DiscordWebhookLink and true then
                                warn("No webhook link provided")

                                return
                            end

                            local v2129 = false
                            local _, _ = pcall(function()
                                if v2129 and HookFunction or hookmetamethod then
                                    local DmgCheckValMin = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                DmgCheckValMin += 1
                                            end
                                        end
                                    end)
                                    if DmgCheckValMin > 2 or DmgCheckValMin == 0 then
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

                                if not HttpRequest then
                                    return
                                end

                                local v2274 = HttpRequest
                                local v2275 = DiscordWebhookLink
                                local t265 = {
									["Content-Type"] = "application/json"
								}
                                local json = HttpService:JSONEncode(t263)

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
    if InTower and (Settings.CanRequire and (HookFunction and NewCClosure)) then
        local success = pcall(function()
            local _DisplayItem = require(game.ReplicatedStorage.Client.Gui):Get("LootReceived")._DisplayItem

            HookFunction(_DisplayItem, NewCClosure(function(...)
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
    if not Tracking.IsMobile and (HideGui and not Settings.BadExecutor) then
        local Main = HideGui():WaitForChild("Obsidian", math.huge):WaitForChild("Main", math.huge)

        UserInputService.InputBegan:Connect(function(input)
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

            for _, v in pairs(Connections) do
                DisconnectVariable(v)
            end
        end)
    end)
end
_t[36] = pcall
_t[39] = { _t[36](_t[38]) }
_t[37] = _t[39][2]
if not _t[39][1] then
    HandleError("FATAL SCRIPT ERROR", tostring(_G.ScriptStep), _t[37])
end