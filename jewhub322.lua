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

local instance_cache = {}
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

local function ShowErrorScreen(errorSource, errorMessage, extraInfo)
    local errorExtra = extraInfo or "N/A"
    local createInstance = CI
    local uiParent = get_ui_parent()
    local errorGui = createInstance("ScreenGui", {
		Name = "Script_Error",
		DisplayOrder = 1e999,
		Parent = uiParent
	})
    local createInstance2 = createInstance
    local anchorCenter = Vector2.new(0.5, 0.5)
    local centerPos = UDim2.new(0.5, 0, 0.5, 0)
    local fullSize = UDim2.new(1, 0, 1, 0)
    local errorBg = createInstance2("Frame", {
		Name = "Script_Error",
		AnchorPoint = anchorCenter,
		BackgroundTransparency = 1,
		Position = centerPos,
		Size = fullSize,
		Parent = errorGui
	})
    local createInstance3 = createInstance2
    local anchorCenter2 = Vector2.new(0.5, 0.5)
    local goldColor = Color3.fromRGB(255, 215, 0)
    local centerPos2 = UDim2.new(0.5, 0, 0.5, 0)
    local frameSize = UDim2.new(0.4, 0, 0.4, 0)
    local errorFrame = createInstance3("Frame", {
		Name = "Error_Frame",
		AnchorPoint = anchorCenter2,
		BackgroundColor3 = goldColor,
		Position = centerPos2,
		Size = frameSize,
		Parent = errorBg
	})

    CI("UICorner", {
		CornerRadius = UDim.new(0.05, 0),
		Parent = errorFrame
	})

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
		Parent = errorFrame
	})

    local vector2_3 = Vector2.new(0.5, 0.5)
    local uDim2_7 = UDim2.new(0.5, 0, 0.5, 0)
    local uDim2_8 = UDim2.new(0.9, 0, 0.6, 0)
    local font2 = Font.new("rbxasset://fonts/families/FredokaOne.json")
    local errorText = "<u>" .. errorSource .. "</u>\n" .. errorMessage .. "\nExtra: " .. errorExtra
    local redColor = Color3.fromRGB(243, 51, 51)

    CI("TextLabel", {
		Name = "Error_Body",
		AnchorPoint = vector2_3,
		BackgroundTransparency = 1,
		Position = uDim2_7,
		Size = uDim2_8,
		FontFace = font2,
		RichText = true,
		Text = errorText,
		TextColor3 = redColor,
		TextScaled = true,
		Parent = errorFrame
	})

    local color3_6 = Color3.fromRGB(145, 145, 145)
    local uDim2_13 = UDim2.new(0.436, 0, 0.808, 0)
    local uDim2_14 = UDim2.new(0.25, 0, 0.15, 0)
    local closeButton = CI("ImageButton", {
		Name = "Close_Button",
		BackgroundColor3 = color3_6,
		BackgroundTransparency = 0.75,
		Position = uDim2_13,
		Size = uDim2_14,
		Parent = errorFrame
	})

    CI("UICorner", {
		CornerRadius = UDim.new(0.25, 0),
		Parent = closeButton
	})

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
		Parent = closeButton
	})

    local vector2_6 = Vector2.new(0.5, 0.5)
    local uDim2_17 = UDim2.new(0.5, 0, 0.5, 0)
    local uDim2_18 = UDim2.new(0.4, 0, 0.4, 0)
    local errorGlow = CI("Frame", {
		Name = "Error_Glow",
		AnchorPoint = vector2_6,
		BackgroundTransparency = 1,
		Position = uDim2_17,
		Interactable = false,
		ZIndex = -1,
		Size = uDim2_18,
		Parent = errorFrame
	})
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
		Parent = errorGlow
	})

    local blurEffect = CI("BlurEffect", {
		Size = 50,
		Parent = Lighting
	})
    closeButton.MouseButton1Click:Once(function()
        errorGui:Destroy()
        blurEffect:Destroy()
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
local GameId = tostring(game.GameId)
if GameId ~= "985731078" then
    print("u r not in world zero skid")
    wait(.5)
    game:Shutdown()
end
_G.ScriptStep = "executor function references"
local IdentifyExecutor = identifyexecutor or (getexecutorname or false)
local ExecSuccess, ExecVersion, ExecRequest = IdentifyExecutor()
local ExecName = ExecSuccess
local ExecVersionStr = ExecVersion

local function findHttpSender()
    local sender = http_request or request

    if not sender and http then
        sender = http.request or http.http_request
    end

    if not sender and getexecutorname then
        local executorInfo = getexecutorname()

        if type(executorInfo) == "table" then
            sender = executorInfo.request or executorInfo.http_request
        end
    end

    return sender
end

local function postDiscordWebhook(webhookUrl, body, headers)
    local sender = findHttpSender()

    if not sender then
        return false, "no http sender available"
    end

    local requestPayload = {
        Url = webhookUrl,
        Method = "POST",
        Headers = headers or { ["Content-Type"] = "application/json" },
        Body = body
    }

    local ok, err = pcall(function()
        sender(requestPayload)
    end)

    return ok, err
end

local HttpRequest = findHttpSender()
local HookFunction = hookfunc or (hookfunction or false)
local RestoreFunction = restorefunc or (restorefunction or false)
local QueueOnTeleport = queue_on_teleport or (queueonteleport or (queue_on_tp or (queueontp or (queueteleport or false))))
local ClearTeleportQueue = clear_teleport_queue or (clearqueueonteleport or (clearteleportqueue or (clear_tp_queue or (cleartpqueue or (clear_queue_on_teleport or false)))))
local NetDesync = (rnet and rnet.desync) or (raknet and raknet.desync) or (RakNet and RakNet.desync) or false
HideGui = get_hidden_gui or (gethui or (gethiddengui or (get_hidden_ui or (gethiddenui or false))))
local NewCClosure = newcclosure or false
local CloneRef = cloneref or (clonereference or false)
local IsHooked = ishooked or (isfunctionhooked or (is_hooked or (is_function_hooked or false)))
local GetHWID = gethwid or (get_hwid or (get_device_id or (getsystemid or "unknown")))
_G.ScriptStep = "return things for the script"
local function getServiceCloned(serviceName)
    local service = game:GetService(serviceName)

    if service then
        return CloneRef(service)
    end

    warn("Unable to get service", serviceName)
end
local function getSharedChild(childName)
    return CloneRef(Shared:WaitForChild(childName, 1e999))
end
local GetServiceCloned = function(parent, childName)
    return CloneRef(parent:WaitForChild(childName, 1e999))
end
local WaitForAttribute = function(instance, attrName)
    instance:GetAttribute(attrName)

    repeat
        task.wait()
    until instance:GetAttribute(attrName)

    return instance:GetAttribute(attrName)
end
local function ResolveBackpack()
    if PlayerBackpack and PlayerBackpack.Parent then
        return PlayerBackpack
    end

    local players = game:GetService("Players")
    local lp = players and players.LocalPlayer
    local playerGui = lp and lp:FindFirstChild("PlayerGui")
    local profile = playerGui and playerGui:FindFirstChild("Profile")
    local backpack = profile and profile:FindFirstChild("Inventory")

    if backpack then
        PlayerBackpack = backpack
    end

    return backpack
end
local function GetSellRemote()
    local rs = game:GetService("ReplicatedStorage")
    local liveRemotes = rs:FindFirstChild("Remotes")
    local sellRemote = liveRemotes and liveRemotes:FindFirstChild("Drops_SellItems")

    if not sellRemote and Remotes then
        sellRemote = Remotes:FindFirstChild("Drops_SellItems")
    end

    if not sellRemote then
        sellRemote = liveRemotes and liveRemotes:WaitForChild("Drops_SellItems", 5)
    end

    if not sellRemote and Remotes then
        sellRemote = Remotes:WaitForChild("Drops_SellItems", 5)
    end

    if sellRemote then
        Remotes = liveRemotes or Remotes
    end

    return sellRemote
end
_G.ScriptStep = "setting up roblox services variables"
local Workspace = getServiceCloned("Workspace")
local Players = getServiceCloned("Players")
CoreGui = getServiceCloned("CoreGui")
StarterGui = getServiceCloned("StarterGui")
Lighting = getServiceCloned("Lighting")
local ReplicatedStorage = getServiceCloned("ReplicatedStorage")
local HttpService = getServiceCloned("HttpService")
local VirtualUser = getServiceCloned("VirtualUser")
local UserInputService = getServiceCloned("UserInputService")
local RunService = getServiceCloned("RunService")
local MarketplaceService = getServiceCloned("MarketplaceService")
local TeleportService = getServiceCloned("TeleportService")
_G.ScriptStep = "setting up game variables"
Shared = GetServiceCloned(ReplicatedStorage, "Shared")
Remotes = GetServiceCloned(ReplicatedStorage, "Remotes")
local Battlepass = getSharedChild("Battlepass")
local Charms = getSharedChild("Charms")
local Chests = getSharedChild("Chests")
local Combat = getSharedChild("Combat")
getSharedChild("Crystals")
local Drops = getSharedChild("Drops")
local Effects = getSharedChild("Effects")
getSharedChild("Guilds")
getSharedChild("Health")
getSharedChild("Inventory")
getSharedChild("ItemUpgrade")
local Items = getSharedChild("Items")
local Missions = getSharedChild("Missions")
local Mobs = getSharedChild("Mobs")
local ModelProvider = getSharedChild("ModelProvider")
getSharedChild("Party")
local Pets = getSharedChild("Pets")
local Quests = getSharedChild("Quests")
local Shop = getSharedChild("Shop")
getSharedChild("Skills")
local TeleportModule = getSharedChild("Teleport")
_G.ScriptStep = "setting up more game variables"
GetServiceCloned(Workspace, "Camera")
local MobsFolder = GetServiceCloned(Workspace, "Mobs")
local MissionObjects
_G.ScriptStep = "setting up script variables"
local Settings = {}
local Tracking = {}
Tracking.MobTable = {}
local Flags = {}
local Connections = {}
local LocalPlayer = Players.LocalPlayer
local PlayerName = LocalPlayer.Name
local UserId = LocalPlayer.UserId
local PlayerGui = GetServiceCloned(LocalPlayer, "PlayerGui")
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
    if isfile("PORN/AutoExecute") then
        QueueOnTeleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/fnkq/jewhub32skidy/main/jewhub322.lua\"))()")
        Settings.AlreadyQueued = true
    end
end
if ExecName == "Xeno" or ExecName == "Solara" or ExecName == "Velocity" then
    Settings.BadExecutor = true
end
_G.ScriptStep = "setting up location identifier"
local PlaceIdStr = tostring(game.PlaceId)
local InLobby = false
local InMainMenu = false
local InDungeon = false
local InTower = false
local MainMenuPlaceIds = {
	["2727067538"] = true
}
local WorldHubPlaceIds = {
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
local DungeonPlaceIds = {
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
local EventDungeonPlaceIds = {
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
local TowerPlaceIds = {
	["5703353651"] = 21,
	["6075085184"] = 23,
	["7071564842"] = 27,
	["10089970465"] = 29,
	["10795158121"] = 34,
	["15121292578"] = 43,
	["14400549310"] = 39,
	["13988110964"] = 38
}
local PlaceIds = {
	MainMenu = MainMenuPlaceIds,
	WorldHubs = WorldHubPlaceIds,
	Dungeons = DungeonPlaceIds,
	EventDungeons = EventDungeonPlaceIds,
	Towers = TowerPlaceIds
}
if PlaceIds.MainMenu[PlaceIdStr] then
    InMainMenu = true
    print("PORN: player in main menu")
elseif PlaceIds.WorldHubs[PlaceIdStr] then
    InLobby = true
    print("PORN: player in lobby")
elseif PlaceIds.Dungeons[PlaceIdStr] then
    InDungeon = true
    print("PORN: player in dungeon")
elseif PlaceIds.Towers[PlaceIdStr] then
    InDungeon = true
    InTower = true
    print("PORN: player in tower")
elseif PlaceIds.EventDungeons[PlaceIdStr] then
    IsEventDungeon = true
    InDungeon = true
    print("PORN: player is in event dungeon")
else
    InLobby = true
    print("PORN: cannot determine where player is located... placeid: " .. PlaceIdStr)
end
if not (InLobby or InMainMenu) then
    Tracking.CurrentDungeonID = PlaceIds.EventDungeons[PlaceIdStr] or (PlaceIds.Dungeons[PlaceIdStr] or (PlaceIds.Towers[PlaceIdStr] or nil))
end
task.wait()
_G.ScriptStep = "message handler"
task.wait()
_G.ScriptStep = "save error"
local HandleError = function(errorLocation, errorMessage, errorExtra)
    if isfile("PORN_script_error.txt") then
        appendfile("PORN_script_error.txt", "\n\nError:\n" .. errorMessage .. "\nLocation: " .. errorLocation)
    else
        writefile("PORN_script_error.txt", "Error:\n" .. errorMessage .. "\nLocation: " .. errorLocation)
    end

    ShowErrorScreen(errorLocation, errorMessage, errorExtra, nil)

    local description = "**Error:** `" .. errorMessage .. "`\n**Extra Info:** `" .. tostring(errorExtra) .. "`\n**Executor:** `" .. ExecName .. "`"
    local webhookPayload = {
		username = "Error Logger",
		embeds = {{
			title = errorLocation,
			description = description,
			type = "rich",
			color = 16711680
		}}
	}
    local shouldPost = true
    local webhookURL = "https://discord.com/api/webhooks/1487911137021395116/GVFUp0UWv9fDutpbCZlUhogVxmTm7qXmFIHH2Hz7ZtzGquL6GB_GitT_kmrmSXKm_j9Q"
    local _, _ = pcall(function()
        if shouldPost and HookFunction or hookmetamethod then
            local hookedScriptCount = 0
            local ok, _ = pcall(function()
                for _, v in pairs(getreg()) do
                    if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                        hookedScriptCount += 1
                    end
                end
            end)
            if hookedScriptCount > 2 or hookedScriptCount == 0 then
                return
            end
            if not ok then
                return
            end
            local antiDesyncEnabled = false
            local success = pcall(function()
                local requestHooked = ishooked and ishooked(request)

                if not requestHooked then
                    requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                end

                if requestHooked then
                    antiDesyncEnabled = true

                    return
                end
            end)
            if not success then
                return
            end
            local pcallOk, _ = pcall(function()
                local httpGetHooked = ishooked and ishooked(game.HttpGet)

                if not httpGetHooked then
                    httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                    if not httpGetHooked then
                        httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                    end
                end

                if httpGetHooked then
                    antiDesyncEnabled = true

                    return
                end
            end)
            if antiDesyncEnabled then
                return
            end
            if not pcallOk then
                return
            end
        end

        if not HttpRequest then
            return
        end

        local discard1 = HttpRequest
        local discard2 = webhookURL
        local requestHeaders = {
			["Content-Type"] = "application/json"
		}
        local json = HttpService:JSONEncode(webhookPayload)

        discard1({
			Url = discard2,
			Method = "POST",
			Headers = requestHeaders,
			Body = json
		})
    end)
end
local function MainScript()
    local elapsed = os.clock()
    task.wait()
    _G.ScriptStep = "not in main menu"
    if not InMainMenu then
        Tracking.PlayerClass = WaitForAttribute(LocalPlayer, "Class")
        Tracking.PlayerLevel = WaitForAttribute(LocalPlayer, "Level")
        Tracking.PlayerPrestige = WaitForAttribute(LocalPlayer, "Prestige")
        CharacterData = GetServiceCloned(PlayerGui, "Profile")
        PlayerBackpack = GetServiceCloned(CharacterData, "Inventory")
        Settings.Parties = GetServiceCloned(ReplicatedStorage, "Parties")
    end
    task.spawn(function()
        local ok, result = pcall(function()
            print("PORN: player is using", ExecName, ExecVersionStr)

            local lowerExecName = string.lower((tostring(ExecName)))

            if string.find(lowerExecName, "xeno") then
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
    local function LoadCachedFile(fileUrl, fileName, forceRefresh)
        local MissionTimer
        local ok, result = pcall(function()
            if isfile and (writefile and readfile) then
                local EventDungeonCheck = "PORN/ignore/" .. fileName

                if forceRefresh and isfile(EventDungeonCheck) then
                    delfile(EventDungeonCheck)
                    task.wait(1)
                end

                if not isfile(EventDungeonCheck) then
                    while true do
                        local success, result = pcall(function()
                            writefile(EventDungeonCheck, game:HttpGet(fileUrl))
                        end)
                        if success then
                            break
                        end
                        warn("writefile() failed... trying again in 2 seconds...\nReasom: " .. tostring(result))
                        task.wait(2)
                    end
                end

                local dateFilePath = EventDungeonCheck .. "_tfwd"
                local dateInfo = os.date("*t")

                if isfile(dateFilePath) then
                    local fileContents = { readfile(dateFilePath) }
                    local data = HttpService:JSONDecode(Unpack(fileContents))

                    if dateInfo.day > data.dd or dateInfo.month > data.md then
                        while true do
                            local success, result = pcall(function()
                                writefile(EventDungeonCheck, game:HttpGet(fileUrl))
                            end)
                            if success then
                                break
                            end
                            warn("writefile() failed... trying again in 2 seconds...\nReasom: " .. tostring(result))
                            task.wait(2)
                        end

                        local writeFile = writefile
                        local day = dateInfo.day
                        local month = dateInfo.month

                        writeFile(dateFilePath, HttpService:JSONEncode({
							dd = day,
							md = month
						}))
                    end
                else
                    local writeFile = writefile
                    local day = dateInfo.day
                    local month = dateInfo.month

                    writeFile(dateFilePath, HttpService:JSONEncode({
						dd = day,
						md = month
					}))
                end

                local loadString = loadstring
                local scriptContents = { readfile(EventDungeonCheck) }

                MissionTimer = loadString(Unpack(scriptContents))()

                return
            end

            MissionTimer = loadstring(game:HttpGet(fileUrl))()
        end)
        if not ok then
            HandleError("FAILED TO GET FILE", tostring(result), (tostring(fileName)))
        end
        if MissionTimer == nil then
            warn(fileName .. " has no data? Trying to download it again...")
            MissionTimer = LoadCachedFile(fileUrl, fileName, true)
        end
        if MissionTimer then
            return MissionTimer
        end
    end
    task.wait()
    _G.ScriptStep = "obsidian library"
    if Settings.BadExecutor then
        Library = LoadCachedFile("https://raw.githubusercontent.com/fnkq/jewhub32skidy/refs/heads/main/old_obsidian_library", "GlobalFlag1")
    else
        Library = LoadCachedFile("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua", "GlobalFlag1")
    end
    task.wait()
    _G.ScriptStep = "obsidian theme manager"
    ThemeManager = LoadCachedFile("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua", "GlobalFlag2")
    task.wait()
    _G.ScriptStep = "obsidian save manager"
    SaveManager = LoadCachedFile("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua", "GlobalFlag3")
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
    local function UpdateLoadProgress(isException)
        DamageIncrease += 1

        if isException then
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
    local MissionStartConfig = {
		"MissionStart",
		DescendantCheck = true
	}
    local MissionScriptList = { MissionStartConfig }
    task.wait()
    local CosmeticItemNames = {
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
    local HexColorList = {
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
    task.wait()
    local EggNameList = {
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
    task.wait()
    local SpecialEggMap = {
		MoltenEgg = true,
		OceanEgg = true,
		SkyEgg = true,
		AlligatorEgg = true,
		FairyEgg = true,
		ArcaneEgg = true
	}
    task.wait()
    local NightmarePortalConfig = {
		Level = 150,
		DungeonName = "Nightmare Portal",
		DungeonDelay = 60,
		DungeonID = 1005
	}
    local AstralAcademyConfig = {
		Level = 135,
		DungeonName = "Astral Academy",
		DungeonDelay = 135,
		DungeonID = 42
	}
    local CrystalChaosConfig = {
		Level = 130,
		DungeonName = "Crystal Chaos",
		DungeonDelay = 115,
		DungeonID = 41
	}
    local AetherFortressConfig = {
		Level = 120,
		DungeonName = "Aether Fortress",
		DungeonDelay = 45,
		DungeonID = 33
	}
    local TreetopTroubleConfig = {
		Level = 115,
		DungeonName = "Treetop Trouble",
		DungeonDelay = 90,
		DungeonID = 32
	}
    local RuinRushConfig = {
		Level = 105,
		DungeonName = "Ruin Rush",
		DungeonDelay = 65,
		DungeonID = 31
	}
    local RescueInTheRuinsConfig = {
		Level = 100,
		DungeonName = "Rescue in the Ruins",
		DungeonDelay = 78,
		DungeonID = 30
	}
    local TheLabyrinthConfig = {
		Level = 95,
		DungeonName = "The Labyrinth",
		DungeonDelay = 20,
		DungeonID = 37
	}
    local TheUnderworldConfig = {
		Level = 90,
		DungeonName = "The Underworld",
		DungeonDelay = 85,
		DungeonID = 26
	}
    local TreasureHuntConfig = {
		Level = 80,
		DungeonName = "Treasure Hunt",
		DungeonDelay = 36,
		DungeonID = 36
	}
    local RoughWatersConfig = {
		Level = 75,
		DungeonName = "Rough Waters",
		DungeonDelay = 55,
		DungeonID = 25
	}
    local KonohInfernoConfig = {
		Level = 65,
		DungeonName = "Konoh Inferno",
		DungeonDelay = 40,
		DungeonID = 35
	}
    local KonohHeartlandsConfig = {
		Level = 60,
		DungeonName = "Konoh Heartlands",
		DungeonDelay = 45,
		DungeonID = 24
	}
    local PyramidDungeonConfig = {
		Level = 55,
		DungeonName = "Pyramid Dungeon",
		DungeonDelay = 40,
		DungeonID = 18
	}
    local DesertedBurrowmineConfig = {
		Level = 50,
		DungeonName = "Deserted Burrowmine",
		DungeonDelay = 40,
		DungeonID = 19
	}
    local ScrapCanyonConfig = {
		Level = 45,
		DungeonName = "Scrap Canyon",
		DungeonDelay = 50,
		DungeonID = 20
	}
    local WinterDungeonConfig = {
		Level = 40,
		DungeonName = "Winter Dungeon",
		DungeonDelay = 60,
		DungeonID = 16
	}
    local WinterCavernConfig = {
		Level = 35,
		DungeonName = "Winter Cavern",
		DungeonDelay = 20,
		DungeonID = 15
	}
    local MountainPassConfig = {
		Level = 30,
		DungeonName = "Mountain Pass",
		DungeonDelay = 35,
		DungeonID = 14
	}
    local VolcanoDungeonConfig = {
		Level = 26,
		DungeonName = "Volcano Dungeon",
		DungeonDelay = 40,
		DungeonID = 7
	}
    local VolcanoShadowConfig = {
		Level = 22,
		DungeonName = "Volcano's Shadow",
		DungeonDelay = 59,
		DungeonID = 13
	}
    local MamaTraumaConfig = {
		Level = 18,
		DungeonName = "Mama Trauma",
		DungeonDelay = 35,
		DungeonID = 12
	}
    local TempleOfRuinConfig = {
		Level = 15,
		DungeonName = "Temble of Ruin",
		DungeonDelay = 33,
		DungeonID = 11
	}
    local GravetowerDungeonConfig = {
		Level = 12,
		DungeonName = "Gravetower Dungeon",
		DungeonDelay = 45,
		DungeonID = 6
	}
    local KingslayerConfig = {
		Level = 10,
		DungeonName = "Kingslayer",
		DungeonDelay = 32,
		DungeonID = 4
	}
    local DireProblemConfig = {
		Level = 7,
		DungeonName = "Dire Problem",
		DungeonDelay = 15,
		DungeonID = 2
	}
    local ScarecrowDefenseConfig = {
		Level = 4,
		DungeonName = "Scarecrow Defense",
		DungeonDelay = 20,
		DungeonID = 3
	}
    local CrabbyCrusadeConfig = {
		Level = 1,
		DungeonName = "Crabby Crusade",
		DungeonDelay = 20,
		DungeonID = 1
	}
    local CelestialTowerConfig = {
		Level = 0,
		DungeonName = "Celestial Tower",
		DungeonDelay = 580,
		DungeonID = 39
	}
    local ArcaneTowerConfig = {
		Level = 0,
		DungeonName = "Arcane Tower",
		DungeonDelay = 320,
		DungeonID = 43
	}
    local AetherTowerConfig = {
		Level = 0,
		DungeonName = "Aether Tower",
		DungeonDelay = 270,
		DungeonID = 34
	}
    local OasisTowerConfig = {
		Level = 0,
		DungeonName = "Oasis Tower",
		DungeonDelay = 280,
		DungeonID = 29
	}
    local MezuvianTowerConfig = {
		Level = 0,
		DungeonName = "Mezuvian Tower",
		DungeonDelay = 270,
		DungeonID = 27
	}
    local AtlantisTowerConfig = {
		Level = 0,
		DungeonName = "Atlantis Tower",
		DungeonDelay = 279,
		DungeonID = 23
	}
    local PrisonTowerConfig = {
		Level = 0,
		DungeonName = "Prison Tower",
		DungeonDelay = 240,
		DungeonID = 21
	}
    local InfiniteTowerConfig = {
		Level = 0,
		DungeonName = "Infinite Tower",
		DungeonDelay = 0,
		DungeonID = 38
	}
    local DungeonConfigList = {
		NightmarePortalConfig,
		AstralAcademyConfig,
		CrystalChaosConfig,
		AetherFortressConfig,
		TreetopTroubleConfig,
		RuinRushConfig,
		RescueInTheRuinsConfig,
		TheLabyrinthConfig,
		TheUnderworldConfig,
		TreasureHuntConfig,
		RoughWatersConfig,
		KonohInfernoConfig,
		KonohHeartlandsConfig,
		PyramidDungeonConfig,
		DesertedBurrowmineConfig,
		ScrapCanyonConfig,
		WinterDungeonConfig,
		WinterCavernConfig,
		MountainPassConfig,
		VolcanoDungeonConfig,
		VolcanoShadowConfig,
		MamaTraumaConfig,
		TempleOfRuinConfig,
		GravetowerDungeonConfig,
		KingslayerConfig,
		DireProblemConfig,
		ScarecrowDefenseConfig,
		CrabbyCrusadeConfig,
		CelestialTowerConfig,
		ArcaneTowerConfig,
		AetherTowerConfig,
		OasisTowerConfig,
		MezuvianTowerConfig,
		AtlantisTowerConfig,
		PrisonTowerConfig,
		InfiniteTowerConfig
	}
    task.wait()
    local MissionScriptRef = {}
    _G.ScriptStep = "loading script functions"
    UpdateLoadProgress()
    _G.ScriptStep = "nmumber format"
    local function FormatNumberWithCommas(value)
        local str = tostring(value)

        return str:reverse():gsub("...", "%0,", (math.floor((#str - 1) / 3))):reverse()
    end
    task.wait()
    _G.ScriptStep = "seconds to string"
    local FormatSecondsToString = function(totalSeconds)
        local days = math.floor(totalSeconds / 86400)
        local hours = math.floor(totalSeconds % 86400 / 3600)
        local minutes = math.floor(totalSeconds % 3600 / 60)
        local seconds = math.floor(totalSeconds % 60)

        if totalSeconds < 60 then
            return tostring((math.floor(totalSeconds))) .. "s"
        end

        if totalSeconds < 3600 then
            return string.format("%d:%02d", minutes, seconds)
        end

        if totalSeconds < 86400 then
            return string.format("%d:%02d:%02d", hours, minutes, seconds)
        end

        return string.format("%d:%02d:%02d:%02d", days, hours, minutes, seconds)
    end
    task.wait()
    _G.ScriptStep = "is mission over"
    local IsMissionCleared = function()
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
    task.wait()
    _G.ScriptStep = "connect mission cleared"
    local ConnectMissionCleared = function()
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
    local CheckForAvoidMobs = function()
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
    task.wait()
    _G.ScriptStep = "check player ping"
    local GetPlayerPing = function()
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
    task.wait()
    _G.ScriptStep = "mob scanner"
    local ScanForMobs = function()
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
                local FakeSpawnMobs = {
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
                local PriorityMobs = {
					EVENTBOSSEasterBunny = true,
					EVENTBOSSEasterBunnyEnraged = true,
					BabyWinterfall = true,
					BabyIgnis = true
				}
                local UnitScale = Vector3.new(1, 1, 1)
                local GolemScale = Vector3.new(52, 30, 52)
                local GuardScale = Vector3.new(52, 30, 52)
                local CrystalScale = Vector3.new(25, 20, 25)
                local ResizedColliderMobs = {
					CorruptedGreaterTree = UnitScale,
					BOSSCrystalGolem = GolemScale,
					EVENTBOSSZeroGuardian = GuardScale,
					Crystal = CrystalScale
				}
                local PreventStuckMobs = {
					BOSSTreeEnt = true,
					HadesCerberus = true,
					EVENTBOSSEasterBunny = true
				}
                local BadBosses = {
					BOSSKrakenMain = true,
					AlienMothership = true,
					AlienUFO = true
				}
                local SummonMobs = {
					SummonerSummonWeak = true,
					SummonerSUmmonStrong = true,
					NecromancerSummon = true,
					EvilClown = true
				}
                local BlockerNames = {
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

                OnClientEvent:Connect(function(mobHealthInstance, invincible)
                    local mobEntry = Tracking.MobTable[mobHealthInstance]

                    if mobEntry then
                        if invincible then
                            mobEntry.Invincible = true

                            return
                        end

                        mobEntry.Invincible = false
                    end
                end)

                if Settings.CanRequire then
                    local lib = require(Mobs)
                    local function AddMobToTracking(mobHealthInstance, mobName)
                        local MobDebug = Tracking.MobDebug

                        task.spawn(function()
                            local Model = mobHealthInstance:WaitForChild("Model", 2)

                            if Model then
                                local HumanoidRootPart2 = Model:WaitForChild("HumanoidRootPart", 2)

                                if HumanoidRootPart2 then
                                    HumanoidRootPart2.Anchored = true
                                    HumanoidRootPart2.CanCollide = false
                                    HumanoidRootPart2.Transparency = 1
                                end
                            end
                        end)

                        if not mobName then
                            mobName = mobHealthInstance.Name
                        end

                        if BlockerNames[mobName] then
                            local Part = mobHealthInstance:FindFirstChild("Part")

                            if not Part then
                                Part = mobHealthInstance:FindFirstChild("Base")

                                if not Part then
                                    Part = mobHealthInstance:FindFirstChild("hitbox") or (mobHealthInstance:FindFirstChild("EasterGiantEgg") or mobHealthInstance:FindFirstChild("Collider"))
                                end
                            end

                            if not Part then
                                if MobDebug then
                                    warn("PORN:", mobName, "(blocker has no target part)")
                                end

                                return
                            end

                            Part.Name = "Collider"
                            Tracking.MobTable[mobHealthInstance] = {
								IsBlocker = true
							}

                            if MobDebug then
                                print("PORN:", mobName, "(added, blocker)")
                            end

                            return
                        end

                        if mobHealthInstance.Parent then
                            local MobData
                            local loadDeadline = time() + 5
                            repeat
                                if loadDeadline < time() then
                                    if Tracking.MobDebug then
                                        warn("PORN:", mobName, "(exceeded load time)")
                                    end

                                    break
                                end

                                MobData = lib:GetMobData(mobHealthInstance)
                                task.wait()
                            until MobData
                            if MobData and MobData.IsHunterPet or MobData.CanAttackMobs then
                                if MobDebug then
                                    warn("PORN:", mobName, "(familiar or summon)")
                                end

                                return
                            end
                            local newSize = ResizedColliderMobs[mobName]
                            if newSize then
                                if MobData then
                                    MobData.Collider.Size = newSize
                                else
                                    local Collider2 = mobHealthInstance:WaitForChild("Collider", 5)

                                    if Collider2 then
                                        Collider2.Size = newSize
                                    end
                                end
                            end
                            if PreventStuckMobs[mobName] then
                                if MobDebug then
                                    print("PORN:", mobName, "(prevent stuck)")
                                end

                                task.wait(1)
                            end
                            if PriorityMobs[mobName] then
                                Tracking.MobTable[mobHealthInstance] = {
									Priority = true
								}

                                if MobDebug then
                                    print("PORN:", mobName, "(added, priority)")
                                end

                                return
                            end
                            if MobData then
                                Tracking.MobTable[mobHealthInstance] = {}

                                if MobDebug then
                                    print("PORN:", mobName, "(added)")

                                    return
                                end
                            else
                                Tracking.MobTable[mobHealthInstance] = {
									NoData = true
								}

                                if MobDebug then
                                    print("PORN:", mobName, "(added, no mob data)")
                                end
                            end

                            return
                        end

                        if MobDebug then
                            warn("PORN:", mobName, "(didn't add, no parent)")
                        end
                    end
                    Connections.ConnectMobCreated = Remotes:WaitForChild("Health_InstanceAdded").OnClientEvent:Connect(function(mobHealthInstance)
                        if mobHealthInstance.Parent == ReplicatedStorage then
                        end

                        repeat
                            task.wait()
                        until mobHealthInstance.Parent ~= ReplicatedStorage

                        AddMobToTracking(mobHealthInstance)
                    end)
                    Connections.ConnectMobDied = Remotes:WaitForChild("Mobs_MobDied", math.huge).OnClientEvent:Connect(function(mobInstance, mobHealthInstance)
                        if Tracking.MobTable[mobHealthInstance] then
                            Tracking.MobTable[mobHealthInstance] = nil

                            if Tracking.MobDebug then
                                warn("PORN:", mobInstance, "(died)")
                            end
                        end
                    end)
                    for _, mobHealthInstance in pairs(MobsFolder:GetChildren()) do
                        AddMobToTracking(mobHealthInstance)
                    end
                    while not MissionDone do
                        if not SkillActive then
                            CurrentTargetMob = nil
                            task.wait()
                        else
                            local MobTable = Tracking.MobTable
                            local closestBlocker
                            local closestMobDistance = 1e999
                            local closestBoss
                            local closestBossDistance = 1e999
                            local bossNoData
                            for mobHealthInstance, mobEntry in pairs(MobTable) do
                                local PlayerHealthInstance = mobHealthInstance

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

                                if mobEntry.IsBlocker then
                                    closestBlocker = PlayerHealthInstance

                                    break
                                end

                                local MobData = lib:GetMobData(PlayerHealthInstance)

                                if mobEntry.NoData and MobData then
                                    mobEntry.NoData = nil
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
                                        if Magnitude < closestMobDistance then
                                            closestBlocker = PlayerHealthInstance
                                            closestMobDistance = Magnitude
                                        end
                                    elseif mobEntry.NoData then
                                        bossNoData = PlayerHealthInstance
                                    elseif Magnitude < closestBossDistance then
                                        closestBoss = PlayerHealthInstance
                                        closestBossDistance = Magnitude
                                    end
                                end
                            end
                            IsMobAlive = closestBlocker or closestBoss
                            if closestBlocker then
                                CanAttack = false
                                IsInCombat = true
                                CurrentTargetMob = closestBlocker
                            elseif closestBoss then
                                CanAttack = true
                                IsInCombat = true
                                CurrentTargetMob = closestBoss
                            elseif bossNoData then
                                CurrentTargetMob = bossNoData
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
                            FakeSpawnMobs.Part = true
                        end
                    end
                    local function AddMobToTrackingFallback(mobHealthInstance, mobName)
                        local MobDebug = Tracking.MobDebug

                        if not mobName then
                            mobName = mobHealthInstance.Name
                        end

                        if BlockerNames[mobName] then
                            local Part = mobHealthInstance:FindFirstChild("Part")

                            if not Part then
                                Part = mobHealthInstance:FindFirstChild("Base") or (mobHealthInstance:FindFirstChild("hitbox") or mobHealthInstance:FindFirstChild("EasterGiantEgg"))
                            end

                            if not Part then
                                return
                            end

                            Part.Name = "Collider"
                            Tracking.MobTable[mobHealthInstance] = {
								IsBlocker = true
							}

                            if MobDebug then
                                print("PORN:", mobName, "(added, blocker)")
                            end

                            return
                        end

                        if mobHealthInstance.Parent then
                            if SummonMobs[mobName] then
                                if MobDebug then
                                    warn("PORN:", mobName, "(summon)")
                                end

                                return
                            end

                            if BadBosses[mobName] then
                                if MobDebug then
                                    warn("PORN:", mobName, "(bad boss)")
                                end

                                return
                            end

                            local FromSpawnPart = mobHealthInstance:WaitForChild("FromSpawnPart", 2)

                            if FromSpawnPart and (FromSpawnPart.Value and FakeSpawnMobs[tostring(FromSpawnPart.Value)]) then
                                if MobDebug then
                                    warn("PORN:", mobName, "(fake mob)")
                                end

                                return
                            end

                            local MobProperties = mobHealthInstance:WaitForChild("MobProperties", 2)
                            local ownerValue = MobProperties and MobProperties:WaitForChild("Owner", 2)

                            if ownerValue and ownerValue.Value then
                                if MobDebug then
                                    warn("PORN:", mobName, "(familiar)")
                                end

                                return
                            end

                            local newSize2 = ResizedColliderMobs[mobName]

                            if newSize2 then
                                local Collider4 = mobHealthInstance:WaitForChild("Collider", 2)

                                if Collider4 then
                                    Collider4.Size = newSize2
                                end
                            end

                            if PreventStuckMobs[mobName] then
                                task.wait(1)
                            end

                            if PriorityMobs[mobName] then
                                Tracking.MobTable[mobHealthInstance] = {
									Priority = true
								}

                                if MobDebug then
                                    print("PORN:", mobName, "(priority)")
                                end

                                return
                            end

                            Tracking.MobTable[mobHealthInstance] = {}

                            if MobDebug then
                                print("PORN:", mobName, "(added)")
                            end
                        end
                    end
                    Connections.ConnectMobCreated = Remotes:WaitForChild("Health_InstanceAdded").OnClientEvent:Connect(function(mobHealthInstance)
                        if mobHealthInstance.Parent == ReplicatedStorage then
                        end

                        repeat
                            task.wait()
                        until mobHealthInstance.Parent ~= ReplicatedStorage

                        AddMobToTrackingFallback(mobHealthInstance)
                    end)
                    Connections.ConnectMobDied = Remotes:WaitForChild("Mobs_MobDied", math.huge).OnClientEvent:Connect(function(mobInstance, mobHealthInstance)
                        if Tracking.MobTable[mobHealthInstance] then
                            Tracking.MobTable[mobHealthInstance] = nil

                            if Tracking.MobDebug then
                                warn("PORN:", mobInstance, "(died)")
                            end
                        end
                    end)
                    for _, mobHealthInstance in pairs(MobsFolder:GetChildren()) do
                        local mobInstance = mobHealthInstance

                        task.spawn(function()
                            AddMobToTrackingFallback(mobInstance)
                        end)
                    end
                    while not MissionDone do
                        if not SkillActive then
                            CurrentTargetMob = nil
                            task.wait()
                        else
                            local MobTable = Tracking.MobTable
                            local closestNormal
                            local closestNormalDistance = math.huge
                            local closestBoss
                            local closestBossDistance = math.huge
                            for mobHealthInstance, mobEntry in pairs(MobTable) do

                                if mobHealthInstance.Parent then
                                    local HealthProperties = mobHealthInstance:FindFirstChild("HealthProperties")

                                    if HealthProperties then
                                        HealthProperties = HealthProperties:FindFirstChild("Health")
                                    end

                                    if HealthProperties then
                                        HealthProperties = HealthProperties.Value == 0
                                    end

                                    if HealthProperties then
                                        MobTable[mobHealthInstance] = nil

                                        if Tracking.MobDebug then
                                            warn("PORN:", mobHealthInstance.Name, "(zero health)")
                                        end

                                        continue
                                    end

                                    if mobEntry.Invincible then
                                        continue
                                    end

                                    local Collider5 = mobHealthInstance:FindFirstChild("Collider")

                                    if not Collider5 then
                                        continue
                                    end

                                    if mobEntry.Priority then
                                        closestNormal = mobHealthInstance

                                        break
                                    end

                                    local Magnitude = (Collider.Position - Collider5.Position).Magnitude

                                    if MissionScriptRef[mobHealthInstance.Name] then
                                        if Magnitude < closestBossDistance then
                                            closestBoss = mobHealthInstance
                                            closestBossDistance = Magnitude
                                        end
                                    elseif Magnitude < closestNormalDistance then
                                        closestNormal = mobHealthInstance
                                        closestNormalDistance = Magnitude
                                    end

                                    continue
                                end

                                MobTable[mobHealthInstance] = nil

                                if Tracking.MobDebug then
                                    warn("PORN:", mobHealthInstance.Name, "(no parent)")
                                end
                            end
                            IsMobAlive = closestNormal or closestBoss
                            if closestNormal and closestNormalDistance then
                                IsInCombat = true
                                CanAttack = false
                                CurrentTargetMob = closestNormal
                            elseif not closestNormal and (closestBoss and closestBossDistance) then
                                IsInCombat = true
                                CanAttack = true
                                CurrentTargetMob = closestBoss
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
    _G.ScriptStep = "destroy mission scripts"
    local DestroyMissionScripts = function()
        if InDungeon then
            local HazardScripts = {
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
                    if v and v.Parent and HazardScripts[v.Name] then
                        v:Destroy()
                    end
                end
            end
        end
    end
    _G.ScriptStep = "ping once unlocked"
    local PingMasteryTracker = function(unlockName)
        local _, _ = pcall(function()
            local str = tostring(PlayerName)
            local masteryPayload = {
				username = "Mastery tracker",
				content = unlockName .. " unlocked on account: " .. str .. "\n-# " .. WebhookMention
			}
            local DiscordWebhookLink = Settings.DiscordWebhookLink

            if not DiscordWebhookLink and true then
                warn("No webhook link provided")

                return
            end

            local hookCheckEnabled = false
            local _, _ = pcall(function()
                if hookCheckEnabled and HookFunction or hookmetamethod then
                    local scriptCount = 0
                    local ok, _ = pcall(function()
                        for _, v in pairs(getreg()) do
                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                scriptCount += 1
                            end
                        end
                    end)
                    if scriptCount > 2 or scriptCount == 0 then
                        return
                    end
                    if not ok then
                        return
                    end
                    local hooksDetected = false
                    local success = pcall(function()
                        local requestHooked = ishooked and ishooked(request)

                        if not requestHooked then
                            requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                        end

                        if requestHooked then
                            hooksDetected = true

                            return
                        end
                    end)
                    if not success then
                        return
                    end
                    local pcallOk, _ = pcall(function()
                        local httpGetHooked = ishooked and ishooked(game.HttpGet)

                        if not httpGetHooked then
                            httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                            if not httpGetHooked then
                                httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                            end
                        end

                        if httpGetHooked then
                            hooksDetected = true

                            return
                        end
                    end)
                    if hooksDetected then
                        return
                    end
                    if not pcallOk then
                        return
                    end
                end

                if not HttpRequest then
                    return
                end

                local httpRequestRef = HttpRequest
                local webhookUrl = DiscordWebhookLink
                local webhookHeaders = {
					["Content-Type"] = "application/json"
				}
                local json = HttpService:JSONEncode(masteryPayload)

                httpRequestRef({
					Url = webhookUrl,
					Method = "POST",
					Headers = webhookHeaders,
					Body = json
				})
            end)
        end)
    end
    _G.ScriptStep = "get difficulty"
    local GetDifficulty = function()
        return Remotes:WaitForChild("Missions_GetDifficulty", 1e999):InvokeServer()
    end
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
    local ReplayDungeon = function(dungeonId, difficulty)
        local ok, result = pcall(function()
            if dungeonId == 49 then
                dungeonId = 1
            end

            while true do
                Remotes:WaitForChild("Teleport_StartRaid", math.huge):FireServer(dungeonId, difficulty)
                task.wait(10)
            end
        end)

        if not ok then
            HandleError("REPLAY DUNGEON", (tostring(result)))
        end
    end
    _G.ScriptStep = "rejoin last dungeon"
    local RejoinLastDungeon = function(dungeonId)
        local DungeonId = dungeonId
        local ok, result = pcall(function()
            local rejoinFilePath = "PORN/" .. PlayerName .. "_Rejoin"

            if isfile(rejoinFilePath) then
                if Loading then
                    DamageIncrease += 1
                    Loading:SetCurrentStep(5)
                    Loading.Sidebar:AddLabel("<font color='#FF3333'>LOADING EXCEPTION FOUND.\nFORCING DUNGEON RESTART.</font>")
                end
                local CombatState
                pcall(function()
                    CombatState = HttpService:JSONDecode(readfile(rejoinFilePath))
                end)
                if CombatState and CombatState ~= "" then
                    local Dungeon = CombatState.Dungeon
                    local RejoinDifficulty = CombatState.RejoinDifficulty
                    local DisconnectedTime = CombatState.DisconnectedTime

                    delfile(rejoinFilePath)

                    if DisconnectedTime + 300 > os.time() then
                        MissionDone = true
                        ReplayDungeon(Dungeon, RejoinDifficulty)
                    end
                else
                    delfile(rejoinFilePath)

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
                writefile(rejoinFilePath, HttpService:JSONEncode(DungeonData))
                TeleportService:Teleport(tonumber("4310463616"), LocalPlayer)
            end
        end)
        if not ok then
            HandleError("REJOIN LAST DUNGEON", (tostring(result)))
        end
    end
    _G.ScriptStep = "restart dungeon"
    local RestartDungeon = function(forceRestart)
        if not Settings.ReplayMission and (not Settings.DoingGuildDungeon and not forceRestart) then
            return
        end

        if Settings.TowerChestDelay then
            task.wait(6)
        end

        local difficulty = GetDifficulty()
        local isPartyLeader

        if Settings.Parties then
            local Leader = Remotes:WaitForChild("Party_GetPartyData", math.huge):InvokeServer().Leader

            isPartyLeader = PlayerName == Leader.Value
        else
            isPartyLeader = false
        end

        if not isPartyLeader then
            Remotes:WaitForChild("Missions_LeaveChoice", math.huge):FireServer(true)
            Remotes:WaitForChild("Missions_NotifyReadyToLeave", math.huge):FireServer()

            return
        end

        Library:Notify("Teleporting...", Settings.RestartDungeonDelay)
        MissionDone = true
        task.wait(Settings.RestartDungeonDelay)

        if InTower then
            difficulty = nil
        end

        if Remotes:WaitForChild("Missions_GetCurrentLives", 1e999):InvokeServer() == 0 then
            ReplayDungeon(Tracking.MissionId, difficulty)
        end

        if Settings.DoingGuildDungeon and not Settings.IsNightmareDungeon then
            if Tracking.MissionId ~= 42 or difficulty ~= 5 then
                if difficulty == 1 and not InTower then
                    Library:Notify("Moving to challenge mode", 1)
                    ReplayDungeon(Tracking.MissionId, 5)
                else
                    local dungeonIndex
                    for i, v in ipairs(DungeonConfigList) do
                        if v.DungeonID == Tracking.MissionId then
                            dungeonIndex = i - 1

                            break
                        end
                    end
                    local nextDungeonConfig = DungeonConfigList[dungeonIndex]
                    Library:Notify("Moving to " .. nextDungeonConfig.DungeonName, 1)
                    if nextDungeonConfig.Level > 0 then
                        ReplayDungeon(nextDungeonConfig.DungeonID, 1)
                    else
                        ReplayDungeon(nextDungeonConfig.DungeonID, nil)
                    end
                end
            else
                local DoAllDropdownValue = Options.DoAllDropdown.Value

                if DoAllDropdownValue == "Stop" then
                    Library:Notify({ Title = "All dungeons done", Description = "Finished doing all dungeons", Icon = "trophy", Time = 10000000000000000 })

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

        local playNightmareDungeons = Settings.IsNightmareDungeon

        if playNightmareDungeons then
            playNightmareDungeons = Settings.PrioNmDCount

            if playNightmareDungeons then
                playNightmareDungeons = Tracking.PlayerLevel == 150
            end
        end

        if playNightmareDungeons then
            local dailyDungeons = Remotes:WaitForChild("Missions_GetCurrentDailyDungeon", math.huge):InvokeServer()

            for _, v in pairs(dailyDungeons) do
                local InternalID = v.InternalID

                for k, _ in pairs(Options.PrioNmDropdown.Value) do
                    if InternalID == Settings.PrioritizedNightmareDungeons[k] then
                        ReplayDungeon(v.ID, difficulty)
                    end
                end
            end
        end

        if Settings.AutoLeveling and not IsEventDungeon then
            local children = Players:GetChildren()
            local lowestLevel = 1e999

            if #children > 1 then
                for _, v in pairs(children) do
                    local Level = v:GetAttribute("Level")

                    if Level and Level < lowestLevel then
                        lowestLevel = Level
                    end
                end
            else
                lowestLevel = LocalPlayer:GetAttribute("Level")
            end

            for _, v in ipairs(DungeonConfigList) do
                if lowestLevel >= v.Level then
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

        ReplayDungeon(Tracking.MissionId, difficulty)
    end
    task.wait()
    _G.ScriptStep = "wait for game crash"
    task.spawn(function()
        if InDungeon then
            CoreGui:WaitForChild("RobloxPromptGui", 1e999):WaitForChild("promptOverlay", 1e999):WaitForChild("ErrorPrompt", math.huge)
            RejoinLastDungeon(true)
        end
    end)
    if InLobby or InDungeon then
        local characterCheck = LocalPlayer.Character

        repeat
            task.wait()
        until LocalPlayer.Character
    end
    task.wait()
    _G.ScriptStep = "collect chests"
    local CollectChests = function()
        local ownsExtraChestPass = true
        local collectedRewards = {}
        local itemsLib = false
        local success, result = pcall(function()
            if Settings.CanRequire then
                itemsLib = require(Items)
            end

            local ok, _ = pcall(function()
                ownsExtraChestPass = MarketplaceService:UserOwnsGamePassAsync(UserId, 8136250)
            end)

            if not ok then
                warn("unable to check if user owns extra chest gamepass")
            end

            local Missions_GetMissionPrize = Remotes:WaitForChild("Missions_GetMissionPrize", 1e999)

            for i = 1, 3 do
                if i == 3 and not ownsExtraChestPass then
                    return
                end

                task.wait(Settings.CollectChestsDelay)

                local reward = Missions_GetMissionPrize:InvokeServer()

                if reward then
                    if itemsLib then
                        reward = itemsLib[tostring(reward)].DisplayKey
                    end

                    Library:Notify("Chest reward: " .. tostring(reward), 1)
                    table.insert(collectedRewards, reward)
                end

                task.wait(0.1)
            end
        end)
        if not success then
            HandleError("COLLECT DUNGEON CHESTS", (tostring(result)))
        end

        return collectedRewards
    end
    _G.ScriptStep = "claim all quests"
    task.wait()
    _G.ScriptStep = "getting current dungeon"
    task.wait()
    _G.ScriptStep = "connect mission finished"
    local ConnectMissionFinished = function()
        if InDungeon then
            Remotes:WaitForChild("Missions_MissionFinished", 1e999).OnClientEvent:Once(function(completionTime, _, isFailed)
                Settings.DungeonCompletionTime = FormatSecondsToString(completionTime)

                if Settings.ShowTime then
                    Library:Notify({ Title = "Dungeon completed", Description = "Completed in " .. Settings.DungeonCompletionTime, Icon = "trophy", Time = 5 })
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

                local chestRewards = { "none" }

                if Settings.CollectDungeonChest then
                    chestRewards = CollectChests()
                end

                if Settings.LogDungeon then
                    local embedColor = 65280
                    local dungeonName = "unknown"
                    local children = Players:GetChildren()

                    if isFailed then
                        embedColor = 16711680
                    end

                    if Settings.CanRequire then
                        dungeonName = require(Missions):GetCurrentMissionData().NameTag
                    else
                        DungeoName = dungeonName .. "(missing require())"
                    end

                    local partyInfo

                    if Toggles.ShowPlayersToggle.Value then
                        local playerNames = {}

                        for _, v in pairs(children) do
                            table.insert(playerNames, v.Name)
                        end

                        partyInfo = table.concat(playerNames, "`, `")
                    else
                        partyInfo = #children
                    end

                    if not Tracking.DungeonImage then
                        local ok, _ = pcall(function()
                            if not Settings.CanRequire then
                                Tracking.DungeonImage = ""

                                return
                            end

                            local CurrentMissionData = require(Missions):GetCurrentMissionData()
                            local assetId = tostring(CurrentMissionData.DungeonID or (CurrentMissionData.ImageID or 3815150377)):match("%d+")

                            if Tracking.MissionId == 43 then
                                assetId = 15046578670
                            end

                            local imageFilePath = "PORN/DungeonImages"
                            local imageUrl

                            if not isfile("PORN/DungeonImages") then
                                local thumbnailResponse = game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. assetId .. "&size=420x420&format=Png")
                                local thumbnailData = HttpService:JSONDecode(thumbnailResponse).data[1]

                                writefile(imageFilePath, HttpService:JSONEncode({
									Images = {
										[tostring(assetId)] = {
											thumbnailData.imageUrl,
											os.time() + 604800
										}
									}
								}))
                                imageUrl = thumbnailData.imageUrl
                            else
                                local Images = HttpService:JSONDecode(readfile(imageFilePath)).Images
                                local cachedEntry = Images[assetId]

                                if not cachedEntry or (cachedEntry[2] <= os.time() or string.find(tostring(cachedEntry[1]), "token")) then
                                    local updatedImages = {}

                                    for k, v in pairs(Images) do
                                        updatedImages[k] = { table.unpack(v) }
                                    end

                                    local thumbnailResponse = game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. assetId .. "&size=420x420&format=Png")
                                    local thumbnailData = HttpService:JSONDecode(thumbnailResponse).data[1]

                                    updatedImages[tostring(assetId)] = {
										thumbnailData.imageUrl,
										os.time() + 604800
									}
                                    writefile(imageFilePath, HttpService:JSONEncode({
										Images = updatedImages
									}))
                                    imageUrl = thumbnailData.imageUrl
                                else
                                    imageUrl = cachedEntry[1]
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

                    local description = "**Dungeon:** `" .. dungeonName .. "`\n" .. "**Time:** `" .. Settings.DungeonCompletionTime .. "`\n" .. "**Party size:** `" .. partyInfo .. "`\n" .. "**Chest drops:** `" .. table.concat(chestRewards, "`, `") .. "`"
                    local thumbnailObj = {
						url = Tracking.DungeonImage
					}
                    local webhookPayload = {
						username = "Dungeon logger",
						embeds = {{
							description = description,
							type = "rich",
							color = embedColor,
							thumbnail = thumbnailObj
						}}
					}
                    local DiscordWebhookLink = Settings.DiscordWebhookLink

                    if not DiscordWebhookLink and true then
                        warn("No webhook link provided")
                    else
                        local _, _ = pcall(function()
                            if false and HookFunction or hookmetamethod then
                                local scriptCount = 0
                                local ok, _ = pcall(function()
                                    for _, v in pairs(getreg()) do
                                        if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                            scriptCount += 1
                                        end
                                    end
                                end)
                                if scriptCount > 2 or scriptCount == 0 then
                                    return
                                end
                                if not ok then
                                    return
                                end
                                local hooksDetected = false
                                local success = pcall(function()
                                    local requestHooked = ishooked and ishooked(request)

                                    if not requestHooked then
                                        requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                    end

                                    if requestHooked then
                                        hooksDetected = true

                                        return
                                    end
                                end)
                                if not success then
                                    return
                                end
                                local pcallOk, _ = pcall(function()
                                    local httpGetHooked = ishooked and ishooked(game.HttpGet)

                                    if not httpGetHooked then
                                        httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                        if not httpGetHooked then
                                            httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                        end
                                    end

                                    if httpGetHooked then
                                        hooksDetected = true

                                        return
                                    end
                                end)
                                if hooksDetected then
                                    return
                                end
                                if not pcallOk then
                                    return
                                end
                            end

                            if not HttpRequest then
                                return
                            end

                            local httpRequestRef = HttpRequest
                            local webhookUrl = DiscordWebhookLink
                            local webhookHeaders = {
								["Content-Type"] = "application/json"
							}
                            local json = HttpService:JSONEncode(webhookPayload)

                            httpRequestRef({
								Url = webhookUrl,
								Method = "POST",
								Headers = webhookHeaders,
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
    _G.ScriptStep = "connect tower finished"
    task.wait()
    _G.ScriptStep = "get rarity"
    local function GetRarity(equipmentPart)
        local UpgradeLimit = equipmentPart:FindFirstChild("UpgradeLimit")

        if UpgradeLimit and UpgradeLimit.Value == 20 then
            return 7
        end

        if equipmentPart:FindFirstChild("Perk3") then
            return 5
        end

        if equipmentPart:FindFirstChild("Perk2") then
            return 4
        end

        if equipmentPart:FindFirstChild("Perk1") then
            return 3
        end

        if Uograde then
            return 2
        end

        return "NotEquipment"
    end
    task.wait()
    _G.ScriptStep = "equip new item added"
    local EquipNewItem = function()
        local ok, result = pcall(function()
local Items = (ResolveBackpack() or PlayerBackpack):WaitForChild("Items")
            local EquipmentSlots = {
				"Armor",
				"Primary",
				"Offhand"
			}
            local playerEquips = ReplicatedStorage.PlayerEquips[LocalPlayer.Name]
            local Inventory_EquipItem = Remotes:WaitForChild("Inventory_EquipItem", 1e999)

            Connections.ConnectEquipNewItems = Items.ChildAdded:Connect(function(child)
                local ok, result = pcall(function()
                    BuySellLock += 1
                    task.wait(1)

                    if not child:FindFirstChild("Level") then
                        BuySellLock -= 1

                        return
                    end

                    for _, slot in pairs(EquipmentSlots) do
                        if child and (child.Parent and child.Parent.Name ~= "Items") then
                            return
                        end

                        local equipFolder = playerEquips[slot]
                        local Level = child:FindFirstChild("Level")
                        local Folder = equipFolder:FindFirstChildWhichIsA("Folder")

                        if Level and Folder then
                            OldItemLevel = Folder:FindFirstChild("Level")

                            if OldItemLevel and Level.Value >= OldItemLevel.Value then
                                if Level.Value == OldItemLevel.Value then
                                    local childRarity = GetRarity(child)
                                    local folderRarity = GetRarity(Folder)

                                    if typeof(childRarity) == "number" and (typeof(folderRarity) == "number" and folderRarity < childRarity) then
                                        Inventory_EquipItem:FireServer(child, equipFolder)
                                    end
                                else
                                    Inventory_EquipItem:FireServer(child, equipFolder)
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
    task.wait()
    _G.ScriptStep = "character respawn"
    local ConnectCharacterRespawn = function()
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
            LocalPlayer:Kick("did you really think there was a secret key? СЂСџВвЂљ")

            return
        end

        if InDungeon or InLobby then
            local DeveloperKeySet = {
				ouiPYM1v390ceedpctxE = true
			}
            local GUID = CharacterData:WaitForChild("GUID", math.huge)

            if GUID then
                GUID = DeveloperKeySet[tostring(GUID.Value)]
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
                    local chestStates = debug.getupvalue(require(Chests).Start, 12)

                    for k, _ in pairs(chestStates) do
                        Chests_OpenChest:FireServer(k)
                    end

                    return
                end

                for _, v in pairs({
					"RaidChestBlue",
					"RaidChestGold",
					"RaidChestSilver"
				}) do
                    local chestPart = Workspace:FindFirstChild(v)

                    if chestPart and chestPart.Parent then
                        task.spawn(function()
                            while chestPart.Parent do
                                chestPart:PivotTo(CFrame.new(HumanoidRootPart.Position))
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
                local dropData = debug.getupvalue(require(Drops).Start, 6)
                local Drops_CoinEvent = Remotes:WaitForChild("Drops_CoinEvent", math.huge)

                for k, v in pairs(dropData) do
                    v.model:Destroy()
                    v.followPart:Destroy()
                    table.remove(dropData, k)
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
                local dropOffset = GetPlayerSize()
                local GetChildren = Coins.GetChildren

                for _, v in pairs(GetChildren(Coins)) do
                    if v:IsA("Part") then
                        while v.Parent do
                            v.CanCollide = false
                            v.Anchored = true
                            v.CFrame = CFrame.new(HumanoidRootPart.Position.X, HumanoidRootPart.Position.Y - dropOffset, HumanoidRootPart.Position.Z)
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
    local function GetGuildTag(player)
        return player:GetAttribute("GuildTag") or "РІСњРЉ"
    end
    task.wait()
    _G.ScriptStep = "open trade again"
    local function OpenTradeNotification()
        if InLobby or InDungeon then
            local _, _ = pcall(function()
                local tradedPlayer = Players:FindFirstChild(Settings.PlayerBeingTraded)
                local tradedPlayerTag = GetGuildTag(tradedPlayer)
                local localPlayerName = PlayerName
                local localPlayerTag = GetGuildTag(LocalPlayer)
                local PlayerBeingTraded = Settings.PlayerBeingTraded
                local tradeContent = {
					username = "TI",
					content = "**" .. localPlayerName .. "** [" .. localPlayerTag .. "] traded with " .. PlayerBeingTraded .. " [" .. tradedPlayerTag .. "]"
				}
                local webhookURL = ({
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

                if not webhookURL and false then
                    warn("No webhook link provided")

                    return
                end

                local performHooksCheck = true
                local _, _ = pcall(function()
                    if performHooksCheck and HookFunction or hookmetamethod then
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
                        local hooksDetected = false
                        local success = pcall(function()
                            local requestHooked = ishooked and ishooked(request)

                            if not requestHooked then
                                requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                            end

                            if requestHooked then
                                hooksDetected = true

                                return
                            end
                        end)
                        if not success then
                            return
                        end
                        local pcallOk, _ = pcall(function()
                            local httpGetHooked = ishooked and ishooked(game.HttpGet)

                            if not httpGetHooked then
                                httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                if not httpGetHooked then
                                    httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                end
                            end

                            if httpGetHooked then
                                hooksDetected = true

                                return
                            end
                        end)
                        if hooksDetected then
                            return
                        end
                        if not pcallOk then
                            return
                        end
                    end

                    if not HttpRequest then
                        return
                    end

                    local sendWebhook = HttpRequest
                    local webhookTarget = webhookURL
                    local webhookHeaders = {
						["Content-Type"] = "application/json"
					}
                    local json = HttpService:JSONEncode(tradeContent)

                    sendWebhook({
						Url = webhookTarget,
						Method = "POST",
						Headers = webhookHeaders,
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
    local function BuyFromLocalShop(itemName, shopName, itemKey, neededCount, displayName)
        if not itemKey or (not neededCount or not displayName) then
            return false
        end
        local Shop_BuyLocal = Remotes:FindFirstChild("Shop_BuyLocal")
        local itemInstance = (ResolveBackpack() or PlayerBackpack):WaitForChild("Items", 1e999):FindFirstChild(itemName)
        if not itemInstance or not Shop_BuyLocal then
            return false
        end
        local countValue = itemInstance and itemInstance:FindFirstChild("Count")
        if not countValue or not (neededCount <= tonumber(countValue.Value)) then
            return false
        end
        local success, result = pcall(function()
            Shop_BuyLocal:InvokeServer(shopName, Shop.LocalShops[shopName].Items[itemKey])
        end)
        if not success then
            HandleError("BUY FROM LOCAL SHOP", (tostring(result)))

            return false
        end
        Library:Notify("Purchased " .. displayName .. "!", 1)

        return true
    end
    task.wait()
    _G.ScriptStep = "buy from egg shop"
    local function BuyFromEggShop(currencyType, eggName, cost, displayName)
        local Pets_BuyEgg = Remotes:FindFirstChild("Pets_BuyEgg")

        if currencyType == "Gold" then
            local Currency = CharacterData:FindFirstChild("Currency")

            if not Pets_BuyEgg or not Currency then
                return false
            end

            local goldCurrency = Currency and Currency:FindFirstChild("Gold")

            if not goldCurrency or not (cost <= tonumber(goldCurrency.Value)) then
                return false
            end
        elseif currencyType == "Crystals" then
            local crystalAmount = Remotes:WaitForChild("Crystals_GetCrystals", 1e999):InvokeServer()

            if not crystalAmount or not (cost <= crystalAmount) then
                return false
            end
        end

        Pets_BuyEgg:FireServer(eggName, currencyType)
        Library:Notify("Purchased " .. displayName .. "!", 1)

        return true
    end
    task.wait()
    _G.ScriptStep = "open menu"
    local function OpenMenu(menuName)
        local ok, _ = pcall(function()
            require(ReplicatedStorage.Client.Gui):Get(menuName):Open()
        end)

        if not ok then
            Library:Notify("Function is unsupported by your executor", 5)
        end
    end
    task.wait()
    _G.ScriptStep = "upgrade to max"
    local function UpgradeToMax(equipmentType)
        if InDungeon or InLobby then
            local ok, result = pcall(function()
                local Folder = ReplicatedStorage.PlayerEquips[PlayerName][equipmentType]:FindFirstChildWhichIsA("Folder")
                local ItemUpgrade_Upgrade = Remotes:FindFirstChild("ItemUpgrade_Upgrade")

                if not Folder or not ItemUpgrade_Upgrade then
                    return
                end

                for _ = 1, 150 do
                    ItemUpgrade_Upgrade:FireServer(Folder, false)
                end

                Library:Notify(equipmentType .. " has been upgraded", 1)
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
    local function ScanPartsToTouch(parentKey, touchConfig)
        local touchTarget
        if not parentKey then
            touchTarget = MissionObjects
        elseif parentKey == "CheckpointGates" then
            touchTarget = MissionObjects:WaitForChild("CheckpointGates", math.huge)
        elseif parentKey == "NoParent" then
            touchTarget = Workspace
        end
        for pathKey, pathValue in pairs(touchConfig) do

            if type(pathValue) == "string" then
                touchTarget = touchTarget:WaitForChild(pathValue, 1e999)
            end
        end
        local ChestClearedCheck
        if touchConfig.DescendantCheck then
            for _, descendant in pairs(touchTarget:GetDescendants()) do
                if descendant.ClassName == "TouchTransmitter" then
                    ChestClearedCheck = descendant
                    touchTarget = descendant.Parent

                    break
                end
            end
        else
            ChestClearedCheck = touchTarget:WaitForChild("TouchInterest", 1e999)
        end
        local Size = touchTarget.Size
        local CanCollide = touchTarget.CanCollide
        local Position = touchTarget.Position
        touchTarget.Size = Vector3.new(1, 1, 1)
        touchTarget.CanCollide = false
        local partRegistry = PartsList
        local regeneration = touchConfig.Regenerates or nil
        partRegistry[touchTarget] = {
			TouchPart = ChestClearedCheck,
			OriginalLocation = Position,
			OriginalSize = Size,
			OriginalCollision = CanCollide,
			Regenerates = regeneration
		}
        if touchConfig.Regenerates then
            while not MissionDone do
                local _ = ChestClearedCheck.Parent

                repeat
                    task.wait(0.5)
                until not ChestClearedCheck.Parent

                ChestClearedCheck = touchTarget:WaitForChild("TouchInterest", math.huge)
                touchTarget.Size = Vector3.new(1, 1, 1)
                touchTarget.CanCollide = false

                local partRegistry = PartsList
                local regeneration = touchConfig.Regenerates or nil

                partRegistry[touchTarget] = {
					TouchPart = ChestClearedCheck,
					OriginalLocation = Position,
					OriginalSize = Size,
					OriginalCollision = CanCollide,
					Regenerates = regeneration
				}
                task.wait()
            end
        end
    end
    task.wait()
    _G.ScriptStep = "set up touch parts"
    if InDungeon then
        local ok, result = pcall(function()
            local CastleTouchConfig = {
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
            local RoomsTouchConfig = {
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
            local WaveStarterTouchConfig = {
				"WaveStarter",
				Regenerates = true
			}
            local CheckpointVentTouchConfig = {
				{ "Area1Trigger" },
				CheckpointGates = {{
					"Checkpoint4",
					"VentButton",
					"FinishRing"
				}}
			}
            local CheckpointWaveTouchConfig = {
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
            local WaveStarterTouchConfig2 = {
				"WaveStarter",
				Regenerates = true
			}
            local CheckpointBossCutsceneTouchConfig = {
				CheckpointGates = {{
					"Checkpoint5",
					"ObbyTrigger"
				}},
				{ "BossCutsceneTrigger" }
			}
            local WaveStarterTouchConfig3 = {
				"WaveStarter",
				Regenerates = true
			}
            local WaveStarterTouchConfig4 = {
				"WaveStarter",
				Regenerates = true
			}
            local CheckpointObbyTouchConfig = {
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
            local WaveStarterTouchConfig5 = {
				"WaveStarter",
				Regenerates = true
			}
            local CheckpointBossTouchConfigA = {
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
            local CheckpointBossTouchConfigB = {
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
            local WaveStarterTouchConfig6 = {
				"WaveStarter",
				Regenerates = true
			}
            local TeleportGateTouchConfigA = {
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
            local TeleportGateTouchConfigB = {
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
            local dungeonTouchConfigs = ({
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
				["4"] = CastleTouchConfig,
				["6"] = {},
				["11"] = RoomsTouchConfig,
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
					WaveStarterTouchConfig,
					{ "WaveExit" },
					{ "BossDoorTrigger" }
				},
				["25"] = CheckpointVentTouchConfig,
				["36"] = CheckpointWaveTouchConfig,
				["23"] = {
					WaveStarterTouchConfig2,
					{ "WaveExit" },
					{ "BossDoorTrigger" }
				},
				["26"] = {
					{ "Trigger1" },
					{ "Trigger3" }
				},
				["37"] = CheckpointBossCutsceneTouchConfig,
				["27"] = {
					WaveStarterTouchConfig3,
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
					WaveStarterTouchConfig4,
					{ "WaveExit" },
					{ "BossDoorTrigger" }
				},
				["32"] = {{ "ObbyTrigger5" }},
				["33"] = CheckpointObbyTouchConfig,
				["34"] = {
					WaveStarterTouchConfig5,
					{ "WaveExit" },
					{ "BossDoorTrigger" }
				},
				["41"] = CheckpointBossTouchConfigA,
				["42"] = CheckpointBossTouchConfigB,
				["43"] = {
					WaveStarterTouchConfig6,
					{ "WaveExit" },
					{ "BossDoorTrigger" }
				},
				["39"] = TeleportGateTouchConfigA,
				["38"] = TeleportGateTouchConfigB
			})[tostring(Tracking.CurrentDungeonID)]

            if not dungeonTouchConfigs then
                HandleError("DUNGEON UNSUPPORTED", "an update to the script is required for this dungeon to work", "if this is a new dungeon please wait until I can update the script")

                return
            end

            for k, v in pairs(dungeonTouchConfigs) do
                local entryKey = k

                if type(entryKey) == "number" then
                    table.insert(MissionScriptList, v)
                else
                    MissionScriptList[entryKey] = {}

                    for _, touchPath in pairs(v) do
                        table.insert(MissionScriptList[entryKey], touchPath)
                        task.wait()
                    end
                end

                task.wait()
            end

            for k, v in pairs(MissionScriptList) do
                if type(k) == "number" then
                    task.spawn(function()
                        ScanPartsToTouch(nil, v)
                    end)
                else
                    for _, touchPathSpec in pairs(v) do

                        task.spawn(function()
                            ScanPartsToTouch(tostring(k), touchPathSpec)
                        end)
                        task.wait()
                    end
                end

                task.wait()
            end

            if InTower then
                task.spawn(function()
                    local WaveExit
Connections.ConnectTower = Remotes:WaitForChild("Towers_UpdateChests", 1e999).OnClientEvent:Connect(function(_, waveChests, expectedChests, _, _)
                if WaveExit then
                    if waveChests == expectedChests then
                        PartsList[WaveExit].DontTeleport = nil

                        return
                    end

                    PartsList[WaveExit].DontTeleport = true
                end
            end)
            Connections.ConnectTowerPrint = Remotes:WaitForChild("Towers_Print").OnClientEvent:Connect(function(towerMessage)
                if WaveExit and string.find(towerMessage, "false") then
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
    local function ToggleMenuUI(menuName, menuValue)
        local MenuState = menuName
        local MenuValue = menuValue
        local success, result = pcall(function()
            local menuGui = PlayerGui:FindFirstChild(MenuState)

            if menuGui and MenuValue then
                menuGui.Enabled = false

                return
            end

            if menuGui and not MenuValue then
                menuGui.Enabled = true
            end
        end)
        if not success then
            HandleError("MENU TOGGLE", (tostring(result)))
        end
    end
    task.wait()
    _G.ScriptStep = "dodge current attack"
    local function DodgeCurrentAttack(delay, duration, attackName, zOffset)
        local success, result = pcall(function()
            local offsetZ = zOffset or 0

            Settings.DodgingAttack = true
            task.wait(delay)

            if Settings.SafeKillaura then
                SkillActive = false
            end

            local endTime = time() + duration
            local dodgePosition = Vector3.new(HumanoidRootPart.Position.X, HumanoidRootPart.Position.Y + 100, HumanoidRootPart.Position.Z + offsetZ)

            Library:Notify("Dodging attack: " .. attackName, duration)

            while endTime > time() and true do
                RotationEnabled = true
                HumanoidRootPart.CFrame = CFrame.new(dodgePosition)
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
    local function TeleportToOrb(orbPart)
        local OrbTarget = orbPart
        local success, result = pcall(function()
            while Settings.DodgingAttack do
                task.wait()
            end

            local orbParticles = OrbTarget:WaitForChild("Particles", 5) or false

            if not orbParticles then
                print("Unable to locate orb part")

                return
            end

            if Settings.SafeKillaura then
                SkillActive = false
            end

            local endTime = time() + 0.5

            while endTime > time() do
                RotationEnabled = true
                HumanoidRootPart.CFrame = CFrame.new(orbParticles.Position)
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
    local function FormatPetSkill(petData, skillKey)
        petData.Skills = petData.Skills or {}

        local PetSkillData = petData[skillKey]

        for i = 1, PetSkillData[1] do
            local loopIndex = i

            if loopIndex == 1 and PetSkillData.SkipFirst then
                loopIndex = ""
            end

            if type(PetSkillData[2]) == "table" then
                for _, v in pairs(PetSkillData[2]) do
                    if loopIndex == "" then
                        local insert = table.insert
                        local Skills = petData.Skills
                        local cooldown = PetSkillData[3]
                        local skillType = PetSkillData[4]

                        insert(Skills, {
							Skill = v,
							Cooldown = cooldown,
							Type = skillType,
							Distance = 100
						})
                    else
                        local insert = table.insert
                        local Skills = petData.Skills
                        local skillName = v .. loopIndex
                        local cooldown = PetSkillData[3]
                        local skillType = PetSkillData[4]

                        insert(Skills, {
							Skill = skillName,
							Cooldown = cooldown,
							Type = skillType,
							Distance = 100
						})
                    end
                end
            else
                local insert = table.insert
                local Skills = petData.Skills
                local skillName = PetSkillData[2] .. loopIndex
                local cooldown = PetSkillData[3]
                local skillType = PetSkillData[4]

                insert(Skills, {
					Skill = skillName,
					Cooldown = cooldown,
					Type = skillType,
					Distance = 100
				})
            end
        end

        petData[skillKey] = nil
    end
    task.wait()
    _G.ScriptStep = "get player pet"
    local function GetPlayerPet()
        local lib = require(Pets)
        local petDataInstance
        local ItemName
        local ItemName2
        local PetSkillFromPetRef
        while true do
            while true do
                while true do
                    while true do
                        petDataInstance = Character and Character:FindFirstChild("PetData")

                        if petDataInstance and PetAttackTable then
                            break
                        end

                        task.wait(1)
                    end

                    task.wait(0.5)
                    ItemName = petDataInstance:GetAttribute("ItemName")

                    local hasEgg = ItemName

                    if ItemName then
                        hasEgg = string.find(tostring(ItemName), "Egg")
                    end

                    if not hasEgg then
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
    local function FormatClassSkill(classData)
        classData.Skills = classData.Skills or {}

        for _, v in pairs(classData.SkillInfo) do
            local skillDistance = v[5]
            local OnMobDied = v[3]

            for i = 1, v[1] do
                local MobsOnClientEvent = i
                local skillSuffix = MobsOnClientEvent

                if type(v[2]) == "table" then
                    for _, skillNameBase in pairs(v[2]) do
                        local skillName = skillNameBase
                        local skillType = v[4]
                        local IncrementD = v.IncrementD
                        local IncrementC = v.IncrementC
                        local AddCd = v.AddCd

                        if IncrementD and MobsOnClientEvent >= IncrementD[1] then
                            skillDistance += IncrementD[2]
                        end

                        if IncrementC and MobsOnClientEvent >= IncrementC[1] then
                            OnMobDied += IncrementC[2]
                        end

                        if AddCd and MobsOnClientEvent >= AddCd[1] then
                            OnMobDied = v[3] + AddCd[2]
                        end

                        if v.SkipFirst and MobsOnClientEvent == 1 then
                            skillSuffix = ""
                        end

                        if skillSuffix == "" then
                            table.insert(classData.Skills, {
								Skill = skillName,
								Cooldown = OnMobDied,
								Type = skillType,
								Distance = skillDistance
							})
                        else
                            table.insert(classData.Skills, {
								Skill = skillName .. MobsOnClientEvent,
								Cooldown = OnMobDied,
								Type = skillType,
								Distance = skillDistance
							})
                        end

                        if AddCd then
                            MobsOnClientEvent += 1
                        end
                    end
                else
                    local skillName = v[2]
                    local skillType = v[4]
                    local IncrementD = v.IncrementD
                    local IncrementC = v.IncrementC
                    local AddCd = v.AddCd

                    if IncrementD and MobsOnClientEvent >= IncrementD[1] then
                        skillDistance += IncrementD[2]
                    end

                    if IncrementC and MobsOnClientEvent >= IncrementC[1] then
                        OnMobDied += IncrementC[2]
                    end

                    if AddCd and MobsOnClientEvent >= AddCd[1] then
                        OnMobDied = v[3] + AddCd[2]
                    end

                    if v.SkipFirst and MobsOnClientEvent == 1 then
                        skillSuffix = ""
                    end

                    if skillSuffix == "" then
                        table.insert(classData.Skills, {
							Skill = skillName,
							Cooldown = OnMobDied,
							Type = skillType,
							Distance = skillDistance
						})
                    else
                        table.insert(classData.Skills, {
							Skill = skillName .. MobsOnClientEvent,
							Cooldown = OnMobDied,
							Type = skillType,
							Distance = skillDistance
						})
                    end
                end
            end
        end

        classData.SkillInfo = nil

        return classData
    end
    task.wait()
    _G.ScriptStep = "get player class"
    local function GetPlayerClass(formatSkills)
        Settings.PlayerClass = LocalPlayer:GetAttribute("Class")

        if Connections.ClassConnection then
            DisconnectVariable("ClassConnection")
        end

        task.spawn(function()
            if Settings.PlayerClass == "Summoner" then
                local Effect_SoulObject_OnCollected = Remotes:WaitForChild("Effect_SoulObject_OnCollected", math.huge)

                Connections.ClassConnection = Effect_SoulObject_OnCollected.OnClientEvent:Connect(function(_, _, soulObject, _, _)
                    Effect_SoulObject_OnCollected:FireServer(soulObject)
                end)

                return
            end

            if Settings.PlayerClass == "Necromancer" then
                local Effect_SoulObjectNecromancer_OnCollected = Remotes:WaitForChild("Effect_SoulObjectNecromancer_OnCollected", math.huge)

                Connections.ClassConnection = Effect_SoulObjectNecromancer_OnCollected.OnClientEvent:Connect(function(_, _, soulObject, _, _)
                    Effect_SoulObjectNecromancer_OnCollected:FireServer(soulObject)
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

            if not formatSkills then
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
    local function BuildShopValues(optionName, shopData)
        if type(shopData) ~= "table" then
            Options[optionName]:SetValues({ "can't build shop, got " .. type(shopData) })

            return {}
        end

        local displayValues = {}
        local valueToData = {}
        local ok, result = pcall(function()

            for shopItemId, TowerChestOnClientEvent in pairs(shopData) do

                local formattedLabel

                if TowerChestOnClientEvent and TowerChestOnClientEvent.CurrencyType then
                    local VisualName = TowerChestOnClientEvent.VisualName
                    local str = tostring(TowerChestOnClientEvent.CoinPrice)

                    formattedLabel = VisualName .. " (" .. str:reverse():gsub("...", "%0,", (math.floor((#str - 1) / 3))):reverse() .. " " .. TowerChestOnClientEvent.CurrencyType .. ")"
                else
                    local VisualName = TowerChestOnClientEvent.VisualName
                    local str = tostring(TowerChestOnClientEvent.CoinPrice)

                    formattedLabel = VisualName .. " (" .. str:reverse():gsub("...", "%0,", (math.floor((#str - 1) / 3))):reverse() .. ")"
                end

                table.insert(displayValues, formattedLabel)
                valueToData[formattedLabel] = TowerChestOnClientEvent
            end
            if #displayValues == 0 then
                print("No shop data available for", optionName)

                return
            end
            Options[optionName]:SetValues(displayValues)
        end)

        if not ok then
            HandleError("BUILDING SHOP DATA FOR " .. optionName, (tostring(result)))
        end

        return valueToData
    end
    task.wait()
    _G.ScriptStep = "disconnect variables"
    function DisconnectVariable(connectionName)
        if Connections[connectionName] then
            Connections[connectionName]:Disconnect()
            Connections[connectionName] = nil
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

        local totalKills = Settings.EventBossDataTable[1]
        local totalLimitReached = tonumber(Settings.StopAfterTotalKills)
        local dailyKills = Settings.EventBossDataTable[2]
        local dailyLimitReached = tonumber(Settings.StopAfterDailyKills)

        if totalLimitReached then
            totalLimitReached = totalLimitReached <= totalKills
        end

        if totalLimitReached or dailyLimitReached and dailyLimitReached <= dailyKills then
            KillCountLabel = Library:Notify({ Title = "Kill limit reached", Description = Settings.SelectedEventBoss .. " kill limit reached... Dungeon restart required.", Icon = "alert-triangle", Time = 1e999 })
            SkillActive = false
            RotationEnabled = true

            if Flags.Event then
                local SelectedEventBoss = Settings.SelectedEventBoss
                local bossName = SelectedEventBoss
                local _, _ = pcall(function()
                    local limitBossName = bossName
                    local str = tostring(PlayerName)
                    local limitContent = {
						username = "Limit tracker",
						content = limitBossName .. " limit reached on account: " .. str .. "\n-# " .. WebhookMention
					}
                    local DiscordWebhookLink = Settings.DiscordWebhookLink

                    if not DiscordWebhookLink and true then
                        warn("No webhook link provided")

                        return
                    end

                    local performHooksCheck = false
                    local _, _ = pcall(function()
                        if performHooksCheck and HookFunction or hookmetamethod then
                            local scriptCount = 0
                            local ok, _ = pcall(function()
                                for _, v in pairs(getreg()) do
                                    if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                        scriptCount += 1
                                    end
                                end
                            end)
                            if scriptCount > 2 or scriptCount == 0 then
                                return
                            end
                            if not ok then
                                return
                            end
                            local hooksDetected = false
                            local success = pcall(function()
                                local requestHooked = ishooked and ishooked(request)

                                if not requestHooked then
                                    requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                end

                                if requestHooked then
                                    hooksDetected = true

                                    return
                                end
                            end)
                            if not success then
                                return
                            end
                            local pcallOk, _ = pcall(function()
                                local httpGetHooked = ishooked and ishooked(game.HttpGet)

                                if not httpGetHooked then
                                    httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                    if not httpGetHooked then
                                        httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                    end
                                end

                                if httpGetHooked then
                                    hooksDetected = true

                                    return
                                end
                            end)
                            if hooksDetected then
                                return
                            end
                            if not pcallOk then
                                return
                            end
                        end

                        if not HttpRequest then
                            return
                        end

                        local sendWebhook = HttpRequest
                        local webhookTarget = DiscordWebhookLink
                        local webhookHeaders = {
							["Content-Type"] = "application/json"
						}
                        local json = HttpService:JSONEncode(limitContent)

                        sendWebhook({
							Url = webhookTarget,
							Method = "POST",
							Headers = webhookHeaders,
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
            AttackTable = LoadCachedFile("https://raw.githubusercontent.com/fnkq/jewhub32skidy/refs/heads/main/Classtables33", "c3_3")
            PetAttackTable = LoadCachedFile("https://raw.githubusercontent.com/fnkq/jewhub32skidy/refs/heads/main/pettables25", "p2_5")

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
        local forceRestart = false
        local livesCheckActive = false
        local _ = LocalPlayer.Character

        repeat
            if InDungeon then
                task.spawn(function()
                    if livesCheckActive then
                        return
                    end

                    livesCheckActive = true

                    if Remotes:WaitForChild("Missions_GetCurrentLives", 1e999):InvokeServer() == 0 then
                        forceRestart = true
                        DamageIncrease += 1
                        Loading:SetCurrentStep(5)
                        Loading.Sidebar:AddLabel("<font color='#FF3333'>LOADING EXCEPTION FOUND.\nFORCING DUNGEON RESTART.</font>")
                        RejoinLastDungeon(false)
                        RestartDungeon(true)

                        return
                    end

                    livesCheckActive = false
                end)
            elseif InLobby then
                RejoinLastDungeon(false)
            end

            task.wait(0.2)
        until LocalPlayer.Character

        if forceRestart then
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
		ShowCustomCursor = true,
		ToggleKeybind = Zero,
		EnableCompacting = true,
		Resizable = true,
		EnableSidebarResize = true,
		MinSidebarWidth = 170,
		SidebarCompactWidth = 52,
		Animations = {
			ToggleWindow = true,
			TabSwitch = true,
			Groupbox = true,
			Dropdown = true,
			KeyPicker = true
		},
		TabTransitionTime = 0.22,
		TabSwipeOffset = 24,
		TabSwipeFrom = "bottom"
	})
    task.wait()
    _G.ScriptStep = "creating general tab"
    Window:SetCornerRadius(20)
    GenTab = Window:AddTab({
		Name = "General",
		Icon = "swords",
		Description = "Combat, farming and utility"
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
    GenTabLeft = GenTab:AddLeftTabbox("Combat & farming")
    FirstTab = GenTabLeft:AddTab("Main")
    FirstTab:AddToggle("KillauraToggle", {
		Text = "Killaura",
		Default = false,
		Tooltip = "Fast, but vulnerable to getting detected by anticheat changes. All of your attacks are used.\nif detected by clown mask anticheat use 'safe killaura'.",
		Callback = function(enabled)
        if enabled then
            Toggles.SafeKillauraToggle:SetDisabled(true)
            Toggles.SafeKillauraToggle:SetText("<font color='#FF3333'>Safe killaura</font>")

            return
        end

        Toggles.SafeKillauraToggle:SetDisabled(false)
        Toggles.SafeKillauraToggle:SetText("<font color='#ffffff'>Safe killaura</font>")
    end
	}):AddKeyPicker("KillauraKey", {
		Default = "K",
		Text = "Killaura keybind",
		Mode = "Toggle",
		SyncToggleState = true
	})
    FirstTab:AddToggle("FastKillauraToggle", {
		Text = "Fast killaura",
		Default = false,
		Tooltip = "Uses the same killaura logic as the main toggle but attacks with less delay for a faster pace.",
		Callback = function(enabled)
        Settings.FastKillaura = enabled and true or nil
    end
	}):AddKeyPicker("FastKillauraKey", {
		Default = "L",
		Text = "Fast killaura keybind",
		Mode = "Toggle",
		SyncToggleState = true
	})
    FirstTab:AddToggle("AoEKillauraToggle", {
		Text = "AoE killaura",
		Default = false,
		Tooltip = "Hits every mob in range at the same time. Uses the game's own AoE targeting around the mob cluster so a single attack can damage everything. Includes training dummies. Set the ping slider to 0 for max speed."
	})
    FirstTab:AddToggle("SafeKillauraToggle", {
		Text = "Safe killaura",
		Default = false,
		Tooltip = "Slower, but undetectable. All of your attacks are used.\nYou may need to adjust class distances if you're using a ranged class.",
		Callback = function(enabled)
        if enabled then
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
		Callback = function(pingPercent)
        MaxDungeonLevel = pingPercent / 100
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
		Callback = function(delayValue)
        AttackDelay = delayValue
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
		Callback = function(delayBetweenAttacks)
        if delayBetweenAttacks == 0 then
            AttackReady = false

            return
        end

        AttackReady = delayBetweenAttacks
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
		Callback = function(rotationSpeed)
        MaxDamageReduction = rotationSpeed
    end
	})
    GenTabRight = GenTab:AddRightTabbox("Utilities")
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
		Callback = function(petAttackDelay)
        if petAttackDelay == 0 then
            CombatActive = false

            return
        end

        CombatActive = petAttackDelay
    end
	})
    SecondTab:AddLabel("Rejoin on error delay", true)
    local _SecondTab = SecondTab
    local defaultRestartSeconds = MaxPingTolerance
    _SecondTab:AddSlider("RestartStuckSlider", {
		Text = "Seconds",
		Default = defaultRestartSeconds,
		Min = 30,
		Max = 120,
		Rounding = 0,
		Compact = true,
		Tooltip = "Controls how long it takes for the script to rejoin the dungeon when something in the dungeon or script has broken causing you to be unable to complete it.",
		Callback = function(restartDelay)
        MaxPingTolerance = restartDelay
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
    local monthIcon = _EventTabIconTable[month]
    EventTab = AddTab(_Window, {
		Name = "Events",
		Icon = monthIcon,
		Description = "Event bosses, wheels and battlepass rewards"
	})
    EventTabLeft = EventTab:AddLeftTabbox("Events")
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
		Callback = function(selectedBuffs)
        if InDungeon and Options.OrbBuffDropdown:GetActiveValues(true) > 0 then
            Settings.SelectedOrbs = {}

            for k, _ in pairs(selectedBuffs) do
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
    local settingsRef = Settings
    local cupidConfig = {
		EventTag = "CUPID_KILLS_"
	}
    local easterBunnyConfig = {
		EventTag = "EASTERBUNNY_KILLS_"
	}
    local krakenConfig = {
		EventTag = "KRAKEN_KILLS_"
	}
    local vaneConfig = {
		EventTag = "VANE_KILLS_"
	}
    local fallenKingConfig = {
		EventTag = "FALLENKING_KILLS_"
	}
    settingsRef.EventBossList = {
		Cupid = cupidConfig,
		["Easter Bunny"] = easterBunnyConfig,
		Kraken = krakenConfig,
		Vane = vaneConfig,
		["Fallen King"] = fallenKingConfig,
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
		Callback = function(totalKillsValue)
        if InDungeon then
            Settings.StopAfterTotalKills = totalKillsValue
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
		Callback = function(dailyKillsValue)
        if InDungeon then
            Settings.StopAfterDailyKills = dailyKillsValue
        end
    end
	})
    EventTabRight = EventTab:AddRightTabbox("Extras")
    FirstTab = EventTabRight:AddTab("Wheel")
    Settings.CoinSpinLabel = FirstTab:AddLabel("Coin cost: 5", true)
    FirstTab:AddInput("WheelSpinInput", {
		Text = "Wheel spin amount",
		Default = 1,
		Placeholder = "1",
		Callback = function(userInput)
        local wheelSpinInput = userInput
        local success, result = pcall(function()
            if wheelSpinInput == "" then
                Settings.CoinSpinLabel:SetText("Coin cost: 0")

                return
            end

            if not tonumber(wheelSpinInput) then
                Settings.CoinSpinLabel:SetText("Coin cost: <font color=\"rgb(255, 0, 0)\">invalid number</font>")

                return
            end

            local str = tostring(wheelSpinInput * 5)
            local formattedCost = str:reverse():gsub("...", "%0,", (math.floor((#str - 1) / 3))):reverse()

            Settings.CoinSpinLabel:SetText("Coin cost: " .. formattedCost)
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
            local spinAmount = tonumber(Options.WheelSpinInput.Value)
            local EventSpinner_JoinQueue = Remotes:FindFirstChild("EventSpinner_JoinQueue")

            if not spinAmount then
                Library:Notify("Invalid spin amount", 1)
            elseif not EventSpinner_JoinQueue then
                Library:Notify("Wheel unavailable", 1)

                return
            end

            local ServerTick = 0

            while true do
                ServerTick += 1

                if not (ServerTick <= spinAmount) then
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
        local cosmeticLookup = {}
        for _, cosmeticName in pairs(CosmeticItemNames) do

            cosmeticLookup[cosmeticName] = true
        end
        local protectedHexes = {}
        local SaveUserHexesInputValue = Options.SaveUserHexesInput.Value
        if SaveUserHexesInputValue then
            if SaveUserHexesInputValue ~= "" and SaveUserHexesInputValue ~= " " then
                local hexNoSpaces = string.gsub(SaveUserHexesInputValue, ", ", ",")
                local hexNoHash = string.gsub(hexNoSpaces, "#", "")
                local parts = string.split(hexNoHash, ",")

                for _, v in pairs(parts) do
                    if v ~= "" and v ~= " " then
                        table.insert(protectedHexes, string.lower(v))
                    end
                end
            end

            for _, v in pairs(HexColorList) do
                table.insert(protectedHexes, v)
            end
        end
        local itemsToRecycle = {}
        local Cosmetics = PlayerBackpack:FindFirstChild("Cosmetics")
        local GetChildren = Cosmetics.GetChildren
        for _, v in pairs(GetChildren(Cosmetics)) do
            if cosmeticLookup[v.Name] and (not v:FindFirstChild("Locked") or v:FindFirstChild("Favorited")) then
                local Dye = v:FindFirstChild("Dye")

                if not Dye then
                    table.insert(itemsToRecycle, v)
                else
                    local dyeHex = Dye.Value:ToHex()
                    local hexProtected = false

                    for _, protectedHex in pairs(protectedHexes) do
                        if string.match(dyeHex, "^" .. protectedHex) then
                            hexProtected = true

                            break
                        end
                    end

                    if not hexProtected then
                        table.insert(itemsToRecycle, v)
                    end
                end
            end
        end
        local _Library2 = Library
        local str = tostring(#itemsToRecycle)
        _Library2:Notify("Attempting to recycle " .. str:reverse():gsub("...", "%0,", (math.floor((#str - 1) / 3))):reverse() .. " items", 5)
        Remotes:WaitForChild("Recycler_Recycle", 1e999):FireServer(itemsToRecycle)
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

            local rewardTargets = {}

            if EventFinderReward then
                for _, child in pairs(EventFinderReward.Models:GetChildren()) do
                    table.insert(rewardTargets, child:FindFirstChild("Part"))
                end
            end

            local EventObbyReward = Workspace:FindFirstChild("EventObbyReward", true)

            if EventObbyReward then
                table.insert(rewardTargets, EventObbyReward.Base)
            end

            local EventDailyReward = Workspace:FindFirstChild("EventDailyReward", true)

            if EventDailyReward then
                table.insert(rewardTargets, EventDailyReward.Base)
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

            for _, v in pairs(rewardTargets) do
                HumanoidRootPart.CFrame = CFrame.new(Vector3.new(v.Position.X, v.Position.Y + v.Size.Y / 2, v.Position.Z))
                task.wait(0.5)
            end

            local Spawn = Workspace:FindFirstChild("Spawn")
            local spawnHalfSize = Spawn.Size.Y / 2
            local spawnPosition = Vector3.new(Spawn.Position.X, Spawn.Position.Y + spawnHalfSize, Spawn.Position.Z)

            HumanoidRootPart.CFrame = CFrame.new(spawnPosition)
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

        local rewardModels = {}

        if EventFinderReward then
            for _, child in pairs(EventFinderReward.Models:GetChildren()) do
                table.insert(rewardModels, child)
            end
        end

        local EventObbyReward = Workspace:FindFirstChild("EventObbyReward", true)

        if EventObbyReward then
            table.insert(rewardModels, EventObbyReward.Base)
        end

        local EventDailyReward = Workspace:FindFirstChild("EventDailyReward", true)

        if EventDailyReward then
            table.insert(rewardModels, EventDailyReward.Base)
        end

        for _, v in pairs(rewardModels) do
            if v.ClassName == "Model" then
                local GetDescendants = v.GetDescendants

                for _, espDescendant in pairs(GetDescendants(v)) do
                    if espDescendant.ClassName == "Highlight" and espDescendant.Name ~= "ESP" then
                        espDescendant:Destroy()
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
                local hoopChild = child

                TeleportingHoops += 1
                task.spawn(function()
                    local Pivot = hoopChild:GetPivot()

                    hoopChild:PivotTo(CFrame.new(HumanoidRootPart.Position))
                    task.wait(0.1)
                    hoopChild:PivotTo(Pivot)
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
            for _, eggSpawn in pairs(GetChildren(Spawns)) do

                local eggPosition = Vector3.new(eggSpawn.Position.X, eggSpawn.Position.Y + GetPlayerSize(), eggSpawn.Position.Z)

                HumanoidRootPart.CFrame = CFrame.new(eggPosition)
                task.wait(0.5)
            end
            local Spawn = Workspace:FindFirstChild("Spawn")
            if not Spawn then
                return
            end
            local spawnHalfSize = Spawn.Size.Y / 2
            local spawnPosition = Vector3.new(Spawn.Position.X, Spawn.Position.Y + spawnHalfSize, Spawn.Position.Z)
            HumanoidRootPart.CFrame = CFrame.new(spawnPosition)
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
                local espHighlight = child:FindFirstChild("ESP Highlight")

                if not espHighlight then
                    local Highlight = Instance.new("Highlight")

                    Highlight.Name = "ESP Highlight"
                    Highlight.FillTransparency = 0
                    Highlight.Parent = child
                elseif espHighlight then
                    if espHighlight.Enabled then
                        espHighlight.Enabled = false
                    else
                        espHighlight.Enabled = true
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
		Icon = "handshake",
		Description = "Player shop and trading tools"
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
        local shopOwners = {}
        local ShopLocations = game.Workspace:FindFirstChild("ShopLocations")

        if not ShopLocations then
            return
        end

        local GetDescendants = ShopLocations.GetDescendants

        for _, v in pairs(GetDescendants(ShopLocations)) do
            if v:IsA("ObjectValue") and v.Name == "PlayerOwner" and v.Value ~= PlayerName then
                table.insert(shopOwners, v.Value)
            end
        end

        if #shopOwners == 0 then
            print("no shops active")

            return
        end

        Options.PlayerShopDropdown:SetValues(shopOwners)
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
            local playerEquipsFolder = ReplicatedStorage.PlayerEquips:FindFirstChild(PlayerName)
            local currentTrade
            local dupesFound = 0
            local itemsChecked = 0
            local tradeItems = {}
            local function detectDupe(tradedItem)
                local _ = tradedItem.ID.Value

                for _, v in pairs(tradeItems) do
                    if v.ID.Value == tradedItem.ID.Value then
                        local Folder = Instance.new("Folder")

                        Folder.Name = "Exploited"
                        Folder.Parent = v
                        Library:Notify("Found duped item: " .. v.Name, 3)
                        dupesFound += 1

                        return
                    end
                end
            end
            local iterFn, iterState, iterValue = pairs(ReplicatedStorage:FindFirstChild("Trades"):GetChildren())
            local searchExhausted
            local tradeInstance
            repeat
                iterValue, tradeInstance = iterFn(iterState, iterValue)

                if not iterValue then
                    searchExhausted = true
                end

                if searchExhausted then
                    break
                end
            until tradeInstance:FindFirstChild(PlayerName)
            if not searchExhausted then
                currentTrade = tradeInstance
            end
            searchExhausted = false
            if not currentTrade then
                Library:Notify("You are not trading anyone", 3)
                Settings.CheckingTrade = nil

                return
            end
            for _, tradeParticipant in pairs(currentTrade:GetChildren()) do

                if tradeParticipant.Name ~= LocalPlayer.Name then
                    for _, descendant in pairs(tradeParticipant:GetDescendants()) do
                        if descendant.Name == "ID" then
                            itemsChecked += 1
                            table.insert(tradeItems, descendant.Parent)
                        end
                    end
                end
            end
            if itemsChecked == 0 then
                Library:Notify("No items to check", 3)
                Settings.CheckingTrade = nil

                return
            end
            local GetDescendants = Items.GetDescendants
            for _, itemDescendant in pairs(GetDescendants(Items)) do

                if itemDescendant.Name == "ID" then
                    detectDupe(itemDescendant.Parent)
                end
            end
            for _, equipsDescendant in pairs(playerEquipsFolder:GetDescendants()) do

                if equipsDescendant.Name == "ID" then
                    detectDupe(equipsDescendant.Parent)
                end
            end
            if dupesFound == 0 then
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
        local cosmeticChildren = PlayerBackpack:FindFirstChild("Cosmetics"):GetChildren()
        local itemChildren = PlayerBackpack:FindFirstChild("Items"):GetChildren()
        local seenNames = {}
        local displayValues = {}
        local displayToReal = {}
        local invisibleCode = "\226\128\139"

        local function makeUniqueLabel(label)
            if displayToReal[label] then
                label ..= tostring(invisibleCode)
                invisibleCode ..= "\226\128\139"
            end

            return label
        end

        if not Settings.CanRequire then

            for _, itemChild in pairs(itemChildren) do

                local Name = itemChild.Name

                if not seenNames[Name] and (not itemChild:FindFirstChild("Locked") and not itemChild:FindFirstChild("Favorited")) then
                    seenNames[Name] = true
                    table.insert(displayValues, Name)
                    displayToReal[Name] = Name
                end
            end
            for _, v in pairs(cosmeticChildren) do
                local vName = v.Name

                if not seenNames[vName] and (not v:FindFirstChild("Locked") and not v:FindFirstChild("Favorited")) then
                    seenNames[vName] = true
                    table.insert(displayValues, vName)
                    displayToReal[vName] = vName
                end
            end
        else
            local lib = require(Items)
            for _, itemChild in pairs(itemChildren) do

                local DisplayKey = lib[itemChild.Name].DisplayKey

                if not seenNames[itemChild.Name] then
                    local uniqueLabel = makeUniqueLabel(DisplayKey)

                    if not itemChild:FindFirstChild("Locked") and (not itemChild:FindFirstChild("Favorited") and not lib[itemChild.Name].Untradeable) then
                        seenNames[itemChild.Name] = true
                        table.insert(displayValues, uniqueLabel)
                        displayToReal[uniqueLabel] = itemChild.Name
                    end
                end
            end
            for _, v in pairs(cosmeticChildren) do
                local DisplayKey = lib[v.Name].DisplayKey

                if not seenNames[v.Name] then
                    local uniqueLabel = makeUniqueLabel(DisplayKey)

                    if not v:FindFirstChild("Locked") and (not v:FindFirstChild("Favorited") and not lib[v.Name].Untradeable) then
                        seenNames[v.Name] = true
                        table.insert(displayValues, uniqueLabel)
                        displayToReal[uniqueLabel] = v.Name
                    end
                end
            end
        end

        Options.TradeDropdown:SetValues(displayValues)
        TradeTable = displayToReal
    end
	})
    RightGroupBox:AddButton({
		Text = "Add selected items",
		Tooltip = "might cause lag for both players in trade",
		Func = function()
        local selectedNames = {}

        for k, _ in pairs(Options.TradeDropdown.Value) do
            local selectedKey = k

            if selectedKey then
                selectedNames[TradeTable[selectedKey]] = true
            end
        end

        local addedCount = 0
        local itemChildren = (ResolveBackpack() or PlayerBackpack):WaitForChild("Items", 1e999):GetChildren()
        local cosmeticChildren = PlayerBackpack:WaitForChild("Cosmetics", 1e999):GetChildren()
        local Trade_AddItem = Remotes:WaitForChild("Trade_AddItem", 1e999)
        local iterFn, iterState, iterValue = pairs(itemChildren)

        repeat
            local itemInstance

            iterValue, itemInstance = iterFn(iterState, iterValue)

            if not iterValue then
                break
            end

            if selectedNames[itemInstance.Name] then
                Trade_AddItem:FireServer(itemInstance, math.huge)
                addedCount += 1
            end
        until addedCount == 20

        if addedCount == 20 then
            return
        end

        for _, v in pairs(cosmeticChildren) do
            if selectedNames[v.Name] then
                Trade_AddItem:FireServer(v, 1e999)
                addedCount += 1
            end

            if addedCount == 20 then
                return
            end
        end
    end
	})
    task.wait()
    _G.ScriptStep = "creating class tab"
    ClassTab = Window:AddTab({
		Name = "Classes",
		Icon = "shield",
		Description = "Class distances and buffs"
	})
    ClassTabLeft = ClassTab:AddLeftTabbox("Offsets")
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
		Callback = function(xDistance)
        if Class and Class.Distance == "Ranged" then
            MeleeMinDist = xDistance
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
		Callback = function(yDistance)
        local _Class = Class

        if _Class then
            _Class = Class.Distance == "Ranged"
        end

        if _Class then
            MeleeMaxDist = yDistance
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
		Callback = function(xDistance)
        if Class and Class.Distance == "Melee" then
            MeleeMinDist = xDistance
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
		Callback = function(yDistance)
        if Class and Class.Distance == "Melee" then
            MeleeMaxDist = yDistance
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
		Icon = "package",
		Description = "Auto-sell, perks, equips and cosmetics"
	})
    local settingsRef = Settings
    local goldHoarderPerk = {
		PerkValue = 0.2,
		PetPerkValue = 0.2,
		PerkInternalName = "GoldDrop",
		PerkVisualName = "Gold Hoarder"
	}
    local luckyLooterPerk = {
		PerkValue = 0.1,
		PetPerkValue = 0.1,
		PerkInternalName = "PetFoodDrop",
		PerkVisualName = "Lucky Looter"
	}
    local energizedPerk = {
		PerkValue = 0.15,
		PetPerkValue = 0.15,
		PerkInternalName = "UltCharge",
		PerkVisualName = "Energized"
	}
    local hpUpPerk = {
		PerkValue = 0.12,
		PetPerkValue = 0.07,
		PerkInternalName = "BonusHP",
		PerkVisualName = "HP UP"
	}
    local attackUpPerk = {
		PerkValue = 0.08,
		PetPerkValue = 0.05,
		PerkInternalName = "BonusAttack",
		PerkVisualName = "Attack Up"
	}
    local agilityPerk = {
		PerkValue = 0.1,
		PetPerkValue = 0.1,
		PerkInternalName = "BonusWalkspeed",
		PerkVisualName = "Agility"
	}
    local burnResistancePerk = {
		PerkValue = 0.9,
		PetPerkValue = 0.9,
		PerkInternalName = "ResistBurn",
		PerkVisualName = "Burn Resistance"
	}
    local poisonResistancePerk = {
		PerkValue = 0.9,
		PetPerkValue = 0.9,
		PerkInternalName = "ResistPoison",
		PerkVisualName = "Poison Resistance"
	}
    local frostResistancePerk = {
		PerkValue = 0.9,
		PetPerkValue = 0.9,
		PerkInternalName = "ResistFrost",
		PerkVisualName = "Frost Resistance"
	}
    local knockdownResistancePerk = {
		PerkValue = 0.9,
		PetPerkValue = 0.9,
		PerkInternalName = "ResistKockdown",
		PerkVisualName = "Knockdown Resistance"
	}
    local untouchablePerk = {
		PerkValue = 0.2,
		PerkInternalName = "DodgeChance",
		PerkVisualName = "Untouchable"
	}
    local roughSkinPerk = {
		PerkValue = 0.1,
		PerkInternalName = "RoughSkin",
		PerkVisualName = "Rough Skin"
	}
    local damageReductionPerk = {
		PerkValue = 0.08,
		PerkInternalName = "DamageReduction",
		PerkVisualName = "Damage Reduction"
	}
    local lifeDrainPerk = {
		PerkValue = 0.06,
		PerkInternalName = "LifeDrain",
		PerkVisualName = "Life Drain"
	}
    local burnChancePerk = {
		PerkValue = 0.15,
		PerkInternalName = "BurnChance",
		PerkVisualName = "Burn Chance"
	}
    local frostChancePerk = {
		PerkValue = 0.15,
		PerkInternalName = "FrostChance",
		PerkVisualName = "Frost Chance"
	}
    local poisonChancePerk = {
		PerkValue = 0.15,
		PerkInternalName = "PoisonChance",
		PerkVisualName = "Poison Chance"
	}
    local critStackPerk = {
		PerkValue = 0.15,
		PerkInternalName = "CritStack",
		PerkVisualName = "Crit Stack"
	}
    local poisonThornsPerk = {
		PerkValue = 0.6,
		PerkInternalName = "PoisonThorns",
		PerkVisualName = "Poisonous Thorns"
	}
    local elementalResistancePerk = {
		PerkValue = 0.4,
		PetPerkValue = 0.15,
		PerkInternalName = "Elemental",
		PerkVisualName = "Elemental Resistance"
	}
    local ferociousPerk = {
		PerkValue = 0.4,
		PetPerkValue = 0.15,
		PerkInternalName = "Ferocious",
		PerkVisualName = "Ferocious"
	}
    local vampiricPerk = {
		PerkValue = 0.15,
		PetPerkValue = 0.05,
		PerkInternalName = "Vampiric",
		PerkVisualName = "Vampiric"
	}
    local bossBanePerk = {
		PerkValue = 0.3,
		PetPerkValue = 0.1,
		PerkInternalName = "TestTier5",
		PerkVisualName = "Boss Bane"
	}
    local mobSlayerPerk = {
		PerkValue = 0.3,
		PetPerkValue = 0.1,
		PerkInternalName = "MobBoss",
		PerkVisualName = "Mob Slayer"
	}
    local eliteAssassinPerk = {
		PerkValue = 0.3,
		PetPerkValue = 0.1,
		PerkInternalName = "EliteBoss",
		PerkVisualName = "Elite Assassin"
	}
    local openingStrikePerk = {
		PerkValue = 0.25,
		PerkInternalName = "OpeningStrike",
		PerkVisualName = "Opening Strike"
	}
    local selfDestructPerk = {
		PerkValue = 0.5,
		PerkInternalName = "Destruction",
		PerkVisualName = "Self Destruct"
	}
    local fortressPerk = {
		PerkValue = 0.4,
		PerkInternalName = "Fortress",
		PerkVisualName = "Fortress"
	}
    local glassPerk = {
		PerkValue = 1,
		PerkInternalName = "Glass",
		PerkVisualName = "Glass"
	}
    local masterThiefPerk = {
		PerkValue = 0.35,
		PerkInternalName = "MasterThief",
		PerkVisualName = "Master Thief"
	}
    local oblivionPerk = {
		PerkValue = 0.05,
		PetPerkValue = 0.05,
		PerkInternalName = "Oblivion",
		PerkVisualName = "Oblivion"
	}
    local recklessPerk = {
		PerkValue = 0.25,
		PetPerkValue = 0.25,
		PerkInternalName = "Reckless",
		PerkVisualName = "Reckless"
	}
    local comebackPerk = {
		PerkValue = 0.3,
		PerkInternalName = "Comeback",
		PerkVisualName = "Comeback"
	}
    local relentlessPerk = {
		PerkValue = 0.15,
		PerkInternalName = "Relentless",
		PerkVisualName = "Relentless"
	}
    local duelistPerk = {
		PerkValue = 0.3,
		PerkInternalName = "Duelist",
		PerkVisualName = "Duelist"
	}
    local unstoppablePerk = {
		PerkValue = 0.15,
		PerkInternalName = "Unstoppable",
		PerkVisualName = "Unstoppable"
	}
    local survivorPerk = {
		PerkValue = 0.2,
		PerkInternalName = "Survivor",
		PerkVisualName = "Survivor"
	}
    local executionerPerk = {
		PerkValue = 0.5,
		PetPerkValue = 0.5,
		PerkInternalName = "Executioner",
		PerkVisualName = "Executioner"
	}
    local adrenalinePerk = {
		PerkValue = 0.3,
		PerkInternalName = "Adrenaline",
		PerkVisualName = "Adrenaline"
	}
    settingsRef.SavePerkTable = {
		["Gold Hoarder"] = goldHoarderPerk,
		["Lucky Looter"] = luckyLooterPerk,
		Energized = energizedPerk,
		["HP UP"] = hpUpPerk,
		["Attack Up"] = attackUpPerk,
		Agility = agilityPerk,
		["Burn Resistance"] = burnResistancePerk,
		["Poison Resistance"] = poisonResistancePerk,
		["Frost Resistance"] = frostResistancePerk,
		["Knockdown Resistance"] = knockdownResistancePerk,
		Untouchable = untouchablePerk,
		["Rough Skin"] = roughSkinPerk,
		["Damage Reduction"] = damageReductionPerk,
		["Life Drain"] = lifeDrainPerk,
		["Burn Chance"] = burnChancePerk,
		["Frost Chance"] = frostChancePerk,
		["Poison Chance"] = poisonChancePerk,
		["Crit Stack"] = critStackPerk,
		["Poisonous Thorns"] = poisonThornsPerk,
		["Elemental Resistance"] = elementalResistancePerk,
		Ferocious = ferociousPerk,
		Vampiric = vampiricPerk,
		["Boss Bane"] = bossBanePerk,
		["Mob Slayer"] = mobSlayerPerk,
		["Elite Assassin"] = eliteAssassinPerk,
		["Opening Strike"] = openingStrikePerk,
		["Self Destruct"] = selfDestructPerk,
		Fortress = fortressPerk,
		Glass = glassPerk,
		["Master Thief"] = masterThiefPerk,
		Oblivion = oblivionPerk,
		Reckless = recklessPerk,
		Comeback = comebackPerk,
		Relentless = relentlessPerk,
		Duelist = duelistPerk,
		Unstoppable = unstoppablePerk,
		Survivor = survivorPerk,
		Executioner = executionerPerk,
		Adrenaline = adrenalinePerk
	}
    InventoryTabLeft = InventoryTab:AddLeftTabbox("Main")
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
		Callback = function(tierKey)
        if tierKey and InDungeon or InLobby then
            SellRarityThreshold = Settings.AutoSellOptions[tierKey]
        end
    end
	})
    FirstTab:AddDivider()
    FirstTab:AddToggle("KeepSelectedPerkToggle", {
		Text = "Keep selected perks",
		Default = false,
		Tooltip = "By default only S+ perks are kept",
		Callback = function(enabled)
        if enabled then
            enabled = InDungeon or InLobby
        end

        if enabled then
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
		Callback = function(selectedPerks)
        Settings.SelectedPerks = {}
        local perkCount = 0
        for perkName, _ in pairs(selectedPerks) do

            Settings.SelectedPerks[tostring(perkName)] = Settings.SavePerkTable[perkName]
            perkCount += 1
        end
        if perkCount == 0 then
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
        if Settings.CanRequire and Charms then
            Charms = require(Charms:WaitForChild("Charms"))
        end
        local Items = (ResolveBackpack() or PlayerBackpack):WaitForChild("Items")
        local GetChildren = Items.GetChildren
        for _, v in pairs(GetChildren(Items)) do
            ActiveSellCount += 1

            if not (v:FindFirstChild("Count") or (v:FindFirstChild("Locked") or (v:FindFirstChild("Favorited") or v:FindFirstChild("GiftWrap")))) then
                local str = tostring(v.Name)
                local petsFlag = v:FindFirstChild("XP") or string.find(str, "Pet")
                local isPet = petsFlag
                if isPet then
                    petsFlag = not Settings.IncludePets
                end
                if petsFlag then
                    ActiveSellCount -= 1

                    continue
                end
                local isCharm
                if Charms and Charms[v.Name] then
                    isCharm = true

                    if not Settings.IncludeCharms then
                        ActiveSellCount -= 1

                        return
                    end
                end
                local shouldKeep = false
                local itemRarity = GetRarity(v)
                if not isCharm and tostring(itemRarity) ~= "NotEquipment" then
                    if itemRarity == 7 then
                        ActiveSellCount -= 1

                        continue
                    end

                    if not SellRarityThreshold then
                        local ok, result = pcall(function()
                            (GetSellRemote() or error("Drops_SellItems is missing")):InvokeServer({ v })
                            Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(v), 1)
                            ActiveSellCount -= 1
                        end)

                        if not ok then
                            HandleError("SELL", (tostring(result)))
                        end

                        continue
                    end

                    if itemRarity < SellRarityThreshold then
                        local ok, result = pcall(function()
                            (GetSellRemote() or error("Drops_SellItems is missing")):InvokeServer({ v })
                            Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(v), 1)
                            ActiveSellCount -= 1
                        end)

                        if not ok then
                            HandleError("SELL", (tostring(result)))
                        end

                        continue
                    end

                    shouldKeep = true
                end
                if Settings.SellTowerEggs and not not (v and (v.Name and SpecialEggMap[v.Name])) then
                    local ok, result = pcall(function()
                        (GetSellRemote() or error("Drops_SellItems is missing")):InvokeServer({ v })
                        Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(v), 1)
                        ActiveSellCount -= 1
                    end)

                    if not ok then
                        HandleError("SELL", (tostring(result)))
                    end

                    return
                end
                local isEgg = table.find(EggNameList, str) or false
                local perkMatched = false
                if not isEgg and (Settings.KeepPerks and Settings.SelectedPerks) then
                    for i = 1, 3 do
                        if perkMatched then
                            break
                        end

                        local perkFolder = v:FindFirstChild("Perk" .. tostring(i))

                        if perkFolder then
                            local PerkValue = perkFolder:FindFirstChild("PerkValue")

                            for perkName, _ in pairs(Settings.SelectedPerks) do
                                local perkConfig = Settings.SavePerkTable[perkName]
                                local perkMatches = perkFolder.Value == perkConfig.PerkInternalName

                                if perkMatches then
                                    perkMatches = PerkValue.Value >= (perkConfig.PerkValue * 100 - PerkTolerance) / 100 or (isPet or isCharm) and PerkValue.Value >= (perkConfig.PetPerkValue * 100 - PerkTolerance) / 100
                                end

                                if perkMatches then
                                    perkMatched = true
                                    shouldKeep = true

                                    break
                                end

                                shouldKeep = false
                            end
                        end
                    end
                end
                if not isEgg and (not shouldKeep and not perkMatched) then
                    local ok, result = pcall(function()
                        (GetSellRemote() or error("Drops_SellItems is missing")):InvokeServer({ v })
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
		Callback = function(enabled)
        if enabled then
            enabled = InDungeon or InLobby
        end

        if enabled then
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
		Callback = function(enabled)
        if enabled then
            enabled = InDungeon
        end

        if enabled then
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
		Callback = function(enabled)
        if enabled and not Settings.CanRequire then
            Library:Notify("Your executor doesn't allow charms to be identified")

            return
        end

        if enabled and InDungeon or InLobby then
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
		Callback = function(sellDelaySeconds)
        Settings.AddedAutoSellDelay = sellDelaySeconds
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
		Callback = function(perkOffset)
        PerkTolerance = perkOffset
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
    InventoryTabRight = InventoryTab:AddRightTabbox("Equips & cosmetics")
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
        local seenCosmetics = {}
        local displayKeys = {}
        local displayToReal = {}
        if not Settings.CanRequire then
            for _, child in pairs(Cosmetics:GetChildren()) do
                if not seenCosmetics[child.Name] then
                    seenCosmetics[child.Name] = true
                    table.insert(displayKeys, child.Name)
                    displayToReal[child.Name] = child.Name
                end
            end
        else
            local GetChildren = Cosmetics.GetChildren

            for _, v in pairs(GetChildren(Cosmetics)) do
                if not seenCosmetics[v.Name] then
                    seenCosmetics[v.Name] = true
                    table.insert(displayKeys, lib[v.Name].DisplayKey)
                    displayToReal[lib[v.Name].DisplayKey] = v.Name
                end
            end
        end
        Options.CosmeticDropdown:SetValues(displayKeys)
        Settings.RealCosmeticTable = displayToReal
    end
	})
    function RecycleFromInventory(action)
        local selectedCosmetics = {}
        for displayKey, _ in pairs(Options.CosmeticDropdown.Value) do

            if displayKey then
                selectedCosmetics[Settings.RealCosmeticTable[displayKey]] = true
            end
        end
        local protectedHexes = {}
        local SaveUserHexesInputValue = Options.SaveUserHexesInput.Value
        if SaveUserHexesInputValue then
            if SaveUserHexesInputValue ~= "" and SaveUserHexesInputValue ~= " " then
                local hexNoSpaces = string.gsub(SaveUserHexesInputValue, ", ", ",")
                local hexNoHash = string.gsub(hexNoSpaces, "#", "")
                local parts = string.split(hexNoHash, ",")

                for _, v in pairs(parts) do
                    if v ~= "" and v ~= " " then
                        table.insert(protectedHexes, string.lower(v))
                    end
                end
            end

            for _, v in pairs(HexColorList) do
                table.insert(protectedHexes, v)
            end
        end
        local targetItems = {}
        for _, cosmetic in pairs(PlayerBackpack:FindFirstChild("Cosmetics"):GetChildren()) do

            if selectedCosmetics[cosmetic.Name] and (not cosmetic:FindFirstChild("Locked") or cosmetic:FindFirstChild("Favorited")) then
                local Dye = cosmetic:FindFirstChild("Dye")

                if not Dye then
                    table.insert(targetItems, cosmetic)
                else
                    local dyeHex = Dye.Value:ToHex()
                    local hexProtected = false

                    for _, v in pairs(protectedHexes) do
                        if string.match(dyeHex, "^" .. v) then
                            hexProtected = true

                            break
                        end
                    end

                    if not hexProtected then
                        table.insert(targetItems, cosmetic)
                    end
                end
            end
        end
        if action == "Recycle" then
            Library:Notify("Attempting to recycle " .. tostring(#targetItems) .. " items", 5)
            Remotes:WaitForChild("Recycler_Recycle", 1e999):FireServer(targetItems)

            return
        end
        if action == "Gold" then
            Library:Notify("Attempting to sell " .. tostring(#targetItems) .. " items", 5)
            ;(GetSellRemote() or error("Drops_SellItems is missing")):InvokeServer(targetItems)
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
    local settingsRef = Settings
    local _SecondTab2 = SecondTab
    local str = tostring(#HexColorList)
    settingsRef.NumberOfEnteredHexes = _SecondTab2:AddLabel("Number of saved hexes: " .. str:reverse():gsub("...", "%0,", (math.floor((#str - 1) / 3))):reverse())
    Settings.UserEnteredHexes = SecondTab:AddLabel("Saved hexes:\nn/a\n+ (all special hexes)", true)
    SecondTab:AddDivider()
    SecondTab:AddInput("SaveUserHexesInput", {
		Text = "Enter hexes to save",
		Default = "",
		ClearTextOnFocus = false,
		Placeholder = "hexes here",
		Callback = function(hexInput)
        local inGame = InLobby

        if not inGame then
            inGame = InDungeon
        end

        if inGame then
            local hexInputString = tostring(hexInput)
            local lowerHexes = string.lower(hexInputString)

            if lowerHexes == "" or lowerHexes == " " then
                local NumberOfEnteredHexes = Settings.NumberOfEnteredHexes
                local savedHexesString = tostring(#HexColorList)

                NumberOfEnteredHexes:SetText("Number of saved hexes: " .. savedHexesString:reverse():gsub("...", "%0,", (math.floor((#savedHexesString - 1) / 3))):reverse())
                Settings.UserEnteredHexes:SetText("Saved hexes:\nn/a\n+ (all special hexes)")

                return
            end

            local hexNoSpaces = string.gsub(Options.SaveUserHexesInput.Value, ", ", ",")
            local hexNoHash = string.gsub(hexNoSpaces, "#", "")
            local parts = string.split(hexNoHash, ",")
            local NumberOfEnteredHexes = Settings.NumberOfEnteredHexes
            local totalHexesString = tostring(#HexColorList + #parts)

            NumberOfEnteredHexes:SetText("Number of saved hexes: " .. totalHexesString:reverse():gsub("...", "%0,", (math.floor((#totalHexesString - 1) / 3))):reverse())
            Settings.UserEnteredHexes:SetText("Saved hexes:\n<font color='#33FF33'>" .. lowerHexes .. "</font>\n+ (all special hexes)")

            return
        end
    end
	})
    task.wait()
    _G.ScriptStep = "creating dungeon tab"
    DungeonTab = Window:AddTab({
		Name = "Dungeons",
		Icon = "castle",
		Description = "Dungeon automation and nightmare challenge"
	})
    DungeonTabLeft = DungeonTab:AddLeftTabbox("Main")
    FirstTab = DungeonTabLeft:AddTab("Main")
    FirstTab:AddToggle("ReplayMissionToggle", {
		Text = "Auto restart mission",
		Default = false,
		Tooltip = "Only works if turned on before the dungeon ends!"
	}):AddKeyPicker("ReplayMissionKey", {
		Default = "R",
		Text = "Auto restart mission keybind",
		Mode = "Toggle",
		SyncToggleState = true
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
		Callback = function(enabled)
        if InDungeon and enabled then
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
		Callback = function(restartDelay)
        Settings.RestartDungeonDelay = restartDelay
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
		Callback = function(chestDelay)
        Settings.CollectChestsDelay = chestDelay
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
		Callback = function(resetFloor)
        RangedDistance = resetFloor
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
        local selectedCount = 0
        for _, _ in pairs(Options.PrioNmDropdown.Value) do

            selectedCount += 1
        end
        if selectedCount == 0 then
            Settings.PrioNmDCount = nil

            return
        end
        Settings.PrioNmDCount = true
    end
	})
    Settings.PrioritizedNightmareDungeons = {}
    Settings.NMDisplayValues = {}
    for _, v in pairs(DungeonConfigList) do
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
		Callback = function(totalClears)
        if InDungeon then
            Settings.StopAfterTotalNightmare = totalClears
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
		Callback = function(dailyClears)
        if InDungeon then
            Settings.StopAfterDailyNightmare = dailyClears
        end
    end
	})
    task.wait()
    _G.ScriptStep = "creating guild tab"
    GuildTab = Window:AddTab({
		Name = "Guild",
		Icon = "users",
		Description = "Guild points, quests and spy tools"
	})
    GuildTabLeft = GuildTab:AddLeftTabbox("Main")
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
		Callback = function(extraTime)
        Settings.AddedGuildTime = extraTime
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
		Callback = function(incrementDelay)
        Settings.IncrementInfiniteDelay = incrementDelay
    end
	})
    GuildTabRight = GuildTab:AddRightTabbox("Extras")
    FirstTab = GuildTabRight:AddTab("Advanced")
    Settings.TotalGuildPointLabel = FirstTab:AddLabel("Total Guild Points: ?", false)
    FirstTab:AddInput("TotalKillInput", {
		Text = "Stop after X total points",
		Default = "",
		Placeholder = "number here",
		Callback = function(totalPoints)
        if InDungeon then
            Settings.StopAfterTotalPoints = totalPoints
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
		Callback = function(dailyPoints)
        if InDungeon then
            Settings.StopAfterDailyPoints = dailyPoints
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
        local guildTags = {}
        local seenTags = {}

        for _, child in pairs(Players:GetChildren()) do
            local playerGuild = GetGuildTag(child)

            if playerGuild ~= "РІСњРЉ" and not seenTags[playerGuild] then
                table.insert(guildTags, playerGuild)
                seenTags[playerGuild] = true
            end
        end

        Options.GuildNamesDropdown:SetValues(guildTags)
    end
	})
    SecondTab:AddButton({
		Text = "Players points",
		Func = function()
        if not Options.GuildNamesDropdown.Value then
            Settings.SpyOnGuild:SetText("No guild selected")
        end

        local guildCache = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

        if not guildCache or not guildCache.Members then
            Settings.SpyOnGuild:SetText("This guilds data is no longer available")
        end

        table.clear(CopyGuildTable)
        CopyGuildPoints = 0

        local roleColors = {
				Member = "#ffffff",
				Builder = "#58B400",
				Captain = "#009DFF",
				Elite = "#E44AFF",
				Leader = "#FFDB0E"
			}
        local memberList = {}
        local totalPoints = 0

        for _, v in pairs(guildCache.Members) do
            local roleColor = roleColors[v.Role]
            local memberName = v.DisplayName .. " <font size='10'>(" .. tostring(v.UserName) .. ")</font>"
            local Points = v.Points

            totalPoints += tonumber(Points)
            CopyGuildPoints = totalPoints

            local roleColorString = tostring(roleColor)
            local memberNameString = tostring(memberName)
            local pointsString = tostring(Points)

            table.insert(memberList, "<font color='" .. roleColorString .. "'>" .. memberNameString .. "</font> - " .. pointsString:reverse():gsub("...", "%0,", (math.floor((#pointsString - 1) / 3))):reverse())

            local _CopyGuildTable = CopyGuildTable
            local displayNameString = tostring(v.DisplayName)
            local userNameString = tostring(v.UserName)
            local copiedPointsString = tostring(Points)

            table.insert(_CopyGuildTable, displayNameString .. " (" .. userNameString .. ") - " .. copiedPointsString:reverse():gsub("...", "%0,", (math.floor((#copiedPointsString - 1) / 3))):reverse())
        end

        local SpyOnGuild = Settings.SpyOnGuild
        local totalPointsString = tostring(totalPoints)

        SpyOnGuild:SetText("<u>Total guild points: " .. totalPointsString:reverse():gsub("...", "%0,", (math.floor((#totalPointsString - 1) / 3))):reverse() .. "</u>\n" .. tostring(table.concat(memberList, "\n")))
    end
	}):AddButton({
		Text = "Clipboard",
		Func = function()
        if #CopyGuildTable == 0 then
            if not Options.GuildNamesDropdown.Value then
                Settings.SpyOnGuild:SetText("No Guild selected")
            end

            local guildCache = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

            if not guildCache or not guildCache.Members then
                Settings.SpyOnGuild:SetText("Guild data is no longer available")
            end

            local memberList = {}
            local totalPoints = 0

            for _, v in pairs(guildCache.Members) do
                local memberName = v.DisplayName .. " (" .. v.UserName .. ")"
                local Points = v.Points

                totalPoints += tonumber(Points)
                CopyGuildPoints = totalPoints

                local listPointsString = tostring(Points)

                table.insert(memberList, memberName .. " - " .. listPointsString:reverse():gsub("...", "%0,", (math.floor((#listPointsString - 1) / 3))):reverse())
            end

            local setClipboard = setclipboard
            local guildTotalString = tostring(totalPoints)

            setClipboard("Total guild points: " .. guildTotalString:reverse():gsub("...", "%0,", (math.floor((#guildTotalString - 1) / 3))):reverse() .. "\n\n" .. table.concat(memberList, "\n"))

            return
        end

        local _setclipboard = setclipboard
        local copyPointsString = tostring(CopyGuildPoints)

        _setclipboard("Total guild points: " .. copyPointsString:reverse():gsub("...", "%0,", (math.floor((#copyPointsString - 1) / 3))):reverse() .. "\n\n" .. table.concat(CopyGuildTable, "\n"))
    end
	})
    SecondTab:AddButton({
		Text = "Chat logs",
		Func = function()
        if not Options.GuildNamesDropdown.Value then
            Settings.SpyOnGuild:SetText("No guild selected")
        end

        local guildCache = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

        if not guildCache or not guildCache.ChatLog then
            Settings.SpyOnGuild:SetText("This guilds data is no longer available")
        end

        table.clear(CopyGuildChat)

        local chatLines = {}

        for _, v in pairs(guildCache.ChatLog) do
            table.insert(chatLines, v[1])
            table.insert(CopyGuildChat, v[1])
        end

        local SpyOnGuild = Settings.SpyOnGuild
        local chatText = { table.concat(chatLines, "\n") }

        SpyOnGuild:SetText(Unpack(chatText))
    end
	}):AddButton({
		Text = "Clipboard",
		Func = function()
        if #CopyGuildChat == 0 then
            if not Options.GuildNamesDropdown.Value then
                Settings.SpyOnGuild:SetText("No guild selected")
            end

            local guildCache = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

            if not guildCache or not guildCache.ChatLog then
                Settings.SpyOnGuild:SetText("This guilds data is no longer available")
            end

            table.clear(CopyGuildChat)

            local chatLines = {}

            for _, v in pairs(guildCache.ChatLog) do
                table.insert(chatLines, v[1])
                table.insert(CopyGuildChat, v[1])
            end

            setclipboard(table.concat(chatLines, "\n"))

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

        local guildCache = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

        if not guildCache or not guildCache.Description then
            Settings.SpyOnGuild:SetText("This guilds data is no longer available")
        end

        CopyGuildDescription = nil
        Settings.SpyOnGuild:SetText(guildCache.Description)
        CopyGuildDescription = guildCache.Description
    end
	}):AddButton({
		Text = "Clipboard",
		Func = function()
        if not CopyGuildDescription then
            if not Options.GuildNamesDropdown.Value then
                Settings.SpyOnGuild:SetText("No guild selected")
            end

            local guildCache = Remotes:WaitForChild("Guilds_GetCache", math.huge):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

            if not guildCache or not guildCache.Description then
                Settings.SpyOnGuild:SetText("This guilds data is no longer available")
            end

            CopyGuildDescription = nil
            CopyGuildDescription = guildCache.Description
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
		Icon = "shopping-bag",
		Description = "Automated egg and shop purchasers"
	})
    ShopTabLeft = ShopTab:AddLeftTabbox("Shop")
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
		Callback = function(eggKey)
        if eggKey and InLobby or InDungeon then
            Settings.SelectedEggItem = Settings.BuyEggList[eggKey]

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
		Callback = function(hatchDelay)
        if InLobby or InDungeon then
            Settings.HatchDelay = hatchDelay
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
		Callback = function(nightmareItemKey)
        local _Value = Value

        if _Value then
            _Value = InLobby
        end

        if _Value then
            Settings.SelectedNightmareItem = Settings.BuyNightmareItemList[nightmareItemKey]

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
		Callback = function(pvpItemKey)
        if Value and InLobby then
            Settings.SelectedPvpItem = Settings.BuyPVPItemList[pvpItemKey]

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
    ShopTabRight = ShopTab:AddRightTabbox("Extras")
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
		Callback = function(guildItemKey)
        if guildItemKey then
            guildItemKey = InLobby
        end

        if guildItemKey then
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
		Callback = function(eventItemKey)
        if eventItemKey then
            Settings.SelectedEventItem = Settings.BuyEventList[eventItemKey]

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
		Icon = "wrench",
		Description = "Quality of life extras"
	})
    MiscTabLeft = MiscTab:AddLeftTabbox("Main")
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
    MiscTabRight = MiscTab:AddRightTabbox("Extras")
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
            local codeList = {
					"900KLIKES",
					"EASTER26"
				}
            local redeemSeconds = #codeList * 11 - 11

            if #codeList > 1 then
                Library:Notify("It will take " .. redeemSeconds .. " seconds for all codes to be redeemed", redeemSeconds)
            end

            local PromoCodes_RedeemCode = Remotes:WaitForChild("PromoCodes_RedeemCode", math.huge)

            for k, v in pairs(codeList) do
                PromoCodes_RedeemCode:InvokeServer(v)

                if k ~= #codeList then
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
		Callback = function(colorValue)
        if InDungeon or InLobby then
            LocalPlayer:SetAttribute("ClassColor", colorValue)
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
            local webhookPayload = {
					username = "test",
					content = "test" .. WebhookMention
				}
            local DiscordWebhookLink = Settings.DiscordWebhookLink

            if not DiscordWebhookLink and true then
                warn("No webhook link provided")

                return
            end

            local hookCheckEnabled = false
            local _, _ = pcall(function()
                if hookCheckEnabled and HookFunction or hookmetamethod then
                    local scriptCount = 0
                    local ok, _ = pcall(function()
                        for _, v in pairs(getreg()) do
                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                scriptCount += 1
                            end
                        end
                    end)
                    if scriptCount > 2 or scriptCount == 0 then
                        return
                    end
                    if not ok then
                        return
                    end
                    local hooksDetected = false
                    local success = pcall(function()
                        local requestHooked = ishooked and ishooked(request)

                        if not requestHooked then
                            requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                        end

                        if requestHooked then
                            hooksDetected = true

                            return
                        end
                    end)
                    if not success then
                        return
                    end
                    local httpOk, _ = pcall(function()
                        local httpGetHooked = ishooked and ishooked(game.HttpGet)

                        if not httpGetHooked then
                            httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                            if not httpGetHooked then
                                httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                            end
                        end

                        if httpGetHooked then
                            hooksDetected = true

                            return
                        end
                    end)
                    if hooksDetected then
                        return
                    end
                    if not httpOk then
                        return
                    end
                end

                if not HttpRequest then
                    return
                end

                local httpRequestRef = HttpRequest
                local webhookUrl = DiscordWebhookLink
                local webhookHeaders = {
						["Content-Type"] = "application/json"
					}
                local json = HttpService:JSONEncode(webhookPayload)

                httpRequestRef({
						Url = webhookUrl,
						Method = "POST",
						Headers = webhookHeaders,
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
		Icon = "settings",
		Description = "UI settings, keybinds and configs"
	})
    ConfigTabLeft = ConfigTab:AddLeftTabbox("Main")
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
		Callback = function(debugEnabled)
        if debugEnabled then
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
        local targetMob = CurrentTargetMob

        if not targetMob then
            print("PORN: no mob is a target")

            return
        end

        local mobData = Tracking.MobTable[targetMob]
        local debugText = "PORN: current target is " .. targetMob.Name

        if mobData then
            if mobData.Invincible then
                debugText ..= " (invincible)"
            end

            if mobData.IsBlocker then
                debugText ..= " (blocker)"
            end

            if mobData.Priority then
                debugText ..= " (priority)"
            end

            if mobData.NoData then
                debugText ..= " (no data)"
            end

            debugText ..= " Path: " .. tostring(targetMob:GetFullName())
        end

        print(debugText)
    end
	})
    ThirdTab:AddButton({
		Text = "print targets",
		Tooltip = "prints the mobs the script is targeting",
		Func = function()
        local outputText = "PORN current mobs:\n"

        for k, v in pairs(Tracking.MobTable) do
            local targetMob = k
            local lineText = outputText .. tostring(targetMob)

            if v.Invincible then
                lineText ..= " (invincible)"
            end

            if v.IsBlocker then
                lineText ..= " (blocker)"
            end

            if v.Priority then
                lineText ..= " (priority)"
            end

            if v.NoData then
                lineText ..= " (no data)"
            end

            outputText = lineText .. " Path: " .. tostring(targetMob:GetFullName()) .. "\n"
        end

        print(outputText)
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
                local function findBlocker(blockerPart)
                    local HealthProperties = blockerPart:FindFirstChild("HealthProperties")
                    local healthValue = HealthProperties and HealthProperties:FindFirstChild("Health")

                    if not healthValue or healthValue and healthValue.Value == 0 then
                        return
                    end

                    local colliderPart = blockerPart:FindFirstChild("Part") or (blockerPart:FindFirstChild("Base") or (blockerPart:FindFirstChild("hitbox") or blockerPart:FindFirstChild("EasterGiantEgg")))

                    if not colliderPart then
                        return
                    end

                    colliderPart.Name = "Collider"
                    Tracking.MobTable[blockerPart] = {
						IsBlocker = true
					}
                end

                local towerLegs = MissionObjects and MissionObjects:FindFirstChild("TowerLegs")

                if towerLegs then
                    for _, child in pairs(towerLegs:GetChildren()) do
                        findBlocker(child)
                    end
                end

                local spikeCheckpoints = MissionObjects and MissionObjects:FindFirstChild("SpikeCheckpoints")

                if spikeCheckpoints then
                    for _, child in pairs(spikeCheckpoints:GetChildren()) do
                        findBlocker(child)
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
                    local blockerCandidate = Workspace:FindFirstChild(v)

                    if not blockerCandidate then
                        blockerCandidate = MissionObjects

                        if blockerCandidate then
                            blockerCandidate = MissionObjects:FindFirstChild(v) or (MissionObjects:FindFirstChild("TowerLegs") or MissionObjects:FindFirstChild("SpikeCheckpoints"))
                        end
                    end

                    if blockerCandidate then
                        findBlocker(blockerCandidate)
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
                local allowedBossRemotes = {
					Mob_EVENTBOSSCupidZeus_ButtonSmash = true,
					Mob_EVENTBOSSEasterBunny_ChallengeFloorPattern = true,
					Mob_EVENTBOSSEasterBunny_RequestGiantEggChallengeFloorIntro = true,
					Mob_EVENTBOSSEasterBunny_DoGiantEgg = true,
					Mob_EVENTBOSSUndeadVane_ResurrectShake = true
				}

                for _, child in pairs(game.ReplicatedStorage.Remotes:GetChildren()) do
                    if child:IsA("RemoteEvent") and string.find(child.Name, "Mob_") and not allowedBossRemotes[child.Name] then
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
                        local chestsTable = debug.getupvalue(require(Chests).Start, 12)
                        local Chests_OpenChest = Remotes:WaitForChild("Chests_OpenChest", math.huge)

                        while true do
                            for k, _ in pairs(chestsTable) do
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
                            local raidChest = Workspace:FindFirstChild(v)

                            if raidChest and raidChest.Parent then
                                raidChest:PivotTo(CFrame.new(HumanoidRootPart.Position))
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
                    local standOffset = GetPlayerSize() + Spawn.Size.Y / 2
                    local SpawnPosition = Spawn.Position
                    repeat
                        if not CurrentTargetMob and Settings.Autofarm then
                            Collider.CFrame = CFrame.new(SpawnPosition.X, SpawnPosition.Y + standOffset, SpawnPosition.Z)
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
                        local ringStandOffset = GetPlayerSize() + Ring.Size.Y / 2
                        local endTime = time() + 2

                        if not (endTime < time()) then
                        end

                        repeat
                            Collider.CFrame = CFrame.new(RingPosition.X, RingPosition.Y + ringStandOffset, RingPosition.Z)
                            TeleportStandPart()
                            CannonMissionRemotes.CannonChargeComplete:FireServer()
                            task.wait()
                        until endTime < time()

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
        local function PickKillauraTarget()
            local hrpLocal = HumanoidRootPart

            if not hrpLocal then
                return nil
            end

            local hrpPos = hrpLocal.Position
            local best
            local bestDistance = math.huge
            local targetSets = { MobsFolder }
            local dummiesFolder = Workspace:FindFirstChild("TargetDummies")

            if dummiesFolder then
                targetSets[2] = dummiesFolder
            end

            for _, folder in ipairs(targetSets) do
                local children = folder:GetChildren()

                for i = 1, #children do
                    local mob = children[i]
                    local healthProperties = mob:FindFirstChild("HealthProperties")
                    local health

                    if healthProperties then
                        health = healthProperties:FindFirstChild("Health")
                    end

                    if health and health.Value <= 0 then
                        continue
                    end

                    local collider = mob:FindFirstChild("Collider")

                    if not collider then
                        collider = mob.PrimaryPart or mob:FindFirstChild("Part") or mob:FindFirstChild("MeshPart")
                    end

                    if collider then
                        local magnitude = (collider.Position - hrpPos).Magnitude

                        if magnitude < bestDistance then
                            best = mob
                            bestDistance = magnitude
                        end
                    end
                end
            end

            return best
        end
        local function run_aoe_killaura_loop()
            if not Class then
                Library:Notify("CLASS NOT YET SUPPORTED", 10000000000000000)
                return
            end

            local ok, result = pcall(function()
                if Settings.CanRequire then
                    pcall(function()
                        local Actions = require(ReplicatedStorage:WaitForChild("Client", 1e999):WaitForChild("Actions", 1e999))
                        Actions:SetSkillDisabled("Primary", true)
                        Actions:SetSkillDisabled("Skill1", true)
                        Actions:SetSkillDisabled("Skill2", true)
                        Actions:SetSkillDisabled("Skill3", true)
                        Actions:SetSkillDisabled("Ultimate", true)
                    end)
                end

                local CombatRemote = Remotes:WaitForChild("Combat_Attack", 1e999)
                local combatFire = CombatRemote.FireServer
                local Skills = Class.Skills
                local numSkills = #Skills
                local hrp = HumanoidRootPart
                local _findFirstChild = Instance.FindFirstChild
                local _time = time
                local OffsetVec = Vector3.new(0, 3, 0)
                local Heartbeat = (RunService and RunService.Heartbeat) or game:GetService("RunService").Heartbeat
                local targetDummies = Workspace:FindFirstChild("TargetDummies")

                Settings.AoEKillauraActive = true

                local TYPE_RANGED = 1
                local TYPE_MELEE = 2
                local TYPE_SHADOWCHAIN = 3
                local TYPE_TABLEREMOTE = 4
                local TYPE_REMOTE = 5
                local TYPE_GUARDIANREMOTE = 6
                local TYPE_HUNTERREMOTE = 7
                local TYPE_PLAYERPOSREMOTE = 8
                local TYPE_MOBPOSREMOTE = 9
                local TYPE_CFRAMEREMOTE = 10
                local TYPE_PLAYERREMOTE = 11
                local TYPE_STARBREAKER = 12

                local typeMap = {
                    Ranged = TYPE_RANGED,
                    Melee = TYPE_MELEE,
                    ShadowChain = TYPE_SHADOWCHAIN,
                    TableRemote = TYPE_TABLEREMOTE,
                    Remote = TYPE_REMOTE,
                    GuardianRemote = TYPE_GUARDIANREMOTE,
                    HunterRemote = TYPE_HUNTERREMOTE,
                    PlayerPositionRemote = TYPE_PLAYERPOSREMOTE,
                    MobPositionRemote = TYPE_MOBPOSREMOTE,
                    CFrameRemote = TYPE_CFRAMEREMOTE,
                    PlayerRemote = TYPE_PLAYERREMOTE,
                    StarbreakerWaves = TYPE_STARBREAKER,
                }

                for i = 1, numSkills do
                    local s = Skills[i]
                    s._typeID = typeMap[s.Type] or 0
                    s._cachedCD = s.Cooldown or 0
                end

                local handlers = {
                    [TYPE_RANGED] = function(skill, aimPos, _, _, isRanged)
                        if isRanged then
                            aimPos = aimPos - OffsetVec
                        end

                        combatFire(CombatRemote, skill, aimPos, nil, 67)
                    end,
                    [TYPE_MELEE] = function(skill, aimPos, hrpPos)
                        combatFire(CombatRemote, skill, hrpPos, (aimPos - hrpPos).Unit, 67)
                    end,
                    [TYPE_SHADOWCHAIN] = function(skill, _, _, _, _, mobs)
                        local first = mobs[1]
                        skill:FireServer(first, mobs[2] or first, mobs[3] or first, mobs[4] or first, mobs[5] or first)
                    end,
                    [TYPE_TABLEREMOTE] = function(skill, _, _, _, _, mobs)
                        for i = 1, #mobs do
                            skill:FireServer(mobs[i])
                        end
                    end,
                    [TYPE_REMOTE] = function(skill)
                        skill:FireServer()
                    end,
                    [TYPE_GUARDIANREMOTE] = function(skill, _, hrpPos)
                        skill:FireServer(1, hrpPos)
                    end,
                    [TYPE_HUNTERREMOTE] = function(skill, _, hrpPos)
                        skill:FireServer(hrpPos, 50)
                    end,
                    [TYPE_PLAYERPOSREMOTE] = function(skill, _, hrpPos)
                        skill:FireServer(hrpPos)
                    end,
                    [TYPE_MOBPOSREMOTE] = function(skill, aimPos)
                        skill:FireServer(aimPos)
                    end,
                    [TYPE_CFRAMEREMOTE] = function(skill, _, _, hrpCFrame)
                        skill:FireServer(hrpCFrame)
                    end,
                    [TYPE_PLAYERREMOTE] = function(skill)
                        skill:FireServer(LocalPlayer)
                    end,
                    [TYPE_STARBREAKER] = function()
                    end,
                }

                local starbreak_hits = {}
                for i = 1, 5 do
                    for j = 1, 10 do
                        starbreak_hits[#starbreak_hits + 1] = "StarbreakerWaveSwing" .. i .. "Hit" .. j
                    end
                end
                local NUM_STARBREAK_HITS = #starbreak_hits
                local isRanged = Settings.IsRanged

                local candidates = {}
                local mobs = {}
                local mobPositions = {}
                local passCounter = 0

                while Settings.AoEKillauraActive do
                    table.clear(candidates)
                    table.clear(mobs)
                    table.clear(mobPositions)

                    for _, mob in ipairs(MobsFolder:GetChildren()) do
                        table.insert(candidates, mob)
                    end

                    if targetDummies then
                        for _, mob in ipairs(targetDummies:GetChildren()) do
                            table.insert(candidates, mob)
                        end
                    end

                    local hrpPos = hrp.Position
                    local count = 0

                    for i = 1, #candidates do
                        local mob = candidates[i]
                        local healthProperties = _findFirstChild(mob, "HealthProperties")
                        local health = healthProperties and _findFirstChild(healthProperties, "Health")

                        if health and health.Value <= 0 then
                            continue
                        end

                        local collider = _findFirstChild(mob, "Collider")

                        if not collider then
                            collider = mob.PrimaryPart or _findFirstChild(mob, "Part") or _findFirstChild(mob, "MeshPart")
                        end

                        if collider then
                            local magnitude = (collider.Position - hrpPos).Magnitude

                            if magnitude < 50 then
                                count = count + 1
                                mobs[count] = mob
                                mobPositions[count] = collider.Position
                            end
                        end
                    end

                    if count == 0 then
                        Heartbeat:Wait()
                        continue
                    end

                    passCounter = passCounter + 1

                    local now = _time()
                    local hrpCFrame = hrp.CFrame

                    for i = 1, numSkills do
                        local s = Skills[i]

                        if now - (s.LastUsed or 0) >= (s._cachedCD or 0) then
                            local aimPos = mobPositions[((i - 1 + passCounter) % count) + 1]

                            if not aimPos then
                                aimPos = hrpPos
                            end

                            local handler = handlers[s._typeID]

                            if handler then
                                if s._typeID == TYPE_STARBREAKER then
                                    local Status = Character and Character:FindFirstChild("Status")

                                    if Status and Status:FindFirstChild("Starforge") then
                                        local distUnit = (aimPos - hrpPos).Unit

                                        for k = 1, NUM_STARBREAK_HITS do
                                            combatFire(CombatRemote, starbreak_hits[k], hrpPos, distUnit, 67)
                                        end
                                    end
                                else
                                    handler(s.Skill, aimPos, hrpPos, hrpCFrame, isRanged, mobs)
                                end

                                s.LastUsed = now
                            else
                                HandleError("AOE KILLAURA ATTACK TYPE", s.Type .. " isn't a valid type of attack")
                                break
                            end
                        end
                    end

                    Heartbeat:Wait()
                end
            end)

            if not ok then
                HandleError("AOE KILLAURA", tostring(result), "Class: " .. Settings.PlayerClass)
            end
        end
        local function run_fast_killaura_loop()
            if not Class then
                Library:Notify("CLASS NOT YET SUPPORTED", 10000000000000000)
                return
            end

            local ok, result = pcall(function()
                if Settings.CanRequire then
                    pcall(function()
                        local Actions = require(ReplicatedStorage:WaitForChild("Client", 1e999):WaitForChild("Actions", 1e999))
                        Actions:SetSkillDisabled("Primary", true)
                        Actions:SetSkillDisabled("Skill1", true)
                        Actions:SetSkillDisabled("Skill2", true)
                        Actions:SetSkillDisabled("Skill3", true)
                        Actions:SetSkillDisabled("Ultimate", true)
                    end)
                end

                -- ===== AGGRESSIVE PRE-CACHING =====
                local CombatRemote = Remotes:WaitForChild("Combat_Attack", 1e999)
                local combatFire = CombatRemote.FireServer
                local Skills = Class.Skills
                local numSkills = #Skills
                local hrp = HumanoidRootPart
                local hrpPosition = hrp.Position
                local _findFirstChild = Instance.FindFirstChild
                local _getClosest = function(colliderPart, position)
                    local ok, res = pcall(colliderPart.GetClosestPointOnSurface, colliderPart, position)
                    if ok then
                        return res
                    end

                    return position
                end
                local _time = time
                local OffsetVec = Vector3.new(0, 3, 0)
                local RunService_Heartbeat = (RunService and RunService.Heartbeat) or game:GetService("RunService").Heartbeat

                Settings.FastKillauraActive = true

                -- ===== Numeric type IDs for integer-keyed dispatch =====
                local TYPE_RANGED          = 1
                local TYPE_MELEE           = 2
                local TYPE_SHADOWCHAIN     = 3
                local TYPE_TABLEREMOTE     = 4
                local TYPE_REMOTE          = 5
                local TYPE_GUARDIANREMOTE   = 6
                local TYPE_HUNTERREMOTE    = 7
                local TYPE_PLAYERPOSREMOTE = 8
                local TYPE_MOBPOSREMOTE    = 9
                local TYPE_CFRAMEREMOTE    = 10
                local TYPE_PLAYERREMOTE    = 11
                local TYPE_STARBREAKER     = 12

                -- ===== Pre-compute type map =====
                local typeMap = {
                    Ranged = TYPE_RANGED,
                    Melee = TYPE_MELEE,
                    ShadowChain = TYPE_SHADOWCHAIN,
                    TableRemote = TYPE_TABLEREMOTE,
                    Remote = TYPE_REMOTE,
                    GuardianRemote = TYPE_GUARDIANREMOTE,
                    HunterRemote = TYPE_HUNTERREMOTE,
                    PlayerPositionRemote = TYPE_PLAYERPOSREMOTE,
                    MobPositionRemote = TYPE_MOBPOSREMOTE,
                    CFrameRemote = TYPE_CFRAMEREMOTE,
                    PlayerRemote = TYPE_PLAYERREMOTE,
                    StarbreakerWaves = TYPE_STARBREAKER,
                }

                -- ===== Pre-assign type IDs + cooldowns to skills once =====
                for i = 1, numSkills do
                    local s = Skills[i]
                    s._typeID = typeMap[s.Type] or 0
                    s._cachedCD = s.Cooldown or 0
                end

                -- ===== Pre-allocate handler array =====
                local handlers = {
                    [TYPE_RANGED] = function(skill, _, closest, isRanged)
                        combatFire(CombatRemote, skill, isRanged and (closest - OffsetVec) or closest, nil, 67)
                    end,
                    [TYPE_MELEE] = function(skill, _, closest, hrpPos)
                        combatFire(CombatRemote, skill, hrpPos, (closest - hrpPos).Unit, 67)
                    end,
                    [TYPE_SHADOWCHAIN] = function(skill, mob)
                        skill:FireServer(mob, mob, mob, mob, mob)
                    end,
                    [TYPE_TABLEREMOTE] = function(skill, mob)
                        skill:FireServer(mob)
                    end,
                    [TYPE_REMOTE] = function(skill)
                        skill:FireServer()
                    end,
                    [TYPE_GUARDIANREMOTE] = function(skill, _, _, hrpPos)
                        skill:FireServer(1, hrpPos)
                    end,
                    [TYPE_HUNTERREMOTE] = function(skill, _, _, hrpPos)
                        skill:FireServer(hrpPos, 50)
                    end,
                    [TYPE_PLAYERPOSREMOTE] = function(skill, _, _, hrpPos)
                        skill:FireServer(hrpPos)
                    end,
                    [TYPE_MOBPOSREMOTE] = function(skill, _, closest)
                        skill:FireServer(closest)
                    end,
                    [TYPE_CFRAMEREMOTE] = function(skill, _, _, _, hrpCFrame)
                        skill:FireServer(hrpCFrame)
                    end,
                    [TYPE_PLAYERREMOTE] = function(skill)
                        skill:FireServer(LocalPlayer)
                    end,
                    [TYPE_STARBREAKER] = function(_, _, _, _, _, _, CharacterRef)
                        -- Starbreaker handled inline in loop for performance
                    end,
                }

                -- Pre-compute Starbreaker strings once
                local starbreak_hits = {}
                for i = 1, 5 do
                    for j = 1, 10 do
                        starbreak_hits[#starbreak_hits + 1] = "StarbreakerWaveSwing" .. i .. "Hit" .. j
                    end
                end
                local NUM_STARBREAK_HITS = #starbreak_hits

                -- Cache IsRanged outside the hot loop (only check on toggle)
                local isRanged = Settings.IsRanged

                -- Zero threshold = no cooldown reduction (max speed)
                local zeroThreshold = 0

                -- ===== MAIN HOT LOOP =====
                local target
                local collider
                local hrpPos
                local closest
                local sep
                local now
                local hrpCFrame
                local cd

                while Settings.FastKillauraActive do
                    target = CurrentTargetMob

                    if not (target and target.Parent) then
                        target = PickKillauraTarget()
                        CurrentTargetMob = target
                    end

                    if target then
                        collider = _findFirstChild(target, "Collider")

                        if not collider then
                            collider = target.PrimaryPart or _findFirstChild(target, "Part") or _findFirstChild(target, "MeshPart")
                        end

                        if collider and hrp and hrp.Parent then
                            hrpPos = hrp.Position
                            closest = _getClosest(collider, hrpPos)
                            sep = (hrpPos - closest).Magnitude
                            now = _time()
                            hrpCFrame = hrp.CFrame
                            for i = 1, numSkills do
                                local s = Skills[i]
                                cd = s._cachedCD
                                if now - (s.LastUsed or 0) >= cd + zeroThreshold and s.Distance >= sep then
                                    local handler = handlers[s._typeID]
                                    if handler then
                                        if s._typeID == TYPE_STARBREAKER then
                                            local Status = CharacterRef and CharacterRef:FindFirstChild("Status")
                                            if Status and Status:FindFirstChild("Starforge") then
                                                local distUnit = (closest - hrpPos).Unit
                                                for k = 1, NUM_STARBREAK_HITS do
                                                    combatFire(CombatRemote, starbreak_hits[k], hrpPos, distUnit, 67)
                                                end
                                            end
                                        else
                                            handler(s.Skill, target, closest, hrpPos, hrpCFrame, isRanged)
                                        end
                                        s.LastUsed = now
                                    else
                                        HandleError("KILLAURA ATTACK TYPE", s.Type .. " isn't a valid type of attack")
                                        return
                                    end
                                end
                            end
                        else
                            RunService_Heartbeat:Wait()
                        end
                    else
                        RunService_Heartbeat:Wait()
                    end
                end
            end)

            if not ok then
                HandleError("FAST KILLAURA", tostring(result), "Class: " .. Settings.PlayerClass)
            end
        end

        Toggles.KillauraToggle:OnChanged(function(killauraEnabled)
            if killauraEnabled then
                if not Class then
                    Library:Notify("CLASS NOT YET SUPPORTED", 10000000000000000)

                    return
                end

                Settings.Killaura = true

                local ok, result = pcall(function()
                    if LocalPlayer then
                        Connections.ConnectClass = LocalPlayer:GetAttributeChangedSignal("Class"):Connect(function()
                            Class = GetPlayerClass(true)
                        end)
                    end

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
local skillAttackHandlers = {
					Ranged = function(skill, attackPos)
                        if Settings.IsRanged then
                            attackPos -= vector3
                        end

                        Combat_Attack2:FireServer(skill, attackPos, nil, 67)
                    end,
					Melee = function(skill, targetClosest)
                        Combat_Attack2:FireServer(skill, HumanoidRootPart.Position, (targetClosest - HumanoidRootPart.Position).Unit, 67)
                    end,
					ShadowChain = function(skillRemote)
                        skillRemote:FireServer({
								CurrentTargetMob,
								CurrentTargetMob,
								CurrentTargetMob,
								CurrentTargetMob,
								CurrentTargetMob
							})
                    end,
					TableRemote = function(skillRemote)
                        skillRemote:FireServer(CurrentTargetMob)
                    end,
					Remote = function(skillRemote)
                        skillRemote:FireServer()
                    end,
					GuardianRemote = function(skillRemote)
                        skillRemote:FireServer(1, HumanoidRootPart.Position)
                    end,
					HunterRemote = function(skillRemote)
                        skillRemote:FireServer(HumanoidRootPart.Position, 50)
                    end,
					PlayerPositionRemote = function(skillRemote)
                        skillRemote:FireServer(HumanoidRootPart.Position)
                    end,
					MobPositionRemote = function(skillRemote, attackPos)
                        skillRemote:FireServer(attackPos)
                    end,
					CFrameRemote = function(skillRemote)
                        skillRemote:FireServer(HumanoidRootPart.CFrame)
                    end,
					PlayerRemote = function(skillRemote)
                        skillRemote:FireServer(LocalPlayer)
                    end,
					StarbreakerWaves = function(_, starbreakerPos)
                        task.spawn(function()
                            if CanAttack then
                                local Status = Character:FindFirstChild("Status")

                                if Status and Status:FindFirstChild("Starforge") then
                                    for i = 1, 5 do
                                        for j = 1, 10 do
                                            Combat_Attack2:FireServer("StarbreakerWaveSwing" .. tostring(i) .. "Hit" .. tostring(j), HumanoidRootPart.Position, (starbreakerPos - HumanoidRootPart.Position).Unit, 67)
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

                            local attackHandler = skillAttackHandlers[vType]

                            if not attackHandler then
                                Settings.Killaura = nil
                                HandleError("KILLAURA ATTACK TYPE", tostring(vType) .. " isn't a valid type of attack")

                                break
                            end

                            attackHandler(v.Skill, ClosestPointOnSurface3)
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
        Toggles.FastKillauraToggle:OnChanged(function(enabled)
            if enabled then
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
        Toggles.AoEKillauraToggle:OnChanged(function(enabled)
            if enabled then
                Settings.AoEKillauraActive = true
                Toggles.KillauraToggle:SetDisabled(true)
                Toggles.KillauraToggle:SetValue(false)
                Toggles.FastKillauraToggle:SetDisabled(true)
                Toggles.FastKillauraToggle:SetValue(false)

                if not Settings.AoEKillauraThread then
                    Settings.AoEKillauraThread = task.spawn(run_aoe_killaura_loop)
                end

                return
            end

            Toggles.KillauraToggle:SetDisabled(false)
            Toggles.FastKillauraToggle:SetDisabled(false)
            Settings.AoEKillauraActive = nil
            Settings.AoEKillauraThread = nil
        end)
        Toggles.SafeKillauraToggle:OnChanged(function(enabled)
            local CanRequire = Settings.CanRequire

            if CanRequire then
                CanRequire = HookFunction and (RestoreFunction and (NewCClosure and IsHooked))
            end

            if CanRequire then
                local ok, result = pcall(function()
                    local Actions = require(ReplicatedStorage.Client.Actions)

                    if enabled then
                        Settings.SafeKillaura = true
                        HookFunction(Actions.IsBusy, NewCClosure(function(...)
                            return false
                        end))
                        local skillIndex = 1
                        for _, skillName in pairs({
							"Primary",
							"Skill1",
							"Skill2",
							"Skill3",
							"Ultimate"
						}) do

                            local capturedSkillName = skillName

                            if skillIndex == 1 then
                                task.spawn(function()
                                    if not Settings.SafeKillaura then
                                    end

                                    repeat
                                        if CurrentTargetMob then
                                            Actions:UseSkill(capturedSkillName)
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
                                            Actions:UseSkill(capturedSkillName)
                                        end

                                        task.wait(0.2)
                                    until not Settings.SafeKillaura and not MissionDone
                                end)
                            end

                            skillIndex += 1
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
                    if enabled then
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

        Toggles.AutoProgressToggle:OnChanged(function(enabled)
            if enabled then
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

                                    local targetCollider = IsMobAlive and IsMobAlive:FindFirstChild("Collider")

                                    if targetCollider then
                                        local orbitRadius = MeleeMinDist + targetCollider.Size.X / 2

                                        DamageCheckValue += MaxDamageReduction / orbitRadius
                                        HumanoidRootPart.CFrame = CFrame.new(targetCollider.Position) * CFrame.Angles(0, math.rad(DamageCheckValue), 0) * CFrame.new(orbitRadius, MeleeMaxDist, 0)
                                        HumanoidRootPart.CFrame = CFrame.new(HumanoidRootPart.Position, Vector3.new(targetCollider.Position.X, HumanoidRootPart.Position.Y, targetCollider.Position.Z))
                                        TeleportStandPart()

                                        if not IsMobAlive:GetAttribute("T") then
                                            local targetMob = IsMobAlive
                                            local timeTable = { time() }

                                            targetMob:SetAttribute("T", Unpack(timeTable))
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

                        for partKey, partInfo in pairs(PartsList) do

                            if partKey and partKey.Parent then
                                partKey.Size = Vector3.new(1, 1, 1)
                            end
                        end
                        while Settings.Autofarm do
                            for k, v in pairs(PartsList) do
                                local partInfo = v

                                if partInfo.DontTeleport then
                                elseif partInfo.TouchPart.Parent then
                                    task.spawn(function()
                                        k.Position = HumanoidRootPart.Position
                                        task.wait(0.1)
                                        k.Position = partInfo.OriginalLocation
                                    end)
                                elseif not partInfo.Regenerates then
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
                                    local shieldModel = Workspace:FindFirstChild(v)

                                    if shieldModel then
                                        if shieldModel.Name == "ShieldEgg" or shieldModel.Name == "EggShield" then
                                            local ringPart = shieldModel:WaitForChild("ShieldEgg", 1) or shieldModel:WaitForChild("Blade", 1)

                                            if ringPart then
                                                ringPart.Name = "Ring"
                                            end
                                        end

                                        local Ring = shieldModel:WaitForChild("Ring", 5)

                                        if Ring and Ring.Parent then
                                            local standOffset = GetPlayerSize() + Ring.Size.Y / 2
                                            local shieldStandPosition = Vector3.new(Ring.Position.X, Ring.Position.Y + standOffset, Ring.Position.Z)

                                            while shieldModel.Parent do
                                                HumanoidRootPart.CFrame = CFrame.new(shieldStandPosition)
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
                local restoredPart = k

                if restoredPart and restoredPart.Parent then
                    print("returning size to", restoredPart)
                    restoredPart.Size = v.OriginalSize
                    restoredPart.CanCollide = v.OriginalCollision
                    restoredPart.Position = v.OriginalLocation
                end
            end

            Settings.Autofarm = nil
        end)
    end
    if InLobby or InDungeon then
        Toggles.CollectDropToggle:OnChanged(function(enabled)
            if PlaceIdStr == "6510868181" then
                return
            end

            if enabled then
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

                Connections.CollectDrops = Drops_CoinEvent.OnClientEvent:Connect(function(dropData)
                    Drops_CoinEvent:FireServer(dropData.id)
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
        Toggles.PetKillauraToggle:OnChanged(function(petKillauraEnabled)
            if petKillauraEnabled then
                Settings.PetKillaura = true

                if Settings.CanRequire then
                    local success, result = pcall(function()
                        local PetSkills_UseSkill = Remotes:WaitForChild("PetSkills_UseSkill", 1e999)
                        local petData = GetPlayerPet()

                        Connections.ConnectCharacter = Character.ChildAdded:Connect(function(child)
                            if child.Name == "PetData" then
                                petData = GetPlayerPet()
                            end
                        end)

                        local Combat_Attack = Remotes:WaitForChild("Combat_Attack", 1e999)
                        local petAttackHandlers = {
							Ranged = function(skill, attackPos)
                            Combat_Attack:FireServer(skill, attackPos, nil, 67)
                        end,
							Self = function()
                            PetSkills_UseSkill:FireServer(Character, HumanoidRootPart.Position)
                        end,
							MobPosition = function(_, attackPos)
                            PetSkills_UseSkill:FireServer(Character, attackPos)
                        end
						}

                        while Settings.PetKillaura and not MissionDone do
                            for _, v in pairs(petData.Skills) do
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

                                local petAttackHandler = petAttackHandlers[vType]

                                if not petAttackHandler then
                                    HandleError("PET ATTACK TYPE", tostring(vType) .. " isn't a valid type of attack")

                                    break
                                end

                                petAttackHandler(v.Skill, ClosestPointOnSurface4)
                                v.LastUsed = tick()

                                if CombatActive then
                                    task.wait(CombatActive)
                                end
                            end

                            task.wait(0.1)
                        end
                    end)
                    if not success then
                        local petDataRef = Character and Character:FindFirstChild("PetData")

                        if petDataRef and (PetAttackTable and Settings.CanRequire) then
                            task.wait(0.5)

                            local lib = require(Pets)
                            local ItemName = petDataRef:GetAttribute("ItemName")
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
        Toggles.RestartStuckToggle:OnChanged(function(enabled)
            if enabled then
                local ok, result = pcall(function()
                    Tracking.LoggedDifficulty = GetDifficulty()
                    Settings.CheckForRejoin = true
                    RejoinLastDungeon(false)

                    local outOfCombatTimer = 0
                    local _ = Settings.CheckForRejoin

                    repeat
                        task.wait(1)

                        local HealthProperties = Character:FindFirstChild("HealthProperties", true)
                        local outOfCombatValue = HealthProperties and HealthProperties:FindFirstChild("OutOfCombat", true)

                        if HealthProperties and outOfCombatValue then
                            outOfCombatTimer = outOfCombatValue.Value ~= 0 and 0 or outOfCombatTimer + 1
                        end

                        if outOfCombatTimer >= MaxPingTolerance then
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
        Toggles.DodgeLethalToggle:OnChanged(function(dodgeEnabled)
            if dodgeEnabled then
                dodgeEnabled = Class.Distance == "Melee"
            end

            if dodgeEnabled then
                Settings.DodgeAttacks = true

                local ok, result = pcall(function()
                    local downwardIceConfig = {
						AttackLength = 5.9,
						Delay = 1.5,
						AttackName = "downward ice"
					}
                    local jumpConfig = {
						AttackLength = 2.5,
						Delay = 2,
						AttackName = "jump"
					}
                    local howlConfig = {
						AttackLength = 4.2,
						Delay = 3.5,
						AttackName = "howl"
					}
                    local darkOrbConfig = {
						AttackLength = 8.2,
						Delay = 7.5,
						AttackName = "dark orb"
					}
                    local wingFlapConfig = {
						AttackLength = 6,
						Delay = 1,
						AttackName = "wing flap"
					}
                    local flybyConfig = {
						AttackLength = 15,
						Delay = 0,
						AttackName = "flyby"
					}
                    local longFlybyConfig = {
						AttackLength = 23,
						Delay = 0,
						AttackName = "long flyby"
					}
                    local eggBombConfig = {
						AttackLength = 10,
						Delay = 3,
						AttackName = "egg bombs"
					}
                    local slamJumpConfig = {
						AttackLength = 5,
						Delay = 1,
						AttackName = "slam jump"
					}
                    local prismSlamConfig = {
						AttackLength = 3,
						Delay = 2,
						AttackName = "prism slam"
					}
                    local attackConfigs = {
						DownwardIceFire = downwardIceConfig,
						JumpAttack = jumpConfig,
						Howl = howlConfig,
						DarkOrbAttack = darkOrbConfig,
						WingFlap = wingFlapConfig,
						Flyby = flybyConfig,
						FlybyX3 = longFlybyConfig,
						EggBomb = eggBombConfig,
						SlamJump = slamJumpConfig,
						PrismSlam = prismSlamConfig
					}

                    while Settings.DodgeAttacks and not MissionDone do
                        if CurrentTargetMob then
                            local MobProperties = CurrentTargetMob:FindFirstChild("MobProperties")

                            if MobProperties then
                                local currentAttackValue = MobProperties and MobProperties:FindFirstChild("CurrentAttack")

                                if currentAttackValue and currentAttackValue.Value ~= "" then
                                    local attackConfig = attackConfigs[currentAttackValue.Value] or false

                                    if attackConfig then
                                        DodgeCurrentAttack(attackConfig.Delay, attackConfig.AttackLength - attackConfig.Delay, attackConfig.AttackName)
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
                            local hazardModel = Workspace:FindFirstChild(v)

                            if not hazardModel then
                                continue
                            end

                            if Workspace:FindFirstChild("AnubisRing") or Workspace:FindFirstChild("AnubisRingPurple") then
                                break
                            end

                            local vaneBoss = MobsFolder:FindFirstChild("VaneAetherDragon") or MobsFolder:FindFirstChild("EVENTBOSSVane")
                            local safePosition = Vector3.new(HumanoidRootPart.Position.X + 1000, HumanoidRootPart.Position.Y + 1000, HumanoidRootPart.Position.Z)

                            if vaneBoss then
                                safePosition = Vector3.new(HumanoidRootPart.Position.X, HumanoidRootPart.Position.Y + 1000, HumanoidRootPart.Position.Z)
                            end

                            if Settings.DodgeAttacks then
                            end

                            while true do
                                HumanoidRootPart.CFrame = CFrame.new(safePosition)
                                TeleportStandPart()

                                if not hazardModel.Parent then
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
        Toggles.AutoPrestigeToggle:OnChanged(function(prestiging)
            if prestiging and (Tracking.PlayerLevel >= 135 and Tracking.PlayerPrestige < 4) then
                local _, _ = pcall(function()
                    MissionDone = true
                    Library:Notify("Prestiging...", 5)
                    task.wait(5)

                    local prestigeFileName = LocalPlayer.Name .. "_Prestige.txt"
                    local checkFile = isfile
                    local prestigeFilePath = "PORN/" .. prestigeFileName

                    if checkFile(prestigeFilePath) and (PlaceIdStr == "4310463616" and not InDungeon) then
                        delfile(prestigeFilePath)
                        Remotes:WaitForChild("Profile_Prestige"):FireServer()
                        task.wait(1)
                        ReplayDungeon(1, 5)

                        return
                    end

                    if not isfile(prestigeFilePath) then
                        writefile(prestigeFilePath, "haha txt file")
                    end

                    Remotes:WaitForChild("Teleport_TeleportToHub", math.huge):FireServer(13)
                end)
            end
        end)
    end
    task.wait()
    _G.ScriptStep = "event stuff"
    if InDungeon then
        Toggles.InstakillToggle:OnChanged(function(instakillEnabled)
            if not IsEventDungeon then
                return
            end

            Settings.InstakillOn = instakillEnabled

            if instakillEnabled then
                task.wait(0.5)

                local instakillTimeout = 15

                if Options.InstakillDropdown.Value ~= "Normal method" then
                    instakillTimeout = 25
                end

                if Tracking.LoggedDifficulty == 6 then
                    instakillTimeout = 35
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
                    task.wait(instakillTimeout)

                    if MissionDone or not Settings.InstakillBoss then
                        return
                    end

                    RestartDungeon(true)
                end)
                task.spawn(function()
                    if Options.InstakillDropdown.Value ~= "Normal method" then
                        local dragonCollider
                        local bossCollider = if Tracking.LoggedDifficulty == 6 then MobsFolder:WaitForChild("EVENTBOSSUndeadVane", 1e999):WaitForChild("Collider", math.huge) else MobsFolder:WaitForChild("EVENTBOSSVane", 1e999):WaitForChild("Collider", 1e999)
                        Remotes:WaitForChild("Skillset_DualWielder_AttackBuff", math.huge):FireServer()
                        Remotes:WaitForChild("Skillset_Guardian_AggroDraw", math.huge):FireServer()
                        local standOffset = GetPlayerSize() + bossCollider.Size.Y / 2 + 8
                        HumanoidRootPart.CanCollide = false
                        while Settings.InstakillBoss and not MissionDone do
                            local standPosition = Vector3.new(bossCollider.Position.X, bossCollider.Position.Y + standOffset, bossCollider.Position.Z)

                            HumanoidRootPart:PivotTo(CFrame.new(standPosition))
                            RunService.Heartbeat:Wait()

                            if not bossCollider.Parent then
                                break
                            end
                        end
                        HumanoidRootPart.Velocity = Vector3.new()
                        if Tracking.LoggedDifficulty == 5 then
                            dragonCollider = MobsFolder:WaitForChild("BOSSDarkriseDarkDragon", 1e999):WaitForChild("Collider", math.huge)
                        end
                        if dragonCollider then
                            local dragonStandOffset = GetPlayerSize() + dragonCollider.Size.Y / 2 + 8

                            while Settings.InstakillBoss and not MissionDone do
                                local standPosition = Vector3.new(bossCollider.Position.X, bossCollider.Position.Y + dragonStandOffset, bossCollider.Position.Z)

                                HumanoidRootPart:PivotTo(CFrame.new(standPosition))
                                RunService.Heartbeat:Wait()
                            end

                            HumanoidRootPart.Velocity = Vector3.new()

                            return
                        end
                    else
                        local BossSpawn = MissionObjects:WaitForChild("BossSpawn", 1e999)
                        local standPosition = Vector3.new(BossSpawn.Position.X, BossSpawn.Position.Y + 13, BossSpawn.Position.Z)

                        HumanoidRootPart.CanCollide = false

                        while Settings.InstakillBoss and not MissionDone do
                            HumanoidRootPart:PivotTo(CFrame.new(standPosition))
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
                    local velocityOffset = 0.1

                    RunService.Heartbeat:Wait()

                    local rootPart = HumanoidRootPart
                    local velocity = rootPart.Velocity

                    rootPart.Velocity = velocity * 10000 + Vector3.new(0, 100000, 0)
                    RunService.RenderStepped:Wait()

                    if HumanoidRootPart then
                        rootPart.Velocity = velocity
                    end

                    RunService.Stepped:Wait()

                    if HumanoidRootPart then
                        rootPart.Velocity = velocity + Vector3.new(0, velocityOffset, 0)

                        local _ = velocityOffset * -1
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
        Toggles.CollectBuffToggle:OnChanged(function(enabled)
            if enabled then
                Settings.CollectBuffs = true
                PlayerStandPart.CanCollide = true

                while Settings.CollectBuffs and not MissionDone do
                    if Settings.SelectedOrbs then
                        for _, v in pairs(Settings.SelectedOrbs) do
                            if v then
                                local orbModel = Workspace:FindFirstChild(v)

                                if orbModel then
                                    TeleportToOrb(orbModel)
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
        Options.EventBossDropdown:OnChanged(function(bossKey)
            if bossKey then
                local LeaderboardHookup_GetScore = Remotes:WaitForChild("LeaderboardHookup_GetScore", 1e999)
                local year = os.date("*t").year
                local eventTagString = tostring(Settings.EventBossList[bossKey].EventTag .. year)
                local scoreData = LeaderboardHookup_GetScore:InvokeServer(eventTagString, 1) or LeaderboardHookup_GetScore:InvokeServer(eventTagString, 5)

                if not scoreData then
                    Settings.TotalKillLabel:SetText("Total Kills: no kill data")
                    Settings.DailyKillLabel:SetText("Daily Kills: no kill data")

                    return
                end

                Settings.SelectedEventBoss = bossKey
                Settings.EventBossDataTable = scoreData

                local totalKills = Settings.EventBossDataTable[1]

                tonumber(Settings.StopAfterTotalKills)

                local dailyKills = Settings.EventBossDataTable[2]

                tonumber(Settings.StopAfterDailyKills)

                local TotalKillLabel = Settings.TotalKillLabel
                local totalKillsString = tostring(totalKills)

                TotalKillLabel:SetText("Total Kills: " .. totalKillsString:reverse():gsub("...", "%0,", (math.floor((#totalKillsString - 1) / 3))):reverse())

                local DailyKillLabel = Settings.DailyKillLabel
                local dailyKillsString = tostring(dailyKills)

                DailyKillLabel:SetText("Daily Kills: " .. dailyKillsString:reverse():gsub("...", "%0,", (math.floor((#dailyKillsString - 1) / 3))):reverse())

                return
            end

            Settings.TotalKillLabel:SetText("Total Kills: no boss selected")
            Settings.DailyKillLabel:SetText("Daily Kills: no boss selected")
        end)
        Toggles.AutoClaimBattlepass:OnChanged(function(enabled)
            if enabled then
                if Settings.CanRequire then
                    local lib = require(Battlepass)
                    local Battlepass_RedeemedItem = Remotes:WaitForChild("Battlepass_RedeemedItem", math.huge)
                    local Battlepass_RedeemItem = Remotes:WaitForChild("Battlepass_RedeemItem", math.huge)
                    local noPremium
                    local lastPremiumTier
                    local freeClaimed = false
                    local lastFreeTier = -1
                    if not Remotes:WaitForChild("Battlepass_HasPremium", 1e999):InvokeServer() then
                        noPremium = true
                    end
                    local function redeemTier(itemTier, isPremium)
                        local deadline = time() + 3

                        if not isPremium then
                            Battlepass_RedeemedItem:InvokeServer(itemTier)

                            repeat
                                if deadline < time() then
                                    return
                                end

                                Battlepass_RedeemItem:FireServer(itemTier)
                                task.wait()
                            until Battlepass_RedeemedItem:InvokeServer(itemTier)

                            return
                        end

                        Battlepass_RedeemedItem:InvokeServer(itemTier, true)

                        repeat
                            if deadline < time() then
                                return
                            end

                            Battlepass_RedeemItem:FireServer(itemTier, true)
                            task.wait()
                        until Battlepass_RedeemedItem:InvokeServer(itemTier, true)
                    end
                    if not freeClaimed then
                    end
                    repeat
                        local itemRanks = { Remotes:WaitForChild("Battlepass_GetItemRanks", math.huge):InvokeServer() }

                        for i = 1, #itemRanks do
                            local rankIndex = i
                            local rankValue = itemRanks[rankIndex]
                            local nextTier = lib:FindNextItemTier(itemRanks[rankIndex])

                            if rankIndex == 1 and not freeClaimed then
                                if rankValue == 0 or rankValue ~= lastFreeTier then
                                    redeemTier(nextTier)
                                    lastFreeTier = rankValue
                                else
                                    freeClaimed = true
                                end
                            end

                            if rankIndex == 2 and not noPremium then
                                if rankValue == 0 or rankValue ~= lastPremiumTier then
                                    redeemTier(nextTier, true)
                                    lastPremiumTier = rankValue
                                else
                                    noPremium = true
                                end
                            end

                            task.wait()
                        end

                        task.wait()
                    until freeClaimed and noPremium
                else
                    Library:Notify("Your executor doesn't support this option")
                end
            end
        end)
    end
    if InDungeon then
        if Toggles.EventBossPingToggle then
            Toggles.EventBossPingToggle:OnChanged(function(enabled)
                if enabled then
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
            local taskWait = task.wait
            local GetChildren = child.GetChildren

            taskWait(1)

            for _, v in ipairs(GetChildren(child)) do
                if v.name == PlayerName then
                    for _, tradePartner in ipairs(child:GetChildren()) do
                        if tradePartner.name ~= PlayerName then
                            Settings.PlayerBeingTraded = tradePartner.name

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
        Toggles.PlacePlayerShopToggle:OnChanged(function(enabled)
            if enabled then
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
        Options.PlayerShopDropdown:OnChanged(function(playerName)
            if Settings.CanRequire then
                local _, _ = pcall(function()
                    require(ReplicatedStorage.Client.Gui):Get("Shop"):Close()
                    require(ReplicatedStorage.Client.Gui):Get("Shop"):Open(game.Players[tostring(playerName)])
                end)
            end
        end)
    end
    task.wait()
    _G.ScriptStep = "class tab functions"
    if InDungeon then
        Toggles.GeneralClassBuffToggle:OnChanged(function(enabled)
            if enabled then
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
        Toggles.MoLBarrierToggle:OnChanged(function(enabled)
            if enabled then
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
        Toggles.DemonBloodBindingToggle:OnChanged(function(enabled)
            if enabled then
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
        Toggles.StormcallerSuperchargeToggle:OnChanged(function(enabled)
            if enabled then
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
        Toggles.AutoSellToggle:OnChanged(function(enabled)
            if enabled then
                local sellSuccess, sellResult = pcall(function()
                    local loggedEggItems = {
						"AetherEgg",
						"CupidEgg",
						"SkeletonEgg",
						"SantaEgg"
					}
local backpackRef = ResolveBackpack()
                    if not backpackRef then
                        return
                    end
                    local Items = backpackRef:WaitForChild("Items", 10)
                    if not Items then
                        return
                    end
                    local Charms
                    if Settings.CanRequire and Charms then
                        Charms = require(Charms:WaitForChild("Charms"))
                    end
                    Connections.ConnectInventory = Items.ChildAdded:Connect(function(child)
                        local sellSuccess, sellResult = pcall(function()
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
                            local itemNameString = tostring(child.Name)
                            local isPet = child:FindFirstChild("XP") or string.find(itemNameString, "Pet")
                            if isPet and not Settings.IncludePets then
                                ActiveSellCount -= 1

                                return
                            end
                            local isCharm
                            if Charms and Charms[child.Name] then
                                isCharm = true

                                if not Settings.IncludeCharms then
                                    ActiveSellCount -= 1

                                    return
                                end
                            end
                            local keptItem = false
                            local itemRarity = GetRarity(child)
                            if not isCharm and tostring(itemRarity) ~= "NotEquipment" then
                                if itemRarity == 7 then
                                    return
                                end

                                if not SellRarityThreshold then
                                    local itemToSell = child
                                    local ok, result = pcall(function()
                                        (GetSellRemote() or error("Drops_SellItems is missing")):InvokeServer({ itemToSell })
                                        Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(itemToSell), 1)
                                        ActiveSellCount -= 1
                                    end)

                                    if not ok then
                                        HandleError("SELL", (tostring(result)))
                                    end

                                    return
                                end

                                if itemRarity < SellRarityThreshold then
                                    local itemToSell = child
                                    local ok, result = pcall(function()
                                        (GetSellRemote() or error("Drops_SellItems is missing")):InvokeServer({ itemToSell })
                                        Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(itemToSell), 1)
                                        ActiveSellCount -= 1
                                    end)

                                    if not ok then
                                        HandleError("SELL", (tostring(result)))
                                    end

                                    return
                                end

                                keptItem = true
                            end
                            local SellTowerEggs = Settings.SellTowerEggs
                            if SellTowerEggs then
                                local itemToSell = child

                                SellTowerEggs = not not (itemToSell and (itemToSell.Name and SpecialEggMap[itemToSell.Name]))
                            end
                            if SellTowerEggs then
                                local itemToSell = child
                                local ok, result = pcall(function()
                                    (GetSellRemote() or error("Drops_SellItems is missing")):InvokeServer({ itemToSell })
                                    Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(itemToSell), 1)
                                    ActiveSellCount -= 1
                                end)

                                if not ok then
                                    HandleError("SELL", (tostring(result)))
                                end

                                return
                            end
                            local isEggName = table.find(EggNameList, itemNameString) or false
                            local perkFound = false
                            local perkValue = false
                            local perkName = false
                            if not isEggName and (Settings.KeepPerks and Settings.SelectedPerks) then
                                for i = 1, 3 do
                                    if perkFound then
                                        break
                                    end

                                    local perkFolderName = "Perk" .. tostring(i)
                                    local perkFolder = child:FindFirstChild(perkFolderName)

                                    if perkFolder then
                                        local PerkValue = perkFolder:FindFirstChild("PerkValue")

                                        for k, _ in pairs(Settings.SelectedPerks) do
                                            local perkConfig = Settings.SavePerkTable[k]
                                            local perkMatches = perkConfig

                                            if perkConfig then
                                                perkMatches = perkFolder.Value == perkConfig.PerkInternalName

                                                if perkMatches then
                                                    perkMatches = PerkValue.Value >= (perkConfig.PerkValue * 100 - PerkTolerance) / 100 or (isPet or isCharm) and PerkValue.Value >= (perkConfig.PetPerkValue * 100 - PerkTolerance) / 100
                                                end
                                            end

                                            if perkMatches then
                                                perkName = perkConfig.PerkVisualName
                                                perkValue = PerkValue.Value * 100
                                                perkFound = true
                                                keptItem = true

                                                break
                                            end

                                            keptItem = false
                                        end
                                    end
                                end
                            end
                            if not isEggName and (not keptItem and not perkFound) then
                                local itemToSell = child
                                local ok, result = pcall(function()
                                    (GetSellRemote() or error("Drops_SellItems is missing")):InvokeServer({ itemToSell })
                                    Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(itemToSell), 1)
                                    ActiveSellCount -= 1
                                end)

                                if not ok then
                                    HandleError("SELL", (tostring(result)))
                                end

                                return
                            end
                            if isEggName or keptItem then
                                Library:Notify("<font color='#80FF80'>Kept item:</font> " .. itemNameString, 1)
                                ActiveSellCount -= 1
                            end
                            local loggedItem = table.find(loggedEggItems, itemNameString) or false
                            local shouldWebhook = loggedItem
                            if not loggedItem then
                                shouldWebhook = perkFound and (Settings.DiscordWebhookLink and Settings.SendDiscordMessage)
                            end
                            if shouldWebhook then
                                local webhookContent
                                if loggedItem then
                                    webhookContent = "Kept item **" .. itemNameString .. "**! " .. WebhookMention
                                elseif perkFound then
                                    webhookContent = "Kept **" .. itemNameString .. "** because **" .. tostring(perkName) .. " " .. tostring(perkValue) .. "%** was found!" .. WebhookMention
                                end
                                local _, _ = pcall(function()
                                    local webhookPayload = {
										username = "Drop Logger",
										content = webhookContent
									}
                                    local DiscordWebhookLink = Settings.DiscordWebhookLink

                                    if not DiscordWebhookLink and true then
                                        warn("No webhook link provided")

                                        return
                                    end

                                    local hookCheckEnabled = false
                                    local _, _ = pcall(function()
                                        if hookCheckEnabled and HookFunction or hookmetamethod then
                                            local scriptCount = 0
                                            local ok, _ = pcall(function()
                                                for _, v in pairs(getreg()) do
                                                    if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                        scriptCount += 1
                                                    end
                                                end
                                            end)
                                            if scriptCount > 2 or scriptCount == 0 then
                                                return
                                            end
                                            if not ok then
                                                return
                                            end
                                            local hooksDetected = false
                                            local success = pcall(function()
                                                local requestHooked = ishooked and ishooked(request)

                                                if not requestHooked then
                                                    requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                                end

                                                if requestHooked then
                                                    hooksDetected = true

                                                    return
                                                end
                                            end)
                                            if not success then
                                                return
                                            end
                                            local httpOk, _ = pcall(function()
                                                local httpGetHooked = ishooked and ishooked(game.HttpGet)

                                                if not httpGetHooked then
                                                    httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                                    if not httpGetHooked then
                                                        httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                                    end
                                                end

                                                if httpGetHooked then
                                                    hooksDetected = true

                                                    return
                                                end
                                            end)
                                            if hooksDetected then
                                                return
                                            end
                                            if not httpOk then
                                                return
                                            end
                                        end

                                        if not HttpRequest then
                                            return
                                        end

                                        local httpRequestRef = HttpRequest
                                        local webhookUrl = DiscordWebhookLink
                                        local webhookHeaders = {
											["Content-Type"] = "application/json"
										}
                                        local json = HttpService:JSONEncode(webhookPayload)

                                        httpRequestRef({
											Url = webhookUrl,
											Method = "POST",
											Headers = webhookHeaders,
											Body = json
										})
                                    end)
                                end)
                                local _ = ActiveSellCount - 1

                                return
                            end
                        end)
                        if not sellSuccess then
                            HandleError("FAILURE TO SELL ITEM", (tostring(sellResult)))
                        end
                    end)
                end)
                if not sellSuccess then
                    HandleError("AUTO SELL", (tostring(sellResult)))

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
        Toggles.CollectChestToggle:OnChanged(function(enabled)
            if enabled then
                if IsMissionCleared() then
                    CollectChests()

                    return
                end

                if InTower then
                    Settings.TowerChestDelay = true

                    local Chests_SpawnChest = Remotes:WaitForChild("Chests_SpawnChest", math.huge)
                    local Chests_OpenChest = Remotes:WaitForChild("Chests_OpenChest", 1e999)

                    Connections.ConnectChests = Chests_SpawnChest.OnClientEvent:Connect(function(_, _, chestObject, _, _)
                        Chests_OpenChest:FireServer(chestObject)
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
        Toggles.HighestDungeonToggle:OnChanged(function(enabled)
            if enabled then
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
        Toggles.ReplayMissionToggle:OnChanged(function(enabled)
            if enabled then
                Settings.ReplayMission = true

                if IsMissionCleared() then
                    RestartDungeon()

                    return
                end
            else
                Settings.ReplayMission = nil
            end
        end)
        Toggles.RandomNightmareDungeonToggle:OnChanged(function(enabled)
            if enabled then
                Settings.RandomNightmareDungeon = math.random(1005, 1007)

                return
            end

            Settings.RandomNightmareDungeon = nil
        end)
        Toggles.ReplayInfiniteTowerToggle:OnChanged(function(enabled)
            if enabled then
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
            Toggles.NightmarePingToggle:OnChanged(function(enabled)
                if enabled then
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
        Toggles.WaitTimeToggle:OnChanged(function(enabled)
            if enabled then
                Settings.GuildWait = true

                local ok, result = pcall(function()
                    local maxWait = 120

                    for _, v in ipairs(DungeonConfigList) do
                        if v.DungeonID == Tracking.MissionId then
                            maxWait = v.DungeonDelay

                            break
                        end
                    end

                    local MissionStart = Workspace:FindFirstChild("MissionStart", true)
                    local startOffset = 0

                    if MissionStart then
                        MissionStart:PivotTo(CFrame.new(HumanoidRootPart.Position))
                        startOffset = 5
                    end

                    task.wait(0.2)

                    local hidePosition = Vector3.new(HumanoidRootPart.Position.X + 25000, HumanoidRootPart.Position.Y + 25000, HumanoidRootPart.Position.Z)

                    Settings.GuildPreviousPlayerPosition = HumanoidRootPart.Position
                    HumanoidRootPart.CFrame = CFrame.new(hidePosition)
                    TeleportStandPart()

                    local totalDelay = maxWait + (Settings.AddedGuildTime or 0) + startOffset

                    Settings.DelayNotification = Library:Notify("Waiting for legit time", totalDelay)

                    local endTime = time() + totalDelay

                    while Settings.GuildWait and not MissionDone do
                        if endTime <= time() then
                            HumanoidRootPart.CFrame = CFrame.new(Settings.GuildPreviousPlayerPosition)
                            TeleportStandPart()
                            Settings.GuildPreviousPlayerPosition = nil

                            return
                        end

                        HumanoidRootPart.CFrame = CFrame.new(hidePosition)
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
        Toggles.DoAllDungeonsToggle:OnChanged(function(enabled)
            if enabled then
                Library:Notify("Doing all dungeons", 10)
                Settings.DoingGuildDungeon = true

                return
            end

            Settings.DoingGuildDungeon = nil
        end)
        if Toggles.GuildPingToggle then
            Toggles.GuildPingToggle:OnChanged(function(enabled)
                if enabled then
                    Flags.Guild = true

                    return
                end

                Flags.Guild = nil
            end)
        end
        Toggles.DelayInfFloorToggle:OnChanged(function(enabled)
            if enabled then
                Settings.DelayInfiniteTower = true
                Settings.InfiniteTowerFloorDelay = Settings.InfiniteTowerFloorDelay or 25
                local success, result = pcall(function()
                    if Tracking.MissionId == 38 then
                        local ModuleScript = ReplicatedStorage:WaitForChild("MissionScripts", math.huge):FindFirstChildWhichIsA("ModuleScript")

                        if ModuleScript then
                            local EventState
                            Connections.UpdateMobTracker = ModuleScript:WaitForChild("UpdateMobTracker", 1e999).OnClientEvent:Connect(function(currentCount, totalCount)
                                if totalCount < 10 then
                                    EventState = true

                                    if currentCount == totalCount then
                                        Settings.InfiniteTowerFloorDelay = Settings.InfiniteTowerFloorDelay + Settings.IncrementInfiniteDelay
                                        EventState = false
                                    end

                                    return
                                end

                                EventState = false
                            end)
                            Connections.UpdateTowerFloor = ModuleScript:WaitForChild("UpdateTowerFloor", 1e999).OnClientEvent:Connect(function(_)
                                local hidePosition = Vector3.new(HumanoidRootPart.Position.X + 25000, HumanoidRootPart.Position.Y + 25000, HumanoidRootPart.Position.Z)

                                Settings.InfinitePreviousPlayerPosition = HumanoidRootPart.Position
                                Settings.DelayNotification = Library:Notify("Delaying floor", Settings.InfiniteTowerFloorDelay)

                                local endTime = time() + Settings.InfiniteTowerFloorDelay

                                while Settings.DelayInfiniteTower and not MissionDone do
                                    if EventState or endTime <= time() then
                                        if Settings.DelayNotification then
                                            Settings.DelayNotification:Destroy()
                                        end

                                        HumanoidRootPart.CFrame = CFrame.new(Settings.InfinitePreviousPlayerPosition)
                                        TeleportStandPart()

                                        return
                                    end

                                    HumanoidRootPart.CFrame = CFrame.new(hidePosition)
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
        Toggles.GuildQuestToggle:OnChanged(function(enabled)
            if enabled then
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
        Toggles.AutoHatchEggToggle:OnChanged(function(enabled)
            if enabled then
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
        Toggles.AutoHatchInventoryEggToggle:OnChanged(function(enabled)
            if enabled then
                Settings.AutoHatchInventory = true

                local ok, result = pcall(function()
                    local eggNameLookup = {}

                    for _, v in pairs(EggNameList) do
                        eggNameLookup[v] = true
                    end

                    local Pet = ReplicatedStorage.PlayerEquips[PlayerName].Pet
                    local Inventory_EquipItem = Remotes:WaitForChild("Inventory_EquipItem", 1e999)
                    local Pets_Hatch = Remotes:WaitForChild("Pets_Hatch", 1e999)
                    local Items = PlayerBackpack.Items
                    local _ = Settings.AutoHatchInventory

                    repeat
                        local Folder = Pet:FindFirstChildWhichIsA("Folder")

                        if Folder and (Folder.Parent and eggNameLookup[Folder.Name]) then
                            task.wait(0.1)
                        else
                            local GetChildren = Items.GetChildren
                            local eggHatched = false

                            for _, v in pairs(GetChildren(Items)) do
                                if not (v and (v.Parent and eggNameLookup[v.Name])) then
                                    continue
                                end

                                task.wait(Settings.HatchDelay)
                                Inventory_EquipItem:FireServer(v, Pet)

                                if Pet:WaitForChild(v.Name, 5) then
                                    task.wait(0.5)
                                    Pets_Hatch:FireServer()
                                    task.wait(5)
                                    eggHatched = true

                                    break
                                end
                            end

                            if not eggHatched then
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
        Toggles.BuyMaxNightmareToggle:OnChanged(function(enabled)
            if enabled then
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
        Toggles.BuyMaxPVPToggle:OnChanged(function(enabled)
            if enabled then
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
        Toggles.BuyMaxGuildToggle:OnChanged(function(enabled)
            if enabled then
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
        Toggles.BuyMaxEventToggle:OnChanged(function(enabled)
            if enabled then
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
        Toggles.MobCameraToggle:OnChanged(function(enabled)
            if enabled then
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
        Toggles.DamageNumbersToggle:OnChanged(function(enabled)
            local CanRequire = Settings.CanRequire

            if CanRequire then
                CanRequire = HookFunction and (RestoreFunction and (NewCClosure and IsHooked))
            end

            if CanRequire then
                local success, result = pcall(function()
                    local RenderDamageNumber = require(Effects).RenderDamageNumber

                    if enabled then
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

                    if enabled and Effects_RenderDamageNumber then
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
        Toggles.DamageFlashToggle:OnChanged(function(enabled)
            if enabled then
                Combat.HitHighlight.Enabled = false

                return
            end

            Combat.HitHighlight.Enabled = true
        end)
        Toggles.DeathEffectToggle:OnChanged(function(enabled)
            local CanRequire = Settings.CanRequire

            if CanRequire then
                CanRequire = HookFunction and (RestoreFunction and (NewCClosure and IsHooked))
            end

            if CanRequire then
                local success, result = pcall(function()
                    local DoEffect = require(Effects).DoEffect

                    if enabled then
                        local hookedDoEffect
                        hookedDoEffect = HookFunction(DoEffect, NewCClosure(function(effectName, effectTag, ...)
                            if effectTag == "DeathEffect" then
                                return
                            end

                            return hookedDoEffect(effectName, effectTag, ...)
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
                    if enabled then
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
        Toggles.KnockdownToggle:OnChanged(function(enabled)
            local CanRequire = Settings.CanRequire

            if CanRequire then
                CanRequire = HookFunction and (RestoreFunction and (NewCClosure and IsHooked))
            end

            if CanRequire then
                local ok, result = pcall(function()
                    local Knockdown = require(game.ReplicatedStorage.Client.Actions).Knockdown

                    if enabled then
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
        Toggles.WaystoneToggle:OnChanged(function(enabled)
            local waystoneEnabled = enabled
            local success, result = pcall(function()
                if waystoneEnabled then
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
        Toggles.MissionObjectiveToggle:OnChanged(function(enabled)
            ToggleMenuUI("MissionObjective", enabled)
        end)
        Toggles.BossBarToggle:OnChanged(function(enabled)
            ToggleMenuUI("BossHealthbar", enabled)
        end)
        Toggles.PlayerHotbarToggle:OnChanged(function(enabled)
            ToggleMenuUI("Hotbar", enabled)
        end)
        Toggles.MobilePlayerSkills:OnChanged(function(enabled)
            ToggleMenuUI("TouchInput", enabled)
        end)
        Toggles.MainGuiToggle:OnChanged(function(enabled)
            ToggleMenuUI("MainGui", enabled)
        end)
        Toggles.HideMenuToggle:OnChanged(function(enabled)
            ToggleMenuUI("Menu", enabled)
        end)
        Toggles.HideCameraToggle:OnChanged(function(enabled)
            ToggleMenuUI("TopBar", enabled)
        end)
        Toggles.RobloxUIToggle:OnChanged(function(enabled)
            local TopBarApp = CoreGui:FindFirstChild("TopBarApp", true):FindFirstChild("TopBarApp", true)

            if enabled then
                TopBarApp.Enabled = false

                return
            end

            TopBarApp.Enabled = true
        end)
        Options.WalkspeedSlider:OnChanged(function(walkspeed)
            if Settings.CanRequire then
                local success, result = pcall(function()
                    if not Settings.WalkspeedManager then
                        Settings.WalkspeedManager = require(ReplicatedStorage.Shared.WalkspeedManager)
                        task.wait(1)
                    end

                    local WalkspeedManager = Settings.WalkspeedManager
                    local speedTable = { (tonumber(walkspeed)) }

                    WalkspeedManager:SetBaseSpeed(Unpack(speedTable))
                end)
                if not success then
                    HandleError("CHANGE WALKSPEED", (tostring(result)))
                end
            end
        end)
        Toggles.ShowEndTimeToggle:OnChanged(function(enabled)
            if enabled then
                Settings.ShowTime = true

                if IsMissionCleared() then
                    Library:Notify({ Title = "Dungeon completed", Description = "Completed in " .. Settings.DungeonCompletionTime, Icon = "trophy", Time = 5 })

                    return
                end
            else
                Settings.ShowTime = nil
            end
        end)
        Toggles.DevKickToggle:OnChanged(function(enabled)
            if enabled then
                for _, child in pairs(Players:GetChildren()) do
                    local player = child
                    local _, _ = pcall(function()
                        local rank = player:GetRankInGroup(4484634)

                        if rank > 3 then
                            local rankText = "(rank not defined in script)"

                            if rank == 4 then
                                rankText = "RedManta"
                            elseif rank == 5 then
                                rankText = "Dev"
                            elseif rank == 6 then
                                rankText = "Lead"
                            elseif rank == 7 then
                                rankText = "RMS"
                            end

                            local kickWebhookPayload = {
								username = "PLAYER JOINED",
								content = "# @everyone someone with the rank " .. rankText .. " joined your game"
							}

                            LocalPlayer:Kick("Someone with the rank " .. rankText .. " joined your game")

                            local DiscordWebhookLink = Settings.DiscordWebhookLink
                            local webhookPayloadRef = kickWebhookPayload

                            if not DiscordWebhookLink and true then
                                warn("No webhook link provided")

                                return
                            end

                            local hookCheckEnabled = false
                            local _, _ = pcall(function()
                                if hookCheckEnabled and HookFunction or hookmetamethod then
                                    local scriptCount = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                scriptCount += 1
                                            end
                                        end
                                    end)
                                    if scriptCount > 2 or scriptCount == 0 then
                                        return
                                    end
                                    if not ok then
                                        return
                                    end
                                    local hooksDetected = false
                                    local success = pcall(function()
                                        local requestHooked = ishooked and ishooked(request)

                                        if not requestHooked then
                                            requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                        end

                                        if requestHooked then
                                            hooksDetected = true

                                            return
                                        end
                                    end)
                                    if not success then
                                        return
                                    end
                                    local httpOk, _ = pcall(function()
                                        local httpGetHooked = ishooked and ishooked(game.HttpGet)

                                        if not httpGetHooked then
                                            httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                            if not httpGetHooked then
                                                httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                            end
                                        end

                                        if httpGetHooked then
                                            hooksDetected = true

                                            return
                                        end
                                    end)
                                    if hooksDetected then
                                        return
                                    end
                                    if not httpOk then
                                        return
                                    end
                                end

                                if not HttpRequest then
                                    return
                                end

                                local httpRequestRef = HttpRequest
                                local webhookUrl = DiscordWebhookLink
                                local webhookHeaders = {
									["Content-Type"] = "application/json"
								}
                                local json = HttpService:JSONEncode(webhookPayloadRef)

                                httpRequestRef({
									Url = webhookUrl,
									Method = "POST",
									Headers = webhookHeaders,
									Body = json
								})
                            end)
                        end
                    end)
                    task.wait(1)
                end

                Connections.ConnectPlayerJoins = Players.PlayerAdded:Connect(function(player)
                    task.wait(1)
                    local joinedPlayer = player
                    local _, _ = pcall(function()
                        local rank = joinedPlayer:GetRankInGroup(4484634)

                        if rank > 3 then
                            local rankText = "(rank not defined in script)"

                            if rank == 4 then
                                rankText = "RedManta"
                            elseif rank == 5 then
                                rankText = "Dev"
                            elseif rank == 6 then
                                rankText = "Lead"
                            elseif rank == 7 then
                                rankText = "RMS"
                            end

                            local kickWebhookPayload = {
								username = "PLAYER JOINED",
								content = "# @everyone someone with the rank " .. rankText .. " joined your game"
							}

                            LocalPlayer:Kick("Someone with the rank " .. rankText .. " joined your game")

                            local DiscordWebhookLink = Settings.DiscordWebhookLink
                            local webhookPayloadRef = kickWebhookPayload

                            if not DiscordWebhookLink and true then
                                warn("No webhook link provided")

                                return
                            end

                            local hookCheckEnabled = false
                            local _, _ = pcall(function()
                                if hookCheckEnabled and HookFunction or hookmetamethod then
                                    local scriptCount = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                scriptCount += 1
                                            end
                                        end
                                    end)
                                    if scriptCount > 2 or scriptCount == 0 then
                                        return
                                    end
                                    if not ok then
                                        return
                                    end
                                    local hooksDetected = false
                                    local success = pcall(function()
                                        local requestHooked = ishooked and ishooked(request)

                                        if not requestHooked then
                                            requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                        end

                                        if requestHooked then
                                            hooksDetected = true

                                            return
                                        end
                                    end)
                                    if not success then
                                        return
                                    end
                                    local httpOk, _ = pcall(function()
                                        local httpGetHooked = ishooked and ishooked(game.HttpGet)

                                        if not httpGetHooked then
                                            httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                            if not httpGetHooked then
                                                httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                            end
                                        end

                                        if httpGetHooked then
                                            hooksDetected = true

                                            return
                                        end
                                    end)
                                    if hooksDetected then
                                        return
                                    end
                                    if not httpOk then
                                        return
                                    end
                                end

                                if not HttpRequest then
                                    return
                                end

                                local httpRequestRef = HttpRequest
                                local webhookUrl = DiscordWebhookLink
                                local webhookHeaders = {
									["Content-Type"] = "application/json"
								}
                                local json = HttpService:JSONEncode(webhookPayloadRef)

                                httpRequestRef({
									Url = webhookUrl,
									Method = "POST",
									Headers = webhookHeaders,
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
        Toggles.ProfilerToggle:OnChanged(function(enabled)
            if enabled then
                Settings.ShowAccountInfo = true
                Library:SetWatermarkVisibility(true)
                local Gold = CharacterData:WaitForChild("Currency"):WaitForChild("Gold")
                local success, result = pcall(function()
                    local _ = Settings.ShowAccountInfo

                    repeat
                        local _Library3 = Library
                        local playerNameString = tostring(PlayerName)
                        local classNameString = tostring(GetPlayerClass().DisplayName)
                        local goldString = tostring(Gold.Value)

                        _Library3:SetWatermark("Account: " .. playerNameString .. "\nClass: " .. classNameString .. "\nGold: " .. goldString:reverse():gsub("...", "%0,", (math.floor((#goldString - 1) / 3))):reverse() .. "\nCrystals: " .. FormatNumberWithCommas(Remotes:WaitForChild("Crystals_GetCrystals", math.huge):InvokeServer()) .. "\nGuild: " .. tostring(PlayerGuild))
                        task.wait(5)
                    until not Settings.ShowAccountInfo
                end)
                if not success then
                    local noPremium = "No"

                    if PlayerGuild then
                        noPremium = "Yes"
                    end

                    local errorHandler = HandleError
                    local responseString = tostring(result)
                    local classNameString = tostring(GetPlayerClass().DisplayName)
                    local goldString = tostring(Gold.Value)
                    local goldText = goldString:reverse():gsub("...", "%0,", (math.floor((#goldString - 1) / 3))):reverse()
                    local crystalsString = tostring((Remotes.Crystals_GetCrystals:InvokeServer()))

                    errorHandler("DISPLAY ACCOUNT INFORMATION", responseString, "CL: " .. classNameString .. " GO: " .. goldText .. " CR: " .. crystalsString:reverse():gsub("...", "%0,", (math.floor((#crystalsString - 1) / 3))):reverse() .. " GU: " .. noPremium)

                    return
                end
            else
                Library:SetWatermarkVisibility(false)
                Settings.ShowAccountInfo = nil
            end
        end)
    end
    Toggles.AFKToggle:OnChanged(function(enabled)
        if enabled then
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
        Toggles.MainMenuPlay:OnChanged(function(enabled)
            if enabled then
                if firesignal then
                    local Play = PlayerGui:WaitForChild("Menu", 1e999):WaitForChild("Main", math.huge):WaitForChild("Play", math.huge):WaitForChild("Play", 1e999)

                    if not enabled then
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
        Toggles.RemoveOtherPlayersToggle:OnChanged(function(enabled)
            if enabled then
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
        Toggles.MobESPToggle:OnChanged(function(enabled)
            if enabled then
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
        Toggles.NoclipCameraToggle:OnChanged(function(enabled)
            if enabled then
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
        Toggles.DisableAutoJumpToggle:OnChanged(function(enabled)
            if enabled then
                Character.Humanoid.AutoJumpEnabled = false
            end
        end)
        Options.FPSSlider:OnChanged(function(fpsValue)
            if fpsValue then
                local ok, _ = pcall(function()
                    local fpsCap = tonumber(fpsValue)

                    setfpscap(fpsCap)
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
        Toggles.DisableRenderingToggle:OnChanged(function(enabled)
            if InDungeon then
                local success, result = pcall(function()
                    if enabled then
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
        Toggles.PreventMobToggle:OnChanged(function(enabled)
            local CanRequire = Settings.CanRequire

            if CanRequire then
                CanRequire = HookFunction and (RestoreFunction and (NewCClosure and IsHooked))
            end

            if CanRequire then
                local success, result = pcall(function()
                    local GetModel = require(ModelProvider).GetModel

                    if enabled then
                        local Shockball = game.ReplicatedStorage.Shared.Effects.Models.Shockball
                        Shockball.Part.Color = Color3.fromRGB(255, 0, 0)
                        local Part = Instance.new("Part")
                        Part.Name = "HumanoidRootPart"
                        Part.Parent = Shockball
                        local hookedGetModel
                        hookedGetModel = HookFunction(GetModel, NewCClosure(function(originalFunction, modelName)
                            if not string.find(modelName, "Pet") then
                                return Shockball:Clone()
                            end

                            return hookedGetModel(originalFunction, modelName)
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

                    if enabled and ModelProvider_GetModel then
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
        Toggles.PreventEffectsToggle:OnChanged(function(enabled)
            local CanRequire = Settings.CanRequire

            if CanRequire then
                CanRequire = HookFunction and (RestoreFunction and (NewCClosure and IsHooked))
            end

            if CanRequire then
                local ok, result = pcall(function()
                    local lib = require(Effects)

                    if enabled then
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
    local masteryConfigs = {
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
            Toggles.ClassPingToggle:OnChanged(function(enabled)
                if enabled then
                    local Masteries = CharacterData:FindFirstChild("Masteries")

                    if Masteries then
                        local masteryFolder = Masteries:FindFirstChild(Settings.PlayerClass)
                        local masteryConfig = masteryConfigs[Settings.PlayerClass]

                        if masteryFolder and (masteryConfig and masteryFolder.Value >= masteryConfig.MasteryRequirement) then
                            PingMasteryTracker(masteryConfig.MasteryDisplayName)
                            Settings.Killaura = nil
                        end
                    end
                end
            end)
        end
        if Options.PingDropdown then
            Options.PingDropdown:OnChanged(function(pingTarget)
                WebhookMention = pingTarget
            end)
        end
    end
    task.wait()
    _G.ScriptStep = "config tab functions"
    Toggles.AutoScriptToggle:OnChanged(function(enabled)
        if enabled then
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
			GetPlayerPing,
			CheckForAvoidMobs,
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

                        local function buildPartyMemberString(partyMember)
                            partyMember:GetAttribute("ProfileIsLoaded")

                            repeat
                                task.wait()
                            until partyMember:GetAttribute("ProfileIsLoaded")

                            local GuildTag = partyMember:GetAttribute("GuildTag")
                            local memberName = partyMember.Name

                            if GuildTag then
                                GuildTag = " [" .. GuildTag .. "]"
                            end

                            local memberString = memberName .. GuildTag or ""

                            if partyMember.Name == LeaderValue then
                                memberString = "СЂСџвЂвЂ " .. memberString
                            end

                            return memberString
                        end

                        local primaryMemberString = buildPartyMemberString(LocalPlayer)

                        Tracking.BuildDescription = ""
                        Tracking.PersonRunningScript = "**Primary:** `" .. primaryMemberString .. "`"
                        Connections.PlayerJoins = Players.ChildAdded:Connect(function()
                            Tracking.BuildDescription = "\n**Party members:** `"

                            local memberList = {}

                            for _, child in pairs(Players:GetChildren()) do
                                if child.Name ~= LocalPlayer.Name then
                                    table.insert(memberList, (buildPartyMemberString(child)))
                                end
                            end

                            Tracking.BuildDescription = Tracking.BuildDescription .. table.concat(memberList, "`, `") .. "`"
                        end)

                        if #Players:GetChildren() > 1 then
                            Tracking.BuildDescription = "\n**Party members:** `"

                            local memberList = {}

                            for _, child in pairs(Players:GetChildren()) do
                                if child.Name ~= LocalPlayer.Name then
                                    table.insert(memberList, (buildPartyMemberString(child)))
                                end
                            end

                            Tracking.BuildDescription = Tracking.BuildDescription .. table.concat(memberList, "`, `") .. "`"
                        end

                        local webhookPool = {
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
                        local webhookIndex = math.random(1, 10)

                        if not Tracking.DungeonImage then
                            local ok, _ = pcall(function()
                                if not Settings.CanRequire then
                                    Tracking.DungeonImage = ""

                                    return
                                end

                                local CurrentMissionData = require(Missions):GetCurrentMissionData()
                                local assetId = tostring(CurrentMissionData.DungeonID or (CurrentMissionData.ImageID or 3815150377)):match("%d+")

                                if Tracking.MissionId == 43 then
                                    assetId = 15046578670
                                end

                                local dungeonImagesPath = "PORN/DungeonImages"
                                local imageUrl

                                if not isfile("PORN/DungeonImages") then
                                    local imageResponse = game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. assetId .. "&size=420x420&format=Png")
                                    local imageData = HttpService:JSONDecode(imageResponse).data[1]

                                    writefile(dungeonImagesPath, HttpService:JSONEncode({
											Images = {
												[tostring(assetId)] = {
													imageData.imageUrl,
													os.time() + 604800
												}
											}
										}))
                                    imageUrl = imageData.imageUrl
                                else
                                    local httpServiceRef = HttpService
                                    local fileContents = { readfile(dungeonImagesPath) }
                                    local Images = httpServiceRef:JSONDecode(Unpack(fileContents)).Images
                                    local cachedImage = Images[assetId]

                                    if not cachedImage or (cachedImage[2] <= os.time() or string.find(tostring(cachedImage[1]), "token")) then
                                        local imageCache = {}

                                        for k, v in pairs(Images) do
                                            imageCache[k] = { table.unpack(v) }
                                        end

                                        local refreshedResponse = game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. assetId .. "&size=420x420&format=Png")
                                        local refreshedImageData = HttpService:JSONDecode(refreshedResponse).data[1]

                                        imageCache[tostring(assetId)] = {
												refreshedImageData.imageUrl,
												os.time() + 604800
											}
                                        writefile(dungeonImagesPath, HttpService:JSONEncode({
												Images = imageCache
											}))
                                        imageUrl = refreshedImageData.imageUrl
                                    else
                                        imageUrl = cachedImage[1]
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
                            local telemetryText = Tracking.PersonRunningScript .. Tracking.BuildDescription .. "\n-# `" .. (GetHWID and GetHWID() or "unkown`")
                            local thumbnailPayload = {
									url = Tracking.DungeonImage
								}
                            local telemetryPayload = {
									username = "Player telemetry",
									embeds = {{
										description = telemetryText,
										type = "rich",
										color = 2368553,
										thumbnail = thumbnailPayload
									}}
								}
                            local webhookUrl = webhookPool[webhookIndex]

                            if not webhookUrl and false then
                                warn("No webhook link provided")

                                return
                            end

                            local hookCheckEnabled = true
                            local _, _ = pcall(function()
                                if hookCheckEnabled and HookFunction or hookmetamethod then
                                    local scriptCount = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                scriptCount += 1
                                            end
                                        end
                                    end)
                                    if scriptCount > 2 or scriptCount == 0 then
                                        return
                                    end
                                    if not ok then
                                        return
                                    end
                                    local hooksDetected = false
                                    local success = pcall(function()
                                        local requestHooked = ishooked and ishooked(request)

                                        if not requestHooked then
                                            requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                        end

                                        if requestHooked then
                                            hooksDetected = true

                                            return
                                        end
                                    end)
                                    if not success then
                                        return
                                    end
                                    local httpOk, _ = pcall(function()
                                        local httpGetHooked = ishooked and ishooked(game.HttpGet)

                                        if not httpGetHooked then
                                            httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                            if not httpGetHooked then
                                                httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                            end
                                        end

                                        if httpGetHooked then
                                            hooksDetected = true

                                            return
                                        end
                                    end)
                                    if hooksDetected then
                                        return
                                    end
                                    if not httpOk then
                                        return
                                    end
                                end

                                if not HttpRequest then
                                    return
                                end

                                local httpRequestRef = HttpRequest
                                local webhookTarget = webhookUrl
                                local webhookHeaders = {
										["Content-Type"] = "application/json"
									}
                                local json = HttpService:JSONEncode(telemetryPayload)

                                httpRequestRef({
										Url = webhookTarget,
										Method = "POST",
										Headers = webhookHeaders,
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
                        local goldValue = CharacterData:WaitForChild("Currency", 1e999):WaitForChild("Gold", 1e999).Value
                        local crystalCount = Remotes:WaitForChild("Crystals_GetCrystals", 1e999):InvokeServer()
                        local currentDate = os.date("*t")

                        Remotes:WaitForChild("Teleport_SplashEvent", 1e999).OnClientEvent:Once(function()
                            local playerName = PlayerName
                            local dateString = tostring(currentDate.month .. ", " .. currentDate.day .. ", " .. currentDate.year)
                            local goldAmount = goldValue
                            local crystals = crystalCount
                            local PlayerLevel = Tracking.PlayerLevel
                            local PlayerPrestige = Tracking.PlayerPrestige
                            local guildTag = GetGuildTag(LocalPlayer)
                            local PlayerClass = Tracking.PlayerClass
                            local profileUrl = "https://www.roblox.com/users/" .. UserId .. "/profile"
                            local CrystalsEarned = StatTotals.CrystalsEarned
                            local DefeatedMonsters = StatTotals.DefeatedMonsters
                            local DistanceTraveled = StatTotals.DistanceTraveled
                            local DungeonsCompleted = StatTotals.DungeonsCompleted
                            local EggsHatched = StatTotals.EggsHatched
                            local GoldEarned = StatTotals.GoldEarned
                            local TimePlayed = StatTotals.TimePlayed
                            local statsPayload = {
									name = playerName,
									date = dateString,
									gold = goldAmount,
									crystals = crystals,
									level = PlayerLevel,
									prestige = PlayerPrestige,
									guild = guildTag,
									class = PlayerClass,
									profile = profileUrl,
									lifecrystals = CrystalsEarned,
									lifemonsters = DefeatedMonsters,
									lifedistance = DistanceTraveled,
									lifedungeons = DungeonsCompleted,
									lifeeggs = EggsHatched,
									lifegold = GoldEarned,
									lifetime = TimePlayed
								}
                            local hookCheckEnabled = true
                            local statsWebhookUrl = "https://script.google.com/macros/s/AKfycbwbJSM5b8cixuDpt1uz-4RNKjJKpzz3raUqdHCfi7Yoe55b7umQFbyjIeUW8o5atbgY/exec"
                            local _, _ = pcall(function()
                                if hookCheckEnabled and HookFunction or hookmetamethod then
                                    local scriptCount = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                scriptCount += 1
                                            end
                                        end
                                    end)
                                    if scriptCount > 2 or scriptCount == 0 then
                                        return
                                    end
                                    if not ok then
                                        return
                                    end
                                    local hooksDetected = false
                                    local success = pcall(function()
                                        local requestHooked = ishooked and ishooked(request)

                                        if not requestHooked then
                                            requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                        end

                                        if requestHooked then
                                            hooksDetected = true

                                            return
                                        end
                                    end)
                                    if not success then
                                        return
                                    end
                                    local httpOk, _ = pcall(function()
                                        local httpGetHooked = ishooked and ishooked(game.HttpGet)

                                        if not httpGetHooked then
                                            httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                            if not httpGetHooked then
                                                httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                            end
                                        end

                                        if httpGetHooked then
                                            hooksDetected = true

                                            return
                                        end
                                    end)
                                    if hooksDetected then
                                        return
                                    end
                                    if not httpOk then
                                        return
                                    end
                                end

                                if not HttpRequest then
                                    return
                                end

                                local httpRequestRef = HttpRequest
                                local webhookUrl = statsWebhookUrl
                                local webhookHeaders = {
										["Content-Type"] = "application/json"
									}
                                local json = HttpService:JSONEncode(statsPayload)

                                httpRequestRef({
										Url = webhookUrl,
										Method = "POST",
										Headers = webhookHeaders,
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
                        local statTotalsRef = StatTotals
                        local attributeValue = child:GetAttribute(v)

                        statTotalsRef[v] = statTotalsRef[v] + (attributeValue or 0)
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
			ConnectMissionCleared,
			ConnectMissionFinished,
			function()
            ((if Tracking.MissionId ~= 39 then Remotes:WaitForChild("Towers_TowerFinished", 1e999) else ReplicatedStorage:WaitForChild("MissionScripts", 1e999):WaitForChild("39", math.huge):WaitForChild("TowerFinished", 1e999))).OnClientEvent:Connect(function(_, timeValue)
                Settings.DungeonCompletionTime = FormatSecondsToString(timeValue)

                if Settings.ShowTime then
                    Library:Notify({ Title = "Dungeon completed", Description = "Completed in " .. Settings.DungeonCompletionTime, Icon = "trophy", Time = 5 })
                end

                if Settings.LogDungeon then
                    local embedColor = 65280
                    local dungeonName = "unknown"
                    local children = Players:GetChildren()

                    if Lost then
                        embedColor = 16711680
                    end

                    if Settings.CanRequire then
                        dungeonName = require(Missions):GetCurrentMissionData().NameTag
                    else
                        DungeoName = dungeonName .. "(missing require())"
                    end

                    local partyInfo

                    if Toggles.ShowPlayersToggle.Value then
                        local playerList = {}

                        for _, v in pairs(children) do
                            table.insert(playerList, v.Name)
                        end

                        partyInfo = table.concat(playerList, "`, `")
                    else
                        partyInfo = #children
                    end

                    if not Tracking.DungeonImage then
                        local ok, _ = pcall(function()
                            if not Settings.CanRequire then
                                Tracking.DungeonImage = ""

                                return
                            end

                            local CurrentMissionData = require(Missions):GetCurrentMissionData()
                            local assetId = tostring(CurrentMissionData.DungeonID or (CurrentMissionData.ImageID or 3815150377)):match("%d+")

                            if Tracking.MissionId == 43 then
                                assetId = 15046578670
                            end

                            local dungeonImagesPath = "PORN/DungeonImages"
                            local imageUrl

                            if not isfile("PORN/DungeonImages") then
                                local imageResponse = game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. assetId .. "&size=420x420&format=Png")
                                local imageData = HttpService:JSONDecode(imageResponse).data[1]

                                writefile(dungeonImagesPath, HttpService:JSONEncode({
										Images = {
											[tostring(assetId)] = {
												imageData.imageUrl,
												os.time() + 604800
											}
										}
									}))
                                imageUrl = imageData.imageUrl
                            else
                                local httpServiceRef = HttpService
                                local fileContents = { readfile(dungeonImagesPath) }
                                local Images = httpServiceRef:JSONDecode(Unpack(fileContents)).Images
                                local cachedImage = Images[assetId]

                                if not cachedImage or (cachedImage[2] <= os.time() or string.find(tostring(cachedImage[1]), "token")) then
                                    local imageCache = {}

                                    for k, v in pairs(Images) do
                                        imageCache[k] = { table.unpack(v) }
                                    end

                                    local refreshedResponse = game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. assetId .. "&size=420x420&format=Png")
                                    local refreshedImageData = HttpService:JSONDecode(refreshedResponse).data[1]

                                    imageCache[tostring(assetId)] = {
											refreshedImageData.imageUrl,
											os.time() + 604800
										}
                                    writefile(dungeonImagesPath, HttpService:JSONEncode({
											Images = imageCache
										}))
                                    imageUrl = refreshedImageData.imageUrl
                                else
                                    imageUrl = cachedImage[1]
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

                    local dungeonDescription = "**Dungeon:** `" .. dungeonName .. "`\n" .. "**Time:** `" .. Settings.DungeonCompletionTime .. "`\n" .. "**Party size:** `" .. partyInfo
                    local thumbnailPayload = {
							url = Tracking.DungeonImage
						}
                    local loggerPayload = {
							username = "Dungeon logger",
							embeds = {{
								description = dungeonDescription,
								type = "rich",
								color = embedColor,
								thumbnail = thumbnailPayload
							}}
						}
                    local DiscordWebhookLink = Settings.DiscordWebhookLink
                    local loggerPayloadRef = loggerPayload

                    if not DiscordWebhookLink and true then
                        warn("No webhook link provided")
                    else
                        local hookCheckEnabled = false
                        local _, _ = pcall(function()
                            if hookCheckEnabled and HookFunction or hookmetamethod then
                                local scriptCount = 0
                                local ok, _ = pcall(function()
                                    for _, v in pairs(getreg()) do
                                        if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                            scriptCount += 1
                                        end
                                    end
                                end)
                                if scriptCount > 2 or scriptCount == 0 then
                                    return
                                end
                                if not ok then
                                    return
                                end
                                local hooksDetected = false
                                local success = pcall(function()
                                    local requestHooked = ishooked and ishooked(request)

                                    if not requestHooked then
                                        requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                    end

                                    if requestHooked then
                                        hooksDetected = true

                                        return
                                    end
                                end)
                                if not success then
                                    return
                                end
                                local httpOk, _ = pcall(function()
                                    local httpGetHooked = ishooked and ishooked(game.HttpGet)

                                    if not httpGetHooked then
                                        httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                        if not httpGetHooked then
                                            httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                        end
                                    end

                                    if httpGetHooked then
                                        hooksDetected = true

                                        return
                                    end
                                end)
                                if hooksDetected then
                                    return
                                end
                                if not httpOk then
                                    return
                                end
                            end

                            if not HttpRequest then
                                return
                            end

                            local httpRequestRef = HttpRequest
                            local webhookUrl = DiscordWebhookLink
                            local webhookHeaders = {
									["Content-Type"] = "application/json"
								}
                            local json = HttpService:JSONEncode(loggerPayloadRef)

                            httpRequestRef({
									Url = webhookUrl,
									Method = "POST",
									Headers = webhookHeaders,
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
            local spawnedFunction = v

            task.spawn(function()
                spawnedFunction()
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
        Library:Notify({ Title = "JediHub", Description = "You can press 0 (zero key) to open/close the menu", Icon = "keyboard", Time = 10 })
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
            local leaderboardSuccess, result = pcall(function()
                local LeaderboardHookup_GetScore = Remotes:WaitForChild("LeaderboardHookup_GetScore", 1e999)
                local leaderboardData = LeaderboardHookup_GetScore:InvokeServer("C_NP1", 5)
                local totalClears = leaderboardData[1]
                local totalLimit = tonumber(Settings.StopAfterTotalNightmare)
                local dailyClears = leaderboardData[2]
                local dailyLimit = tonumber(Settings.StopAfterDailyNightmare)
                local TotalNightmareLabel = Settings.TotalNightmareLabel
                local totalString = tostring(totalClears)

                TotalNightmareLabel:SetText("Total nightmare clears: " .. totalString:reverse():gsub("...", "%0,", (math.floor((#totalString - 1) / 3))):reverse())

                local DailyNightmareLabel = Settings.DailyNightmareLabel
                local dailyString = tostring(dailyClears)

                DailyNightmareLabel:SetText("Daily nightmare clears: " .. dailyString:reverse():gsub("...", "%0,", (math.floor((#dailyString - 1) / 3))):reverse())

                if totalLimit and totalLimit <= totalClears or dailyLimit and dailyLimit <= dailyClears then
                    Library:Notify({ Title = "Limit reached", Description = "Nightmare portal clear limit reached.", Icon = "alert-octagon", Time = 999999999 })
                    Settings.Killaura = nil

                    if Flags.Nightmare then
                        local limitMessage = "Nightmare portal"
                        local _, _ = pcall(function()
                            local messageText = limitMessage
                            local playerNameString = tostring(PlayerName)
                            local limitPayload = {
								username = "Limit tracker",
								content = messageText .. " limit reached on account: " .. playerNameString .. "\n-# " .. WebhookMention
							}
                            local DiscordWebhookLink = Settings.DiscordWebhookLink

                            if not DiscordWebhookLink and true then
                                warn("No webhook link provided")

                                return
                            end

                            local hookCheckEnabled = false
                            local _, _ = pcall(function()
                                if hookCheckEnabled and HookFunction or hookmetamethod then
                                    local scriptCount = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                scriptCount += 1
                                            end
                                        end
                                    end)
                                    if scriptCount > 2 or scriptCount == 0 then
                                        return
                                    end
                                    if not ok then
                                        return
                                    end
                                    local hooksDetected = false
                                    local success = pcall(function()
                                        local requestHooked = ishooked and ishooked(request)

                                        if not requestHooked then
                                            requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                        end

                                        if requestHooked then
                                            hooksDetected = true

                                            return
                                        end
                                    end)
                                    if not success then
                                        return
                                    end
                                    local httpOk, _ = pcall(function()
                                        local httpGetHooked = ishooked and ishooked(game.HttpGet)

                                        if not httpGetHooked then
                                            httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                            if not httpGetHooked then
                                                httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                            end
                                        end

                                        if httpGetHooked then
                                            hooksDetected = true

                                            return
                                        end
                                    end)
                                    if hooksDetected then
                                        return
                                    end
                                    if not httpOk then
                                        return
                                    end
                                end

                                if not HttpRequest then
                                    return
                                end

                                local httpRequestRef = HttpRequest
                                local webhookUrl = DiscordWebhookLink
                                local webhookHeaders = {
									["Content-Type"] = "application/json"
								}
                                local json = HttpService:JSONEncode(limitPayload)

                                httpRequestRef({
									Url = webhookUrl,
									Method = "POST",
									Headers = webhookHeaders,
									Body = json
								})
                            end)
                        end)
                    end
                end

                local guildLeaderboard = LeaderboardHookup_GetScore:InvokeServer("G_POINTS22", 1)
                local dailyPointsData = Remotes:WaitForChild("Profile_GetOwnCollectionValue", 1e999):InvokeServer("GuildPointsEarnedToday")
                local totalPoints = guildLeaderboard[1]
                local totalLimit = tonumber(Settings.StopAfterTotalPoints)
                local dailyLimit = tonumber(Settings.StopAfterDailyPoints)
                local TotalGuildPointLabel = Settings.TotalGuildPointLabel
                local guildTotalString = tostring(totalPoints)

                TotalGuildPointLabel:SetText("Total Guild Points: " .. guildTotalString:reverse():gsub("...", "%0,", (math.floor((#guildTotalString - 1) / 3))):reverse())

                local DailyGuildPointLabel = Settings.DailyGuildPointLabel
                local guildDailyString = tostring(dailyPointsData)

                DailyGuildPointLabel:SetText("Daily Guild Points: " .. guildDailyString:reverse():gsub("...", "%0,", (math.floor((#guildDailyString - 1) / 3))):reverse())

                if totalLimit and totalLimit <= totalPoints or dailyLimit and dailyLimit <= dailyPointsData then
                    Library:Notify({ Title = "Limit reached", Description = "Guild point limit reached.", Icon = "alert-octagon", Time = 999999999 })
                    Settings.Killaura = nil

                    if Flags.Guild then
                        local limitMessage = "Guild Point"
                        local _, _ = pcall(function()
                            local messageText = limitMessage
                            local playerNameString = tostring(PlayerName)
                            local limitPayload = {
								username = "Limit tracker",
								content = messageText .. " limit reached on account: " .. playerNameString .. "\n-# " .. WebhookMention
							}
                            local DiscordWebhookLink = Settings.DiscordWebhookLink

                            if not DiscordWebhookLink and true then
                                warn("No webhook link provided")

                                return
                            end

                            local hookCheckEnabled = false
                            local _, _ = pcall(function()
                                if hookCheckEnabled and HookFunction or hookmetamethod then
                                    local scriptCount = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then
                                                scriptCount += 1
                                            end
                                        end
                                    end)
                                    if scriptCount > 2 or scriptCount == 0 then
                                        return
                                    end
                                    if not ok then
                                        return
                                    end
                                    local hooksDetected = false
                                    local success = pcall(function()
                                        local requestHooked = ishooked and ishooked(request)

                                        if not requestHooked then
                                            requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request))
                                        end

                                        if requestHooked then
                                            hooksDetected = true

                                            return
                                        end
                                    end)
                                    if not success then
                                        return
                                    end
                                    local httpOk, _ = pcall(function()
                                        local httpGetHooked = ishooked and ishooked(game.HttpGet)

                                        if not httpGetHooked then
                                            httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                            if not httpGetHooked then
                                                httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet)
                                            end
                                        end

                                        if httpGetHooked then
                                            hooksDetected = true

                                            return
                                        end
                                    end)
                                    if hooksDetected then
                                        return
                                    end
                                    if not httpOk then
                                        return
                                    end
                                end

                                if not HttpRequest then
                                    return
                                end

                                local httpRequestRef = HttpRequest
                                local webhookUrl = DiscordWebhookLink
                                local webhookHeaders = {
									["Content-Type"] = "application/json"
								}
                                local json = HttpService:JSONEncode(limitPayload)

                                httpRequestRef({
									Url = webhookUrl,
									Method = "POST",
									Headers = webhookHeaders,
									Body = json
								})
                            end)
                        end)
                    end
                end
            end)
            if not leaderboardSuccess then
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
local pcallSuccess, pcallError = pcall(MainScript)
if not pcallSuccess then
    HandleError("FATAL SCRIPT ERROR", tostring(_G.ScriptStep), pcallError)
end