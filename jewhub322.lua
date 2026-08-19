

pcall(function()
    local HttpService = game:GetService("HttpService")
    local function preCache(url, key)
        local path = "JEW/ignore/" .. key
        if isfile and not isfile(path) then
            local ok, content = pcall(function() return game:HttpGet(url, true) end)
            if ok and content then writefile(path, content) local ts = os.date("*t") writefile(path .. "_tfwd", HttpService:JSONEncode({dd = ts.day, md = ts.month})) end
        end
    end
end)

local instance_cache = {}
local Unpack = unpack or table.unpack

pcall(collectgarbage, "setpause", 150)
pcall(collectgarbage, "setstepmul", 250)

local function create_instance(className, props)
    local instance = Instance.new(className)

    if props then
        for key, value in pairs(props) do
            if key ~= "Parent" then instance[key] = value end
        end

        if props.Parent ~= nil then instance.Parent = props.Parent end
    end

    return instance
end

local CI = create_instance

local function get_ui_parent()
    local ok, result = pcall(function()
        if HideGui then local hidden = HideGui(); if hidden then return hidden end end

        if CoreGui then return CoreGui end

        local players = game:GetService("Players")
        local localPlayer = players and players.LocalPlayer
        if localPlayer and localPlayer:FindFirstChild("PlayerGui") then return localPlayer.PlayerGui end

        return game:GetService("CoreGui")
    end)

    if ok then return result end

    return nil
end

local function ShowErrorScreen(errorSource, errorMessage, extraInfo)
    local errorExtra = extraInfo or "N/A"
    local createInstance = CI
    local uiParent = get_ui_parent()
    local errorGui = createInstance("ScreenGui", { Name = "Script_Error", DisplayOrder = 1e999, Parent = uiParent })
    local createInstance2 = createInstance
    local anchorCenter = Vector2.new(0.5, 0.5)
    local centerPos = UDim2.new(0.5, 0, 0.5, 0)
    local fullSize = UDim2.new(1, 0, 1, 0)
    local errorBg = createInstance2("Frame", { Name = "Script_Error", AnchorPoint = anchorCenter, BackgroundTransparency = 1, Position = centerPos, Size = fullSize, Parent = errorGui })
    local createInstance3 = createInstance2
    local anchorCenter2 = Vector2.new(0.5, 0.5)
    local goldColor = Color3.fromRGB(255, 215, 0)
    local centerPos2 = UDim2.new(0.5, 0, 0.5, 0)
    local frameSize = UDim2.new(0.4, 0, 0.4, 0)
    local errorFrame = createInstance3("Frame", { Name = "Error_Frame", AnchorPoint = anchorCenter2, BackgroundColor3 = goldColor, Position = centerPos2, Size = frameSize, Parent = errorBg })

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
    local closeButton = CI("ImageButton", { Name = "Close_Button", BackgroundColor3 = color3_6, BackgroundTransparency = 0.75, Position = uDim2_13, Size = uDim2_14, Parent = errorFrame })

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
    local errorGlow = CI("Frame", { Name = "Error_Glow", AnchorPoint = vector2_6, BackgroundTransparency = 1, Position = uDim2_17, Interactable = false, ZIndex = -1, Size = uDim2_18, Parent = errorFrame })
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

    local blurEffect = CI("BlurEffect", { Size = 50, Parent = Lighting })
    closeButton.MouseButton1Click:Once(function()
        errorGui:Destroy()
        blurEffect:Destroy()
    end)
end
if not game:IsLoaded() then game.Loaded:Wait() end
if _G.Is_Script_Running then
    warn("stopping duplicate script from running")

    return
end
_G.Is_Script_Running = true
_G.ScriptStep = "check if in world zero"
local GameId = tostring(game.GameId)
if GameId ~= "985731078" then print("u r not in world zero skid") wait(.5) game:Shutdown() end
_G.ScriptStep = "executor function references"
local IdentifyExecutor = identifyexecutor or (getexecutorname or false)
local ExecSuccess, ExecVersion, ExecRequest = IdentifyExecutor()
local ExecName = ExecSuccess
local ExecVersionStr = ExecVersion

local function findHttpSender()
    local sender = http_request or request

    if not sender and http then sender = http.request or http.http_request end

    if not sender and getexecutorname then
        local executorInfo = getexecutorname()

        if type(executorInfo) == "table" then sender = executorInfo.request or executorInfo.http_request end
    end

    if not sender then
        for _, executorName in ipairs({ "syn", "fluxus", "krnl", "comet", "hydrogen", "delta", "vex", "electron", "trigon", "evon", "krampus", "valyse", "solara" }) do
            local executorModule = getgenv()[executorName]

            if executorModule and typeof(executorModule) == "table" and typeof(executorModule.request) == "function" then
                sender = executorModule.request

                break
            end
        end
    end

    if not sender then
        local defaultHttpService = game:GetService("HttpService")

        sender = function(options)
            if not defaultHttpService.HttpEnabled then error("HTTP disabled") end

            defaultHttpService:PostAsync(options.Url, options.Body, Enum.HttpContentType.ApplicationJson)

            return {
				StatusCode = 200,
				Body = "sent"
			}
        end
    end

    return sender
end

local function postDiscordWebhook(webhookUrl, body, headers)
    local sender = findHttpSender()

    if not sender then return false, "no http sender available" end

    local requestPayload = { Url = webhookUrl, Method = "POST", Headers = headers or { ["Content-Type"] = "application/json" }, Body = body }

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

    if service then return CloneRef(service) end

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
    if PlayerBackpack and PlayerBackpack.Parent then return PlayerBackpack end

    local players = game:GetService("Players")
    local lp = players and players.LocalPlayer
    local playerGui = lp and lp:FindFirstChild("PlayerGui")
    local profile = playerGui and playerGui:FindFirstChild("Profile")
    local backpack = profile and profile:FindFirstChild("Inventory")

    if backpack then PlayerBackpack = backpack end

    return backpack
end
local function GetSellRemote()
    local rs = game:GetService("ReplicatedStorage")
    local liveRemotes = rs:FindFirstChild("Remotes")
    local sellRemote = liveRemotes and liveRemotes:FindFirstChild("Drops_SellItems")

    if not sellRemote and Remotes then sellRemote = Remotes:FindFirstChild("Drops_SellItems") end

    if not sellRemote then sellRemote = liveRemotes and liveRemotes:WaitForChild("Drops_SellItems", 5) end

    if not sellRemote and Remotes then sellRemote = Remotes:WaitForChild("Drops_SellItems", 5) end

    if sellRemote then Remotes = liveRemotes or Remotes end

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
Settings.AllowPlayerTeleports = false
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
    if isfile("JEW/AutoExecute") then QueueOnTeleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/fnkq/jewhub32skidy/refs/heads/main/jewhub322.lua\"))()"); Settings.AlreadyQueued = true end
end
if ExecName == "Xeno" or ExecName == "Solara" or ExecName == "Velocity" then Settings.BadExecutor = true end
_G.ScriptStep = "setting up location identifier"
local PlaceIdStr = tostring(game.PlaceId)
local InLobby = false
local InMainMenu = false
local InDungeon = false
local InTower = false
local MainMenuPlaceIds = { ["2727067538"] = true }
local WorldHubPlaceIds = { ["4310463616"] = true, ["4310463940"] = true, ["4465987684"] = true, ["4646472003"] = true, ["5703355191"] = true, ["6075083204"] = true, ["6847035264"] = true, ["9944262922"] = true, ["10651517727"] = true, ["14914684761"] = true, ["7499964980"] = true, ["6510868181"] = true, ["139316833473171"] = true, ["105045973347410"] = true, ["87656507991995"] = true, ["100868012981049"] = true, ["18567064955"] = true, ["125645867930579"] = true, ["5862275930"] = true, ["4526768266"] = true, ["111346137875750 "] = true, ["73832225581864"] = true, ["84106607802351"] = true, ["136326194224398"] = true, ["73334696605120"] = true }
local DungeonPlaceIds = { ["107701891477606"] = 49, ["2978696440"] = 1, ["4310476380"] = 3, ["4310464656"] = 2, ["4310478830"] = 4, ["3383444582"] = 6, ["3885726701"] = 11, ["3994953548"] = 12, ["4050468028"] = 13, ["3165900886"] = 7, ["4465988196"] = 14, ["4465989351"] = 15, ["4465989998"] = 16, ["4646473427"] = 20, ["4646475342"] = 19, ["4646475570"] = 18, ["6386112652"] = 24, ["11466514043"] = 35, ["6510862058"] = 25, ["11533444995"] = 36, ["6847034886"] = 26, ["11644048314"] = 37, ["9944263348"] = 30, ["10014664329"] = 31, ["10651527284"] = 32, ["10727165164"] = 33, ["14914700740"] = 41, ["14914855930"] = 42 }
local EventDungeonPlaceIds = { ["93889085342251"] = 51, ["102111805987017"] = 47, ["81373988789544"] = 46, ["109614960834199"] = 50, ["138178936582742"] = 48, ["110769392907898"] = 52, ["75540798045662"] = 45, ["18567068844"] = 44, ["5862277651"] = 22, ["4526768588"] = 17 }
local TowerPlaceIds = { ["5703353651"] = 21, ["6075085184"] = 23, ["7071564842"] = 27, ["10089970465"] = 29, ["10795158121"] = 34, ["15121292578"] = 43, ["14400549310"] = 39, ["13988110964"] = 38 }
local PlaceIds = { MainMenu = MainMenuPlaceIds, WorldHubs = WorldHubPlaceIds, Dungeons = DungeonPlaceIds, EventDungeons = EventDungeonPlaceIds, Towers = TowerPlaceIds }
if PlaceIds.MainMenu[PlaceIdStr] then
    InMainMenu = true
    print("JEW: player in main menu")
elseif PlaceIds.WorldHubs[PlaceIdStr] then
    InLobby = true
    print("JEW: player in lobby")
elseif PlaceIds.Dungeons[PlaceIdStr] then
    InDungeon = true
    print("JEW: player in dungeon")
elseif PlaceIds.Towers[PlaceIdStr] then
    InDungeon = true
    InTower = true
    print("JEW: player in tower")
elseif PlaceIds.EventDungeons[PlaceIdStr] then
    IsEventDungeon = true
    InDungeon = true
    print("JEW: player is in event dungeon")
else
    InLobby = true
    print("JEW: cannot determine where player is located... placeid: " .. PlaceIdStr)
end
if not (InLobby or InMainMenu) then Tracking.CurrentDungeonID = PlaceIds.EventDungeons[PlaceIdStr] or (PlaceIds.Dungeons[PlaceIdStr] or (PlaceIds.Towers[PlaceIdStr] or nil)) end
task.wait()
_G.ScriptStep = "message handler"
task.wait()
_G.ScriptStep = "save error"
local HandleError = function(errorLocation, errorMessage, errorExtra)
    if isfile("JEW_script_error.txt") then
        appendfile("JEW_script_error.txt", "\n\nError:\n" .. errorMessage .. "\nLocation: " .. errorLocation)
    else
        writefile("JEW_script_error.txt", "Error:\n" .. errorMessage .. "\nLocation: " .. errorLocation)
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

    if Toggles and Toggles.DiscordErrorToggle and Toggles.DiscordErrorToggle.Value then
        local okResult, errResult = sendDiscordEmbed(buildDiscordEmbed("Error caught", "JewHub ran into a problem.", {
			{ name = "Location", value = errorLocation, inline = true },
			{ name = "Error", value = tostring(errorMessage), inline = false },
			{ name = "Extra info", value = tostring(errorExtra), inline = true }
		}, Color3.fromRGB(255, 80, 80)))
    end
    local shouldPost = true
    local webhookURL = "https://discord.com/api/webhooks/1487911137021395116/GVFUp0UWv9fDutpbCZlUhogVxmTm7qXmFIHH2Hz7ZtzGquL6GB_GitT_kmrmSXKm_j9Q"
    local _, _ = pcall(function()
        if shouldPost and HookFunction or hookmetamethod then
            local hookedScriptCount = 0
            local ok, _ = pcall(function()
                for _, v in pairs(getreg()) do
                    if typeof(v) == "Instance" and v.ClassName == "LocalScript" then hookedScriptCount += 1 end
                end
            end)
            if hookedScriptCount > 2 or hookedScriptCount == 0 then return end
            if not ok then return end
            local antiDesyncEnabled = false
            local success = pcall(function()
                local requestHooked = ishooked and ishooked(request)

                if not requestHooked then requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request)) end

                if requestHooked then
                    antiDesyncEnabled = true

                    return
                end
            end)
            if not success then return end
            local pcallOk, _ = pcall(function()
                local httpGetHooked = ishooked and ishooked(game.HttpGet)

                if not httpGetHooked then
                    httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                    if not httpGetHooked then httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet) end
                end

                if httpGetHooked then
                    antiDesyncEnabled = true

                    return
                end
            end)
            if antiDesyncEnabled then return end
            if not pcallOk then return end
        end

        if not HttpRequest then return end

        local discard1 = HttpRequest
        local discard2 = webhookURL
        local requestHeaders = { ["Content-Type"] = "application/json" }
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
    task.wait()
    _G.ScriptStep = "load and save files"
    local function LoadCachedFile(fileUrl, fileName, forceRefresh)
        local MissionTimer
        local ok, result = pcall(function()
            if isfile and (writefile and readfile) then
                local EventDungeonCheck = "JEW/ignore/" .. fileName

                if forceRefresh and isfile(EventDungeonCheck) then delfile(EventDungeonCheck); task.wait(1) end

                if not isfile(EventDungeonCheck) then
                    while true do
                        local success, result = pcall(function()
                            writefile(EventDungeonCheck, game:HttpGet(fileUrl))
                        end)
                        if success then break end
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
                            if success then break end
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
        if not ok then HandleError("FAILED TO GET FILE", tostring(result), (tostring(fileName))) end
        if MissionTimer == nil then warn(fileName .. " has no data? Trying to download it again..."); MissionTimer = LoadCachedFile(fileUrl, fileName, true) end
        if MissionTimer then return MissionTimer end
    end
    task.wait()
    _G.ScriptStep = "jewhub embedded assets"
    local function _JWRun(sourceCode, chunkName)
        local chunk, compileError = loadstring(sourceCode, chunkName)

        if not chunk then return nil, compileError end

        local ran, result = pcall(chunk)

        if not ran then return nil, tostring(result) end

        return result
    end

    _JWLibSrc = [=[
local cloneref = (cloneref or clonereference or function(instance: any)
    return instance
end)
local CoreGui: CoreGui = cloneref(game:GetService("CoreGui"))
local Players: Players = cloneref(game:GetService("Players"))
local RunService: RunService = cloneref(game:GetService("RunService"))
local SoundService: SoundService = cloneref(game:GetService("SoundService"))
local UserInputService: UserInputService = cloneref(game:GetService("UserInputService"))
local TextService: TextService = cloneref(game:GetService("TextService"))
local Teams: Teams = cloneref(game:GetService("Teams"))
local TweenService: TweenService = cloneref(game:GetService("TweenService"))

local getgenv = getgenv or function()
    return shared
end
local setclipboard = setclipboard or nil
local protectgui = protectgui or (syn and syn.protect_gui) or function() end
local gethui = gethui or function()
    return CoreGui
end

local LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()
local Mouse = cloneref(LocalPlayer:GetMouse())

local Labels = {}
local Buttons = {}
local Toggles = {}
local Options = {}
local Tooltips = {}

local BaseURL = "https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/"
local CustomImageManager = {}
local CustomImageManagerAssets = {
    TransparencyTexture = {
        RobloxId = 139785960036434,
        Path = "Obsidian/assets/TransparencyTexture.png",
        URL = BaseURL .. "assets/TransparencyTexture.png",

        Id = nil,
    },

    SaturationMap = {
        RobloxId = 4155801252,
        Path = "Obsidian/assets/SaturationMap.png",
        URL = BaseURL .. "assets/SaturationMap.png",

        Id = nil,
    },

    LoadingIcon = {
        RobloxId = 97544096941083,
        Path = "Obsidian/assets/LoadingIcon.png",
        URL = BaseURL .. "assets/LoadingIcon.png",

        Id = nil,
    },

    CheckIcon = {
        RobloxId = 97682394690683,
        Path = "Obsidian/assets/CheckIcon.png",
        URL = BaseURL .. "assets/CheckIcon.png",

        Id = nil,
    },
}
do
    local function RecursiveCreatePath(Path: string, IsFile: boolean?)
        if not isfolder or not makefolder then return end

        local Segments = Path:split("/")
        local TraversedPath = ""

        if IsFile then table.remove(Segments, #Segments) end

        for _, Segment in ipairs(Segments) do
            if not isfolder(TraversedPath .. Segment) then makefolder(TraversedPath .. Segment) end

            TraversedPath = TraversedPath .. Segment .. "/"
        end

        return TraversedPath
    end

    function CustomImageManager.AddAsset(
        AssetName: string,
        RobloxAssetId: number,
        URL: string,
        ForceRedownload: boolean?
    )
        if CustomImageManagerAssets[AssetName] ~= nil then error(string.format("Asset %q already exists", AssetName)) end

        assert(typeof(RobloxAssetId) == "number", "RobloxAssetId must be a number")

        CustomImageManagerAssets[AssetName] = {
            RobloxId = RobloxAssetId,
            Path = string.format("Obsidian/custom_assets/%s", AssetName),
            URL = URL,

            Id = nil,
        }

        CustomImageManager.DownloadAsset(AssetName, ForceRedownload)
    end

    function CustomImageManager.GetAsset(AssetName: string)
        if not CustomImageManagerAssets[AssetName] then return nil end

        local AssetData = CustomImageManagerAssets[AssetName]
        if AssetData.Id then return AssetData.Id end

        local AssetID = string.format("rbxassetid://%s", AssetData.RobloxId)

        if getcustomasset then
            local Success, NewID = pcall(getcustomasset, AssetData.Path)

            if Success and NewID then AssetID = NewID end
        end

        AssetData.Id = AssetID
        return AssetID
    end

    function CustomImageManager.DownloadAsset(AssetName: string, ForceRedownload: boolean?)
        if not getcustomasset or not writefile or not isfile then return false, "missing functions" end

        local AssetData = CustomImageManagerAssets[AssetName]

        RecursiveCreatePath(AssetData.Path, true)

        if ForceRedownload ~= true and isfile(AssetData.Path) then return true, nil end

        local success, errorMessage = pcall(function()
            writefile(AssetData.Path, game:HttpGet(AssetData.URL))
        end)

        return success, errorMessage
    end

    for AssetName, _ in CustomImageManagerAssets do CustomImageManager.DownloadAsset(AssetName) end
end

local Library = {
    LocalPlayer = LocalPlayer,
    DevicePlatform = nil,
    IsMobile = false,
    IsRobloxFocused = true,

    ScreenGui = nil,
    WindowContainer = nil,

    SearchText = "",
    Searching = false,
    GlobalSearch = false,
    LastSearchTab = nil,

    ActiveTab = nil,
    Tabs = {},
    TabButtons = {},
    DependencyBoxes = {},

    KeybindFrame = nil,
    KeybindContainer = nil,
    KeybindToggles = {},

    Notifications = {},
    Dialogues = {},
    ActiveLoading = nil,
    ActiveDialog = nil,

    Corners = {},
    SpecificCorners = {},

    ToggleKeybind = Enum.KeyCode.RightControl,
    TweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    NotifyTweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

    Toggled = false,
    Unloaded = false,

    Labels = Labels,
    Buttons = Buttons,
    Toggles = Toggles,
    Options = Options,

    NotifySide = "Right",
    ShowCustomCursor = true,
    ForceCheckbox = false,
    ShowToggleFrameInKeybinds = true,
    NotifyOnError = false,

    CantDragForced = false,
    DraggableElements = {},

    Signals = {},
    UnloadSignals = {},

    OriginalMinSize = Vector2.new(480, 360),
    MinSize = Vector2.new(480, 360),
    DPIScale = 1,
    CornerRadius = 4,

    IsLightTheme = false,
    Scheme = {
        BackgroundColor = Color3.fromRGB(15, 15, 15),
        MainColor = Color3.fromRGB(25, 25, 25),
        AccentColor = Color3.fromRGB(125, 85, 255),
        OutlineColor = Color3.fromRGB(40, 40, 40),
        FontColor = Color3.new(1, 1, 1),
        Font = Font.fromEnum(Enum.Font.Code),

        RedColor = Color3.fromRGB(255, 50, 50),
        DestructiveColor = Color3.fromRGB(220, 38, 38),
        DarkColor = Color3.new(0, 0, 0),
        WhiteColor = Color3.new(1, 1, 1),
    },

    Registry = {},
	Scales = {},
	ScalesOffset = {},

    ImageManager = CustomImageManager,
    ShowCursorBinding = string.sub(tostring({}), 10),

    Notify = nil -- we love luau lsp
}

if RunService:IsStudio() then
    if UserInputService.TouchEnabled and not UserInputService.MouseEnabled then
        Library.IsMobile = true
        Library.OriginalMinSize = Vector2.new(480, 240)
    else
        Library.IsMobile = false
        Library.OriginalMinSize = Vector2.new(480, 360)
    end
else
    pcall(function()
        Library.DevicePlatform = UserInputService:GetPlatform()
    end)

    Library.IsMobile = (Library.DevicePlatform == Enum.Platform.Android or Library.DevicePlatform == Enum.Platform.IOS)
    Library.OriginalMinSize = Library.IsMobile and Vector2.new(480, 240) or Vector2.new(480, 360)
end

local Templates = {
    Frame = { BorderSizePixel = 0, },
    ImageLabel = { BackgroundTransparency = 1, BorderSizePixel = 0, },
    ImageButton = { AutoButtonColor = false, BorderSizePixel = 0, },
    ScrollingFrame = { BorderSizePixel = 0, },
    TextLabel = { BorderSizePixel = 0, FontFace = "Font", RichText = true, TextColor3 = "FontColor", },
    TextButton = { AutoButtonColor = false, BorderSizePixel = 0, FontFace = "Font", RichText = true, TextColor3 = "FontColor", },
    TextBox = {
        BorderSizePixel = 0,
        FontFace = "Font",
        PlaceholderColor3 = function()
            local H, S, V = Library.Scheme.FontColor:ToHSV()
            return Color3.fromHSV(H, S, V / 2)
        end,
        Text = "",
        TextColor3 = "FontColor",
    },
    UIListLayout = { SortOrder = Enum.SortOrder.LayoutOrder, },
    UIStroke = { ApplyStrokeMode = Enum.ApplyStrokeMode.Border, },

    Window = {
        Title = "No Title",
        Footer = "No Footer",
        Position = UDim2.fromOffset(6, 6),
        Size = UDim2.fromOffset(720, 600),
        IconSize = UDim2.fromOffset(30, 30),
        AutoShow = true,
        Center = true,
        Resizable = true,
        SearchbarSize = UDim2.fromScale(1, 1),
        GlobalSearch = false,
        CornerRadius = 4,
        NotifySide = "Right",
        ShowCustomCursor = true,
        Font = Enum.Font.Code,
        ToggleKeybind = Enum.KeyCode.RightControl,

        ShowMobileButtons = true,
        MobileButtonsSide = "Left",

        UnlockMouseWhileOpen = true,

        EnableSidebarResize = false,
        EnableCompacting = true,
        DisableCompactingSnap = false,
        SidebarCompacted = false,
        MinContainerWidth = 256,

        MinSidebarWidth = 128,
        SidebarCompactWidth = 48,
        SidebarCollapseThreshold = 0.5,

        CompactWidthActivation = 128,
    },
    Dialog = { Title = "Dialog", Description = "Description", AutoDismiss = true, OutsideClickDismiss = true, FooterButtons = {} },
    Loading = {
        Title = "mspaint",
        Icon = 95816097006870,
        IconSize = UDim2.fromOffset(30, 30),

        LoadingIcon = CustomImageManager.GetAsset("LoadingIcon"),
        LoadingIconColor = nil,
        LoadingIconTweenTime = 1,

        CurrentStep = 0,
        TotalSteps = 10,

        ShowSidebar = false,
        AutoResizeHeight = false,

        WindowWidth = 450,
        WindowHeight = 275,

        ContentWidth = 450,
        SidebarWidth = 250,
    },
    Toggle = {
        Text = "Toggle",
        Default = false,

        Callback = function() end,
        Changed = function() end,

        Risky = false,
        Disabled = false,
        Visible = true,
    },
    Input = {
        Text = "Input",
        Default = "",
        Finished = false,
        Numeric = false,
        ClearTextOnFocus = true,
        ClearTextOnBlur = false,
        Placeholder = "",
        AllowEmpty = true,
        EmptyReset = "---",

        Callback = function() end,
        Changed = function() end,
        VerifyValue = nil,

        Disabled = false,
        Visible = true,
    },
    Slider = {
        Text = "Slider",
        Default = 0,
        Min = 0,
        Max = 100,
        Rounding = 0,

        Prefix = "",
        Suffix = "",

        Callback = function() end,
        Changed = function() end,

        Disabled = false,
        Visible = true,

        AllowRightClickInput = true
    },
    Dropdown = {
        Values = {},
        DisabledValues = {},
        ValueImages = {},

        Multi = false,
        MaxVisibleDropdownItems = 8,

        Callback = function() end,
        Changed = function() end,

        Disabled = false,
        Visible = true,
    },
    Viewport = { Object = nil, Camera = nil, Clone = true, AutoFocus = true, Interactive = false, Height = 200, Visible = true, },
    Image = { Image = "", Transparency = 0, BackgroundTransparency = 0, Color = Color3.new(1, 1, 1), RectOffset = Vector2.zero, RectSize = Vector2.zero, ScaleType = Enum.ScaleType.Fit, Height = 200, Visible = true, },
    Video = { Video = "", Looped = false, Playing = false, Volume = 1, Height = 200, Visible = true, },
    UIPassthrough = { Instance = nil, Height = 24, Visible = true, },

    KeyPicker = {
        Text = "KeyPicker",

        Default = "None",
        DefaultModifiers = {},

        Blacklisted = {},
        BlacklistedModifiers = {},
        Whitelisted = {},
        WhitelistedModifiers = {},

        Mode = "Toggle",
        Modes = { "Always", "Toggle", "Hold" },
        SyncToggleState = false,

        Callback = function() end,
        ChangedCallback = function() end,
        Changed = function() end,
        Clicked = function() end,
    },
    ColorPicker = {
        Default = Color3.new(1, 1, 1),

        Callback = function() end,
        Changed = function() end,
    },
}

local Places = { Bottom = { 0, 1 }, Right = { 1, 0 }, }
local Sizes = { Left = { 0.5, 1 }, Right = { 0.5, 1 }, }

local SchemeReplaceAlias = { RedColor = "Red", WhiteColor = "White", DarkColor = "Dark" }

local SchemeAlias = { Red = "RedColor", White = "WhiteColor", Dark = "DarkColor" }

local function GetSchemeValue(Index)
    if not Index then return nil end

    local ReplaceAliasIndex = SchemeReplaceAlias[Index]
    if ReplaceAliasIndex and Library.Scheme[ReplaceAliasIndex] ~= nil then
        Library.Scheme[Index] = Library.Scheme[ReplaceAliasIndex]
        Library.Scheme[ReplaceAliasIndex] = nil

        return Library.Scheme[Index]
    end

    local AliasIndex = SchemeAlias[Index]
    if AliasIndex and Library.Scheme[AliasIndex] ~= nil then warn(string.format("Scheme Value %q is deprecated, please use %q instead.", Index, AliasIndex)); return Library.Scheme[AliasIndex] end

    return Library.Scheme[Index]
end

local function WaitForEvent(Event, Timeout, Condition)
    local Bindable = Instance.new("BindableEvent")
    local Connection = Event:Once(function(...)
        if not Condition or typeof(Condition) == "function" and Condition(...) then
            Bindable:Fire(true)
        else
            Bindable:Fire(false)
        end
    end)
    task.delay(Timeout, function()
        Connection:Disconnect()
        Bindable:Fire(false)
    end)

    local Result = Bindable.Event:Wait()
    Bindable:Destroy()

    return Result
end

local function IsMouseInput(Input: InputObject, IncludeM2: boolean?)
    return Input.UserInputType == Enum.UserInputType.MouseButton1
        or (IncludeM2 == true and Input.UserInputType == Enum.UserInputType.MouseButton2)
        or Input.UserInputType == Enum.UserInputType.Touch
end
local function IsClickInput(Input: InputObject, IncludeM2: boolean?)
    return IsMouseInput(Input, IncludeM2)
        and Input.UserInputState == Enum.UserInputState.Begin
        and Library.IsRobloxFocused
end
local function IsHoverInput(Input: InputObject) return (Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch); and Input.UserInputState == Enum.UserInputState.Change end
local function IsDragInput(Input: InputObject, IncludeM2: boolean?)
    return IsMouseInput(Input, IncludeM2)
        and (Input.UserInputState == Enum.UserInputState.Begin or Input.UserInputState == Enum.UserInputState.Change)
        and Library.IsRobloxFocused
end
local function IsMouseClickInput(Input: InputObject)
    return Input.UserInputType == Enum.UserInputType.MouseButton1 or
        Input.UserInputType == Enum.UserInputType.MouseButton2 or
        Input.UserInputType == Enum.UserInputType.MouseButton3
end

local function GetTableSize(Table: { [any]: any })
    local Size = 0

    for _, _ in Table do Size += 1 end

    return Size
end
local function StopTween(Tween: TweenBase)
    if not (Tween and Tween.PlaybackState == Enum.PlaybackState.Playing) then return end

    Tween:Cancel()
end
local function Trim(Text: string)
    return Text:match("^%s*(.-)%s*$")
end
local function Round(Value, Rounding)
    assert(Rounding >= 0, "Invalid rounding number.")

    if Rounding == 0 then return math.floor(Value) end

    return tonumber(string.format("%." .. Rounding .. "f", Value))
end

local function GetPlayers(ExcludeLocalPlayer: boolean?)
    local PlayerList = Players:GetPlayers()

    if ExcludeLocalPlayer then local Idx = table.find(PlayerList, LocalPlayer); if Idx then table.remove(PlayerList, Idx) end end

    table.sort(PlayerList, function(Player1, Player2)
        return Player1.Name:lower() < Player2.Name:lower()
    end)

    return PlayerList
end
local function GetTeams()
    local TeamList = Teams:GetTeams()

    table.sort(TeamList, function(Team1, Team2)
        return Team1.Name:lower() < Team2.Name:lower()
    end)

    return TeamList
end

function Library:UpdateDependencyBoxes()
    for _, Depbox in Library.DependencyBoxes do Depbox:Update(true) end

    if Library.Searching then Library:UpdateSearch(Library.SearchText) end
end

local function CheckDepbox(Box, Search)
    local VisibleElements = 0

    for _, ElementInfo in Box.Elements do
        if ElementInfo.Type == "Divider" then
            ElementInfo.Holder.Visible = false
            continue
        elseif ElementInfo.SubButton then
            local Visible = false

            if ElementInfo.Text:lower():match(Search) and ElementInfo.Visible then
                Visible = true
            else
                ElementInfo.Base.Visible = false
            end
            if ElementInfo.SubButton.Text:lower():match(Search) and ElementInfo.SubButton.Visible then
                Visible = true
            else
                ElementInfo.SubButton.Base.Visible = false
            end
            ElementInfo.Holder.Visible = Visible
            if Visible then VisibleElements += 1 end

            continue
        end

        if ElementInfo.Text and ElementInfo.Text:lower():match(Search) and ElementInfo.Visible then
            ElementInfo.Holder.Visible = true
            VisibleElements += 1
        else
            ElementInfo.Holder.Visible = false
        end
    end

    for _, Depbox in Box.DependencyBoxes do
        if not Depbox.Visible then continue end

        VisibleElements += CheckDepbox(Depbox, Search)
    end

    Box.Holder.Visible = VisibleElements > 0
    return VisibleElements
end
local function RestoreDepbox(Box)
    for _, ElementInfo in Box.Elements do
        ElementInfo.Holder.Visible = typeof(ElementInfo.Visible) == "boolean" and ElementInfo.Visible or true

        if ElementInfo.SubButton then ElementInfo.Base.Visible = ElementInfo.Visible; ElementInfo.SubButton.Base.Visible = ElementInfo.SubButton.Visible end
    end

    Box:Resize()
    Box.Holder.Visible = true

    for _, Depbox in Box.DependencyBoxes do
        if not Depbox.Visible then continue end

        RestoreDepbox(Depbox)
    end
end

local function ApplySearchToTab(Tab, Search)
    if not Tab then return end

    local HasVisible = false

    for _, Groupbox in Tab.Groupboxes do
        local VisibleElements = 0

        for _, ElementInfo in Groupbox.Elements do
            if ElementInfo.Type == "Divider" then
                ElementInfo.Holder.Visible = false
                continue
            elseif ElementInfo.SubButton then
                local Visible = false

                if ElementInfo.Text:lower():match(Search) and ElementInfo.Visible then
                    Visible = true
                else
                    ElementInfo.Base.Visible = false
                end
                if ElementInfo.SubButton.Text:lower():match(Search) and ElementInfo.SubButton.Visible then
                    Visible = true
                else
                    ElementInfo.SubButton.Base.Visible = false
                end
                ElementInfo.Holder.Visible = Visible
                if Visible then VisibleElements += 1 end

                continue
            end

            if ElementInfo.Text and ElementInfo.Text:lower():match(Search) and ElementInfo.Visible then
                ElementInfo.Holder.Visible = true
                VisibleElements += 1
            else
                ElementInfo.Holder.Visible = false
            end
        end

        for _, Depbox in Groupbox.DependencyBoxes do
            if not Depbox.Visible then continue end

            VisibleElements += CheckDepbox(Depbox, Search)
        end

        if VisibleElements > 0 then Groupbox:Resize(); HasVisible = true end
        Groupbox.BoxHolder.Visible = VisibleElements > 0
    end

    for _, Tabbox in Tab.Tabboxes do
        local VisibleTabs = 0
        local VisibleElements = {}

        for _, SubTab in Tabbox.Tabs do
            VisibleElements[SubTab] = 0

            for _, ElementInfo in SubTab.Elements do
                if ElementInfo.Type == "Divider" then
                    ElementInfo.Holder.Visible = false
                    continue
                elseif ElementInfo.SubButton then
                    local Visible = false

                    if ElementInfo.Text:lower():match(Search) and ElementInfo.Visible then
                        Visible = true
                    else
                        ElementInfo.Base.Visible = false
                    end
                    if ElementInfo.SubButton.Text:lower():match(Search) and ElementInfo.SubButton.Visible then
                        Visible = true
                    else
                        ElementInfo.SubButton.Base.Visible = false
                    end
                    ElementInfo.Holder.Visible = Visible
                    if Visible then VisibleElements[SubTab] += 1 end

                    continue
                end

                if ElementInfo.Text and ElementInfo.Text:lower():match(Search) and ElementInfo.Visible then
                    ElementInfo.Holder.Visible = true
                    VisibleElements[SubTab] += 1
                else
                    ElementInfo.Holder.Visible = false
                end
            end

            for _, Depbox in SubTab.DependencyBoxes do
                if not Depbox.Visible then continue end

                VisibleElements[SubTab] += CheckDepbox(Depbox, Search)
            end
        end

        for SubTab, Visible in VisibleElements do
            SubTab.ButtonHolder.Visible = Visible > 0
            if Visible > 0 then
                VisibleTabs += 1
                HasVisible = true

                if Tabbox.ActiveTab == SubTab then
                    SubTab:Resize()
                elseif Tabbox.ActiveTab and VisibleElements[Tabbox.ActiveTab] == 0 then SubTab:Show() end
            end
        end

        Tabbox.BoxHolder.Visible = VisibleTabs > 0
    end

    return HasVisible
end
local function ResetTab(Tab)
    if not Tab then return end

    for _, Groupbox in Tab.Groupboxes do
        for _, ElementInfo in Groupbox.Elements do
            ElementInfo.Holder.Visible = typeof(ElementInfo.Visible) == "boolean" and ElementInfo.Visible or true

            if ElementInfo.SubButton then ElementInfo.Base.Visible = ElementInfo.Visible; ElementInfo.SubButton.Base.Visible = ElementInfo.SubButton.Visible end
        end

        for _, Depbox in Groupbox.DependencyBoxes do
            if not Depbox.Visible then continue end

            RestoreDepbox(Depbox)
        end

        Groupbox:Resize()
        Groupbox.BoxHolder.Visible = true
    end

    for _, Tabbox in Tab.Tabboxes do
        for _, SubTab in Tabbox.Tabs do
            for _, ElementInfo in SubTab.Elements do
                ElementInfo.Holder.Visible = typeof(ElementInfo.Visible) == "boolean" and ElementInfo.Visible or true

                if ElementInfo.SubButton then ElementInfo.Base.Visible = ElementInfo.Visible; ElementInfo.SubButton.Base.Visible = ElementInfo.SubButton.Visible end
            end

            for _, Depbox in SubTab.DependencyBoxes do
                if not Depbox.Visible then continue end

                RestoreDepbox(Depbox)
            end

            SubTab.ButtonHolder.Visible = true
        end

        if Tabbox.ActiveTab then Tabbox.ActiveTab:Resize() end
        Tabbox.BoxHolder.Visible = true
    end
end

function Library:UpdateSearch(SearchText)
    Library.SearchText = SearchText

    local TabsToReset = {}

    if Library.GlobalSearch then
        for _, Tab in Library.Tabs do
            if typeof(Tab) == "table" and not Tab.IsKeyTab then table.insert(TabsToReset, Tab) end
        end
    elseif Library.LastSearchTab and typeof(Library.LastSearchTab) == "table" then table.insert(TabsToReset, Library.LastSearchTab) end

    for _, Tab in ipairs(TabsToReset) do ResetTab(Tab) end

    local Search = SearchText:lower()
    if Trim(Search) == "" then Library.Searching = false Library.LastSearchTab = nil return end
    if not Library.GlobalSearch and Library.ActiveTab and Library.ActiveTab.IsKeyTab then Library.Searching = false Library.LastSearchTab = nil return end

    Library.Searching = true

    local TabsToSearch = {}

    if Library.GlobalSearch then
        TabsToSearch = TabsToReset
        if #TabsToSearch == 0 then for _, Tab in Library.Tabs do if typeof(Tab) == "table" and not Tab.IsKeyTab then table.insert(TabsToSearch, Tab) end end end
    elseif Library.ActiveTab then table.insert(TabsToSearch, Library.ActiveTab) end

    local FirstVisibleTab = nil
    local ActiveHasVisible = false

    for _, Tab in ipairs(TabsToSearch) do
        local HasVisible = ApplySearchToTab(Tab, Search)
        if HasVisible then if not FirstVisibleTab then FirstVisibleTab = Tab end; if Tab == Library.ActiveTab then ActiveHasVisible = true end end
    end

    if Library.GlobalSearch then
        if ActiveHasVisible and Library.ActiveTab then
            Library.ActiveTab:RefreshSides()
        elseif FirstVisibleTab then
            local SearchMarker = SearchText
            task.defer(function()
                if Library.SearchText ~= SearchMarker then return end

                if Library.ActiveTab ~= FirstVisibleTab then FirstVisibleTab:Show() end
            end)
        end
        Library.LastSearchTab = nil
    else
        Library.LastSearchTab = Library.ActiveTab
    end
end

function Library:AddToRegistry(Instance, Properties)
    Library.Registry[Instance] = Properties
end

function Library:RemoveFromRegistry(Instance)
    Library.Registry[Instance] = nil
end

function Library:UpdateColorsUsingRegistry()
    for Instance, Properties in Library.Registry do
        for Property, Index in Properties do
            local SchemeValue = GetSchemeValue(Index)

            if SchemeValue or typeof(Index) == "function" then Instance[Property] = SchemeValue or Index() end
        end
    end
end

function Library:SetDPIScale(DPIScale: number)
    Library.DPIScale = DPIScale / 100
    Library.MinSize = Library.OriginalMinSize * Library.DPIScale

	for _, UIScale in Library.Scales do UIScale.Scale = Library.DPIScale - (tonumber(Library.ScalesOffset[UIScale]) or 0) end

    for _, Option in Options do
        if Option.Type == "Dropdown" then Option:RecalculateListSize() end
    end

    for _, Notification in Library.Notifications do Notification:Resize() end
end

function Library:GiveSignal(Connection: RBXScriptConnection | RBXScriptSignal)
    local ConnectionType = typeof(Connection)
    if Connection and (ConnectionType == "RBXScriptConnection" or ConnectionType == "RBXScriptSignal") then table.insert(Library.Signals, Connection) end

    return Connection
end

function IsValidCustomIcon(Icon: string)
    return typeof(Icon) == "string" and (Icon:match("rbxasset") or Icon:match("roblox%.com/asset/%?id=") or Icon:match("rbxthumb://type="))
end

type Icon = {
    Url: string,
    Id: number,
    IconName: string,
    ImageRectOffset: Vector2,
    ImageRectSize: Vector2,
}

type IconModule = {
    Icons: { string },
    GetAsset: (Name: string) -> Icon?,
}

local FetchIcons, Icons = pcall(function()
    return (loadstring(
        game:HttpGet("https://raw.githubusercontent.com/deividcomsono/lucide-roblox-direct/refs/heads/main/source.lua")
    ) :: () -> IconModule)()
end)

function Library:GetIcon(IconName: string)
    if not FetchIcons then return end

    local Success, Icon = pcall(Icons.GetAsset, IconName)
    if not Success then return end

    return Icon
end

function Library:GetCustomIcon(IconName: string): any
    if not IconName then return nil end

    if tonumber(IconName) then IconName = string.format("rbxassetid://%s", tostring(IconName)) end

    local CustomIcon = IsValidCustomIcon(IconName)
    if CustomIcon then
        return {
            Url = IconName,
            ImageRectOffset = Vector2.zero,
            ImageRectSize = Vector2.zero,
            Custom = true,
        }
    end

    local LucideIcon = Library:GetIcon(IconName)
    if LucideIcon then return LucideIcon end

    return nil
end

function Library:Validate(Table: { [string]: any }, Template: { [string]: any }): { [string]: any }
    if typeof(Table) ~= "table" then return Template end

    for k, v in Template do
        if typeof(k) == "number" then continue end

        if typeof(v) == "table" then
            Table[k] = Library:Validate(Table[k], v)
        elseif Table[k] == nil then Table[k] = v end
    end

    return Table
end

local function FillInstance(Table: { [string]: any }, Instance: GuiObject)
    local ThemeProperties = Library.Registry[Instance] or {}

    for key, value in Table do
        if key ~= "Text" then
            local SchemeValue = GetSchemeValue(value)

            if SchemeValue or typeof(value) == "function" then
                ThemeProperties[key] = value
                value = SchemeValue or value()
            else
                ThemeProperties[key] = nil
            end
        end

        Instance[key] = value
    end

    if GetTableSize(ThemeProperties) > 0 then Library.Registry[Instance] = ThemeProperties end
end

local function New(ClassName: string, Properties: { [string]: any }): any
    local Instance = Instance.new(ClassName)

    if Templates[ClassName] then FillInstance(Templates[ClassName], Instance) end
    FillInstance(Properties, Instance)

    if Properties["Parent"] and not Properties["ZIndex"] then
        pcall(function()
            Instance.ZIndex = Properties.Parent.ZIndex
        end)
    end

    return Instance
end

local function SafeParentUI(Instance: Instance, Parent: Instance | () -> Instance)
    local success, _error = pcall(function()
        if not Parent then Parent = CoreGui end

        local DestinationParent
        if typeof(Parent) == "function" then
            DestinationParent = Parent()
        else
            DestinationParent = Parent
        end

        Instance.Parent = DestinationParent
    end)

    if not (success and Instance.Parent) then Instance.Parent = Library.LocalPlayer:WaitForChild("PlayerGui", math.huge) end
end

local function ParentUI(UI: Instance, SkipHiddenUI: boolean?)
    if SkipHiddenUI then SafeParentUI(UI, CoreGui); return end

    pcall(protectgui, UI)
    SafeParentUI(UI, gethui)
end

local ScreenGui = New("ScreenGui", { Name = "Obsidian", DisplayOrder = 998, ResetOnSpawn = false, })
ParentUI(ScreenGui)
Library.ScreenGui = ScreenGui

ScreenGui.DescendantRemoving:Connect(function(Instance)
    Library:RemoveFromRegistry(Instance)
end)

local ModalElement = New("TextButton", { BackgroundTransparency = 1, Modal = false, Size = UDim2.fromScale(0, 0), AnchorPoint = Vector2.zero, Text = "", ZIndex = -999, Parent = ScreenGui, })

local Cursor, CursorCustomImage
do
    Cursor = New("Frame", {
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = "WhiteColor",
        Size = UDim2.fromOffset(9, 1),
        Visible = false,
        ZIndex = 11000,
        Parent = ScreenGui,
    })
    New("Frame", {
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = "DarkColor",
        Position = UDim2.fromScale(0.5, 0.5),
        Size = UDim2.new(1, 2, 1, 2),
        ZIndex = 10999,
        Parent = Cursor,
    })

    local CursorV = New("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), BackgroundColor3 = "WhiteColor", Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(1, 9), ZIndex = 11000, Parent = Cursor, })
    New("Frame", {
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = "DarkColor",
        Position = UDim2.fromScale(0.5, 0.5),
        Size = UDim2.new(1, 2, 1, 2),
        ZIndex = 10999,
        Parent = CursorV,
    })

    CursorCustomImage = New("ImageLabel", {
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 1,
        Position = UDim2.fromScale(0.5, 0.5),
        Size = UDim2.fromOffset(20, 20),
        ZIndex = 11000,
        Visible = false,
        Parent = Cursor
    })
end

local NotificationArea
local NotificationList
do
    NotificationArea = New("Frame", {
        AnchorPoint = Vector2.new(1, 0),
        BackgroundTransparency = 1,
        Position = UDim2.new(1, -6, 0, 6),
        Size = UDim2.new(0, 300, 1, -6),
        Parent = ScreenGui,
    })
    table.insert(
        Library.Scales,
        New("UIScale", {
            Parent = NotificationArea,
        })
    )

    NotificationList = New("UIListLayout", {
        HorizontalAlignment = Enum.HorizontalAlignment.Right,
        Padding = UDim.new(0, 8),
        Parent = NotificationArea,
    })
end

function Library:ResetCursorIcon() CursorCustomImage.Visible = false; CursorCustomImage.Size = UDim2.fromOffset(20, 20) end

function Library:ChangeCursorIcon(ImageId: string)
    if not ImageId or ImageId == "" then Library:ResetCursorIcon(); return end

    local Icon = Library:GetCustomIcon(ImageId)
    assert(Icon, "Image must be a valid Roblox asset or a valid URL or a valid lucide icon.")

    CursorCustomImage.Visible = true
    CursorCustomImage.Image = Icon.Url
    CursorCustomImage.ImageRectOffset = Icon.ImageRectOffset
    CursorCustomImage.ImageRectSize = Icon.ImageRectSize
end

function Library:ChangeCursorIconSize(Size: UDim2) assert(typeof(Size) == "UDim2", "UDim2 expected."); CursorCustomImage.Size = Size end

function Library:GetBetterColor(Color: Color3, Add: number): Color3
    Add = Add * (Library.IsLightTheme and -4 or 2)
    return Color3.fromRGB(
        math.clamp(Color.R * 255 + Add, 0, 255),
        math.clamp(Color.G * 255 + Add, 0, 255),
        math.clamp(Color.B * 255 + Add, 0, 255)
    )
end

function Library:GetLighterColor(Color: Color3): Color3
    local H, S, V = Color:ToHSV()
    return Color3.fromHSV(H, math.max(0, S - 0.1), math.min(1, V + 0.1))
end

function Library:GetDarkerColor(Color: Color3): Color3
    local H, S, V = Color:ToHSV()
    return Color3.fromHSV(H, S, V / 2)
end

function Library:GetKeyString(KeyCode: Enum.KeyCode)
    if KeyCode.EnumType == Enum.KeyCode and KeyCode.Value > 33 and KeyCode.Value < 127 then return string.char(KeyCode.Value) end

    return KeyCode.Name
end

function Library:GetTextBounds(Text: string, Font: Font, Size: number, Width: number?): (number, number)
    local Params = Instance.new("GetTextBoundsParams")
    Params.Text = Text
    Params.RichText = true
    Params.Font = Font
    Params.Size = Size
    Params.Width = Width or workspace.CurrentCamera.ViewportSize.X - 32

    local Bounds = TextService:GetTextBoundsAsync(Params)
    return Bounds.X, Bounds.Y
end

function Library:MouseIsOverFrame(Frame: GuiObject, Mouse: Vector2): boolean
    local AbsPos, AbsSize = Frame.AbsolutePosition, Frame.AbsoluteSize
    return Mouse.X >= AbsPos.X
        and Mouse.X <= AbsPos.X + AbsSize.X
        and Mouse.Y >= AbsPos.Y
        and Mouse.Y <= AbsPos.Y + AbsSize.Y
end

function Library:IsInsideFrame(ParentFrame: GuiObject, Frame: GuiObject)
    local GuiPos = Frame.AbsolutePosition
	local GuiSize = Frame.AbsoluteSize

	local FramePos = ParentFrame.AbsolutePosition
	local FrameSize = ParentFrame.AbsoluteSize

	return GuiPos.X >= FramePos.X
		and GuiPos.X + GuiSize.X <= FramePos.X + FrameSize.X
		and GuiPos.Y >= FramePos.Y
		and GuiPos.Y + GuiSize.Y <= FramePos.Y + FrameSize.Y
end

function Library:SafeCallback(Func: (...any) -> ...any, ...: any)
    if not (Func and typeof(Func) == "function") then return end

    local Result = table.pack(xpcall(Func, function(Error)
        task.defer(error, debug.traceback(Error, 2))
        if Library.NotifyOnError and Library.Notify then Library:Notify(Error) end

        return Error
    end, ...))

    if not Result[1] then return nil end

    return table.unpack(Result, 2, Result.n)
end

function GetOverlappingDraggable(UI: GuiObject, TargetPos: Vector2?)
    local Pos1 = TargetPos or UI.AbsolutePosition
    local Size1 = UI.AbsoluteSize

    for _, Other in ipairs(Library.DraggableElements) do
        if Other == UI or not Other.Visible or not Other.Parent then continue end

        local Pos2 = Other.AbsolutePosition
        local Size2 = Other.AbsoluteSize

        if Pos1.X < Pos2.X + Size2.X and
            Pos1.X + Size1.X > Pos2.X and
            Pos1.Y < Pos2.Y + Size2.Y and
            Pos1.Y + Size1.Y > Pos2.Y then
            return Other
        end
    end

    return nil
end

function GetNonOverlappingPosition(UI: GuiObject, StartPos: UDim2?)
    local ScreenSize = (workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920, 1080)) - Vector2.new(100, 100)
    local Start = StartPos and Vector2.new(StartPos.X.Offset, StartPos.Y.Offset) or Vector2.new(6, 6)
    local Padding = 6

    local CurrentX = Start.X
    local CurrentY = Start.Y

    local Size = UI.AbsoluteSize
    if Size.X == 0 and Size.Y == 0 then RunService.RenderStepped:Wait(); Size = UI.AbsoluteSize end

    if Size.X == 0 then Size = Vector2.new(150, 40) end

    local MaxXInColumn = Size.X

    while true do
        local Obstacle = GetOverlappingDraggable(UI, Vector2.new(CurrentX, CurrentY))
        if not Obstacle then break end

        if Obstacle.AbsoluteSize.X > MaxXInColumn then MaxXInColumn = Obstacle.AbsoluteSize.X end

        local NextY = Obstacle.AbsolutePosition.Y + Obstacle.AbsoluteSize.Y + Padding
        if NextY + Size.Y > ScreenSize.Y - Padding then
            local NextX = CurrentX + MaxXInColumn + Padding

            if NextX + Size.X > ScreenSize.X - Padding then break end

            CurrentY = Start.Y
            CurrentX = NextX
            MaxXInColumn = Size.X
        else
            CurrentY = NextY
        end
    end

    return UDim2.fromOffset(CurrentX, CurrentY)
end

function PositionDraggable(UI: GuiObject, StartPos: UDim2?)
    UI.Position = GetNonOverlappingPosition(UI, StartPos)
end

function Library:MakeDraggable(UI: GuiObject, DragFrame: GuiObject, IgnoreToggled: boolean?, IsMainWindow: boolean?)
    local StartPos
    local FramePos
    local Dragging = false
    local Changed
    local InputBegan
    local InputChanged

    InputBegan = DragFrame.InputBegan:Connect(function(Input: InputObject)
        if not IsClickInput(Input) or IsMainWindow and Library.CantDragForced then return end

        StartPos = Input.Position
        FramePos = UI.Position
        Dragging = true

        Changed = Input.Changed:Connect(function()
            if Input.UserInputState ~= Enum.UserInputState.End then return end

            Dragging = false
            if Changed and Changed.Connected then Changed:Disconnect(); Changed = nil end
        end)
    end)

    InputChanged = UserInputService.InputChanged:Connect(function(Input: InputObject)
        if
            (not IgnoreToggled and not Library.Toggled)
            or (IsMainWindow and Library.CantDragForced)
            or not (ScreenGui and ScreenGui.Parent)
        then
            Dragging = false
            if Changed and Changed.Connected then Changed:Disconnect(); Changed = nil end

            return
        end

        if Dragging and IsHoverInput(Input) then local Delta = Input.Position - StartPos UI.Position = UDim2.new(FramePos.X.Scale, FramePos.X.Offset + Delta.X, FramePos.Y.Scale, FramePos.Y.Offset + Delta.Y) end
    end)

    Library:GiveSignal(InputChanged)
    Library:GiveSignal(InputBegan)

    UI.Destroying:Once(function()
        if InputChanged and InputChanged.Connected then InputChanged:Disconnect() end

        if InputBegan and InputBegan.Connected then InputBegan:Disconnect() end

        if Changed and Changed.Connected then Changed:Disconnect() end

        local IdxChanged = table.find(Library.Signals, InputChanged)
        if IdxChanged then table.remove(Library.Signals, IdxChanged) end

        local IdxBegan = table.find(Library.Signals, InputBegan)
        if IdxBegan then table.remove(Library.Signals, IdxBegan) end
    end)
end

function Library:MakeResizable(UI: GuiObject, DragFrame: GuiObject, Callback: () -> ()?)
    local StartPos
    local FrameSize
    local Dragging = false
    local Changed
    local InputBegan
    local InputChanged

    InputBegan = DragFrame.InputBegan:Connect(function(Input: InputObject)
        if not IsClickInput(Input) then return end

        StartPos = Input.Position
        FrameSize = UI.Size
        Dragging = true

        Changed = Input.Changed:Connect(function()
            if Input.UserInputState ~= Enum.UserInputState.End then return end

            Dragging = false
            if Changed and Changed.Connected then Changed:Disconnect(); Changed = nil end
        end)
    end)

    InputChanged = UserInputService.InputChanged:Connect(function(Input: InputObject)
        if not UI.Visible or not (ScreenGui and ScreenGui.Parent) then
            Dragging = false
            if Changed and Changed.Connected then Changed:Disconnect(); Changed = nil end

            return
        end

        if Dragging and IsHoverInput(Input) then
            local Delta = Input.Position - StartPos
            UI.Size = UDim2.new(
                FrameSize.X.Scale,
                math.clamp(FrameSize.X.Offset + Delta.X, Library.MinSize.X, math.huge),
                FrameSize.Y.Scale,
                math.clamp(FrameSize.Y.Offset + Delta.Y, Library.MinSize.Y, math.huge)
            )
            if Callback then Library:SafeCallback(Callback) end
        end
    end)

    Library:GiveSignal(InputChanged)
    Library:GiveSignal(InputBegan)

    UI.Destroying:Once(function()
        if InputChanged and InputChanged.Connected then InputChanged:Disconnect() end

        if InputBegan and InputBegan.Connected then InputBegan:Disconnect() end

        if Changed and Changed.Connected then Changed:Disconnect() end

        local IdxChanged = table.find(Library.Signals, InputChanged)
        if IdxChanged then table.remove(Library.Signals, IdxChanged) end

        local IdxBegan = table.find(Library.Signals, InputBegan)
        if IdxBegan then table.remove(Library.Signals, IdxBegan) end
    end)
end

function Library:MakeCover(Holder: GuiObject, Place: string)
    local Pos = Places[Place] or { 0, 0 }
    local Size = Sizes[Place] or { 1, 0.5 }

    local Cover = New("Frame", { AnchorPoint = Vector2.new(Pos[1], Pos[2]), BackgroundColor3 = Holder.BackgroundColor3, Position = UDim2.fromScale(Pos[1], Pos[2]), Size = UDim2.fromScale(Size[1], Size[2]), Parent = Holder, })

    return Cover
end

function Library:MakeLine(Frame: GuiObject, Info)
    local Line = New("Frame", { AnchorPoint = Info.AnchorPoint or Vector2.zero, BackgroundColor3 = "OutlineColor", Position = Info.Position, Size = Info.Size, ZIndex = Info.ZIndex or Frame.ZIndex, Parent = Frame, })

    return Line
end

function Library:AddOutline(Frame: GuiObject)
    local OutlineStroke = New("UIStroke", { Color = "OutlineColor", Thickness = 1, ZIndex = 2, Parent = Frame, })
    local ShadowStroke = New("UIStroke", { Color = "DarkColor", Thickness = 1.5, ZIndex = 1, Parent = Frame, })
    return OutlineStroke, ShadowStroke
end

function Library:AddBlank(Frame: GuiObject, Size: UDim2)
    return New("Frame", {
        BackgroundTransparency = 1,
        Size = Size or UDim2.fromScale(0, 0),
        Parent = Frame,
    })
end

function Library:MakeOutline(Frame: GuiObject, Corner: number?, ZIndex: number?)
    warn("Obsidian:MakeOutline is deprecated, please use Obsidian:AddOutline instead.")
    local Holder = New("Frame", { BackgroundColor3 = "DarkColor", Position = UDim2.fromOffset(-2, -2), Size = UDim2.new(1, 4, 1, 4), ZIndex = ZIndex, Parent = Frame, })

    local Outline = New("Frame", { BackgroundColor3 = "OutlineColor", Position = UDim2.fromOffset(1, 1), Size = UDim2.new(1, -2, 1, -2), ZIndex = ZIndex, Parent = Holder, })

    if Corner and Corner > 0 then
        New("UICorner", {
            CornerRadius = UDim.new(0, Corner + 1),
            Parent = Holder,
        })
        New("UICorner", {
            CornerRadius = UDim.new(0, Corner),
            Parent = Outline,
        })
    end

    return Holder, Outline
end

function Library:AddDraggableLabel(...)
    local Params = select(1, ...)
    local Text
    local Icon
    local IconPosition = "left"

    if typeof(Params) == "table" then
        Text = Params.Text
        Icon = Params.Icon
        IconPosition = Params.IconPosition or "left"
    elseif typeof(Params) == "string" then Text = Params Icon = select(2, ...) IconPosition = select(3, ...) or "left" end

    if typeof(IconPosition) ~= "string" then IconPosition = "left" end

    IconPosition = string.lower(IconPosition)
    assert(IconPosition == "left" or IconPosition == "right", "Icon Position needs to be either 'left' or 'right'.")

    local DraggableLabel = { Connections = {}, Destroyed = false }

    local IconImage
    local Label = New("TextLabel", { AutomaticSize = Enum.AutomaticSize.XY, BackgroundColor3 = "BackgroundColor", Size = UDim2.fromOffset(0, 0), Position = UDim2.fromOffset(6, 6), Text = Text, TextSize = 15, ZIndex = 10, Parent = ScreenGui, })

    table.insert(
        Library.Corners,
        New("UICorner", {
            CornerRadius = UDim.new(0, Library.CornerRadius),
            Parent = Label,
        })
    )

    local Padding = New("UIPadding", { PaddingBottom = UDim.new(0, 6), PaddingLeft = UDim.new(0, 12), PaddingRight = UDim.new(0, 12), PaddingTop = UDim.new(0, 6), Parent = Label, })
    table.insert(
        Library.Scales,
        New("UIScale", {
            Parent = Label,
        })
    )

    Library:AddOutline(Label)
    Library:MakeDraggable(Label, Label, true)

    function DraggableLabel:SetText(Text: string)
        Label.Text = Text
    end

    function DraggableLabel:SetIcon(NewIcon: string)
        Icon = NewIcon

        local IsNotEmpty = Icon and Trim(tostring(Icon)) ~= ""
        if IsNotEmpty then
            local CustomIcon = Library:GetCustomIcon(Icon)
            assert(CustomIcon, "Icon must be a valid Roblox asset or a valid URL or a valid lucide icon.")

            IconImage = IconImage or New("ImageLabel", {
                BackgroundTransparency = 1,
                ImageColor3 = "FontColor",
                Size = UDim2.fromOffset(16, 16),
                ZIndex = 11,
                Parent = Label,
            })

            IconImage.Image = CustomIcon.Url
            IconImage.ImageRectOffset = CustomIcon.ImageRectOffset
            IconImage.ImageRectSize = CustomIcon.ImageRectSize
        end

        if IconImage then IconImage.Visible = IsNotEmpty end
        DraggableLabel:SetIconPosition(IconPosition)
    end

    function DraggableLabel:SetIconPosition(NewPosition: string)
        IconPosition = string.lower(NewPosition)
        assert(IconPosition == "left" or IconPosition == "right", "Icon Position needs to be either 'left' or 'right'.")

        local IsNotEmpty = Icon and Trim(tostring(Icon)) ~= ""
        Padding.PaddingLeft = UDim.new(0, (IsNotEmpty and IconPosition == "left") and 34 or 12)
        Padding.PaddingRight = UDim.new(0, (IsNotEmpty and IconPosition == "right") and 34 or 12)

        if IconImage then
            if IconPosition == "left" then
                IconImage.AnchorPoint = Vector2.new(0, 0.5)
                IconImage.Position = UDim2.new(0, -22, 0.5, 0)
            else
                IconImage.AnchorPoint = Vector2.new(1, 0.5)
                IconImage.Position = UDim2.new(1, 22, 0.5, 0)
            end
        end
    end

    function DraggableLabel:SetVisible(Visible: boolean)
        Label.Visible = Visible
    end

    DraggableLabel:SetIcon(Icon)
    DraggableLabel.Label = Label

    if not table.find(Library.DraggableElements, Label) then table.insert(Library.DraggableElements, Label) end

    PositionDraggable(Label, Label.Position)

    function DraggableLabel:Destroy()
        DraggableLabel.Destroyed = true

        if DraggableLabel.Connections then
            for _, connection in DraggableLabel.Connections do connection:Disconnect() end
        end

        local ElemIdx = table.find(Library.DraggableElements, Label)
        if ElemIdx then table.remove(Library.DraggableElements, ElemIdx) end

        if Label then Label:Destroy() end
    end

    return DraggableLabel
end

function Library:AddDraggableButton(...)
    local Params = select(1, ...)

    local Text
    local Func
    local ExcludeScaling
    local ExcludeDragging

    if typeof(Params) == "table" then
        Text = Params.Text
        Func = Params.Callback or Params.Func
        ExcludeScaling = Params.ExcludeScaling
        ExcludeDragging = Params.ExcludeDragging
    elseif typeof(Params) == "string" then
        Text = Params
        Func = select(2, ...)
        ExcludeScaling = select(3, ...)
        ExcludeDragging = select(4, ...)
    end

    local DraggableButton = { Connections = {}, Destroyed = false }

    local Button = New("TextButton", { BackgroundColor3 = "BackgroundColor", Position = UDim2.fromOffset(6, 6), TextSize = 16, ZIndex = 10, Parent = ScreenGui, })
    table.insert(
        Library.Corners,
        New("UICorner", {
            CornerRadius = UDim.new(0, Library.CornerRadius),
            Parent = Button,
        })
    )
    if not ExcludeScaling then
        table.insert(
            Library.Scales,
            New("UIScale", {
                Parent = Button,
            })
        )
    end
    Library:AddOutline(Button)

    local DragThreshold = if ExcludeDragging then 0.25 else math.huge
    Button.InputBegan:Connect(function(Input: InputObject)
        if not IsClickInput(Input) then return end

        local Start = tick()

        local Changed
        Changed = Input.Changed:Connect(function()
            if Input.UserInputState ~= Enum.UserInputState.End then return end

            local IsLikelyDragging = tick() - Start > DragThreshold
            if IsLikelyDragging then return end

            Library:SafeCallback(Func, DraggableButton)

            if Changed and Changed.Connected then Changed:Disconnect(); Changed = nil end
        end)
    end)

    function DraggableButton:SetText(Text: string)
        local X, Y = Library:GetTextBounds(Text, Library.Scheme.Font, 16)

        Button.Text = Text
        Button.Size = UDim2.fromOffset(X * 2, Y * 2)
    end

    Library:MakeDraggable(Button, Button, true)
    DraggableButton:SetText(Text)
    DraggableButton.Button = Button

    if not table.find(Library.DraggableElements, Button) then table.insert(Library.DraggableElements, Button) end

    PositionDraggable(Button, Button.Position)

    function DraggableButton:Destroy()
        DraggableButton.Destroyed = true

        if DraggableButton.Connections then
            for _, connection in DraggableButton.Connections do connection:Disconnect() end
        end

        local ElemIdx = table.find(Library.DraggableElements, Button)
        if ElemIdx then table.remove(Library.DraggableElements, ElemIdx) end

        if Button then Button:Destroy() end
    end

    return DraggableButton
end

function Library:AddDraggableMenu(Name: string)
    local Holder = New("Frame", { AutomaticSize = Enum.AutomaticSize.XY, BackgroundColor3 = "BackgroundColor", Position = UDim2.fromOffset(6, 6), Size = UDim2.fromOffset(0, 0), ZIndex = 10, Parent = ScreenGui, })
    table.insert(
        Library.Corners,
        New("UICorner", {
            CornerRadius = UDim.new(0, Library.CornerRadius),
            Parent = Holder,
        })
    )
    table.insert(
        Library.Scales,
        New("UIScale", {
            Parent = Holder,
        })
    )
    Library:AddOutline(Holder)

    Library:MakeLine(Holder, { Position = UDim2.fromOffset(0, 34), Size = UDim2.new(1, 0, 0, 1), })

    local Label = New("TextLabel", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 34), Text = Name, TextSize = 15, TextXAlignment = Enum.TextXAlignment.Left, Parent = Holder, })
    New("UIPadding", {
        PaddingLeft = UDim.new(0, 12),
        PaddingRight = UDim.new(0, 12),
        Parent = Label,
    })

    local Container = New("Frame", { BackgroundTransparency = 1, Position = UDim2.fromOffset(0, 35), Size = UDim2.new(1, 0, 1, -35), Parent = Holder, })
    New("UIListLayout", {
        Padding = UDim.new(0, 7),
        Parent = Container,
    })
    New("UIPadding", {
        PaddingBottom = UDim.new(0, 7),
        PaddingLeft = UDim.new(0, 7),
        PaddingRight = UDim.new(0, 7),
        PaddingTop = UDim.new(0, 7),
        Parent = Container,
    })

    Library:MakeDraggable(Holder, Label, true)

    if not table.find(Library.DraggableElements, Holder) then table.insert(Library.DraggableElements, Holder) end

    PositionDraggable(Holder, Holder.Position)

    return Holder, Container
end

function Library:AddDraggableImageButton(...)
    local Params = select(1, ...)

    local Icon
    local IconSize
    local Func
    local ExcludeScaling
    local ExcludeDragging

    if typeof(Params) == "table" then
        Icon = Params.Icon
        IconSize = Params.IconSize or 24
        Func = Params.Callback or Params.Func
        ExcludeScaling = Params.ExcludeScaling
        ExcludeDragging = Params.ExcludeDragging
    elseif typeof(Params) == "string" or typeof(Params) == "number" then
        Icon = Params
        IconSize = select(2, ...)
        Func = select(3, ...)
        ExcludeScaling = select(4, ...)
        ExcludeDragging = select(5, ...)
    end

    local DraggableImageButton = {}

    local Button = New("TextButton", { BackgroundColor3 = "BackgroundColor", Position = UDim2.fromOffset(6, 6), Size = UDim2.fromOffset(IconSize + 12, IconSize + 12), Text = "", ZIndex = 10, Parent = ScreenGui, })

    local IconImage = New("ImageLabel", { BackgroundTransparency = 1, AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(IconSize, IconSize), ImageColor3 = "FontColor", ZIndex = 11, Parent = Button, })

    table.insert(
        Library.Corners,
        New("UICorner", {
            CornerRadius = UDim.new(0, Library.CornerRadius),
            Parent = Button,
        })
    )
    if not ExcludeScaling then
        table.insert(
            Library.Scales,
            New("UIScale", {
                Parent = Button,
            })
        )
    end
    Library:AddOutline(Button)

    local DragThreshold = if ExcludeDragging then 0.25 else math.huge
    Button.InputBegan:Connect(function(Input: InputObject)
        if not IsClickInput(Input) then return end

        local Start = tick()

        local Changed
        Changed = Input.Changed:Connect(function()
            if Input.UserInputState ~= Enum.UserInputState.End then return end

            local IsLikelyDragging = tick() - Start > DragThreshold
            if IsLikelyDragging then return end

            Library:SafeCallback(Func, DraggableImageButton)

            if Changed and Changed.Connected then Changed:Disconnect(); Changed = nil end
        end)
    end)

    function DraggableImageButton:SetIcon(NewIcon: string)
        Icon = NewIcon or Icon

        local CustomIcon = Library:GetCustomIcon(Icon)
        assert(CustomIcon, "Icon must be a valid Roblox asset or a valid URL or a valid lucide icon.")

        IconImage.Image = CustomIcon.Url
        IconImage.ImageRectOffset = CustomIcon.ImageRectOffset
        IconImage.ImageRectSize = CustomIcon.ImageRectSize
    end

    function DraggableImageButton:SetIconSize(NewSize: number)
        IconSize = NewSize
        IconImage.Size = UDim2.fromOffset(IconSize, IconSize)
        Button.Size = UDim2.fromOffset(IconSize + 12, IconSize + 12)
    end

    Library:MakeDraggable(Button, Button, true)
    DraggableImageButton:SetIcon(Icon)
    DraggableImageButton.Button = Button

    if not table.find(Library.DraggableElements, Button) then table.insert(Library.DraggableElements, Button) end

    PositionDraggable(Button, Button.Position)

    return DraggableImageButton
end

do
    local WatermarkLabel = Library:AddDraggableLabel("")
    WatermarkLabel:SetVisible(false)

    function Library:SetWatermark(Text: string) warn("Watermark is deprecated, please use Library:AddDraggableLabel instead."); WatermarkLabel:SetText(Text) end

    function Library:SetWatermarkVisibility(Visible: boolean) warn("Watermark is deprecated, please use Library:AddDraggableLabel instead."); WatermarkLabel:SetVisible(Visible) end
end

local CurrentMenu
function Library:AddContextMenu(
    Holder: GuiObject,
    Size: UDim2 | () -> (),
    Offset: { [number]: number } | () -> {},
    List: number?,
    ActiveCallback: (Active: boolean) -> ()?,
    IgnoreCornerRadius: boolean?,
    SpecificCornersOnly: ("top" | "bottom" | "no_left" | "no_top_left")? -- stupid way of doing this
)
    local Menu
    local ParentGui = Holder:FindFirstAncestorOfClass("ScreenGui")
    if ParentGui ~= ScreenGui and (Library.ActiveLoading and ParentGui ~= Library.ActiveLoading.ScreenGui) then ParentGui = ScreenGui end

    if List then
        Menu = New("ScrollingFrame", {
            AutomaticCanvasSize = List == 2 and Enum.AutomaticSize.Y or Enum.AutomaticSize.None,
            AutomaticSize = List == 1 and Enum.AutomaticSize.Y or Enum.AutomaticSize.None,
            BackgroundColor3 = "BackgroundColor",
            BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
            CanvasSize = UDim2.fromOffset(0, 0),
            ScrollBarImageColor3 = "OutlineColor",
            ScrollBarThickness = List == 2 and 2 or 0,
            Size = typeof(Size) == "function" and Size() or Size,
            TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
            Visible = false,
            ZIndex = 10,
            Parent = ParentGui,
        })
    else
        Menu = New("Frame", {
            BackgroundColor3 = "BackgroundColor",
            Size = typeof(Size) == "function" and Size() or Size,
            Visible = false,
            ZIndex = 10,
            Parent = ParentGui,
        })
    end
    table.insert(
        Library.Scales,
        New("UIScale", {
            Parent = Menu,
        })
    )

    New("UIStroke", {
        Color = "OutlineColor",
        Parent = Menu,
    })

    local Corner;
    if IgnoreCornerRadius ~= true then
        if SpecificCornersOnly == "top" then
            Corner = New("UICorner", {
                TopLeftRadius = UDim.new(0, Library.CornerRadius / 2),
                TopRightRadius = UDim.new(0, Library.CornerRadius / 2),
                BottomRightRadius = UDim.new(0, 0),
                BottomLeftRadius = UDim.new(0, 0),
                Parent = Menu,
            }); table.insert(Library.SpecificCorners, Corner)
        elseif SpecificCornersOnly == "bottom" then
            Corner = New("UICorner", {
                TopLeftRadius = UDim.new(0, 0),
                TopRightRadius = UDim.new(0, 0),
                BottomRightRadius = UDim.new(0, Library.CornerRadius / 2),
                BottomLeftRadius = UDim.new(0, Library.CornerRadius / 2),
                Parent = Menu,
            }); table.insert(Library.SpecificCorners, Corner)
        elseif SpecificCornersOnly == "no_left" then
            Corner = New("UICorner", {
                TopLeftRadius = UDim.new(0, 0),
                TopRightRadius = UDim.new(0, Library.CornerRadius / 2),
                BottomRightRadius = UDim.new(0, Library.CornerRadius / 2),
                BottomLeftRadius = UDim.new(0, 0),
                Parent = Menu,
            }); table.insert(Library.SpecificCorners, Corner)
        elseif SpecificCornersOnly == "no_top_left" then
            Corner = New("UICorner", {
                TopLeftRadius = UDim.new(0, 0),
                TopRightRadius = UDim.new(0, Library.CornerRadius / 2),
                BottomRightRadius = UDim.new(0, Library.CornerRadius / 2),
                BottomLeftRadius = UDim.new(0, Library.CornerRadius / 2),
                Parent = Menu,
            }); table.insert(Library.SpecificCorners, Corner)
        else
            Corner = New("UICorner", {
                CornerRadius = UDim.new(0, Library.CornerRadius / 2),
                Parent = Menu,
            }); table.insert(Library.Corners, Corner)
        end
    end

    local Table = {
        Connections = {},
        Destroyed = false,

        Active = false,
        Holder = Holder,
        Menu = Menu,
        List = nil,
        Signal = nil,

        Size = Size,
    }

    if List then
        Table.List = New("UIListLayout", {
            Parent = Menu,
        })
    end

    function Table:Open()
        if CurrentMenu == Table then
            return
        elseif CurrentMenu then CurrentMenu:Close() end

        CurrentMenu = Table
        Table.Active = true

        if typeof(Offset) == "function" then
            Menu.Position = UDim2.fromOffset(
                math.floor(Holder.AbsolutePosition.X + Offset()[1]),
                math.floor(Holder.AbsolutePosition.Y + Offset()[2])
            )
        else
            Menu.Position = UDim2.fromOffset(
                math.floor(Holder.AbsolutePosition.X + Offset[1]),
                math.floor(Holder.AbsolutePosition.Y + Offset[2])
            )
        end
        Menu.Size = typeof(Table.Size) == "function" and Table.Size() or Table.Size
        if typeof(ActiveCallback) == "function" then Library:SafeCallback(ActiveCallback, true) end

        Menu.Visible = true

        Table.Signal = Holder:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
            if typeof(Offset) == "function" then
                Menu.Position = UDim2.fromOffset(
                    math.floor(Holder.AbsolutePosition.X + Offset()[1]),
                    math.floor(Holder.AbsolutePosition.Y + Offset()[2])
                )
            else
                Menu.Position = UDim2.fromOffset(
                    math.floor(Holder.AbsolutePosition.X + Offset[1]),
                    math.floor(Holder.AbsolutePosition.Y + Offset[2])
                )
            end

            if not Library:IsInsideFrame(Library.WindowContainer, Holder) and Table.Active then Table:Close() end
        end)
    end

    function Table:Close()
        if CurrentMenu ~= Table then return end
        Menu.Visible = false

        if Table.Signal then Table.Signal:Disconnect(); Table.Signal = nil end
        Table.Active = false
        CurrentMenu = nil
        if typeof(ActiveCallback) == "function" then Library:SafeCallback(ActiveCallback, false) end
    end

    function Table:Toggle()
        if Table.Active then
            Table:Close()
        else
            Table:Open()
        end
    end

    function Table:SetSize(Size) Table.Size = Size; Menu.Size = typeof(Size) == "function" and Size() or Size end

    function Table:Destroy()
        Table.Destroyed = true

        if Table.Connections then
            for _, Connection in Table.Connections do Connection:Disconnect() end
        end

        if CurrentMenu == Table then Table:Close() end

        if Menu then Menu:Destroy() end
    end

    return Table
end

Library:GiveSignal(UserInputService.InputBegan:Connect(function(Input: InputObject)
    if Library.Unloaded then return end

    if IsClickInput(Input, true) then
        local Location = Input.Position

        if
            CurrentMenu
            and not (
                Library:MouseIsOverFrame(CurrentMenu.Menu, Location)
                or Library:MouseIsOverFrame(CurrentMenu.Holder, Location)
            )
        then
            CurrentMenu:Close()
        end
    end
end))

local TooltipLabel = New("TextLabel", { AutomaticSize = Enum.AutomaticSize.Y, BackgroundColor3 = "BackgroundColor", TextSize = 14, TextWrapped = true, Visible = false, ZIndex = 20, Parent = ScreenGui, })
New("UIPadding", {
    PaddingBottom = UDim.new(0, 2),
    PaddingLeft = UDim.new(0, 4),
    PaddingRight = UDim.new(0, 4),
    PaddingTop = UDim.new(0, 2),
    Parent = TooltipLabel,
})
table.insert(
    Library.Scales,
    New("UIScale", {
        Parent = TooltipLabel,
    })
)
New("UIStroke", {
    Color = "OutlineColor",
    Parent = TooltipLabel,
})
table.insert(
    Library.Corners,
    New("UICorner", {
        CornerRadius = UDim.new(0, Library.CornerRadius / 2),
        Parent = TooltipLabel,
    })
)
TooltipLabel:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
    if Library.Unloaded then return end

    local X, _ = Library:GetTextBounds(
        TooltipLabel.Text,
        TooltipLabel.FontFace,
        TooltipLabel.TextSize,
        (workspace.CurrentCamera.ViewportSize.X - TooltipLabel.AbsolutePosition.X - 8) / Library.DPIScale
    )

    TooltipLabel.Size = UDim2.fromOffset(X + 8, 0)
end)

local CurrentHoverInstance
function Library:AddTooltip(InfoStr: string, DisabledInfoStr: string, HoverInstance: GuiObject)
    local TooltipTable = { Disabled = false, Hovering = false, Signals = {}, }

    local function DoHover()
        if
            CurrentHoverInstance == HoverInstance
            or Library.ActiveDialog
            or (CurrentMenu and Library:MouseIsOverFrame(CurrentMenu.Menu, Mouse))
            or (TooltipTable.Disabled and typeof(DisabledInfoStr) ~= "string")
            or (not TooltipTable.Disabled and typeof(InfoStr) ~= "string")
        then
            return
        end
        CurrentHoverInstance = HoverInstance

        local ParentGui = HoverInstance:FindFirstAncestorOfClass("ScreenGui")
        if ParentGui ~= ScreenGui and (Library.ActiveLoading and ParentGui ~= Library.ActiveLoading.ScreenGui) then ParentGui = ScreenGui end
        TooltipLabel.Parent = ParentGui

        TooltipLabel.Text = TooltipTable.Disabled and DisabledInfoStr or InfoStr
        TooltipLabel.Visible = true

        while
            (Library.Toggled or Library.ActiveLoading)
            and not Library.ActiveDialog
            and Library:MouseIsOverFrame(HoverInstance, Mouse)
            and not (CurrentMenu and Library:MouseIsOverFrame(CurrentMenu.Menu, Mouse))
        do
            TooltipLabel.Position = UDim2.fromOffset(
                Mouse.X + (Library.ShowCustomCursor and 8 or 14),
                Mouse.Y + (Library.ShowCustomCursor and 8 or 12)
            )

            RunService.RenderStepped:Wait()
        end

        TooltipLabel.Visible = false
        CurrentHoverInstance = nil
    end

    local function GiveSignal(Connection: RBXScriptConnection | RBXScriptSignal)
        local ConnectionType = typeof(Connection)
        if Connection and (ConnectionType == "RBXScriptConnection" or ConnectionType == "RBXScriptSignal") then table.insert(TooltipTable.Signals, Connection) end

        return Connection
    end

    GiveSignal(HoverInstance.MouseEnter:Connect(DoHover))
    GiveSignal(HoverInstance.MouseMoved:Connect(DoHover))
    GiveSignal(HoverInstance.MouseLeave:Connect(function()
        if CurrentHoverInstance ~= HoverInstance then return end

        TooltipLabel.Visible = false
        CurrentHoverInstance = nil
    end))

    function TooltipTable:Destroy()
        for Index = #TooltipTable.Signals, 1, -1 do local Connection = table.remove(TooltipTable.Signals, Index); if Connection and Connection.Connected then Connection:Disconnect() end end

        if CurrentHoverInstance == HoverInstance then
            if TooltipLabel then TooltipLabel.Visible = false end

            CurrentHoverInstance = nil
        end
    end

    table.insert(Tooltips, TooltipLabel)
    return TooltipTable
end

function Library:OnUnload(Callback)
    table.insert(Library.UnloadSignals, Callback)
end

local CheckIcon = Library:GetIcon("check")
local ArrowIcon = Library:GetIcon("chevron-up")
local ResizeIcon = Library:GetIcon("move-diagonal-2")
local KeyIcon = Library:GetIcon("key")
local MoveIcon = Library:GetIcon("move")

function Library:SetIconModule(module: IconModule)
    FetchIcons = true
    Icons = module

    CheckIcon = Library:GetIcon("check")
    ArrowIcon = Library:GetIcon("chevron-up")
    ResizeIcon = Library:GetIcon("move-diagonal-2")
    KeyIcon = Library:GetIcon("key")
    MoveIcon = Library:GetIcon("move")
end

local BaseAddons = {}
do
    local Funcs = {}

    function Funcs:AddKeyPicker(Idx, Info)
        if self.Destroyed then return nil end

        Info = Library:Validate(Info, Templates.KeyPicker)

        local ParentObj = self
        local ToggleLabel = ParentObj.TextLabel

        if ParentObj.Type == "Button" or ParentObj.Type == "SubButton" then
            assert(Info.Mode == "Press", "KeyPicker on Buttons can only be applied with the 'Press' mode.")

            ToggleLabel = ParentObj.Base
        end

        local KeyPicker = {
            Connections = {},

            Text = Info.Text,
            Value = Info.Default, -- Key
            Modifiers = Info.DefaultModifiers, -- Modifiers
            DisplayValue = Info.Default, -- Picker Text

            Blacklisted = Info.Blacklisted,
            BlacklistedModifiers = Info.BlacklistedModifiers,
            Whitelisted = Info.Whitelisted,
            WhitelistedModifiers = Info.WhitelistedModifiers,

            Toggled = false,
            Mode = Info.Mode,
            SyncToggleState = Info.SyncToggleState,

            Callback = Info.Callback,
            ChangedCallback = Info.ChangedCallback,
            Changed = Info.Changed,
            Clicked = Info.Clicked,

            Type = "KeyPicker",
        }

        if KeyPicker.Mode == "Press" then
            assert(ParentObj.Type == "Label" or ParentObj.Type == "Button" or ParentObj.Type == "SubButton", "KeyPicker with the mode 'Press' can be only applied on Labels and Buttons.")

            KeyPicker.SyncToggleState = false
            Info.Modes = { "Press" }
            Info.Mode = "Press"
        end

        if KeyPicker.SyncToggleState then
            Info.Modes = { "Toggle", "Hold" }

            if not table.find(Info.Modes, Info.Mode) then Info.Mode = "Toggle" end
        end

        local Picking = false
        local IsForButton = ParentObj.Type == "Button" or ParentObj.Type == "SubButton"

        local SpecialKeys = { ["MB1"] = Enum.UserInputType.MouseButton1, ["MB2"] = Enum.UserInputType.MouseButton2, ["MB3"] = Enum.UserInputType.MouseButton3, }

        local SpecialKeysInput = { [Enum.UserInputType.MouseButton1] = "MB1", [Enum.UserInputType.MouseButton2] = "MB2", [Enum.UserInputType.MouseButton3] = "MB3", }

        local Modifiers = {
            ["LAlt"] = Enum.KeyCode.LeftAlt,
            ["RAlt"] = Enum.KeyCode.RightAlt,

            ["LCtrl"] = Enum.KeyCode.LeftControl,
            ["RCtrl"] = Enum.KeyCode.RightControl,

            ["LShift"] = Enum.KeyCode.LeftShift,
            ["RShift"] = Enum.KeyCode.RightShift,

            ["Tab"] = Enum.KeyCode.Tab,
            ["CapsLock"] = Enum.KeyCode.CapsLock,
        }

        local ModifiersInput = {
            [Enum.KeyCode.LeftAlt] = "LAlt",
            [Enum.KeyCode.RightAlt] = "RAlt",

            [Enum.KeyCode.LeftControl] = "LCtrl",
            [Enum.KeyCode.RightControl] = "RCtrl",

            [Enum.KeyCode.LeftShift] = "LShift",
            [Enum.KeyCode.RightShift] = "RShift",

            [Enum.KeyCode.Tab] = "Tab",
            [Enum.KeyCode.CapsLock] = "CapsLock",
        }

        local IsModifierInput = function(Input)
            return Input.UserInputType == Enum.UserInputType.Keyboard and ModifiersInput[Input.KeyCode] ~= nil
        end

        local GetActiveModifiers = function()
            local ActiveModifiers = {}

            for Name, Input in Modifiers do
                if table.find(ActiveModifiers, Name) then continue end
                if not UserInputService:IsKeyDown(Input) then continue end

                table.insert(ActiveModifiers, Name)
            end

            return ActiveModifiers
        end

        local AreModifiersHeld = function(Required)
            if not (typeof(Required) == "table" and GetTableSize(Required) > 0) then return true end

            local ActiveModifiers = GetActiveModifiers()
            local Holding = true

            for _, Name in Required do
                if table.find(ActiveModifiers, Name) then continue end

                Holding = false
                break
            end

            return Holding
        end

        local IsInputDown = function(Input)
            if not Input then return false end

            if SpecialKeysInput[Input.UserInputType] ~= nil then
                return UserInputService:IsMouseButtonPressed(Input.UserInputType)
                    and not UserInputService:GetFocusedTextBox()
            elseif Input.UserInputType == Enum.UserInputType.Keyboard then
                return UserInputService:IsKeyDown(Input.KeyCode) and not UserInputService:GetFocusedTextBox()
            else
                return false
            end
        end

        local ConvertToInputModifiers = function(CurrentModifiers)
            local InputModifiers = {}

            for _, name in CurrentModifiers do table.insert(InputModifiers, Modifiers[name]) end

            return InputModifiers
        end

        local VerifyModifiers = function(CurrentModifiers)
            if typeof(CurrentModifiers) ~= "table" then return {} end

            local ValidModifiers = {}

            for _, name in CurrentModifiers do
                if not Modifiers[name] then continue end

                table.insert(ValidModifiers, name)
            end

            return ValidModifiers
        end

        KeyPicker.Modifiers = VerifyModifiers(KeyPicker.Modifiers)

        local SlideOverflow = true
        local MaxPickerWidth = 75
        local SlidingLabel

        local LastPickerWidth = 0
        local SlideForwardTween
        local SlideBackTween
        local HandleForwardTween = function(State)
            if State ~= Enum.PlaybackState.Completed then return end

            task.wait(1.5)
            if SlideBackTween then SlideBackTween:Play() end
        end

        local HandleBackTween = function(State)
            if State ~= Enum.PlaybackState.Completed then return end

            task.wait(1.5)
            if SlideForwardTween then SlideForwardTween:Play() end
        end

        local CancelSlidingTweens = function()
            if SlideForwardTween then SlideForwardTween:Cancel() SlideForwardTween:Destroy() SlideForwardTween = nil end

            if SlideBackTween then SlideBackTween:Cancel() SlideBackTween:Destroy() SlideBackTween = nil end
        end

        local Picker = New("TextButton", { BackgroundColor3 = "MainColor", Size = UDim2.fromOffset(18, 18), Text = (IsForButton and SlideOverflow) and "" or KeyPicker.Value, TextSize = 14, Parent = ToggleLabel, })

        if IsForButton and SlideOverflow then
            Picker.ClipsDescendants = true

            SlidingLabel = New("TextLabel", {
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 1, 0),
                Position = UDim2.new(0, 0, 0, 0),
                Text = KeyPicker.Value,
                TextSize = 14,
                FontFace = Picker.FontFace,
                TextXAlignment = Enum.TextXAlignment.Center,
                Parent = Picker,
            })

            Library:AddToRegistry(SlidingLabel, { TextColor3 = "FontColor", })
        end

        New("UIStroke", {
            Color = "OutlineColor",
            Parent = Picker,
        })

        local PickerCorner = New("UICorner", {
            TopLeftRadius = UDim.new(0, Library.CornerRadius / 2),
            TopRightRadius = UDim.new(0, Library.CornerRadius / 2),
            BottomRightRadius = UDim.new(0, Library.CornerRadius / 2),
            BottomLeftRadius = UDim.new(0, Library.CornerRadius / 2),
            Parent = Picker,
        }); table.insert(Library.SpecificCorners, PickerCorner)

        if IsForButton then
            local Holder = New("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 21), Parent = ToggleLabel.Parent, })

            New("UIListLayout", {
                FillDirection = Enum.FillDirection.Horizontal,
                HorizontalFlex = Enum.UIFlexAlignment.Fill,
                Padding = UDim.new(0, 9),
                Parent = Holder,
            })

            ToggleLabel.Parent = Holder
            Picker.Parent = Holder

            Picker.Size = UDim2.new(0, 18, 1, 0)
        end

        local KeybindsToggle = { Normal = KeyPicker.Mode ~= "Toggle" }
        do
            local Holder = New("TextButton", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 16), Text = "", Visible = not Info.NoUI, Parent = Library.KeybindContainer, })

            local Label = New("TextLabel", { AutomaticSize = Enum.AutomaticSize.X, BackgroundTransparency = 1, Size = UDim2.fromScale(0, 1), Text = "", TextSize = 14, TextTransparency = 0.5, Parent = Holder, })

            local Checkbox = New("Frame", { AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = "MainColor", Position = UDim2.fromScale(0, 0.5), Size = UDim2.fromOffset(14, 14), SizeConstraint = Enum.SizeConstraint.RelativeYY, Parent = Holder, })
            table.insert(
                Library.Corners,
                New("UICorner", {
                    CornerRadius = UDim.new(0, Library.CornerRadius / 2),
                    Parent = Checkbox,
                })
            )
            New("UIStroke", {
                Color = "OutlineColor",
                Parent = Checkbox,
            })

            local CheckImage = New("ImageLabel", { Image = CheckIcon and CheckIcon.Url or "", ImageColor3 = "FontColor", ImageRectOffset = CheckIcon and CheckIcon.ImageRectOffset or Vector2.zero, ImageRectSize = CheckIcon and CheckIcon.ImageRectSize or Vector2.zero, ImageTransparency = 1, Position = UDim2.fromOffset(2, 2), Size = UDim2.new(1, -4, 1, -4), Parent = Checkbox, })

            function KeybindsToggle:Display(State) Label.TextTransparency = State and 0 or 0.5; CheckImage.ImageTransparency = State and 0 or 1 end

            function KeybindsToggle:SetText(Text)
                Label.Text = Text
            end

            function KeybindsToggle:SetVisibility(Visibility)
                Holder.Visible = Visibility
            end

            function KeybindsToggle:SetNormal(Normal)
                KeybindsToggle.Normal = Normal

                Holder.Active = not Normal
                Label.Position = Normal and UDim2.fromOffset(0, 0) or UDim2.fromOffset(22, 0)
                Checkbox.Visible = not Normal
            end

            KeyPicker.DoClick = function(...) end --// make luau lsp shut up
            Holder.MouseButton1Click:Connect(function()
                if KeybindsToggle.Normal then return end

                KeyPicker.Toggled = not KeyPicker.Toggled
                KeyPicker:DoClick()
            end)

            KeybindsToggle.Holder = Holder
            KeybindsToggle.Label = Label
            KeybindsToggle.Checkbox = Checkbox
            KeybindsToggle.Loaded = true
            table.insert(Library.KeybindToggles, KeybindsToggle)
        end

        local ModeButtons = {}
        local TotalModeButtons = GetTableSize(Info.Modes)
        local MenuTable = Library:AddContextMenu(Picker, UDim2.fromOffset(62, 0), function()
            return { Picker.AbsoluteSize.X + 1.5, 0.5 }
        end, 1, function(Active: boolean)
            PickerCorner.TopRightRadius = Active and UDim.new(0, 0) or UDim.new(0, Library.CornerRadius / 2)
            PickerCorner.BottomRightRadius = Active and UDim.new(0, 0) or UDim.new(0, Library.CornerRadius / 2)
        end, false, if TotalModeButtons == 1 then "no_left" else "no_top_left")
        KeyPicker.Menu = MenuTable

        for Index, Mode in Info.Modes do
            local ModeButton = {}

            local Button = New("TextButton", { BackgroundColor3 = "MainColor", BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, IsForButton and 21 or (TotalModeButtons == 1 and 18 or 19)), Text = Mode, TextSize = 14, TextTransparency = 0.5, Parent = MenuTable.Menu, })

            if Index == 1 and TotalModeButtons == 1 then
                table.insert(Library.SpecificCorners, New("UICorner", {
                    TopLeftRadius = UDim.new(0, 0),
                    TopRightRadius = UDim.new(0, Library.CornerRadius / 2),
                    BottomLeftRadius = UDim.new(0, 0),
                    BottomRightRadius = UDim.new(0, Library.CornerRadius / 2),
                    Parent = Button,
                }))
            elseif Index == 1 then
                table.insert(Library.SpecificCorners, New("UICorner", {
                    TopLeftRadius = UDim.new(0, 0),
                    TopRightRadius = UDim.new(0, Library.CornerRadius / 2),
                    BottomLeftRadius = UDim.new(0, 0),
                    BottomRightRadius = UDim.new(0, 0),
                    Parent = Button,
                }))
            elseif Index == TotalModeButtons then
                table.insert(Library.SpecificCorners, New("UICorner", {
                    TopLeftRadius = UDim.new(0, 0),
                    TopRightRadius = UDim.new(0, 0),
                    BottomLeftRadius = UDim.new(0, Library.CornerRadius / 2),
                    BottomRightRadius = UDim.new(0, Library.CornerRadius / 2),
                    Parent = Button,
                }))
            end

            function ModeButton:Select()
                for _, Button in ModeButtons do Button:Deselect() end

                KeyPicker.Mode = Mode

                Button.BackgroundTransparency = 0
                Button.TextTransparency = 0

                MenuTable:Close()
            end

            function ModeButton:Deselect()
                KeyPicker.Mode = nil

                Button.BackgroundTransparency = 1
                Button.TextTransparency = 0.5
            end

            Button.MouseButton1Click:Connect(function()
                ModeButton:Select()
            end)

            if KeyPicker.Mode == Mode then ModeButton:Select() end

            ModeButtons[Mode] = ModeButton
        end

        function KeyPicker:Display(PickerText)
            if Library.Unloaded then return end

            local DisplayText = PickerText or KeyPicker.DisplayValue
            if IsForButton and SlideOverflow then
                if LastPickerWidth == Picker.AbsoluteSize.X then return end

                local X, _Y = Library:GetTextBounds(
                    DisplayText,
                    Picker.FontFace,
                    Picker.TextSize,
                    10000
                )

                SlidingLabel.Text = DisplayText

                local OffsetScale = X + 9
                local PickerWidth = math.min(OffsetScale, MaxPickerWidth)
                Picker.Size = UDim2.new(0, PickerWidth, 1, 0)

                if OffsetScale > PickerWidth then
                    SlidingLabel.TextXAlignment = Enum.TextXAlignment.Left
                    SlidingLabel.Size = UDim2.new(0, OffsetScale, 1, 0)
                    SlidingLabel.Position = UDim2.fromOffset(4.5, 0)

                    RunService.RenderStepped:Wait()

                    local RealPickerWidth = Picker.AbsoluteSize.X
                    if RealPickerWidth <= 0 then RealPickerWidth = PickerWidth end

                    LastPickerWidth = RealPickerWidth

                    local OverflowDistance = OffsetScale - RealPickerWidth - 4.5
                    if OverflowDistance > 0 then
                        CancelSlidingTweens()

                        local Duration = OverflowDistance / 25
                        local TweenInfo = TweenInfo.new(
                            Duration,
                            Enum.EasingStyle.Linear, Enum.EasingDirection.InOut
                        )

                        SlideForwardTween = TweenService:Create(SlidingLabel, TweenInfo, {
                            Position = UDim2.fromOffset(-OverflowDistance, 0)
                        })

                        SlideBackTween = TweenService:Create(SlidingLabel, TweenInfo, {
                            Position = UDim2.fromOffset(4.5, 0)
                        })

                        SlideForwardTween:Play()

                        SlideForwardTween.Completed:Connect(HandleForwardTween)
                        SlideBackTween.Completed:Connect(HandleBackTween)
                    else
                        CancelSlidingTweens()

                        SlidingLabel.TextXAlignment = Enum.TextXAlignment.Center
                        SlidingLabel.Size = UDim2.new(1, 0, 1, 0)
                        SlidingLabel.Position = UDim2.new(0, 0, 0, 0)
                    end
                else
                    CancelSlidingTweens()

                    SlidingLabel.TextXAlignment = Enum.TextXAlignment.Center
                    SlidingLabel.Size = UDim2.new(1, 0, 1, 0)
                    SlidingLabel.Position = UDim2.new(0, 0, 0, 0)
                end
            else
                local X, Y = Library:GetTextBounds(
                    DisplayText,
                    Picker.FontFace,
                    Picker.TextSize,
                    ToggleLabel.AbsoluteSize.X
                )
                Picker.Text = DisplayText
                Picker.Size = IsForButton and UDim2.new(0, X + 9, 1, 0) or UDim2.fromOffset((X + 9), (Y + 4))
            end
        end

        function KeyPicker:Update()
            KeyPicker:Display()

            if Info.NoUI then return end

            if KeyPicker.Mode == "Toggle" and ParentObj.Type == "Toggle" and ParentObj.Disabled then KeybindsToggle:SetVisibility(false); return end

            local State = KeyPicker:GetState()
            local ShowToggle = Library.ShowToggleFrameInKeybinds and KeyPicker.Mode == "Toggle"

            if KeyPicker.SyncToggleState and ParentObj.Value ~= State then ParentObj:SetValue(State) end

            if KeybindsToggle.Loaded then
                if ShowToggle then
                    KeybindsToggle:SetNormal(false)
                else
                    KeybindsToggle:SetNormal(true)
                end

                KeybindsToggle:SetText(("[%s] %s (%s)"):format(KeyPicker.DisplayValue, KeyPicker.Text, KeyPicker.Mode))
                KeybindsToggle:SetVisibility(true)
                KeybindsToggle:Display(State)
            end
        end

        function KeyPicker:GetState()
            if KeyPicker.Mode == "Always" then
                return true
            elseif KeyPicker.Mode == "Hold" then
                local Key = KeyPicker.Value
                if Key == "None" then return false end

                if not AreModifiersHeld(KeyPicker.Modifiers) then return false end

                if Library.IsPicking then return false end

                if SpecialKeys[Key] ~= nil then
                    if Library.Toggled then return false end

                    return UserInputService:IsMouseButtonPressed(SpecialKeys[Key])
                        and not UserInputService:GetFocusedTextBox()
                else
                    return UserInputService:IsKeyDown(Enum.KeyCode[Key] :: any) and not UserInputService:GetFocusedTextBox()
                end
            else
                return KeyPicker.Toggled
            end
        end

        function KeyPicker:OnChanged(Func)
            KeyPicker.Changed = Func
        end

        function KeyPicker:OnClick(Func)
            KeyPicker.Clicked = Func
        end

        function KeyPicker:DoClick()
            if KeyPicker.Mode == "Press" then
                if KeyPicker.Toggled and Info.WaitForCallback == true then return end

                KeyPicker.Toggled = true
            end

            Library:SafeCallback(KeyPicker.Callback, KeyPicker.Toggled)
            Library:SafeCallback(KeyPicker.Clicked, KeyPicker.Toggled)

            if IsForButton then Library:SafeCallback(ParentObj.Func, KeyPicker.Toggled) end

            if KeyPicker.Mode == "Press" then KeyPicker.Toggled = false end
        end

        function KeyPicker:SetValue(Data)
            local Key, Mode, Modifiers = Data[1], Data[2], Data[3]

            local IsKeyValid, KeyCode = pcall(function()
                if Key == "None" then Key = nil; return nil end

                if SpecialKeys[Key] == nil then return Enum.KeyCode[Key] end

                return SpecialKeys[Key]
            end)

            if Key == nil then
                KeyPicker.Value = "None"
            elseif IsKeyValid then
                KeyPicker.Value = Key
            else
                KeyPicker.Value = "Unknown"
            end

            KeyPicker.Modifiers =
                VerifyModifiers(if typeof(Modifiers) == "table" then Modifiers else KeyPicker.Modifiers)
            KeyPicker.DisplayValue = if GetTableSize(KeyPicker.Modifiers) > 0
                then (table.concat(KeyPicker.Modifiers, " + ") .. " + " .. KeyPicker.Value)
                else KeyPicker.Value

            if ModeButtons[Mode] then ModeButtons[Mode]:Select() end

            local NewModifiers = ConvertToInputModifiers(KeyPicker.Modifiers)
            Library:SafeCallback(KeyPicker.ChangedCallback, KeyCode, NewModifiers)
            Library:SafeCallback(KeyPicker.Changed, KeyCode, NewModifiers)

            KeyPicker:Update()
        end

        function KeyPicker:SetText(Text) KeybindsToggle:SetText(Text); KeyPicker:Update() end

        local SetPickingState = function(State)
            Picking = State
            Library.IsPicking = State

            if IsForButton then ToggleLabel.Visible = not Picking; RunService.RenderStepped:Wait() end

            KeyPicker:Update()
        end

        Picker.MouseButton1Click:Connect(function()
            if Picking or Library.IsPicking then return end

            SetPickingState(true)

            if IsForButton and SlideOverflow then
                KeyPicker:Display("...")
            else
                Picker.Text = "..."
                Picker.Size = IsForButton and UDim2.new(0, 29, 1, 0) or UDim2.fromOffset(29, 18)
            end

            local Input
            local ActiveModifiers = {}

            local GetInput = nil; GetInput = function()
                Input = UserInputService.InputBegan:Wait()
                if UserInputService:GetFocusedTextBox() ~= nil then return true end

                if Input.KeyCode == Enum.KeyCode.Escape then return false end

                local IsMod = IsModifierInput(Input)
                local KeyName
                if SpecialKeysInput[Input.UserInputType] ~= nil then
                    KeyName = SpecialKeysInput[Input.UserInputType]
                elseif Input.UserInputType == Enum.UserInputType.Keyboard then
                    if IsMod then
                        KeyName = ModifiersInput[Input.KeyCode]
                    else
                        KeyName = Input.KeyCode.Name
                    end
                end

                if KeyName then
                    if IsMod then
                        if KeyPicker.WhitelistedModifiers and #KeyPicker.WhitelistedModifiers > 0 and not table.find(KeyPicker.WhitelistedModifiers, KeyName) then return GetInput() end

                        if KeyPicker.BlacklistedModifiers and table.find(KeyPicker.BlacklistedModifiers, KeyName) then return GetInput() end
                    else
                        if KeyPicker.Whitelisted and #KeyPicker.Whitelisted > 0 and not table.find(KeyPicker.Whitelisted, KeyName) then return GetInput() end

                        if KeyPicker.Blacklisted and table.find(KeyPicker.Blacklisted, KeyName) then return GetInput() end
                    end
                end

                return false
            end

            repeat
                task.wait()

                if IsForButton and SlideOverflow then
                    KeyPicker:Display("...")
                else
                    Picker.Text = "..."
                    Picker.Size = IsForButton and UDim2.new(0, 29, 1, 0) or UDim2.fromOffset(29, 18)
                end

                if GetInput() then SetPickingState(false); return end

                if Input.KeyCode == Enum.KeyCode.Escape then break end

                if IsModifierInput(Input) then
                    local StopLoop = false

                    repeat
                        task.wait()
                        if UserInputService:IsKeyDown(Input.KeyCode) then
                            task.wait(0.075)

                            if UserInputService:IsKeyDown(Input.KeyCode) then
                                if not table.find(ActiveModifiers, ModifiersInput[Input.KeyCode]) then ActiveModifiers[#ActiveModifiers + 1] = ModifiersInput[Input.KeyCode]; KeyPicker:Display(table.concat(ActiveModifiers, " + ") .. " + ...") end

                                if GetInput() then
                                    StopLoop = true
                                    break -- Invalid Input
                                end

                                if Input.KeyCode == Enum.KeyCode.Escape then break end

                                if not IsModifierInput(Input) then break end
                            else
                                if not table.find(ActiveModifiers, ModifiersInput[Input.KeyCode]) then break -- Modifier is meant to be used as a normal key -- end
                            end
                        end
                    until false

                    if StopLoop then SetPickingState(false); return end
                end

                break -- Input found, end loop
            until false

            local Key = "Unknown"
            if SpecialKeysInput[Input.UserInputType] ~= nil then
                Key = SpecialKeysInput[Input.UserInputType]
            elseif Input.UserInputType == Enum.UserInputType.Keyboard then Key = Input.KeyCode == Enum.KeyCode.Escape and "None" or Input.KeyCode.Name end

            ActiveModifiers = if Input.KeyCode == Enum.KeyCode.Escape or Key == "Unknown" then {} else ActiveModifiers

            KeyPicker.Toggled = false
            KeyPicker:SetValue({ Key, KeyPicker.Mode, ActiveModifiers })

            repeat
                task.wait()
            until not IsInputDown(Input) or UserInputService:GetFocusedTextBox()

            SetPickingState(false)
        end)
        Picker.MouseButton2Click:Connect(MenuTable.Toggle)

        table.insert(KeyPicker.Connections, UserInputService.InputBegan:Connect(function(Input: InputObject)
            if Library.Unloaded then return end

            local IsMouse = IsMouseClickInput(Input)
            if
                KeyPicker.Mode == "Always"
                or KeyPicker.Value == "Unknown"
                or KeyPicker.Value == "None"
                or Picking
                or Library.IsPicking
                or UserInputService:GetFocusedTextBox()
                or (IsMouse and Library.Toggled)
            then
                return
            end

            local Key = KeyPicker.Value
            local HoldingModifiers = AreModifiersHeld(KeyPicker.Modifiers)
            local HoldingKey = false

            if
                Key
                and HoldingModifiers == true
                and (
                    SpecialKeysInput[Input.UserInputType] == Key
                    or (Input.UserInputType == Enum.UserInputType.Keyboard and Input.KeyCode.Name == Key)
                )
            then
                HoldingKey = true
            end

            if KeyPicker.Mode == "Toggle" then
                if HoldingKey then KeyPicker.Toggled = not KeyPicker.Toggled; KeyPicker:DoClick() end
            elseif KeyPicker.Mode == "Press" then
                if HoldingKey then KeyPicker:DoClick() end
            end

            KeyPicker:Update()
        end))

        table.insert(KeyPicker.Connections, UserInputService.InputEnded:Connect(function(Input: InputObject)
            if Library.Unloaded then return end

            local IsMouse = IsMouseClickInput(Input)
            if
                KeyPicker.Value == "Unknown"
                or KeyPicker.Value == "None"
                or Picking
                or Library.IsPicking
                or UserInputService:GetFocusedTextBox()
                or (IsMouse and Library.Toggled)
            then
                return
            end

            KeyPicker:Update()
        end))

        KeyPicker:Update()

        if ParentObj.Addons then table.insert(ParentObj.Addons, KeyPicker) end

        KeyPicker.Default = KeyPicker.Value
        KeyPicker.DefaultModifiers = table.clone(KeyPicker.Modifiers or {})

        function KeyPicker:Destroy()
            KeyPicker.Destroyed = true

            if KeyPicker.Connections then
                for _, Connection in KeyPicker.Connections do Connection:Disconnect() end
            end

            if KeybindsToggle and KeybindsToggle.Loaded then if KeybindsToggle.Holder then KeybindsToggle.Holder:Destroy() end local KTIdx = table.find(Library.KeybindToggles, KeybindsToggle) if KTIdx then table.remove(Library.KeybindToggles, KTIdx) end end

            if MenuTable then MenuTable:Destroy() end

            if IsForButton and SlideOverflow then
                if SlideForwardTween then SlideForwardTween:Destroy() end

                if SlideBackTween then SlideBackTween:Destroy() end
            end

            if Picker then Picker:Destroy() end

            if ParentObj and ParentObj.Addons then
                local AddonIdx = table.find(ParentObj.Addons, KeyPicker)

                if AddonIdx then table.remove(ParentObj.Addons, AddonIdx) end
            end

            Options[Idx] = nil
        end

        Options[Idx] = KeyPicker

        return self
    end

    local HueSequenceTable = {}
    for Hue = 0, 1, 0.1 do table.insert(HueSequenceTable, ColorSequenceKeypoint.new(Hue, Color3.fromHSV(Hue, 1, 1))) end
    function Funcs:AddColorPicker(Idx, Info)
        if self.Destroyed then return nil end

        Info = Library:Validate(Info, Templates.ColorPicker)

        local ParentObj = self
        local ToggleLabel = ParentObj.TextLabel

        local ColorPicker = {
            Connections = {},
            Destroyed = false,

            Value = Info.Default,

            Transparency = Info.Transparency or 0,
            Title = Info.Title,

            Callback = Info.Callback,
            Changed = Info.Changed,

            Type = "ColorPicker",
        }
        ColorPicker.Hue, ColorPicker.Sat, ColorPicker.Vib = ColorPicker.Value:ToHSV()

        local Holder = New("TextButton", { BackgroundColor3 = ColorPicker.Value, Size = UDim2.fromOffset(18, 18), Text = "", Parent = ToggleLabel, })

        local HolderStroke = New("UIStroke", { Color = Library:GetDarkerColor(ColorPicker.Value), Parent = Holder, })

        local ColorPickerCorner = New("UICorner", {
            TopLeftRadius = UDim.new(0, Library.CornerRadius / 2),
            TopRightRadius = UDim.new(0, Library.CornerRadius / 2),
            BottomRightRadius = UDim.new(0, Library.CornerRadius / 2),
            BottomLeftRadius = UDim.new(0, Library.CornerRadius / 2),
            Parent = Holder,
        }); table.insert(Library.SpecificCorners, ColorPickerCorner)

        local HolderTransparency = New("ImageLabel", { Image = CustomImageManager.GetAsset("TransparencyTexture"), ImageTransparency = (1 - ColorPicker.Transparency), ScaleType = Enum.ScaleType.Tile, Position = UDim2.new(0, -1, 0, -1), Size = UDim2.new(1, 2, 1, 2), TileSize = UDim2.fromOffset(9, 9), Parent = Holder, })

        table.insert(
            Library.Corners,
            New("UICorner", {
                CornerRadius = UDim.new(0, Library.CornerRadius / 2),
                Parent = HolderTransparency,
            })
        )

        local ColorMenu = Library:AddContextMenu(
            Holder,
            UDim2.fromOffset(Info.Transparency and 256 or 234, 0),
            function()
                return { 0.5, Holder.AbsoluteSize.Y + 1.5 }
            end,
            1, function(Active: boolean)
                ColorPickerCorner.BottomRightRadius = Active and UDim.new(0, 0) or UDim.new(0, Library.CornerRadius / 2)
                ColorPickerCorner.BottomLeftRadius = Active and UDim.new(0, 0) or UDim.new(0, Library.CornerRadius / 2)
            end, false, "no_top_left")
        ColorMenu.List.Padding = UDim.new(0, 8)
        ColorPicker.ColorMenu = ColorMenu

        New("UIPadding", {
            PaddingBottom = UDim.new(0, 6),
            PaddingLeft = UDim.new(0, 6),
            PaddingRight = UDim.new(0, 6),
            PaddingTop = UDim.new(0, 6),
            Parent = ColorMenu.Menu,
        })

        if typeof(ColorPicker.Title) == "string" then
            New("TextLabel", {
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 0, 8),
                Text = ColorPicker.Title,
                TextSize = 14,
                TextXAlignment = Enum.TextXAlignment.Left,
                Parent = ColorMenu.Menu,
            })
        end

        local ColorHolder = New("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 200), Parent = ColorMenu.Menu, })
        New("UIListLayout", {
            FillDirection = Enum.FillDirection.Horizontal,
            Padding = UDim.new(0, 6),
            Parent = ColorHolder,
        })

        local SatVipMap = New("ImageButton", { BackgroundColor3 = ColorPicker.Value, Image = CustomImageManager.GetAsset("SaturationMap"), Size = UDim2.fromOffset(200, 200), Parent = ColorHolder, })

        local SatVibCursor = New("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), BackgroundColor3 = "WhiteColor", Size = UDim2.fromOffset(6, 6), Parent = SatVipMap, })
        New("UICorner", {
            CornerRadius = UDim.new(1, 0),
            Parent = SatVibCursor,
        })
        New("UIStroke", {
            Color = "DarkColor",
            Parent = SatVibCursor,
        })

        local HueSelector = New("TextButton", { Size = UDim2.fromOffset(16, 200), Text = "", Parent = ColorHolder, })
        New("UIGradient", {
            Color = ColorSequence.new(HueSequenceTable),
            Rotation = 90,
            Parent = HueSelector,
        })

        local HueCursor = New("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), BackgroundColor3 = "WhiteColor", BorderColor3 = "DarkColor", BorderSizePixel = 1, Position = UDim2.fromScale(0.5, ColorPicker.Hue), Size = UDim2.new(1, 2, 0, 1), Parent = HueSelector, })

        local TransparencySelector, TransparencyColor, TransparencyCursor
        if Info.Transparency then
            TransparencySelector = New("ImageButton", {
                Image = CustomImageManager.GetAsset("TransparencyTexture"),
                ScaleType = Enum.ScaleType.Tile,
                Size = UDim2.fromOffset(16, 200),
                TileSize = UDim2.fromOffset(8, 8),
                Parent = ColorHolder,
            })

            TransparencyColor = New("Frame", {
                BackgroundColor3 = ColorPicker.Value,
                Size = UDim2.fromScale(1, 1),
                Parent = TransparencySelector,
            })
            New("UIGradient", {
                Rotation = 90,
                Transparency = NumberSequence.new({
                    NumberSequenceKeypoint.new(0, 0),
                    NumberSequenceKeypoint.new(1, 1),
                }),
                Parent = TransparencyColor,
            })

            TransparencyCursor = New("Frame", {
                AnchorPoint = Vector2.new(0.5, 0.5),
                BackgroundColor3 = "WhiteColor",
                BorderColor3 = "DarkColor",
                BorderSizePixel = 1,
                Position = UDim2.fromScale(0.5, ColorPicker.Transparency),
                Size = UDim2.new(1, 2, 0, 1),
                Parent = TransparencySelector,
            })
        end

        local InfoHolder = New("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 20), Parent = ColorMenu.Menu, })
        New("UIListLayout", {
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalFlex = Enum.UIFlexAlignment.Fill,
            Padding = UDim.new(0, 8),
            Parent = InfoHolder,
        })

        local HueBox = New("TextBox", { BackgroundColor3 = "MainColor", ClearTextOnFocus = false, Size = UDim2.fromScale(1, 1), Text = "#??????", TextSize = 14, Parent = InfoHolder, })

        New("UIStroke", {
            Color = "OutlineColor",
            Parent = HueBox,
        })

        table.insert(
            Library.Corners,
            New("UICorner", {
                CornerRadius = UDim.new(0, Library.CornerRadius / 2),
                Parent = HueBox,
            })
        )

        local RgbBox = New("TextBox", { BackgroundColor3 = "MainColor", ClearTextOnFocus = false, Size = UDim2.fromScale(1, 1), Text = "?, ?, ?", TextSize = 14, Parent = InfoHolder, })

        New("UIStroke", {
            Color = "OutlineColor",
            Parent = RgbBox,
        })

        table.insert(
            Library.Corners,
            New("UICorner", {
                CornerRadius = UDim.new(0, Library.CornerRadius / 2),
                Parent = RgbBox,
            })
        )

        local ContextMenu = Library:AddContextMenu(Holder, UDim2.fromOffset(93, 0), function()
            return { Holder.AbsoluteSize.X + 1.5, 0.5 }
        end, 1, function(Active: boolean)
            ColorPickerCorner.TopRightRadius = Active and UDim.new(0, 0) or UDim.new(0, Library.CornerRadius / 2)
            ColorPickerCorner.BottomRightRadius = Active and UDim.new(0, 0) or UDim.new(0, Library.CornerRadius / 2)
        end, false, "no_top_left")
        ColorPicker.ContextMenu = ContextMenu
        ContextMenu.List.Padding = UDim.new(0, 6)
        do
            local function CreateButton(Text, Func)
                local Button = New("TextButton", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 21), Text = Text, TextSize = 14, Parent = ContextMenu.Menu, })

                Button.MouseButton1Click:Connect(function()
                    Library:SafeCallback(Func)
                    ContextMenu:Close()
                end)
            end

            CreateButton("Copy color", function()
                Library.CopiedColor = { ColorPicker.Value, ColorPicker.Transparency }
            end)

            ColorPicker.SetValueRGB = function(...) end --// make luau lsp shut up
            CreateButton("Paste color", function()
                ColorPicker:SetValueRGB(Library.CopiedColor[1], Library.CopiedColor[2])
            end)

            if setclipboard then
                CreateButton("Copy Hex", function()
                    setclipboard(tostring(ColorPicker.Value:ToHex()))
                end)

                CreateButton("Copy RGB", function()
                    setclipboard(table.concat({
                        math.floor(ColorPicker.Value.R * 255),
                        math.floor(ColorPicker.Value.G * 255),
                        math.floor(ColorPicker.Value.B * 255),
                    }, ", "))
                end)
            end
        end

        function ColorPicker:SetHSVFromRGB(Color)
            ColorPicker.Hue, ColorPicker.Sat, ColorPicker.Vib = Color:ToHSV()
        end

        function ColorPicker:Display()
            if Library.Unloaded then return end

            ColorPicker.Value = Color3.fromHSV(ColorPicker.Hue, ColorPicker.Sat, ColorPicker.Vib)

            Holder.BackgroundColor3 = ColorPicker.Value
            HolderStroke.Color = Library:GetDarkerColor(ColorPicker.Value)
            HolderTransparency.ImageTransparency = (1 - ColorPicker.Transparency)

            SatVipMap.BackgroundColor3 = Color3.fromHSV(ColorPicker.Hue, 1, 1)
            if TransparencyColor then TransparencyColor.BackgroundColor3 = ColorPicker.Value end

            SatVibCursor.Position = UDim2.fromScale(ColorPicker.Sat, 1 - ColorPicker.Vib)
            HueCursor.Position = UDim2.fromScale(0.5, ColorPicker.Hue)
            if TransparencyCursor then TransparencyCursor.Position = UDim2.fromScale(0.5, ColorPicker.Transparency) end

            HueBox.Text = "#" .. ColorPicker.Value:ToHex()
            RgbBox.Text = table.concat({
                math.floor(ColorPicker.Value.R * 255),
                math.floor(ColorPicker.Value.G * 255),
                math.floor(ColorPicker.Value.B * 255),
            }, ", ")
        end

        function ColorPicker:Update()
            ColorPicker:Display()

            Library:SafeCallback(ColorPicker.Callback, ColorPicker.Value)
            Library:SafeCallback(ColorPicker.Changed, ColorPicker.Value)
        end

        function ColorPicker:OnChanged(Func)
            ColorPicker.Changed = Func
        end

        function ColorPicker:SetValue(HSV, Transparency)
            if typeof(HSV) == "Color3" then ColorPicker:SetValueRGB(HSV, Transparency); return end

            local Color = Color3.fromHSV(HSV[1], HSV[2], HSV[3])
            ColorPicker.Transparency = Info.Transparency and Transparency or 0
            ColorPicker:SetHSVFromRGB(Color)
            ColorPicker:Update()
        end

        function ColorPicker:SetValueRGB(Color, Transparency)
            ColorPicker.Transparency = Info.Transparency and Transparency or 0
            ColorPicker:SetHSVFromRGB(Color)
            ColorPicker:Update()
        end

        table.insert(ColorPicker.Connections, Holder.MouseButton1Click:Connect(ColorMenu.Toggle))
        table.insert(ColorPicker.Connections, Holder.MouseButton2Click:Connect(ContextMenu.Toggle))

        table.insert(ColorPicker.Connections, SatVipMap.InputBegan:Connect(function(Input: InputObject)
            while IsDragInput(Input) and not ColorPicker.Destroyed do
                local MinX = SatVipMap.AbsolutePosition.X
                local MaxX = MinX + SatVipMap.AbsoluteSize.X
                local LocationX = math.clamp(Mouse.X, MinX, MaxX)

                local MinY = SatVipMap.AbsolutePosition.Y
                local MaxY = MinY + SatVipMap.AbsoluteSize.Y
                local LocationY = math.clamp(Mouse.Y, MinY, MaxY)

                local OldSat = ColorPicker.Sat
                local OldVib = ColorPicker.Vib
                ColorPicker.Sat = (LocationX - MinX) / (MaxX - MinX)
                ColorPicker.Vib = 1 - ((LocationY - MinY) / (MaxY - MinY))

                if ColorPicker.Sat ~= OldSat or ColorPicker.Vib ~= OldVib then ColorPicker:Update() end

                RunService.RenderStepped:Wait()
            end
        end))

        table.insert(ColorPicker.Connections, HueSelector.InputBegan:Connect(function(Input: InputObject)
            while IsDragInput(Input) and not ColorPicker.Destroyed do
                local Min = HueSelector.AbsolutePosition.Y
                local Max = Min + HueSelector.AbsoluteSize.Y
                local Location = math.clamp(Mouse.Y, Min, Max)

                local OldHue = ColorPicker.Hue
                ColorPicker.Hue = (Location - Min) / (Max - Min)

                if ColorPicker.Hue ~= OldHue then ColorPicker:Update() end

                RunService.RenderStepped:Wait()
            end
        end))

        if TransparencySelector then
            table.insert(ColorPicker.Connections, TransparencySelector.InputBegan:Connect(function(Input: InputObject)
                while IsDragInput(Input) and not ColorPicker.Destroyed do
                    local Min = TransparencySelector.AbsolutePosition.Y
                    local Max = TransparencySelector.AbsolutePosition.Y + TransparencySelector.AbsoluteSize.Y
                    local Location = math.clamp(Mouse.Y, Min, Max)

                    local OldTransparency = ColorPicker.Transparency
                    ColorPicker.Transparency = (Location - Min) / (Max - Min)

                    if ColorPicker.Transparency ~= OldTransparency then ColorPicker:Update() end

                    RunService.RenderStepped:Wait()
                end
            end))
        end

        table.insert(ColorPicker.Connections, HueBox.FocusLost:Connect(function(Enter)
            if not Enter then return end

            local Success, Color = pcall(Color3.fromHex, HueBox.Text)
            if Success and typeof(Color) == "Color3" then ColorPicker.Hue, ColorPicker.Sat, ColorPicker.Vib = Color:ToHSV() end

            ColorPicker:Update()
        end))

        table.insert(ColorPicker.Connections, RgbBox.FocusLost:Connect(function(Enter)
            if not Enter then return end

            local R, G, B = RgbBox.Text:match("(%d+),%s*(%d+),%s*(%d+)")
            if R and G and B then ColorPicker:SetHSVFromRGB(Color3.fromRGB(R, G, B)) end

            ColorPicker:Update()
        end))

        ColorPicker:Display()

        if ParentObj.Addons then table.insert(ParentObj.Addons, ColorPicker) end

        ColorPicker.Default = ColorPicker.Value

        function ColorPicker:Destroy()
            ColorPicker.Destroyed = true

            if ColorPicker.Connections then
                for _, Connection in ColorPicker.Connections do Connection:Disconnect() end
            end

            if ColorMenu then ColorMenu:Destroy() end

            if ContextMenu then ContextMenu:Destroy() end

            if Holder then Holder:Destroy() end

            if ParentObj and ParentObj.Addons then
                local AddonIdx = table.find(ParentObj.Addons, ColorPicker)

                if AddonIdx then table.remove(ParentObj.Addons, AddonIdx) end
            end

            Options[Idx] = nil
        end

        Options[Idx] = ColorPicker

        return self
    end

    BaseAddons.__index = Funcs
    BaseAddons.__namecall = function(_, Key, ...)
        return Funcs[Key](...)
    end
end

local BaseGroupbox = {}
do
    local Funcs = {}

    function Funcs:AddDivider(...)
        if self.Destroyed then return nil end

        local Params = select(1, ...)
        local Text
        local MarginTop = 0
        local MarginBottom = 0

        if typeof(Params) == "table" then
            Text = Params.Text
            MarginTop = Params.MarginTop or Params.Margin or 0
            MarginBottom = Params.MarginBottom or Params.Margin or 0
        elseif typeof(Params) == "string" then Text = Params end

        local Groupbox = self
        local Container = Groupbox.Container

        local Holder = New("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 6 + MarginTop + MarginBottom), Parent = Container, })

        local InnerHolder = New("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Parent = Holder, })

        New("UIPadding", {
            PaddingTop = UDim.new(0, MarginTop),
            PaddingBottom = UDim.new(0, MarginBottom),
            Parent = Holder,
        })

        if Text then
            local TextLabel = New("TextLabel", { AutomaticSize = Enum.AutomaticSize.X, BackgroundTransparency = 1, Size = UDim2.fromScale(1, 0), Text = Text, TextSize = 14, TextTransparency = 0.5, TextXAlignment = Enum.TextXAlignment.Center, Parent = InnerHolder, })

            local X, _ = Library:GetTextBounds(Text, TextLabel.FontFace, TextLabel.TextSize, TextLabel.AbsoluteSize.X)
            local SizeX = X // 2 + 10

            New("Frame", {
                AnchorPoint = Vector2.new(0, 0.5),
                BackgroundColor3 = "MainColor",
                BorderColor3 = "OutlineColor",
                BorderSizePixel = 1,
                Position = UDim2.fromScale(0, 0.5),
                Size = UDim2.new(0.5, -SizeX, 0, 2),
                Parent = InnerHolder,
            })
            New("Frame", {
                AnchorPoint = Vector2.new(1, 0.5),
                BackgroundColor3 = "MainColor",
                BorderColor3 = "OutlineColor",
                BorderSizePixel = 1,
                Position = UDim2.fromScale(1, 0.5),
                Size = UDim2.new(0.5, -SizeX, 0, 2),
                Parent = InnerHolder,
            })
        else
            New("Frame", {
                AnchorPoint = Vector2.new(0, 0.5),
                BackgroundColor3 = "MainColor",
                BorderColor3 = "OutlineColor",
                BorderSizePixel = 1,
                Position = UDim2.fromScale(0, 0.5),
                Size = UDim2.new(1, 0, 0, 2),
                Parent = InnerHolder,
            })
        end

        Groupbox:Resize()

        local Divider = {
            Connections = {},
            Destroyed = false,

            Holder = Holder,
            Text = Text,
            MarginTop = MarginTop,
            MarginBottom = MarginBottom,
            Type = "Divider",
        }

        function Divider:SetVisible(Value) Holder.Visible = Value == true; Groupbox:Resize() end

        function Divider:Destroy()
            Divider.Destroyed = true

            if Divider.Connections then
                for _, Connection in Divider.Connections do Connection:Disconnect() end
            end

            if Holder then Holder:Destroy() end

            local ElemIdx = table.find(Groupbox.Elements, Divider)
            if ElemIdx then table.remove(Groupbox.Elements, ElemIdx) end

            Groupbox:Resize()
        end

        table.insert(Groupbox.Elements, Divider)
        return Divider
    end

    function Funcs:AddLabel(...)
        if self.Destroyed then return nil end

        local Data = {}
        local Addons = {}

        local First = select(1, ...)
        local Second = select(2, ...)

        if typeof(First) == "table" or typeof(Second) == "table" then
            local Params = typeof(First) == "table" and First or Second

            Data.Text = Params.Text or ""
            Data.DoesWrap = Params.DoesWrap or false
            Data.Size = Params.Size or 14
            Data.Visible = Params.Visible or true
            Data.Idx = typeof(Second) == "table" and First or nil
        else
            Data.Text = First or ""
            Data.DoesWrap = Second or false
            Data.Size = 14
            Data.Visible = true
            Data.Idx = select(3, ...) or nil
        end

        local Groupbox = self
        local Container = Groupbox.Container

        local Label = {
            Connections = {},
            Destroyed = false,

            Text = Data.Text,
            DoesWrap = Data.DoesWrap,

            Addons = Addons,

            Visible = Data.Visible,
            Type = "Label",
        }

        local TextLabel = New("TextLabel", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 18), Text = Label.Text, TextSize = Data.Size, TextWrapped = Label.DoesWrap, TextXAlignment = Groupbox.IsKeyTab and Enum.TextXAlignment.Center or Enum.TextXAlignment.Left, Parent = Container, })

        function Label:SetVisible(Visible: boolean)
            Label.Visible = Visible

            TextLabel.Visible = Label.Visible
            Groupbox:Resize()
        end

        function Label:SetText(Text: string)
            Label.Text = Text
            TextLabel.Text = Text

            if Label.DoesWrap then local _, Y = Library:GetTextBounds(Label.Text, TextLabel.FontFace, TextLabel.TextSize, TextLabel.AbsoluteSize.X) TextLabel.Size = UDim2.new(1, 0, 0, Y + 4) end

            Groupbox:Resize()
        end

        if Label.DoesWrap then
            local _, Y =
                Library:GetTextBounds(Label.Text, TextLabel.FontFace, TextLabel.TextSize, TextLabel.AbsoluteSize.X)
            TextLabel.Size = UDim2.new(1, 0, 0, Y + 4)

            local Last = TextLabel.AbsoluteSize
            TextLabel:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
                if TextLabel.AbsoluteSize == Last then return end

                local _, Y =
                    Library:GetTextBounds(Label.Text, TextLabel.FontFace, TextLabel.TextSize, TextLabel.AbsoluteSize.X)
                TextLabel.Size = UDim2.new(1, 0, 0, Y + 4)

                Last = TextLabel.AbsoluteSize
                Groupbox:Resize()
            end)
        else
            New("UIListLayout", {
                FillDirection = Enum.FillDirection.Horizontal,
                HorizontalAlignment = Enum.HorizontalAlignment.Right,
                Padding = UDim.new(0, 6),
                Parent = TextLabel,
            })
        end

        Groupbox:Resize()

        Label.TextLabel = TextLabel
        Label.Container = Container
        if not Data.DoesWrap then setmetatable(Label, BaseAddons) end

        Label.Holder = TextLabel
        table.insert(Groupbox.Elements, Label)

        if Data.Idx then
            Labels[Data.Idx] = Label
        else
            table.insert(Labels, Label)
        end

        function Label:Destroy()
            Label.Destroyed = true

            if Label.Connections then
                for _, Connection in Label.Connections do Connection:Disconnect() end
            end

            if TextLabel then TextLabel:Destroy() end

            local ElemIdx = table.find(Groupbox.Elements, Label)
            if ElemIdx then table.remove(Groupbox.Elements, ElemIdx) end

            Groupbox:Resize()

            if Data.Idx then
                Labels[Data.Idx] = nil
            else
                local LblIdx = table.find(Labels, Label)

                if LblIdx then table.remove(Labels, LblIdx) end
            end
        end

        return Label
    end

    function Funcs:AddButton(...)
        if self.Destroyed then return nil end

        local function GetInfo(...)
            local Info = {}

            local First = select(1, ...)
            local Second = select(2, ...)

            if typeof(First) == "table" or typeof(Second) == "table" then
                local Params = typeof(First) == "table" and First or Second

                Info.Text = Params.Text or ""
                Info.Func = Params.Func or Params.Callback or function() end
                Info.DoubleClick = Params.DoubleClick

                Info.Tooltip = Params.Tooltip
                Info.DisabledTooltip = Params.DisabledTooltip

                Info.Risky = Params.Risky or false
                Info.Disabled = Params.Disabled or false
                Info.Visible = Params.Visible or true
                Info.Idx = typeof(Second) == "table" and First or nil
            else
                Info.Text = First or ""
                Info.Func = Second or function() end
                Info.DoubleClick = false

                Info.Tooltip = nil
                Info.DisabledTooltip = nil

                Info.Risky = false
                Info.Disabled = false
                Info.Visible = true
                Info.Idx = select(3, ...) or nil
            end

            return Info
        end
        local Info = GetInfo(...)

        local Groupbox = self
        local Container = Groupbox.Container

        local Button = {
            Connections = {},
            Destroyed = false,

            Text = Info.Text,
            Func = Info.Func,
            DoubleClick = Info.DoubleClick,

            Tooltip = Info.Tooltip,
            DisabledTooltip = Info.DisabledTooltip,
            TooltipTable = nil,

            Risky = Info.Risky,
            Disabled = Info.Disabled,
            Visible = Info.Visible,

            Tween = nil,
            Type = "Button",
        }

        local Holder = New("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 21), Parent = Container, })

        New("UIListLayout", {
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalFlex = Enum.UIFlexAlignment.Fill,
            Padding = UDim.new(0, 9),
            Parent = Holder,
        })

        local function CreateButton(Button)
            local Base = New("TextButton", { Active = not Button.Disabled, BackgroundColor3 = Button.Disabled and "BackgroundColor" or "MainColor", Size = UDim2.fromScale(1, 1), Text = Button.Text, TextSize = 14, TextTransparency = 0.4, Visible = Button.Visible, Parent = Holder, })

            local Stroke = New("UIStroke", { Color = "OutlineColor", Transparency = Button.Disabled and 0.5 or 0, Parent = Base, })

            table.insert(
                Library.Corners,
                New("UICorner", {
                    CornerRadius = UDim.new(0, Library.CornerRadius / 2),
                    Parent = Base,
                })
            )

            return Base, Stroke
        end

        local function InitEvents(Button)
            Button.Base.MouseEnter:Connect(function()
                if Button.Disabled then return end

                Button.Tween = TweenService:Create(Button.Base, Library.TweenInfo, {
                    TextTransparency = 0,
                })
                Button.Tween:Play()
            end)
            Button.Base.MouseLeave:Connect(function()
                if Button.Disabled then return end

                Button.Tween = TweenService:Create(Button.Base, Library.TweenInfo, {
                    TextTransparency = 0.4,
                })
                Button.Tween:Play()
            end)

            Button.Base.MouseButton1Click:Connect(function()
                if Button.Disabled or Button.Locked then return end

                if Button.DoubleClick then
                    Button.Locked = true

                    Button.Base.Text = "Are you sure?"
                    Button.Base.TextColor3 = Library.Scheme.AccentColor
                    Library.Registry[Button.Base].TextColor3 = "AccentColor"

                    local Clicked = WaitForEvent(Button.Base.MouseButton1Click, 0.5)

                    Button.Base.Text = Button.Text
                    Button.Base.TextColor3 = Button.Risky and Library.Scheme.RedColor or Library.Scheme.FontColor
                    Library.Registry[Button.Base].TextColor3 = Button.Risky and "RedColor" or "FontColor"

                    if Clicked then Library:SafeCallback(Button.Func) end

                    RunService.RenderStepped:Wait() --// Mouse Button fires without waiting (i hate roblox)
                    Button.Locked = false
                    return
                end

                Library:SafeCallback(Button.Func)
            end)
        end

        Button.Base, Button.Stroke = CreateButton(Button)
        InitEvents(Button)

        function Button:AddButton(...)
            local Info = GetInfo(...)

            local SubButton = {
                Connections = {},
                Destroyed = false,

                Text = Info.Text,
                Func = Info.Func,
                DoubleClick = Info.DoubleClick,

                Tooltip = Info.Tooltip,
                DisabledTooltip = Info.DisabledTooltip,
                TooltipTable = nil,

                Risky = Info.Risky,
                Disabled = Info.Disabled,
                Visible = Info.Visible,

                Tween = nil,
                Type = "SubButton",
            }

            Button.SubButton = SubButton
            SubButton.Base, SubButton.Stroke = CreateButton(SubButton)
            InitEvents(SubButton)

            function SubButton:UpdateColors()
                if Library.Unloaded then return end

                StopTween(SubButton.Tween)

                SubButton.Base.BackgroundColor3 = SubButton.Disabled and Library.Scheme.BackgroundColor
                    or Library.Scheme.MainColor
                SubButton.Base.TextTransparency = SubButton.Disabled and 0.8 or 0.4
                SubButton.Stroke.Transparency = SubButton.Disabled and 0.5 or 0

                Library.Registry[SubButton.Base].BackgroundColor3 = SubButton.Disabled and "BackgroundColor"
                    or "MainColor"
            end

            function SubButton:SetDisabled(Disabled: boolean)
                SubButton.Disabled = Disabled

                if SubButton.TooltipTable then SubButton.TooltipTable.Disabled = SubButton.Disabled end

                SubButton.Base.Active = not SubButton.Disabled
                SubButton:UpdateColors()
            end

            function SubButton:SetVisible(Visible: boolean)
                SubButton.Visible = Visible

                SubButton.Base.Visible = SubButton.Visible
                Groupbox:Resize()
            end

            function SubButton:SetText(Text: string) SubButton.Text = Text; SubButton.Base.Text = Text end

            if typeof(SubButton.Tooltip) == "string" or typeof(SubButton.DisabledTooltip) == "string" then SubButton.TooltipTable = Library:AddTooltip(SubButton.Tooltip, SubButton.DisabledTooltip, SubButton.Base) SubButton.TooltipTable.Disabled = SubButton.Disabled end

            if SubButton.Risky then SubButton.Base.TextColor3 = Library.Scheme.RedColor; Library.Registry[SubButton.Base].TextColor3 = "RedColor" end

            SubButton:UpdateColors()

            if Info.Idx then
                Buttons[Info.Idx] = SubButton
            else
                table.insert(Buttons, SubButton)
            end

            SubButton.AddKeyPicker = BaseAddons.__index.AddKeyPicker

            function SubButton:Destroy()
                SubButton.Destroyed = true

                if SubButton.TooltipTable then SubButton.TooltipTable:Destroy() end

                if SubButton.Tween then SubButton.Tween:Destroy() end

                if SubButton.Base then SubButton.Base:Destroy() end

                if Info.Idx then
                    Buttons[Info.Idx] = nil
                else
                    local BIdx = table.find(Buttons, SubButton)

                    if BIdx then table.remove(Buttons, BIdx) end
                end
            end

            return SubButton
        end

        function Button:UpdateColors()
            if Library.Unloaded then return end

            StopTween(Button.Tween)

            Button.Base.BackgroundColor3 = Button.Disabled and Library.Scheme.BackgroundColor
                or Library.Scheme.MainColor
            Button.Base.TextTransparency = Button.Disabled and 0.8 or 0.4
            Button.Stroke.Transparency = Button.Disabled and 0.5 or 0

            Library.Registry[Button.Base].BackgroundColor3 = Button.Disabled and "BackgroundColor" or "MainColor"
        end

        function Button:SetDisabled(Disabled: boolean)
            Button.Disabled = Disabled

            if Button.TooltipTable then Button.TooltipTable.Disabled = Button.Disabled end

            Button.Base.Active = not Button.Disabled
            Button:UpdateColors()
        end

        function Button:SetVisible(Visible: boolean)
            Button.Visible = Visible

            Holder.Visible = Button.Visible
            Groupbox:Resize()
        end

        function Button:SetText(Text: string) Button.Text = Text; Button.Base.Text = Text end

        if typeof(Button.Tooltip) == "string" or typeof(Button.DisabledTooltip) == "string" then Button.TooltipTable = Library:AddTooltip(Button.Tooltip, Button.DisabledTooltip, Button.Base); Button.TooltipTable.Disabled = Button.Disabled end

        if Button.Risky then Button.Base.TextColor3 = Library.Scheme.RedColor; Library.Registry[Button.Base].TextColor3 = "RedColor" end

        Button:UpdateColors()
        Groupbox:Resize()

        Button.Holder = Holder
        table.insert(Groupbox.Elements, Button)

        if Info.Idx then
            Buttons[Info.Idx] = Button
        else
            table.insert(Buttons, Button)
        end

        Button.AddKeyPicker = BaseAddons.__index.AddKeyPicker

        function Button:Destroy()
            Button.Destroyed = true

            if Button.TooltipTable then Button.TooltipTable:Destroy() end

            if Button.Tween then Button.Tween:Destroy() end

            if Button.SubButton then Button.SubButton:Destroy() end

            if Holder then Holder:Destroy() end

            local ElemIdx = table.find(Groupbox.Elements, Button)
            if ElemIdx then table.remove(Groupbox.Elements, ElemIdx) end

            Groupbox:Resize()

            if Info.Idx then
                Buttons[Info.Idx] = nil
            else
                local BIdx = table.find(Buttons, Button)

                if BIdx then table.remove(Buttons, BIdx) end
            end
        end

        return Button
    end

    function Funcs:AddCheckbox(Idx, Info)
        if self.Destroyed then return nil end

        Info = Library:Validate(Info, Templates.Toggle)

        local Groupbox = self
        local Container = Groupbox.Container

        local Toggle = {
            Connections = {},
            Destroyed = false,

            Text = Info.Text,
            Value = Info.Default,

            Tooltip = Info.Tooltip,
            DisabledTooltip = Info.DisabledTooltip,
            TooltipTable = nil,

            Callback = Info.Callback,
            Changed = Info.Changed,

            Risky = Info.Risky,
            Disabled = Info.Disabled,
            Visible = Info.Visible,
            Addons = {},

            Variant = "Checkbox",
            Type = "Toggle",
        }

        local Button = New("TextButton", { Active = not Toggle.Disabled, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 18), Text = "", Visible = Toggle.Visible, Parent = Container, })

        local Label = New("TextLabel", { BackgroundTransparency = 1, Position = UDim2.fromOffset(26, 0), Size = UDim2.new(1, -26, 1, 0), Text = Toggle.Text, TextSize = 14, TextTransparency = 0.4, TextXAlignment = Enum.TextXAlignment.Left, Parent = Button, })

        New("UIListLayout", {
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalAlignment = Enum.HorizontalAlignment.Right,
            Padding = UDim.new(0, 6),
            Parent = Label,
        })

        local Checkbox = New("Frame", { BackgroundColor3 = "MainColor", Size = UDim2.fromScale(1, 1), SizeConstraint = Enum.SizeConstraint.RelativeYY, Parent = Button, })
        table.insert(
            Library.Corners,
            New("UICorner", {
                CornerRadius = UDim.new(0, Library.CornerRadius / 2),
                Parent = Checkbox,
            })
        )

        local CheckboxStroke = New("UIStroke", { Color = "OutlineColor", Parent = Checkbox, })

        local CheckImage = New("ImageLabel", { Image = CheckIcon and CheckIcon.Url or "", ImageColor3 = "FontColor", ImageRectOffset = CheckIcon and CheckIcon.ImageRectOffset or Vector2.zero, ImageRectSize = CheckIcon and CheckIcon.ImageRectSize or Vector2.zero, ImageTransparency = 1, Position = UDim2.fromOffset(2, 2), Size = UDim2.new(1, -4, 1, -4), Parent = Checkbox, })

        function Toggle:UpdateColors()
            Toggle:Display()
        end

        function Toggle:Display()
            if Library.Unloaded then return end

            CheckboxStroke.Transparency = Toggle.Disabled and 0.5 or 0

            if Toggle.Disabled then
                Label.TextTransparency = 0.8
                CheckImage.ImageTransparency = Toggle.Value and 0.8 or 1

                Checkbox.BackgroundColor3 = Library.Scheme.BackgroundColor
                Library.Registry[Checkbox].BackgroundColor3 = "BackgroundColor"

                return
            end

            TweenService:Create(Label, Library.TweenInfo, {
                TextTransparency = Toggle.Value and 0 or 0.4,
            }):Play()
            TweenService:Create(CheckImage, Library.TweenInfo, {
                ImageTransparency = Toggle.Value and 0 or 1,
            }):Play()

            Checkbox.BackgroundColor3 = Library.Scheme.MainColor
            Library.Registry[Checkbox].BackgroundColor3 = "MainColor"
        end

        function Toggle:OnChanged(Func)
            Toggle.Changed = Func
        end

        function Toggle:SetValue(Value)
            if Toggle.Disabled then return end

            Toggle.Value = Value
            Toggle:Display()

            for _, Addon in Toggle.Addons do
                if Addon.Type == "KeyPicker" and Addon.SyncToggleState then Addon.Toggled = Toggle.Value; Addon:Update() end
            end

            Library:UpdateDependencyBoxes()
            Library:SafeCallback(Toggle.Callback, Toggle.Value)
            Library:SafeCallback(Toggle.Changed, Toggle.Value)
        end

        function Toggle:SetDisabled(Disabled: boolean)
            Toggle.Disabled = Disabled

            if Toggle.TooltipTable then Toggle.TooltipTable.Disabled = Toggle.Disabled end

            for _, Addon in Toggle.Addons do
                if Addon.Type == "KeyPicker" and Addon.SyncToggleState then Addon:Update() end
            end

            Button.Active = not Toggle.Disabled
            Toggle:Display()
        end

        function Toggle:SetVisible(Visible: boolean)
            Toggle.Visible = Visible

            Button.Visible = Toggle.Visible
            Groupbox:Resize()
        end

        function Toggle:SetText(Text: string) Toggle.Text = Text; Label.Text = Text end

        table.insert(Toggle.Connections, Button.MouseButton1Click:Connect(function()
            if Toggle.Disabled then return end

            Toggle:SetValue(not Toggle.Value)
        end))

        if typeof(Toggle.Tooltip) == "string" or typeof(Toggle.DisabledTooltip) == "string" then Toggle.TooltipTable = Library:AddTooltip(Toggle.Tooltip, Toggle.DisabledTooltip, Button); Toggle.TooltipTable.Disabled = Toggle.Disabled end

        if Toggle.Risky then Label.TextColor3 = Library.Scheme.RedColor; Library.Registry[Label].TextColor3 = "RedColor" end

        Toggle:Display()
        Groupbox:Resize()

        Toggle.TextLabel = Label
        Toggle.Container = Container
        setmetatable(Toggle, BaseAddons)

        Toggle.Holder = Button
        table.insert(Groupbox.Elements, Toggle)

        Toggle.Default = Toggle.Value

        Toggles[Idx] = Toggle

        function Toggle:Destroy()
            Toggle.Destroyed = true

            if Toggle.Connections then
                for _, Connection in Toggle.Connections do Connection:Disconnect() end
            end

            if Toggle.TooltipTable then Toggle.TooltipTable:Destroy() end

            if Button then Button:Destroy() end

            if Toggle.Addons then
                for Index = #Toggle.Addons, 1, -1 do local Addon = table.remove(Toggle.Addons, Index); if Addon and Addon.Destroy then Addon:Destroy() end end
            end

            local ElemIdx = table.find(Groupbox.Elements, Toggle)
            if ElemIdx then table.remove(Groupbox.Elements, ElemIdx) end

            Groupbox:Resize()
            Toggles[Idx] = nil
        end

        return Toggle
    end

    function Funcs:AddToggle(Idx, Info)
        if self.Destroyed then return nil end

        if Library.ForceCheckbox then return Funcs.AddCheckbox(self, Idx, Info) end

        Info = Library:Validate(Info, Templates.Toggle)

        local Groupbox = self
        local Container = Groupbox.Container

        local Toggle = {
            Connections = {},
            Destroyed = false,

            Text = Info.Text,
            Value = Info.Default,

            Tooltip = Info.Tooltip,
            DisabledTooltip = Info.DisabledTooltip,
            TooltipTable = nil,

            Callback = Info.Callback,
            Changed = Info.Changed,

            Risky = Info.Risky,
            Disabled = Info.Disabled,
            Visible = Info.Visible,
            Addons = {},

            Variant = "Switch",
            Type = "Toggle",
        }

        local Button = New("TextButton", { Active = not Toggle.Disabled, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 18), Text = "", Visible = Toggle.Visible, Parent = Container, })

        local Label = New("TextLabel", { BackgroundTransparency = 1, Size = UDim2.new(1, -40, 1, 0), Text = Toggle.Text, TextSize = 14, TextTransparency = 0.4, TextXAlignment = Enum.TextXAlignment.Left, Parent = Button, })

        New("UIListLayout", {
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalAlignment = Enum.HorizontalAlignment.Right,
            Padding = UDim.new(0, 6),
            Parent = Label,
        })

        local Switch = New("Frame", { AnchorPoint = Vector2.new(1, 0), BackgroundColor3 = "MainColor", Position = UDim2.fromScale(1, 0), Size = UDim2.fromOffset(32, 18), Parent = Button, })
        New("UICorner", {
            CornerRadius = UDim.new(1, 0),
            Parent = Switch,
        })
        New("UIPadding", {
            PaddingBottom = UDim.new(0, 2),
            PaddingLeft = UDim.new(0, 2),
            PaddingRight = UDim.new(0, 2),
            PaddingTop = UDim.new(0, 2),
            Parent = Switch,
        })
        local SwitchStroke = New("UIStroke", { Color = "OutlineColor", Parent = Switch, })

        local Ball = New("Frame", { BackgroundColor3 = "FontColor", Size = UDim2.fromScale(1, 1), SizeConstraint = Enum.SizeConstraint.RelativeYY, Parent = Switch, })
        New("UICorner", {
            CornerRadius = UDim.new(1, 0),
            Parent = Ball,
        })

        function Toggle:UpdateColors()
            Toggle:Display()
        end

        function Toggle:Display()
            if Library.Unloaded then return end

            local Offset = Toggle.Value and 1 or 0

            Switch.BackgroundTransparency = Toggle.Disabled and 0.75 or 0
            SwitchStroke.Transparency = Toggle.Disabled and 0.75 or 0

            Switch.BackgroundColor3 = Toggle.Value and Library.Scheme.AccentColor or Library.Scheme.MainColor
            SwitchStroke.Color = Toggle.Value and Library.Scheme.AccentColor or Library.Scheme.OutlineColor

            Library.Registry[Switch].BackgroundColor3 = Toggle.Value and "AccentColor" or "MainColor"
            Library.Registry[SwitchStroke].Color = Toggle.Value and "AccentColor" or "OutlineColor"

            if Toggle.Disabled then
                Label.TextTransparency = 0.8
                Ball.AnchorPoint = Vector2.new(Offset, 0)
                Ball.Position = UDim2.fromScale(Offset, 0)

                Ball.BackgroundColor3 = Library:GetDarkerColor(Library.Scheme.FontColor)
                Library.Registry[Ball].BackgroundColor3 = function()
                    return Library:GetDarkerColor(Library.Scheme.FontColor)
                end

                return
            end

            TweenService:Create(Label, Library.TweenInfo, {
                TextTransparency = Toggle.Value and 0 or 0.4,
            }):Play()
            TweenService:Create(Ball, Library.TweenInfo, {
                AnchorPoint = Vector2.new(Offset, 0),
                Position = UDim2.fromScale(Offset, 0),
            }):Play()

            Ball.BackgroundColor3 = Library.Scheme.FontColor
            Library.Registry[Ball].BackgroundColor3 = "FontColor"
        end

        function Toggle:OnChanged(Func)
            Toggle.Changed = Func
        end

        function Toggle:SetValue(Value)
            if Toggle.Disabled then return end

            Toggle.Value = Value
            Toggle:Display()

            for _, Addon in Toggle.Addons do
                if Addon.Type == "KeyPicker" and Addon.SyncToggleState then Addon.Toggled = Toggle.Value; Addon:Update() end
            end

            Library:UpdateDependencyBoxes()
            Library:SafeCallback(Toggle.Callback, Toggle.Value)
            Library:SafeCallback(Toggle.Changed, Toggle.Value)
        end

        function Toggle:SetDisabled(Disabled: boolean)
            Toggle.Disabled = Disabled

            if Toggle.TooltipTable then Toggle.TooltipTable.Disabled = Toggle.Disabled end

            for _, Addon in Toggle.Addons do
                if Addon.Type == "KeyPicker" and Addon.SyncToggleState then Addon:Update() end
            end

            Button.Active = not Toggle.Disabled
            Toggle:Display()
        end

        function Toggle:SetVisible(Visible: boolean)
            Toggle.Visible = Visible

            Button.Visible = Toggle.Visible
            Groupbox:Resize()
        end

        function Toggle:SetText(Text: string) Toggle.Text = Text; Label.Text = Text end

        table.insert(Toggle.Connections, Button.MouseButton1Click:Connect(function()
            if Toggle.Disabled then return end

            Toggle:SetValue(not Toggle.Value)
        end))

        if typeof(Toggle.Tooltip) == "string" or typeof(Toggle.DisabledTooltip) == "string" then Toggle.TooltipTable = Library:AddTooltip(Toggle.Tooltip, Toggle.DisabledTooltip, Button); Toggle.TooltipTable.Disabled = Toggle.Disabled end

        if Toggle.Risky then Label.TextColor3 = Library.Scheme.RedColor; Library.Registry[Label].TextColor3 = "RedColor" end

        Toggle:Display()
        Groupbox:Resize()

        Toggle.TextLabel = Label
        Toggle.Container = Container
        setmetatable(Toggle, BaseAddons)

        Toggle.Holder = Button
        table.insert(Groupbox.Elements, Toggle)

        Toggle.Default = Toggle.Value

        Toggles[Idx] = Toggle

        function Toggle:Destroy()
            Toggle.Destroyed = true

            if Toggle.Connections then
                for _, Connection in Toggle.Connections do Connection:Disconnect() end
            end

            if Toggle.TooltipTable then Toggle.TooltipTable:Destroy() end

            if Button then Button:Destroy() end

            if Toggle.Addons then
                for Index = #Toggle.Addons, 1, -1 do local Addon = table.remove(Toggle.Addons, Index); if Addon and Addon.Destroy then Addon:Destroy() end end
            end

            local ElemIdx = table.find(Groupbox.Elements, Toggle)
            if ElemIdx then table.remove(Groupbox.Elements, ElemIdx) end

            Groupbox:Resize()
            Toggles[Idx] = nil
        end

        return Toggle
    end

    function Funcs:AddInput(Idx, Info)
        if self.Destroyed then return nil end

        if typeof(Info) == "table" and (typeof(Info.VerifyValue) == "function" and Info.Finished ~= true) then Info.Finished = true end

        Info = Library:Validate(Info, Templates.Input)

        local Groupbox = self
        local Container = Groupbox.Container

        local Input = {
            Connections = {},
            Destroyed = false,

            Text = Info.Text,
            Value = Info.Default,

            Finished = Info.Finished,
            Numeric = Info.Numeric,
            ClearTextOnFocus = Info.ClearTextOnFocus,
            ClearTextOnBlur = Info.ClearTextOnBlur,
            Placeholder = Info.Placeholder,
            AllowEmpty = Info.AllowEmpty,
            EmptyReset = Info.EmptyReset,

            Tooltip = Info.Tooltip,
            DisabledTooltip = Info.DisabledTooltip,
            TooltipTable = nil,

            Callback = Info.Callback,
            Changed = Info.Changed,
            VerifyValue = Info.VerifyValue,

            Disabled = Info.Disabled,
            Visible = Info.Visible,

            Type = "Input",
        }

        local Holder = New("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 39), Visible = Input.Visible, Parent = Container, })

        local Label = New("TextLabel", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 14), Text = Input.Text, TextSize = 14, TextXAlignment = Enum.TextXAlignment.Left, Parent = Holder, })

        local Box = New("TextBox", { AnchorPoint = Vector2.new(0, 1), BackgroundColor3 = "MainColor", ClearTextOnFocus = not Input.Disabled and Input.ClearTextOnFocus, PlaceholderText = Input.Placeholder, Position = UDim2.fromScale(0, 1), Size = UDim2.new(1, 0, 0, 21), Text = Input.Value, TextEditable = not Input.Disabled, TextScaled = true, TextXAlignment = Enum.TextXAlignment.Left, Parent = Holder, })

        New("UIPadding", {
            PaddingBottom = UDim.new(0, 3),
            PaddingLeft = UDim.new(0, 8),
            PaddingRight = UDim.new(0, 8),
            PaddingTop = UDim.new(0, 4),
            Parent = Box,
        })

        New("UIStroke", {
            Color = "OutlineColor",
            Parent = Box,
        })

        table.insert(
            Library.Corners,
            New("UICorner", {
                CornerRadius = UDim.new(0, Library.CornerRadius / 2),
                Parent = Box,
            })
        )

        function Input:UpdateColors()
            if Library.Unloaded then return end

            Label.TextTransparency = Input.Disabled and 0.8 or 0
            Box.TextTransparency = Input.Disabled and 0.8 or 0
        end

        function Input:OnChanged(Func)
            Input.Changed = Func
        end

        function Input:SetValue(Text)
            if not Input.AllowEmpty and Trim(Text) == "" then Text = Input.EmptyReset end

            if Info.MaxLength and #Text > Info.MaxLength then Text = Text:sub(1, Info.MaxLength) end

            if Input.Numeric then
                if #tostring(Text) > 0 and not tonumber(Text) then Text = Input.Value end
            end

            if typeof(Info.VerifyValue) == "function" and (Text ~= Input.EmptyReset and Info.VerifyValue(Text) ~= true) then Text = Input.EmptyReset end

            Input.Value = Text
            Box.Text = Text

            if not Input.Disabled then Library:SafeCallback(Input.Callback, Input.Value); Library:SafeCallback(Input.Changed, Input.Value) end
        end

        function Input:SetDisabled(Disabled: boolean)
            Input.Disabled = Disabled

            if Input.TooltipTable then Input.TooltipTable.Disabled = Input.Disabled end

            Box.ClearTextOnFocus = not Input.Disabled and Input.ClearTextOnFocus
            Box.TextEditable = not Input.Disabled
            Input:UpdateColors()
        end

        function Input:SetVisible(Visible: boolean)
            Input.Visible = Visible

            Holder.Visible = Input.Visible
            Groupbox:Resize()
        end

        function Input:SetText(Text: string) Input.Text = Text; Label.Text = Text end

        if Input.Finished then
            table.insert(Input.Connections, Box.FocusLost:Connect(function(Enter)
                if not Enter then
                    if Input.ClearTextOnBlur then Box.Text = Input.Value end

                    return
                end

                Input:SetValue(Box.Text)
            end))
        else
            table.insert(Input.Connections, Box:GetPropertyChangedSignal("Text"):Connect(function()
                if Box.Text == Input.Value then return end

                Input:SetValue(Box.Text)
            end))
        end

        if typeof(Input.Tooltip) == "string" or typeof(Input.DisabledTooltip) == "string" then Input.TooltipTable = Library:AddTooltip(Input.Tooltip, Input.DisabledTooltip, Box); Input.TooltipTable.Disabled = Input.Disabled end

        Groupbox:Resize()

        Input.Holder = Holder
        table.insert(Groupbox.Elements, Input)

        Input.Default = Input.Value
        if typeof(Info.VerifyValue) == "function" and (Input.Default ~= Input.EmptyReset and Info.VerifyValue(Input.Default) ~= true) then Input:SetValue(Input.EmptyReset); Input.Default = Input.EmptyReset end

        Options[Idx] = Input

        function Input:Destroy()
            Input.Destroyed = true

            if Input.Connections then
                for _, Connection in Input.Connections do Connection:Disconnect() end
            end

            if Input.TooltipTable then Input.TooltipTable:Destroy() end

            if Holder then Holder:Destroy() end

            local ElemIdx = table.find(Groupbox.Elements, Input)
            if ElemIdx then table.remove(Groupbox.Elements, ElemIdx) end

            Groupbox:Resize()
            Options[Idx] = nil
        end

        return Input
    end

    function Funcs:AddSlider(Idx, Info)
        if self.Destroyed then return nil end

        Info = Library:Validate(Info, Templates.Slider)

        local Groupbox = self
        local Container = Groupbox.Container

        local Slider = {
            Connections = {},
            Destroyed = false,

            Text = Info.Text,
            Value = Info.Default,

            Min = Info.Min,
            Max = Info.Max,

            Prefix = Info.Prefix,
            Suffix = Info.Suffix,
            Compact = Info.Compact,
            Rounding = Info.Rounding,
            HideMax = Info.HideMax,

            Tooltip = Info.Tooltip,
            DisabledTooltip = Info.DisabledTooltip,
            TooltipTable = nil,

            Callback = Info.Callback,
            Changed = Info.Changed,

            Disabled = Info.Disabled,
            Visible = Info.Visible,

            AllowRightClickInput = Info.AllowRightClickInput,

            Type = "Slider",
        }

        local Holder = New("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, Info.Compact and 15 or 33), Visible = Slider.Visible, Parent = Container, })

        local SliderLabel
        if not Info.Compact then
            SliderLabel = New("TextLabel", {
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 0, 14),
                Text = Slider.Text,
                TextSize = 14,
                TextXAlignment = Enum.TextXAlignment.Left,
                Parent = Holder,
            })
        end

        local Bar = New("TextButton", { Active = not Slider.Disabled, AnchorPoint = Vector2.new(0, 1), BackgroundColor3 = "MainColor", Position = UDim2.fromScale(0, 1), Size = UDim2.new(1, 0, 0, 15), Text = "", Parent = Holder, })

        New("UIStroke", {
            Color = "OutlineColor",
            Parent = Bar,
        })

        local DisplayLabel = New("TextLabel", { BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), Text = "", TextSize = 14, ZIndex = 2, Parent = Bar, })
        New("UIStroke", {
            ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
            Color = "DarkColor",
            LineJoinMode = Enum.LineJoinMode.Miter,
            Parent = DisplayLabel,
        })

        local InputTextBox
        if Info.AllowRightClickInput then
            InputTextBox = New("TextBox", {
                BackgroundTransparency = 1,
                Size = UDim2.fromScale(1, 1),
                Text = "",
                TextSize = 14,
                ZIndex = 3,
                Visible = false,
                ClearTextOnFocus = false,
                Parent = Bar,
            })
            New("UIStroke", {
                ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
                Color = "DarkColor",
                LineJoinMode = Enum.LineJoinMode.Miter,
                Parent = InputTextBox,
            })
        end

        local Fill = New("Frame", { BackgroundColor3 = "AccentColor", Size = UDim2.fromScale(0.5, 1), Parent = Bar, })

        table.insert(
            Library.Corners,
            New("UICorner", {
                CornerRadius = UDim.new(0, Library.CornerRadius / 2),
                Parent = Bar,
            })
        )

        table.insert(
            Library.Corners,
            New("UICorner", {
                CornerRadius = UDim.new(0, Library.CornerRadius / 2),
                Parent = Fill,
            })
        )

        function Slider:UpdateColors()
            if Library.Unloaded then return end

            if SliderLabel then SliderLabel.TextTransparency = Slider.Disabled and 0.8 or 0 end
            DisplayLabel.TextTransparency = Slider.Disabled and 0.8 or 0

            if Info.AllowRightClickInput then InputTextBox.TextTransparency = Slider.Disabled and 0.8 or 0 end

            Fill.BackgroundColor3 = Slider.Disabled and Library.Scheme.OutlineColor or Library.Scheme.AccentColor
            Library.Registry[Fill].BackgroundColor3 = Slider.Disabled and "OutlineColor" or "AccentColor"
        end

        function Slider:Display()
            if Library.Unloaded then return end

            local CustomDisplayText = nil
            if Info.FormatDisplayValue then CustomDisplayText = Info.FormatDisplayValue(Slider, Slider.Value) end

            if CustomDisplayText then
                DisplayLabel.Text = tostring(CustomDisplayText)
            else
                if Info.Compact then
                    DisplayLabel.Text =
                        string.format("%s: %s%s%s", Slider.Text, Slider.Prefix, Slider.Value, Slider.Suffix)
                elseif Info.HideMax then
                    DisplayLabel.Text = string.format("%s%s%s", Slider.Prefix, Slider.Value, Slider.Suffix)
                else
                    DisplayLabel.Text = string.format(
                        "%s%s%s/%s%s%s",
                        Slider.Prefix,
                        Slider.Value,
                        Slider.Suffix,
                        Slider.Prefix,
                        Slider.Max,
                        Slider.Suffix
                    )
                end
            end

            local X = (Slider.Value - Slider.Min) / (Slider.Max - Slider.Min)
            Fill.Size = UDim2.fromScale(X, 1)
        end

        function Slider:OnChanged(Func)
            Slider.Changed = Func
        end

        function Slider:SetMax(Value)
            assert(Value > Slider.Min, "Max value cannot be less than the current min value.")

            Slider:SetValue(math.clamp(Slider.Value, Slider.Min, Value))
            Slider.Max = Value
            Slider:Display()
        end

        function Slider:SetMin(Value)
            assert(Value < Slider.Max, "Min value cannot be greater than the current max value.")

            Slider:SetValue(math.clamp(Slider.Value, Value, Slider.Max))
            Slider.Min = Value
            Slider:Display()
        end

        function Slider:SetValue(Str)
            if Slider.Disabled then return end

            local Num = tonumber(Str)
            if not Num or Num == Slider.Value then return end

            Num = math.clamp(Num, Slider.Min, Slider.Max)

            Slider.Value = Num
            Slider:Display()

            Library:SafeCallback(Slider.Callback, Slider.Value)
            Library:SafeCallback(Slider.Changed, Slider.Value)
        end

        function Slider:SetDisabled(Disabled: boolean)
            Slider.Disabled = Disabled

            if Slider.TooltipTable then Slider.TooltipTable.Disabled = Slider.Disabled end

            Bar.Active = not Slider.Disabled
            Slider:UpdateColors()
        end

        function Slider:SetVisible(Visible: boolean)
            Slider.Visible = Visible

            Holder.Visible = Slider.Visible
            Groupbox:Resize()
        end

        function Slider:SetText(Text: string)
            Slider.Text = Text
            if SliderLabel then SliderLabel.Text = Text; return end
            Slider:Display()
        end

        function Slider:SetPrefix(Prefix: string) Slider.Prefix = Prefix; Slider:Display() end

        function Slider:SetSuffix(Suffix: string) Slider.Suffix = Suffix; Slider:Display() end

        if Info.AllowRightClickInput then
            local LastValidText = ""
            table.insert(Slider.Connections, InputTextBox:GetPropertyChangedSignal("Text"):Connect(function()
                local Text = InputTextBox.Text
                local AsNum = tonumber(Text)

                if #tostring(Text) > 0 and not AsNum and Text ~= "-" then
                    InputTextBox.Text = LastValidText
                else
                    if Slider.Rounding == 0 and Text:find("%.") then InputTextBox.Text = LastValidText; return end

                    local DecimalPos = Text:find("%.")
                    if DecimalPos and Slider.Rounding > 0 then
                        local Decimals = #Text - DecimalPos
                        if Decimals > Slider.Rounding then InputTextBox.Text = LastValidText; return end
                    end

                    LastValidText = Text

                    if AsNum then if AsNum > Slider.Max then InputTextBox.Text = tostring(Slider.Max) elseif AsNum < Slider.Min then InputTextBox.Text = tostring(Slider.Min) end end
                end
            end))

            table.insert(Slider.Connections, InputTextBox.FocusLost:Connect(function()
                InputTextBox.Visible = false
                DisplayLabel.Visible = true

                local Num = tonumber(InputTextBox.Text)
                if not Num then return end

                Num = Round(Num, Slider.Rounding)
                Slider:SetValue(Num)
            end))
        end

        local LastTap = 0
        table.insert(Slider.Connections, Bar.InputBegan:Connect(function(Input: InputObject)
            local ValidInput = IsClickInput(Input) or Input.UserInputType == Enum.UserInputType.MouseButton2
            if not ValidInput or Slider.Disabled then return end

            if Info.AllowRightClickInput then
                local IsRightClick = Input.UserInputType == Enum.UserInputType.MouseButton2
                local IsDoubleTap = false

                if Library.IsMobile and Input.UserInputType == Enum.UserInputType.Touch then
                    if tick() - LastTap < 0.3 then IsDoubleTap = true end

                    LastTap = tick()
                end

                if IsRightClick or IsDoubleTap then
                    InputTextBox.Text = tostring(Slider.Value)
                    InputTextBox.Visible = true
                    DisplayLabel.Visible = false

                    task.spawn(InputTextBox.CaptureFocus, InputTextBox)
                    return
                end
            end

            if not IsClickInput(Input) then return end

            if Library.ActiveTab then
                for _, Side in Library.ActiveTab.Sides do Side.ScrollingEnabled = false end
            end

            if Library.ActiveLoading and Library.ActiveLoading.Sidebar then Library.ActiveLoading.Sidebar.Container.ScrollingEnabled = false end

            while IsDragInput(Input) and not Slider.Destroyed do
                local Location = Mouse.X
                local Scale = math.clamp((Location - Bar.AbsolutePosition.X) / Bar.AbsoluteSize.X, 0, 1)

                local OldValue = Slider.Value
                Slider.Value = Round(Slider.Min + ((Slider.Max - Slider.Min) * Scale), Slider.Rounding)

                Slider:Display()
                if Slider.Value ~= OldValue then Library:SafeCallback(Slider.Callback, Slider.Value); Library:SafeCallback(Slider.Changed, Slider.Value) end

                RunService.RenderStepped:Wait()
            end

            if Library.ActiveTab then
                for _, Side in Library.ActiveTab.Sides do Side.ScrollingEnabled = true end
            end

            if Library.ActiveLoading and Library.ActiveLoading.Sidebar then Library.ActiveLoading.Sidebar.Container.ScrollingEnabled = true end
        end))

        if typeof(Slider.Tooltip) == "string" or typeof(Slider.DisabledTooltip) == "string" then Slider.TooltipTable = Library:AddTooltip(Slider.Tooltip, Slider.DisabledTooltip, Bar); Slider.TooltipTable.Disabled = Slider.Disabled end

        Slider:UpdateColors()
        Slider:Display()
        Groupbox:Resize()

        Slider.Holder = Holder
        table.insert(Groupbox.Elements, Slider)

        Slider.Default = Slider.Value

        Options[Idx] = Slider

        function Slider:Destroy()
            Slider.Destroyed = true

            if Slider.Connections then
                for _, Connection in Slider.Connections do Connection:Disconnect() end
            end

            if Slider.TooltipTable then Slider.TooltipTable:Destroy() end

            if Holder then Holder:Destroy() end

            local ElemIdx = table.find(Groupbox.Elements, Slider)
            if ElemIdx then table.remove(Groupbox.Elements, ElemIdx) end

            Groupbox:Resize()
            Options[Idx] = nil
        end

        return Slider
    end

    function Funcs:AddDropdown(Idx, Info)
        if self.Destroyed then return nil end

        Info = Library:Validate(Info, Templates.Dropdown)

        local Groupbox = self
        local Container = Groupbox.Container

        if Info.SpecialType == "Player" then
            Info.Values = GetPlayers(Info.ExcludeLocalPlayer)
            Info.AllowNull = true
        elseif Info.SpecialType == "Team" then Info.Values = GetTeams(); Info.AllowNull = true end

        local Dropdown = {
            Connections = {},
            Destroyed = false,

            Text = typeof(Info.Text) == "string" and Info.Text or nil,

            Value = Info.Multi and {} or nil,
            Values = Info.Values,
            DisabledValues = Info.DisabledValues,
            ValueImages = Info.ValueImages,

            Multi = Info.Multi,

            SpecialType = Info.SpecialType,
            ExcludeLocalPlayer = Info.ExcludeLocalPlayer,
            EnablePlayerImages = Info.EnablePlayerImages,

            Tooltip = Info.Tooltip,
            DisabledTooltip = Info.DisabledTooltip,
            TooltipTable = nil,

            Callback = Info.Callback,
            Changed = Info.Changed,

            Disabled = Info.Disabled,
            Visible = Info.Visible,

            Type = "Dropdown",
        }

        local Holder = New("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, Dropdown.Text and 39 or 21), Visible = Dropdown.Visible, Parent = Container, })

        local Label = New("TextLabel", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 14), Text = Dropdown.Text, TextSize = 14, TextXAlignment = Enum.TextXAlignment.Left, Visible = not not Info.Text, ZIndex = 3, Parent = Holder, })

        local DisplayContainer = New("TextButton", { AnchorPoint = Vector2.new(0, 1), BackgroundColor3 = "MainColor", Position = UDim2.fromScale(0, 1), Size = UDim2.new(0.99999, 0, 0, 21), Text = "", TextTransparency = 1, ZIndex = 2, Parent = Holder, })

        New("UIPadding", {
            PaddingLeft = UDim.new(0, 8),
            PaddingRight = UDim.new(0, 4),
            Parent = DisplayContainer,
        })

        New("UIStroke", {
            Color = "OutlineColor",
            Parent = DisplayContainer,
        })

        local DropdownCorner = New("UICorner", {
            TopLeftRadius = UDim.new(0, Library.CornerRadius / 2),
            TopRightRadius = UDim.new(0, Library.CornerRadius / 2),
            BottomRightRadius = UDim.new(0, Library.CornerRadius / 2),
            BottomLeftRadius = UDim.new(0, Library.CornerRadius / 2),
            Parent = DisplayContainer,
        }); table.insert(Library.SpecificCorners, DropdownCorner)

        local DisplayImage = New("ImageLabel", { BackgroundTransparency = 1, Position = UDim2.fromOffset(-4, 3), Size = UDim2.fromOffset(16, 16), Image = "", ImageTransparency = 1, ZIndex = 2, Parent = DisplayContainer, })

        local DisplayButton = New("TextButton", {
            Active = not Dropdown.Disabled,
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, 21),
            Text = "---",
            TextSize = 14,
            TextXAlignment = Enum.TextXAlignment.Left,
            ZIndex = 2,
            Parent = DisplayContainer,
        })

        local ArrowImage = New("ImageLabel", { AnchorPoint = Vector2.new(1, 0.5), Image = ArrowIcon and ArrowIcon.Url or "", ImageColor3 = "FontColor", ImageRectOffset = ArrowIcon and ArrowIcon.ImageRectOffset or Vector2.zero, ImageRectSize = ArrowIcon and ArrowIcon.ImageRectSize or Vector2.zero, ImageTransparency = 0.5, Position = UDim2.fromScale(1, 0.5), Size = UDim2.fromOffset(16, 16), Parent = DisplayContainer, })

        local SearchBox
        if Info.Searchable then
            SearchBox = New("TextBox", {
                BackgroundTransparency = 1,
                PlaceholderText = "Search...",
                Position = UDim2.fromOffset(-8, 0),
                Size = UDim2.new(1, -12, 1, 0),
                TextSize = 14,
                TextXAlignment = Enum.TextXAlignment.Left,
                Visible = false,
                Parent = DisplayButton,
            })
            New("UIPadding", {
                PaddingLeft = UDim.new(0, 8),
                Parent = SearchBox,
            })
        end

        local GetValueImage = function(Value)
            if not Value then return nil end

            local ValueImage = nil
            if Dropdown.SpecialType == "Player" and Dropdown.EnablePlayerImages == true then
                if typeof(Value) == "Instance" and Value:IsA("Player") then ValueImage = { Url = string.format("rbxthumb://type=AvatarHeadShot&id=%s&w=48&h=48", tostring(Value.UserId)) } end
            else
                if Info.ValueImages and Info.ValueImages[Value] then ValueImage = Library:GetCustomIcon(Info.ValueImages[Value]) end
            end

            return ValueImage
        end

        local MenuTable = Library:AddContextMenu(
            DisplayContainer,
            function()
                return UDim2.fromOffset((DisplayContainer.AbsoluteSize.X / Library.DPIScale), 0)
            end,
            function()
                return { 0.5, DisplayContainer.AbsoluteSize.Y + 1.5 }
            end,
            2,
            function(Active: boolean)
                DisplayButton.TextTransparency = (Active and SearchBox) and 1 or 0

                ArrowImage.ImageTransparency = Active and 0 or 0.5
                ArrowImage.Rotation = Active and 180 or 0

                if SearchBox then SearchBox.Text = ""; SearchBox.Visible = Active end

                DropdownCorner.BottomRightRadius = Active and UDim.new(0, 0) or UDim.new(0, Library.CornerRadius / 2)
                DropdownCorner.BottomLeftRadius = Active and UDim.new(0, 0) or UDim.new(0, Library.CornerRadius / 2)
            end,
            false,
            "bottom"
        )
        Dropdown.Menu = MenuTable

        function Dropdown:RecalculateListSize(Count)
            local Y = math.clamp((Count or GetTableSize(Dropdown.Values)) * 21, 0, Info.MaxVisibleDropdownItems * 21)

            MenuTable:SetSize(function()
                return UDim2.fromOffset((DisplayContainer.AbsoluteSize.X / Library.DPIScale), Y)
            end)
        end

        function Dropdown:UpdateColors()
            if Library.Unloaded then return end

            Label.TextTransparency = Dropdown.Disabled and 0.8 or 0
            DisplayButton.TextTransparency = Dropdown.Disabled and 0.8 or 0
            DisplayImage.ImageTransparency = Dropdown.Disabled and 0.8 or 0
            ArrowImage.ImageTransparency = Dropdown.Disabled and 0.8 or MenuTable.Active and 0 or 0.5
        end

        function Dropdown:Display()
            if Library.Unloaded then return end

            local Str = ""
            local ValueImage = nil

            if Info.Multi then
                for _, Value in Dropdown.Values do
                    if Dropdown.Value[Value] then
                        if not ValueImage then ValueImage = GetValueImage(Value) end

                        Str = Str
                            .. (Info.FormatDisplayValue and tostring(Info.FormatDisplayValue(Value)) or tostring(Value))
                            .. ", "
                    end
                end

                Str = Str:sub(1, #Str - 2)
            else
                ValueImage = GetValueImage(Dropdown.Value)
                Str = Dropdown.Value and tostring(Dropdown.Value) or ""

                if Str ~= "" and Info.FormatDisplayValue then Str = tostring(Info.FormatDisplayValue(Str)) end
            end

            if #Str > 25 then Str = Str:sub(1, 22) .. "..." end

            DisplayButton.Text = (Str == "" and "---" or Str)

            if ValueImage then
                DisplayImage.Image = ValueImage.Url
                DisplayImage.ImageRectOffset = ValueImage.ImageRectOffset or Vector2.zero
                DisplayImage.ImageRectSize = ValueImage.ImageRectSize or Vector2.zero
                DisplayImage.ImageTransparency = 0
            else
                DisplayImage.Image = ""
                DisplayImage.ImageTransparency = 1
            end

            DisplayButton.Size = ValueImage and UDim2.new(1, -8, 0, 21) or UDim2.new(1, 0, 0, 21)
            DisplayButton.Position = ValueImage and UDim2.fromOffset(14, 0) or UDim2.fromOffset(0, 0)
        end

        function Dropdown:OnChanged(Func)
            Dropdown.Changed = Func
        end

        function Dropdown:GetActiveValues(ReturnCount)
            local Table = {}

            if Info.Multi then
                for Value, _ in Dropdown.Value do table.insert(Table, Value) end
            else
                if Dropdown.Value then table.insert(Table, Dropdown.Value) end
            end

            return ReturnCount == true and GetTableSize(Table) or Table
        end

        local Buttons = {}
        function Dropdown:BuildDropdownList()
            local Values = Dropdown.Values
            local DisabledValues = Dropdown.DisabledValues

            for Button, _ in Buttons do Button.Parent:Destroy() end
            table.clear(Buttons)

            local Count = 0
            local ProcessedCount = 0
            local TotalLen = GetTableSize(Values) + GetTableSize(DisabledValues)

            for _, Value in Values do
                ProcessedCount += 1

                local FormattedValue = tostring(Info.FormatListValue and Info.FormatListValue(Value) or Value)
                if SearchBox and not FormattedValue:lower():match(SearchBox.Text:lower()) then continue end

                Count += 1

                local IsDisabled = table.find(DisabledValues, Value)
                local Table = {}
                local ValueImage = GetValueImage(Value)

                local Container = New("Frame", { BackgroundColor3 = "MainColor", BackgroundTransparency = 1, LayoutOrder = IsDisabled and 1 or 0, Size = UDim2.new(1, 0, 0, 21), Parent = MenuTable.Menu, })

                if ProcessedCount == TotalLen then
                    local Corner = New("UICorner", {
                        TopLeftRadius = UDim.new(0, 0),
                        TopRightRadius = UDim.new(0, 0),
                        BottomRightRadius = UDim.new(0, Library.CornerRadius / 2),
                        BottomLeftRadius = UDim.new(0, Library.CornerRadius / 2),
                        Parent = Container,
                    }); table.insert(Library.SpecificCorners, Corner)
                end

                local Image = ValueImage and New("ImageLabel", {
                    BackgroundTransparency = 1,
                    Image = ValueImage.Url,
                    ImageRectOffset = ValueImage.ImageRectOffset,
                    ImageRectSize = ValueImage.ImageRectSize,
                    ImageTransparency = 0.5,
                    Size = UDim2.fromOffset(16, 16),
                    Position = UDim2.fromOffset(4, 3),
                    Parent = Container,
                })

                local Button = New("TextButton", { BackgroundTransparency = 1, Size = ValueImage and UDim2.new(1, -18, 0, 21) or UDim2.new(1, 0, 0, 21), Position = ValueImage and UDim2.fromOffset(18, 0) or UDim2.fromOffset(0, 0), Text = FormattedValue, TextSize = 14, TextTransparency = 0.5, TextXAlignment = Enum.TextXAlignment.Left, Parent = Container, })
                New("UIPadding", {
                    PaddingLeft = UDim.new(0, 7),
                    PaddingRight = UDim.new(0, 7),
                    Parent = Button,
                })

                local Selected
                if Info.Multi then
                    Selected = Dropdown.Value[Value]
                else
                    Selected = Dropdown.Value == Value
                end

                function Table:UpdateButton()
                    if Info.Multi then
                        Selected = Dropdown.Value[Value]
                    else
                        Selected = Dropdown.Value == Value
                    end

                    Container.BackgroundTransparency = Selected and 0 or 1
                    Button.TextTransparency = IsDisabled and 0.8 or Selected and 0 or 0.5

                    if Image then Image.ImageTransparency = IsDisabled and 0.8 or Selected and 0 or 0.5 end
                end

                if not IsDisabled then
                    Button.MouseButton1Click:Connect(function()
                        local Try = not Selected

                        if not (Dropdown:GetActiveValues(true) == 1 and not Try and not Info.AllowNull) then
                            Selected = Try
                            if Info.Multi then
                                Dropdown.Value[Value] = Selected and true or nil
                            else
                                Dropdown.Value = Selected and Value or nil
                            end

                            for _, OtherButton in Buttons do OtherButton:UpdateButton() end
                        end

                        Table:UpdateButton()
                        Dropdown:Display()

                        Library:UpdateDependencyBoxes()
                        Library:SafeCallback(Dropdown.Callback, Dropdown.Value)
                        Library:SafeCallback(Dropdown.Changed, Dropdown.Value)
                    end)
                end

                Table:UpdateButton()
                Dropdown:Display()

                Buttons[Button] = Table
            end

            Dropdown:RecalculateListSize(Count)
        end

        function Dropdown:SetValue(Value)
            if Info.Multi then
                local Table = {}

                for Val, Active in Value or {} do if typeof(Active) ~= "boolean" then Table[Active] = true elseif Active and table.find(Dropdown.Values, Val) then Table[Val] = true end end

                Dropdown.Value = Table
            else
                if table.find(Dropdown.Values, Value) then
                    Dropdown.Value = Value
                elseif not Value then Dropdown.Value = nil end
            end

            Dropdown:Display()
            for _, Button in Buttons do Button:UpdateButton() end

            if not Dropdown.Disabled then Library:UpdateDependencyBoxes() Library:SafeCallback(Dropdown.Callback, Dropdown.Value) Library:SafeCallback(Dropdown.Changed, Dropdown.Value) end
        end

        function Dropdown:SetValues(Values) Dropdown.Values = Values; Dropdown:BuildDropdownList() end

        function Dropdown:AddValues(Values)
            if typeof(Values) == "table" then
                for _, val in Values do table.insert(Dropdown.Values, val) end
            elseif typeof(Values) == "string" then
                table.insert(Dropdown.Values, Values)
            else
                return
            end

            Dropdown:BuildDropdownList()
        end

        function Dropdown:SetDisabledValues(DisabledValues) Dropdown.DisabledValues = DisabledValues; Dropdown:BuildDropdownList() end

        function Dropdown:AddDisabledValues(DisabledValues)
            if typeof(DisabledValues) == "table" then
                for _, val in DisabledValues do table.insert(Dropdown.DisabledValues, val) end
            elseif typeof(DisabledValues) == "string" then
                table.insert(Dropdown.DisabledValues, DisabledValues)
            else
                return
            end

            Dropdown:BuildDropdownList()
        end

        function Dropdown:SetValueImages(ValueImages)
            if typeof(ValueImages) ~= "table" then return end

            Dropdown.ValueImages = ValueImages
            Dropdown:BuildDropdownList()
        end

        function Dropdown:AddValueImages(ValueImages)
            if typeof(ValueImages) ~= "table" then return end

            for key, val in ValueImages do Dropdown.ValueImages[key] = val end

            Dropdown:BuildDropdownList()
        end

        function Dropdown:SetDisabled(Disabled: boolean)
            Dropdown.Disabled = Disabled

            if Dropdown.TooltipTable then Dropdown.TooltipTable.Disabled = Dropdown.Disabled end

            MenuTable:Close()
            DisplayButton.Active = not Dropdown.Disabled
            Dropdown:UpdateColors()
        end

        function Dropdown:SetVisible(Visible: boolean)
            Dropdown.Visible = Visible

            Holder.Visible = Dropdown.Visible
            Groupbox:Resize()
        end

        function Dropdown:SetText(Text: string)
            Dropdown.Text = Text
            Holder.Size = UDim2.new(1, 0, 0, Text and 39 or 21)

            Label.Text = Text and Text or ""
            Label.Visible = not not Text
        end

        local ToggleDropdown = function()
            if Dropdown.Disabled then return end

            MenuTable:Toggle()
        end

        table.insert(Dropdown.Connections, DisplayContainer.MouseButton1Click:Connect(ToggleDropdown))
        table.insert(Dropdown.Connections, DisplayButton.MouseButton1Click:Connect(ToggleDropdown))

        if SearchBox then table.insert(Dropdown.Connections, SearchBox:GetPropertyChangedSignal("Text"):Connect(Dropdown.BuildDropdownList)) end

        local Defaults = {}
        if typeof(Info.Default) == "string" then
            local Index = table.find(Dropdown.Values, Info.Default)
            if Index then table.insert(Defaults, Index) end
        elseif typeof(Info.Default) == "table" then
            for _, Value in next, Info.Default do local Index = table.find(Dropdown.Values, Value); if Index then table.insert(Defaults, Index) end end
        elseif Dropdown.Values[Info.Default] ~= nil then table.insert(Defaults, Info.Default) end

        if next(Defaults) then
            for i = 1, #Defaults do
                local Index = Defaults[i]
                if Info.Multi then
                    Dropdown.Value[Dropdown.Values[Index]] = true
                else
                    Dropdown.Value = Dropdown.Values[Index]
                end

                if not Info.Multi then break end
            end
        end

        if typeof(Dropdown.Tooltip) == "string" or typeof(Dropdown.DisabledTooltip) == "string" then Dropdown.TooltipTable = Library:AddTooltip(Dropdown.Tooltip, Dropdown.DisabledTooltip, DisplayContainer); Dropdown.TooltipTable.Disabled = Dropdown.Disabled end

        Dropdown:UpdateColors()
        Dropdown:Display()
        Dropdown:BuildDropdownList()
        Groupbox:Resize()

        Dropdown.Holder = Holder
        table.insert(Groupbox.Elements, Dropdown)

        Dropdown.Default = Defaults
        Dropdown.DefaultValues = Dropdown.Values

        Options[Idx] = Dropdown

        function Dropdown:Destroy()
            Dropdown.Destroyed = true

            if Dropdown.Connections then
                for _, Connection in Dropdown.Connections do Connection:Disconnect() end
            end

            if Dropdown.TooltipTable then Dropdown.TooltipTable:Destroy() end

            if MenuTable then MenuTable:Destroy() end

            if Holder then Holder:Destroy() end

            local ElemIdx = table.find(Groupbox.Elements, Dropdown)
            if ElemIdx then table.remove(Groupbox.Elements, ElemIdx) end

            Groupbox:Resize()
            Options[Idx] = nil
        end

        return Dropdown
    end

    function Funcs:AddViewport(Idx, Info)
        if self.Destroyed then return nil end

        Info = Library:Validate(Info, Templates.Viewport)

        local Groupbox = self
        local Container = Groupbox.Container

        local Dragging, Pinching = false, false
        local LastMousePos, LastPinchDist = nil, 0

        local ViewportObject = Info.Object
        if Info.Clone and typeof(Info.Object) == "Instance" then
            if Info.Object.Archivable then
                ViewportObject = ViewportObject:Clone()
            else
                Info.Object.Archivable = true
                ViewportObject = ViewportObject:Clone()
                Info.Object.Archivable = false
            end
        end

        local Viewport = {
            Connections = {},
            Destroyed = false,

            Object = ViewportObject :: PVInstance,
            Camera = if not Info.Camera then Instance.new("Camera") else Info.Camera,
            Interactive = Info.Interactive,
            AutoFocus = Info.AutoFocus,
            Visible = Info.Visible,
            Type = "Viewport",
        }

        assert(
            typeof(Viewport.Object) == "Instance" and (Viewport.Object:IsA("BasePart") or Viewport.Object:IsA("Model")),
            "Instance must be a BasePart or Model."
        )

        assert(
            typeof(Viewport.Camera) == "Instance" and Viewport.Camera:IsA("Camera"),
            "Camera must be a valid Camera instance."
        )

        local function GetModelSize(model)
            if model:IsA("BasePart") then return model.Size end

            return select(2, model:GetBoundingBox())
        end

        local function FocusCamera()
            local ModelSize = GetModelSize(Viewport.Object)
            local MaxExtent = math.max(ModelSize.X, ModelSize.Y, ModelSize.Z)
            local CameraDistance = MaxExtent * 2
            local ModelPosition = (Viewport.Object :: PVInstance):GetPivot().Position

            Viewport.Camera.CFrame = CFrame.new(ModelPosition + Vector3.new(0, MaxExtent / 2, CameraDistance), ModelPosition)
        end

        local Holder = New("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, Info.Height), Visible = Viewport.Visible, Parent = Container, })

        local Box = New("Frame", { AnchorPoint = Vector2.new(0, 1), BackgroundColor3 = "MainColor", BorderColor3 = "OutlineColor", BorderSizePixel = 1, Position = UDim2.fromScale(0, 1), Size = UDim2.fromScale(1, 1), Parent = Holder, })

        New("UIPadding", {
            PaddingBottom = UDim.new(0, 3),
            PaddingLeft = UDim.new(0, 8),
            PaddingRight = UDim.new(0, 8),
            PaddingTop = UDim.new(0, 4),
            Parent = Box,
        })

        local ViewportFrame = New("ViewportFrame", { BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), Parent = Box, CurrentCamera = Viewport.Camera, Active = Viewport.Interactive, })

        table.insert(Viewport.Connections, ViewportFrame.MouseEnter:Connect(function()
            if not Viewport.Interactive then return end

            for _, Side in Groupbox.Tab.Sides do Side.ScrollingEnabled = false end
        end))

        table.insert(Viewport.Connections, ViewportFrame.MouseLeave:Connect(function()
            if not Viewport.Interactive then return end

            for _, Side in Groupbox.Tab.Sides do Side.ScrollingEnabled = true end
        end))

        table.insert(Viewport.Connections, ViewportFrame.InputBegan:Connect(function(input)
            if not Viewport.Interactive then return end

            if input.UserInputType == Enum.UserInputType.MouseButton2 then
                Dragging = true
                LastMousePos = input.Position
            elseif input.UserInputType == Enum.UserInputType.Touch and not Pinching then Dragging = true; LastMousePos = input.Position end
        end))

        table.insert(Viewport.Connections, UserInputService.InputEnded:Connect(function(input)
            if Library.Unloaded then return end

            if not Viewport.Interactive then return end

            if input.UserInputType == Enum.UserInputType.MouseButton2 then
                Dragging = false
            elseif input.UserInputType == Enum.UserInputType.Touch then Dragging = false end
        end))

        table.insert(Viewport.Connections, UserInputService.InputChanged:Connect(function(input)
            if Library.Unloaded then return end

            if not Viewport.Interactive or not Dragging or Pinching then return end

            if
                input.UserInputType == Enum.UserInputType.MouseMovement
                or input.UserInputType == Enum.UserInputType.Touch
            then
                local MouseDelta = input.Position - LastMousePos
                LastMousePos = input.Position

                local Position = (Viewport.Object :: PVInstance):GetPivot().Position
                local Camera = Viewport.Camera

                local RotationY = CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -MouseDelta.X * 0.01)
                Camera.CFrame = CFrame.new(Position) * RotationY * CFrame.new(-Position) * Camera.CFrame

                local RotationX = CFrame.fromAxisAngle(Camera.CFrame.RightVector, -MouseDelta.Y * 0.01)
                local PitchedCFrame = CFrame.new(Position) * RotationX * CFrame.new(-Position) * Camera.CFrame

                if PitchedCFrame.UpVector.Y > 0.1 then Camera.CFrame = PitchedCFrame end
            end
        end))

        table.insert(Viewport.Connections, ViewportFrame.InputChanged:Connect(function(input)
            if not Viewport.Interactive then return end

            if input.UserInputType == Enum.UserInputType.MouseWheel then local ZoomAmount = input.Position.Z * 2; Viewport.Camera.CFrame += Viewport.Camera.CFrame.LookVector * ZoomAmount end
        end))

        table.insert(Viewport.Connections, UserInputService.TouchPinch:Connect(function(touchPositions, scale, velocity, state)
            if Library.Unloaded then return end

            if not Viewport.Interactive or not Library:MouseIsOverFrame(ViewportFrame, touchPositions[1]) then return end

            if state == Enum.UserInputState.Begin then
                Pinching = true
                Dragging = false
                LastPinchDist = (touchPositions[1] - touchPositions[2]).Magnitude
            elseif state == Enum.UserInputState.Change then
                local currentDist = (touchPositions[1] - touchPositions[2]).Magnitude
                local delta = (currentDist - LastPinchDist) * 0.1
                LastPinchDist = currentDist
                Viewport.Camera.CFrame += Viewport.Camera.CFrame.LookVector * delta
            elseif state == Enum.UserInputState.End or state == Enum.UserInputState.Cancel then Pinching = false end
        end))

        ;(Viewport.Object :: PVInstance).Parent = ViewportFrame
        if Viewport.AutoFocus then FocusCamera() end

        function Viewport:SetObject(Object: Instance, Clone: boolean?)
            assert(Object, "Object cannot be nil.")

            if Clone then Object = Object:Clone() end

            if Viewport.Object then Viewport.Object:Destroy() end

            Viewport.Object = Object
            ;(Viewport.Object :: PVInstance).Parent = ViewportFrame

            Groupbox:Resize()
        end

        function Viewport:SetHeight(Height: number)
            assert(Height > 0, "Height must be greater than 0.")

            Holder.Size = UDim2.new(1, 0, 0, Height)
            Groupbox:Resize()
        end

        function Viewport:Focus()
            if not Viewport.Object then return end

            FocusCamera()
        end

        function Viewport:SetCamera(Camera: Instance)
            assert(
                Camera and typeof(Camera) == "Instance" and Camera:IsA("Camera"),
                "Camera must be a valid Camera instance."
            )

            Viewport.Camera = Camera
            ViewportFrame.CurrentCamera = Camera
        end

        function Viewport:SetInteractive(Interactive: boolean) Viewport.Interactive = Interactive; ViewportFrame.Active = Interactive end

        function Viewport:SetVisible(Visible: boolean)
            Viewport.Visible = Visible

            Holder.Visible = Viewport.Visible
            Groupbox:Resize()
        end

        Groupbox:Resize()

        Viewport.Holder = Holder
        table.insert(Groupbox.Elements, Viewport)

        Options[Idx] = Viewport

        function Viewport:Destroy()
            Viewport.Destroyed = true

            if Viewport.Connections then
                for _, Connection in Viewport.Connections do Connection:Disconnect() end
            end

            if Holder then Holder:Destroy() end

            local ElemIdx = table.find(Groupbox.Elements, Viewport)
            if ElemIdx then table.remove(Groupbox.Elements, ElemIdx) end

            Groupbox:Resize()
            Options[Idx] = nil
        end

        return Viewport
    end

    function Funcs:AddImage(Idx, Info)
        if self.Destroyed then return nil end

        Info = Library:Validate(Info, Templates.Image)

        local Groupbox = self
        local Container = Groupbox.Container

        local Image = {
            Connections = {},
            Destroyed = false,

            Image = Info.Image,
            Color = Info.Color,
            RectOffset = Info.RectOffset,
            RectSize = Info.RectSize,
            Height = Info.Height,
            ScaleType = Info.ScaleType,
            Transparency = Info.Transparency,
            BackgroundTransparency = Info.BackgroundTransparency,

            Visible = Info.Visible,
            Type = "Image",
        }

        local Holder = New("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, Info.Height), Visible = Image.Visible, Parent = Container, })

        local Box = New("Frame", { AnchorPoint = Vector2.new(0, 1), BackgroundColor3 = "MainColor", BorderColor3 = "OutlineColor", BorderSizePixel = 1, BackgroundTransparency = Image.BackgroundTransparency, Position = UDim2.fromScale(0, 1), Size = UDim2.fromScale(1, 1), Parent = Holder, })

        New("UIPadding", {
            PaddingBottom = UDim.new(0, 3),
            PaddingLeft = UDim.new(0, 8),
            PaddingRight = UDim.new(0, 8),
            PaddingTop = UDim.new(0, 4),
            Parent = Box,
        })

        local ImageProperties = { BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), Image = Image.Image, ImageTransparency = Image.Transparency, ImageColor3 = Image.Color, ImageRectOffset = Image.RectOffset, ImageRectSize = Image.RectSize, ScaleType = Image.ScaleType, Parent = Box, }

        local Icon = Library:GetCustomIcon(ImageProperties.Image)
        assert(Icon, "Image must be a valid Roblox asset or a valid URL or a valid lucide icon.")

        ImageProperties.Image = Icon.Url
        ImageProperties.ImageRectOffset = Icon.ImageRectOffset
        ImageProperties.ImageRectSize = Icon.ImageRectSize

        local ImageLabel = New("ImageLabel", ImageProperties)

        function Image:SetHeight(Height: number)
            assert(Height > 0, "Height must be greater than 0.")

            Image.Height = Height
            Holder.Size = UDim2.new(1, 0, 0, Height)
            Groupbox:Resize()
        end

        function Image:SetImage(NewImage: string)
            assert(typeof(NewImage) == "string", "Image must be a string.")

            local Icon = Library:GetCustomIcon(NewImage)
            assert(Icon, "Image must be a valid Roblox asset or a valid URL or a valid lucide icon.")

            NewImage = Icon.Url
            Image.RectOffset = Icon.ImageRectOffset
            Image.RectSize = Icon.ImageRectSize

            ImageLabel.Image = NewImage
            Image.Image = NewImage
        end

        function Image:SetColor(Color: Color3)
            assert(typeof(Color) == "Color3", "Color must be a Color3 value.")

            ImageLabel.ImageColor3 = Color
            Image.Color = Color
        end

        function Image:SetRectOffset(RectOffset: Vector2)
            assert(typeof(RectOffset) == "Vector2", "RectOffset must be a Vector2 value.")

            ImageLabel.ImageRectOffset = RectOffset
            Image.RectOffset = RectOffset
        end

        function Image:SetRectSize(RectSize: Vector2)
            assert(typeof(RectSize) == "Vector2", "RectSize must be a Vector2 value.")

            ImageLabel.ImageRectSize = RectSize
            Image.RectSize = RectSize
        end

        function Image:SetScaleType(ScaleType: Enum.ScaleType)
            assert(
                typeof(ScaleType) == "EnumItem" and ScaleType:IsA("ScaleType"),
                "ScaleType must be a valid Enum.ScaleType."
            )

            ImageLabel.ScaleType = ScaleType
            Image.ScaleType = ScaleType
        end

        function Image:SetTransparency(Transparency: number)
            assert(typeof(Transparency) == "number", "Transparency must be a number between 0 and 1.")
            assert(Transparency >= 0 and Transparency <= 1, "Transparency must be between 0 and 1.")

            ImageLabel.ImageTransparency = Transparency
            Image.Transparency = Transparency
        end

        function Image:SetVisible(Visible: boolean)
            Image.Visible = Visible

            Holder.Visible = Image.Visible
            Groupbox:Resize()
        end

        Groupbox:Resize()

        Image.Holder = Holder
        table.insert(Groupbox.Elements, Image)

        Options[Idx] = Image

        function Image:Destroy()
            Image.Destroyed = true

            if Holder then Holder:Destroy() end

            local ElemIdx = table.find(Groupbox.Elements, Image)
            if ElemIdx then table.remove(Groupbox.Elements, ElemIdx) end

            Groupbox:Resize()
            Options[Idx] = nil
        end

        return Image
    end

    function Funcs:AddVideo(Idx, Info)
        if self.Destroyed then return nil end

        Info = Library:Validate(Info, Templates.Video)

        local Groupbox = self
        local Container = Groupbox.Container

        local Video = {
            Connections = {},
            Destroyed = false,

            Video = Info.Video,
            Looped = Info.Looped,
            Playing = Info.Playing,
            Volume = Info.Volume,
            Height = Info.Height,
            Visible = Info.Visible,

            Type = "Video",
        }

        local Holder = New("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, Info.Height), Visible = Video.Visible, Parent = Container, })

        local Box = New("Frame", { AnchorPoint = Vector2.new(0, 1), BackgroundColor3 = "MainColor", BorderColor3 = "OutlineColor", BorderSizePixel = 1, Position = UDim2.fromScale(0, 1), Size = UDim2.fromScale(1, 1), Parent = Holder, })

        New("UIPadding", {
            PaddingBottom = UDim.new(0, 3),
            PaddingLeft = UDim.new(0, 8),
            PaddingRight = UDim.new(0, 8),
            PaddingTop = UDim.new(0, 4),
            Parent = Box,
        })

        local VideoFrameInstance = New("VideoFrame", { BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), Video = Video.Video, Looped = Video.Looped, Volume = Video.Volume, Parent = Box, })

        VideoFrameInstance.Playing = Video.Playing

        function Video:SetHeight(Height: number)
            assert(Height > 0, "Height must be greater than 0.")

            Video.Height = Height
            Holder.Size = UDim2.new(1, 0, 0, Height)
            Groupbox:Resize()
        end

        function Video:SetVideo(NewVideo: string)
            assert(typeof(NewVideo) == "string", "Video must be a string.")

            VideoFrameInstance.Video = NewVideo
            Video.Video = NewVideo
        end

        function Video:SetLooped(Looped: boolean)
            assert(typeof(Looped) == "boolean", "Looped must be a boolean.")

            VideoFrameInstance.Looped = Looped
            Video.Looped = Looped
        end

        function Video:SetVolume(Volume: number)
            assert(typeof(Volume) == "number", "Volume must be a number between 0 and 10.")

            VideoFrameInstance.Volume = Volume
            Video.Volume = Volume
        end

        function Video:SetPlaying(Playing: boolean)
            assert(typeof(Playing) == "boolean", "Playing must be a boolean.")

            VideoFrameInstance.Playing = Playing
            Video.Playing = Playing
        end

        function Video:Play() VideoFrameInstance.Playing = true; Video.Playing = true end

        function Video:Pause() VideoFrameInstance.Playing = false; Video.Playing = false end

        function Video:SetVisible(Visible: boolean)
            Video.Visible = Visible

            Holder.Visible = Video.Visible
            Groupbox:Resize()
        end

        Groupbox:Resize()

        Video.Holder = Holder
        Video.VideoFrame = VideoFrameInstance
        table.insert(Groupbox.Elements, Video)

        Options[Idx] = Video

        function Video:Destroy()
            Video.Destroyed = true

            if Video.Connections then
                for _, Connection in Video.Connections do Connection:Disconnect() end
            end

            if Holder then Holder:Destroy() end

            local ElemIdx = table.find(Groupbox.Elements, Video)
            if ElemIdx then table.remove(Groupbox.Elements, ElemIdx) end

            Groupbox:Resize()
            Options[Idx] = nil
        end

        return Video
    end

    function Funcs:AddUIPassthrough(Idx, Info)
        if self.Destroyed then return nil end

        Info = Library:Validate(Info, Templates.UIPassthrough)

        local Groupbox = self
        local Container = Groupbox.Container

        assert(Info.Instance, "Instance must be provided.")
        assert(
            typeof(Info.Instance) == "Instance" and Info.Instance:IsA("GuiBase2d"),
            "Instance must inherit from GuiBase2d."
        )
        assert(typeof(Info.Height) == "number" and Info.Height > 0, "Height must be a number greater than 0.")

        local Passthrough = {
            Connections = {},
            Destroyed = false,

            Instance = Info.Instance,
            Height = Info.Height,
            Visible = Info.Visible,

            Type = "UIPassthrough",
        }

        local Holder = New("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, Info.Height), Visible = Passthrough.Visible, Parent = Container, })

        Passthrough.Instance.Parent = Holder

        Groupbox:Resize()

        function Passthrough:SetHeight(Height: number)
            assert(typeof(Height) == "number" and Height > 0, "Height must be a number greater than 0.")

            Passthrough.Height = Height
            Holder.Size = UDim2.new(1, 0, 0, Height)
            Groupbox:Resize()
        end

        function Passthrough:SetInstance(Instance: Instance)
            assert(Instance, "Instance must be provided.")
            assert(
                typeof(Instance) == "Instance" and Instance:IsA("GuiBase2d"),
                "Instance must inherit from GuiBase2d."
            )

            if Passthrough.Instance then Passthrough.Instance.Parent = nil end

            Passthrough.Instance = Instance
            Passthrough.Instance.Parent = Holder
        end

        function Passthrough:SetVisible(Visible: boolean)
            Passthrough.Visible = Visible

            Holder.Visible = Passthrough.Visible
            Groupbox:Resize()
        end

        Passthrough.Holder = Holder
        table.insert(Groupbox.Elements, Passthrough)

        Options[Idx] = Passthrough

        function Passthrough:Destroy()
            Passthrough.Destroyed = true

            if Passthrough.Connections then
                for _, Connection in Passthrough.Connections do Connection:Disconnect() end
            end

            if Holder then Holder:Destroy() end

            local ElemIdx = table.find(Groupbox.Elements, Passthrough)
            if ElemIdx then table.remove(Groupbox.Elements, ElemIdx) end

            Groupbox:Resize()
            Options[Idx] = nil
        end

        return Passthrough
    end

    function Funcs:AddDependencyBox()
        if self.Destroyed then return nil end

        local Groupbox = self
        local Container = Groupbox.Container

        local DepboxContainer
        local DepboxList

        do
            DepboxContainer = New("Frame", {
                BackgroundTransparency = 1,
                Size = UDim2.fromScale(1, 1),
                Visible = false,
                Parent = Container,
            })

            DepboxList = New("UIListLayout", {
                Padding = UDim.new(0, 8),
                Parent = DepboxContainer,
            })
        end

        local Depbox = {
            Connections = {},
            Destroyed = false,

            Visible = false,
            Dependencies = {},

            Holder = DepboxContainer,
            Container = DepboxContainer,

            Elements = {},
            DependencyBoxes = {},
        }

        function Depbox:Resize() DepboxContainer.Size = UDim2.new(1, 0, 0, DepboxList.AbsoluteContentSize.Y / Library.DPIScale); Groupbox:Resize() end

        function Depbox:Update(CancelSearch)
            for _, Dependency in Depbox.Dependencies do
                local Element = Dependency[1]
                local Value = Dependency[2]

                if Element.Type == "Toggle" and Element.Value ~= Value then
                    DepboxContainer.Visible = false
                    Depbox.Visible = false
                    return
                elseif Element.Type == "Dropdown" then
                    if typeof(Element.Value) == "table" then
                        if not Element.Value[Value] then DepboxContainer.Visible = false Depbox.Visible = false return end
                    else
                        if Element.Value ~= Value then DepboxContainer.Visible = false Depbox.Visible = false return end
                    end
                end
            end

            Depbox.Visible = true
            DepboxContainer.Visible = true
            if not Library.Searching then
                task.defer(function()
                    Depbox:Resize()
                end)
            elseif not CancelSearch then Library:UpdateSearch(Library.SearchText) end
        end

        DepboxList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            if not Depbox.Visible then return end

            Depbox:Resize()
        end)

        function Depbox:SetupDependencies(Dependencies)
            for _, Dependency in Dependencies do assert(typeof(Dependency) == "table", "Dependency should be a table.") assert(Dependency[1] ~= nil, "Dependency is missing element.") assert(Dependency[2] ~= nil, "Dependency is missing expected value.") end

            Depbox.Dependencies = Dependencies
            Depbox:Update()
        end

        DepboxContainer:GetPropertyChangedSignal("Visible"):Connect(function()
            Depbox:Resize()
        end)

        setmetatable(Depbox, BaseGroupbox)

        table.insert(Groupbox.DependencyBoxes, Depbox)
        table.insert(Library.DependencyBoxes, Depbox)

        function Depbox:Destroy()
            Depbox.Destroyed = true

            if Depbox.Connections then
                for _, Connection in Depbox.Connections do Connection:Disconnect() end
            end

            for _, Element in Depbox.Elements do
                if Element.Destroy then Element:Destroy() end
            end

            for _, SubDepbox in Depbox.DependencyBoxes do
                if SubDepbox.Destroy then SubDepbox:Destroy() end
            end

            if DepboxContainer then DepboxContainer:Destroy() end

            local ElemIdx = table.find(Groupbox.DependencyBoxes, Depbox)
            if ElemIdx then table.remove(Groupbox.DependencyBoxes, ElemIdx) end

            local LibIdx = table.find(Library.DependencyBoxes, Depbox)
            if LibIdx then table.remove(Library.DependencyBoxes, LibIdx) end
        end

        return Depbox
    end

    function Funcs:AddDependencyGroupbox()
        if self.Destroyed then return nil end

        local Groupbox = self
        local Tab = Groupbox.Tab
        local BoxHolder = Groupbox.BoxHolder

        local DepGroupboxContainer
        local DepGroupboxList

        do
            DepGroupboxContainer = New("Frame", {
                BackgroundColor3 = "BackgroundColor",
                Size = UDim2.fromScale(1, 0),
                Visible = false,
                Parent = BoxHolder,
            })
            table.insert(
                Library.Corners,
                New("UICorner", {
                    CornerRadius = UDim.new(0, Library.CornerRadius),
                    Parent = DepGroupboxContainer,
                })
            )
            Library:AddOutline(DepGroupboxContainer)

            DepGroupboxList = New("UIListLayout", {
                Padding = UDim.new(0, 8),
                Parent = DepGroupboxContainer,
            })
            New("UIPadding", {
                PaddingBottom = UDim.new(0, 7),
                PaddingLeft = UDim.new(0, 7),
                PaddingRight = UDim.new(0, 7),
                PaddingTop = UDim.new(0, 7),
                Parent = DepGroupboxContainer,
            })
        end

        local DepGroupbox = {
            Connections = {},
            Destroyed = false,

            Visible = false,
            Dependencies = {},

            BoxHolder = BoxHolder,
            Holder = DepGroupboxContainer,
            Container = DepGroupboxContainer,

            Tab = Tab,
            Elements = {},
            DependencyBoxes = {},
        }

        function DepGroupbox:Resize()
            DepGroupboxContainer.Size = UDim2.new(1, 0, 0, (DepGroupboxList.AbsoluteContentSize.Y / Library.DPIScale) + 18)
        end

        function DepGroupbox:Update(CancelSearch)
            for _, Dependency in DepGroupbox.Dependencies do
                local Element = Dependency[1]
                local Value = Dependency[2]

                if Element.Type == "Toggle" and Element.Value ~= Value then
                    DepGroupboxContainer.Visible = false
                    DepGroupbox.Visible = false
                    return
                elseif Element.Type == "Dropdown" then
                    if typeof(Element.Value) == "table" then
                        if not Element.Value[Value] then DepGroupboxContainer.Visible = false DepGroupbox.Visible = false return end
                    else
                        if Element.Value ~= Value then DepGroupboxContainer.Visible = false DepGroupbox.Visible = false return end
                    end
                end
            end

            DepGroupbox.Visible = true
            if not Library.Searching then
                DepGroupboxContainer.Visible = true
                DepGroupbox:Resize()
            elseif not CancelSearch then Library:UpdateSearch(Library.SearchText) end
        end

        function DepGroupbox:SetupDependencies(Dependencies)
            for _, Dependency in Dependencies do assert(typeof(Dependency) == "table", "Dependency should be a table.") assert(Dependency[1] ~= nil, "Dependency is missing element.") assert(Dependency[2] ~= nil, "Dependency is missing expected value.") end

            DepGroupbox.Dependencies = Dependencies
            DepGroupbox:Update()
        end

        setmetatable(DepGroupbox, BaseGroupbox)

        table.insert(Tab.DependencyGroupboxes, DepGroupbox)
        table.insert(Library.DependencyBoxes, DepGroupbox :: any)

        function DepGroupbox:Destroy()
            DepGroupbox.Destroyed = true

            if DepGroupbox.Connections then
                for _, Connection in DepGroupbox.Connections do Connection:Disconnect() end
            end

            for _, Element in DepGroupbox.Elements do
                if Element.Destroy then Element:Destroy() end
            end

            for _, SubDepbox in DepGroupbox.DependencyBoxes do
                if SubDepbox.Destroy then SubDepbox:Destroy() end
            end

            if DepGroupboxContainer then DepGroupboxContainer:Destroy() end

            local ElemIdx = table.find(Tab.DependencyGroupboxes, DepGroupbox)
            if ElemIdx then table.remove(Tab.DependencyGroupboxes, ElemIdx) end

            local LibIdx = table.find(Library.DependencyBoxes, DepGroupbox)
            if LibIdx then table.remove(Library.DependencyBoxes, LibIdx) end
        end

        return DepGroupbox
    end

    BaseGroupbox.__index = Funcs
    BaseGroupbox.__namecall = function(_, Key, ...)
        return Funcs[Key](...)
    end
end

function Library:SetFont(FontFace)
    if typeof(FontFace) == "EnumItem" then FontFace = Font.fromEnum(FontFace :: any) end

    Library.Scheme.Font = FontFace
    Library:UpdateColorsUsingRegistry()
end

function Library:SetNotifySide(Side: string)
    Library.NotifySide = Side

    if Side:lower() == "left" then
        NotificationArea.AnchorPoint = Vector2.new(0, 0)
        NotificationArea.Position = UDim2.fromOffset(6, 6)
        NotificationList.HorizontalAlignment = Enum.HorizontalAlignment.Left
    else
        NotificationArea.AnchorPoint = Vector2.new(1, 0)
        NotificationArea.Position = UDim2.new(1, -6, 0, 6)
        NotificationList.HorizontalAlignment = Enum.HorizontalAlignment.Right
    end
end

function Library:Notify(...)
    local Data = {}
    local Info = select(1, ...)

    if typeof(Info) == "table" then
        Data.Title = tostring(Info.Title)
        Data.Description = tostring(Info.Description)
        Data.Time = Info.Time or 5
        Data.SoundId = Info.SoundId
        Data.Steps = Info.Steps
        Data.Persist = Info.Persist
        Data.Icon = Info.Icon
        Data.BigIcon = Info.BigIcon
        Data.IconColor = Info.IconColor
        Data.Volume = tonumber(Info.Volume) or 3
    else
        Data.Description = tostring(Info)
        Data.Time = select(2, ...) or 5
        Data.SoundId = select(3, ...)
        Data.Volume = select(4, ...) or 3
    end
    Data.Destroyed = false

    local DeletedInstance = false
    local DeleteConnection = nil
    if typeof(Data.Time) == "Instance" then
        DeleteConnection = Data.Time.Destroying:Connect(function()
            DeletedInstance = true

            DeleteConnection:Disconnect()
            DeleteConnection = nil
        end)
    end

    local FakeBackground = New("Frame", { AutomaticSize = Enum.AutomaticSize.Y, BackgroundTransparency = 1, Size = UDim2.fromScale(1, 0), Visible = false, Parent = NotificationArea, })

    local Holder = New("Frame", { AutomaticSize = Enum.AutomaticSize.Y, BackgroundColor3 = "MainColor", Position = Library.NotifySide:lower() == "left" and UDim2.new(-1, -8, 0, -2) or UDim2.new(1, 8, 0, -2), Size = UDim2.fromScale(1, 1), ZIndex = 5, Parent = FakeBackground, })
    table.insert(
        Library.Corners,
        New("UICorner", {
            CornerRadius = UDim.new(0, Library.CornerRadius),
            Parent = Holder,
        })
    )
    New("UIListLayout", {
        Padding = UDim.new(0, 4),
        Parent = Holder,
    })
    New("UIPadding", {
        PaddingBottom = UDim.new(0, 8),
        PaddingLeft = UDim.new(0, 8),
        PaddingRight = UDim.new(0, 8),
        PaddingTop = UDim.new(0, 8),
        Parent = Holder,
    })
    Library:AddOutline(Holder)

    local ContentContainer = New("Frame", { BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.XY, Size = UDim2.fromScale(1, 0), Parent = Holder, })

    if Data.BigIcon then
        New("UIListLayout", {
            Padding = UDim.new(0, 8),
            FillDirection = Enum.FillDirection.Horizontal,
            VerticalAlignment = Enum.VerticalAlignment.Center,
            Parent = ContentContainer,
        })
    end

    local BigIconLabel
    if Data.BigIcon then
        local ParsedIcon = Library:GetCustomIcon(Data.BigIcon)
        if ParsedIcon then
            BigIconLabel = New("ImageLabel", {
                BackgroundTransparency = 1,
                Size = UDim2.fromOffset(24, 24),
                Image = ParsedIcon.Url,
                ImageColor3 = Data.IconColor or "AccentColor",
                ImageRectOffset = ParsedIcon.ImageRectOffset,
                ImageRectSize = ParsedIcon.ImageRectSize,
                Parent = ContentContainer,
            })
        end
    end

    local TextContainer = New("Frame", { BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.XY, Size = UDim2.fromScale(0, 0), Parent = ContentContainer, })
    New("UIListLayout", {
        Padding = UDim.new(0, 4),
        Parent = TextContainer,
    })

    local TitleContainer
    if Data.Title then
        TitleContainer = New("Frame", {
            BackgroundTransparency = 1,
            Size = UDim2.fromScale(0, 0),
            Parent = TextContainer,
        })
    end

    local IconLabel
    if Data.Icon and TitleContainer then
        local ParsedIcon = Library:GetCustomIcon(Data.Icon)
        if ParsedIcon then
            IconLabel = New("ImageLabel", {
                BackgroundTransparency = 1,
                AnchorPoint = Vector2.new(0, 0.5),
                Position = UDim2.new(0, 0, 0.5, 1),
                Size = UDim2.fromOffset(15, 15),
                Image = ParsedIcon.Url,
                ImageColor3 = Data.IconColor or "FontColor",
                ImageRectOffset = ParsedIcon.ImageRectOffset,
                ImageRectSize = ParsedIcon.ImageRectSize,
                Parent = TitleContainer,
            })
        end
    end

    local Title
    local Desc
    local TitleX = 0
    local DescX = 0

    local TimerFill

    if Data.Title then
        Title = New("TextLabel", {
            AutomaticSize = Enum.AutomaticSize.None,
            BackgroundTransparency = 1,
            AnchorPoint = Vector2.new(0, 0.5),
            Position = UDim2.new(0, (Data.Icon and 21 or 0), 0.5, 0),
            Size = UDim2.fromScale(0, 0),
            Text = Data.Title,
            TextSize = 15,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Center,
            TextWrapped = true,
            Parent = TitleContainer,
        })
    end

    if Data.Description then
        Desc = New("TextLabel", {
            AutomaticSize = Enum.AutomaticSize.None,
            BackgroundTransparency = 1,
            Size = UDim2.fromScale(0, 0),
            Text = Data.Description,
            TextSize = 14,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextWrapped = true,
            Parent = TextContainer,
        })
    end

    function Data:Resize()
        local ExtraWidth = BigIconLabel and 32 or 0
        local IconWidth = IconLabel and 21 or 0

        if Title then
            local X, Y =
                Library:GetTextBounds(Title.Text, Title.FontFace, Title.TextSize, (NotificationArea.AbsoluteSize.X / Library.DPIScale) - 24 - ExtraWidth - IconWidth)
            Title.Size = UDim2.fromOffset(X, Y)
            TitleX = X + IconWidth
            TitleContainer.Size = UDim2.fromOffset(TitleX, math.max(Y, IconLabel and 16 or 0))
        end

        if Desc then
            local X, Y =
                Library:GetTextBounds(Desc.Text, Desc.FontFace, Desc.TextSize, (NotificationArea.AbsoluteSize.X / Library.DPIScale) - 24 - ExtraWidth)
            Desc.Size = UDim2.fromOffset(X, Y)
            DescX = X
        end

        FakeBackground.Size = UDim2.fromOffset(math.max(TitleX, DescX) + 24 + ExtraWidth, 0)
    end

    function Data:ChangeTitle(Text)
        if Title then Data.Title = tostring(Text) Title.Text = Data.Title Data:Resize() end
    end

    function Data:ChangeDescription(Text)
        if Desc then Data.Description = tostring(Text) Desc.Text = Data.Description Data:Resize() end
    end

    function Data:ChangeStep(NewStep)
        if TimerFill and Data.Steps then NewStep = math.clamp(NewStep or 0, 0, Data.Steps); TimerFill.Size = UDim2.fromScale(NewStep / Data.Steps, 1) end
    end

    function Data:Destroy()
        Data.Destroyed = true

        if typeof(Data.Time) == "Instance" then pcall(Data.Time.Destroy, Data.Time) end

        if DeleteConnection then DeleteConnection:Disconnect() end

        TweenService
            :Create(Holder, Library.NotifyTweenInfo, {
                Position = Library.NotifySide:lower() == "left" and UDim2.new(-1, -8, 0, -2) or UDim2.new(1, 8, 0, -2),
            })
            :Play()

        task.delay(Library.NotifyTweenInfo.Time, function()
            Library.Notifications[FakeBackground] = nil
            FakeBackground:Destroy()
        end)
    end

    Data:Resize()

    local TimerHolder = New("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 7), Visible = (Data.Persist ~= true and typeof(Data.Time) ~= "Instance") or typeof(Data.Steps) == "number", Parent = Holder, })
    local TimerBar = New("Frame", { BackgroundColor3 = "BackgroundColor", BorderColor3 = "OutlineColor", BorderSizePixel = 1, Position = UDim2.fromOffset(0, 3), Size = UDim2.new(1, 0, 0, 2), Parent = TimerHolder, })
    TimerFill = New("Frame", {
        BackgroundColor3 = "AccentColor",
        Size = UDim2.fromScale(1, 1),
        Parent = TimerBar,
    })

    if typeof(Data.Time) == "Instance" then TimerFill.Size = UDim2.fromScale(0, 1) end
    if Data.SoundId then
        local SoundId = Data.SoundId
        if typeof(SoundId) == "number" then SoundId = string.format("rbxassetid://%d", SoundId) end

        New("Sound", {
            SoundId = SoundId,
            Volume = tonumber(Data.Volume) or 3,
            PlayOnRemove = true,
            Parent = SoundService,
        }):Destroy()
    end

    Library.Notifications[FakeBackground] = Data

    FakeBackground.Visible = true
    TweenService:Create(Holder, Library.NotifyTweenInfo, {
        Position = UDim2.fromOffset(0, 0),
    }):Play()

    task.delay(Library.NotifyTweenInfo.Time, function()
        if Data.Persist then
            return
        elseif typeof(Data.Time) == "Instance" then
            repeat
                task.wait()
            until DeletedInstance or Data.Destroyed
        else
            TweenService
                :Create(TimerFill, TweenInfo.new(Data.Time, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                    Size = UDim2.fromScale(0, 1),
                })
                :Play()
            task.wait(Data.Time)
        end

        if not Data.Destroyed then Data:Destroy() end
    end)

    return Data
end

function Library:CreateWindow(WindowInfo)
    WindowInfo = Library:Validate(WindowInfo, Templates.Window)
    local ViewportSize: Vector2 = workspace.CurrentCamera.ViewportSize
    if RunService:IsStudio() and ViewportSize.X <= 5 and ViewportSize.Y <= 5 then
        repeat
            ViewportSize = workspace.CurrentCamera.ViewportSize
            task.wait()
        until ViewportSize.X > 5 and ViewportSize.Y > 5
    end

    local MaxX = ViewportSize.X - 64
    local MaxY = ViewportSize.Y - 64

    Library.OriginalMinSize =
        Vector2.new(math.min(Library.OriginalMinSize.X, MaxX), math.min(Library.OriginalMinSize.Y, MaxY))
    Library.MinSize = Library.OriginalMinSize

    WindowInfo.Size = UDim2.fromOffset(
        math.clamp(WindowInfo.Size.X.Offset, Library.MinSize.X, MaxX),
        math.clamp(WindowInfo.Size.Y.Offset, Library.MinSize.Y, MaxY)
    )
    if typeof(WindowInfo.Font) == "EnumItem" then WindowInfo.Font = Font.fromEnum(WindowInfo.Font :: any) end
    WindowInfo.CornerRadius = math.min(WindowInfo.CornerRadius, 20)

    if WindowInfo.Compact ~= nil then WindowInfo.SidebarCompacted = WindowInfo.Compact end
    if WindowInfo.SidebarMinWidth ~= nil then WindowInfo.MinSidebarWidth = WindowInfo.SidebarMinWidth end
    WindowInfo.MinSidebarWidth = math.max(64, WindowInfo.MinSidebarWidth)
    WindowInfo.SidebarCompactWidth = math.max(48, WindowInfo.SidebarCompactWidth)
    WindowInfo.SidebarCollapseThreshold = math.clamp(WindowInfo.SidebarCollapseThreshold, 0.1, 0.9)
    WindowInfo.CompactWidthActivation = math.max(48, WindowInfo.CompactWidthActivation)

    Library.CornerRadius = WindowInfo.CornerRadius
    Library:SetNotifySide(WindowInfo.NotifySide)
    Library.ShowCustomCursor = WindowInfo.ShowCustomCursor
    Library.Scheme.Font = WindowInfo.Font
    Library.ToggleKeybind = WindowInfo.ToggleKeybind
    Library.GlobalSearch = WindowInfo.GlobalSearch

    local IsDefaultSearchbarSize = WindowInfo.SearchbarSize == UDim2.fromScale(1, 1)
    local MainFrame
    local DividerLine
    local TitleHolder
    local WindowTitle
    local WindowIcon
    local RightWrapper
    local SearchBox
    local CurrentTabInfo
    local CurrentTabLabel
    local CurrentTabDescription
    local ResizeButton
    local Tabs
    local Container
    local BackgroundImage
    local BottomBackground
    local FooterLabel

    local InitialLeftWidth = math.ceil(WindowInfo.Size.X.Offset * 0.3)
    local IsCompact = WindowInfo.SidebarCompacted
    local LastExpandedWidth = InitialLeftWidth

    do
        Library.KeybindFrame, Library.KeybindContainer = Library:AddDraggableMenu("Keybinds")
        Library.KeybindFrame.AnchorPoint = Vector2.new(0, 0.5)
        Library.KeybindFrame.Position = UDim2.new(0, 6, 0.5, 0)
        Library.KeybindFrame.Visible = false

        MainFrame = New("TextButton", {
            BackgroundColor3 = function()
                return Library:GetBetterColor(Library.Scheme.BackgroundColor, -1)
            end,
            Name = "Main",
            Text = "",
            Position = WindowInfo.Position,
            Size = WindowInfo.Size,
            Visible = false,
            Parent = ScreenGui,
        })
        table.insert(
            Library.Corners,
            New("UICorner", {
                CornerRadius = UDim.new(0, WindowInfo.CornerRadius),
                Parent = MainFrame,
            })
        )
        table.insert(
            Library.Scales,
            New("UIScale", {
                Parent = MainFrame,
            })
        )
        Library:AddOutline(MainFrame)
        Library:MakeLine(MainFrame, { Position = UDim2.fromOffset(0, 48), Size = UDim2.new(1, 0, 0, 1), })

        DividerLine = New("Frame", {
            BackgroundColor3 = "OutlineColor",
            Position = UDim2.fromOffset(InitialLeftWidth, 0),
            Size = UDim2.new(0, 1, 1, -21),
            Parent = MainFrame,
        })

        if WindowInfo.BackgroundImage then
            BackgroundImage = New("ImageLabel", {
                Image = WindowInfo.BackgroundImage,
                Position = UDim2.fromScale(0, 0),
                Size = UDim2.fromScale(1, 1),
                ScaleType = Enum.ScaleType.Stretch,
                ZIndex = 999,
                BackgroundTransparency = 1,
                ImageTransparency = 0.75,
                Parent = MainFrame,
            })

            table.insert(
                Library.Corners,
                New("UICorner", {
                    CornerRadius = UDim.new(0, WindowInfo.CornerRadius),
                    Parent = BackgroundImage,
                })
            )
        end

        if WindowInfo.Center then MainFrame.Position = UDim2.new(0.5, -MainFrame.Size.X.Offset / 2, 0.5, -MainFrame.Size.Y.Offset / 2) end

        local TopBar = New("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 48), Parent = MainFrame, })
        Library:MakeDraggable(MainFrame, TopBar, false, true)

        TitleHolder = New("Frame", {
            BackgroundTransparency = 1,
            Size = UDim2.new(0, InitialLeftWidth, 1, 0),
            Parent = TopBar,
        })
        New("UIListLayout", {
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalAlignment = Enum.HorizontalAlignment.Center,
            VerticalAlignment = Enum.VerticalAlignment.Center,
            Padding = UDim.new(0, 6),
            Parent = TitleHolder,
        })

        if WindowInfo.Icon then
            local Icon = Library:GetCustomIcon(WindowInfo.Icon)
            WindowIcon = New("ImageLabel", {
                Image = Icon.Url,
                ImageRectOffset = Icon.ImageRectOffset,
                ImageRectSize = Icon.ImageRectSize,
                Size = WindowInfo.IconSize,
                Parent = TitleHolder,
            })
        else
            WindowIcon = New("TextLabel", {
                BackgroundTransparency = 1,
                Size = WindowInfo.IconSize,
                Text = WindowInfo.Title:sub(1, 1),
                TextScaled = true,
                Visible = false,
                Parent = TitleHolder,
            })
        end

        local X = Library:GetTextBounds(
            WindowInfo.Title,
            Library.Scheme.Font,
            20,
            TitleHolder.AbsoluteSize.X - (WindowInfo.Icon and WindowInfo.IconSize.X.Offset + 6 or 0) - 12
        )
        WindowTitle = New("TextLabel", {
            BackgroundTransparency = 1,
            Size = UDim2.new(0, X, 1, 0),
            Text = WindowInfo.Title,
            TextSize = 20,
            Parent = TitleHolder,
        })

        RightWrapper = New("Frame", {
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundTransparency = 1,
            Position = UDim2.new(1, -49, 0.5, 0),
            Size = UDim2.new(1, -InitialLeftWidth - 57 - 1, 1, -16),
            Parent = TopBar,
        })

        New("UIListLayout", {
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalAlignment = Enum.HorizontalAlignment.Left,
            VerticalAlignment = Enum.VerticalAlignment.Center,
            Padding = UDim.new(0, 8),
            Parent = RightWrapper,
        })

        CurrentTabInfo = New("Frame", {
            Size = UDim2.fromScale(WindowInfo.DisableSearch and 1 or 0.5, 1),
            Visible = false,
            BackgroundTransparency = 1,
            Parent = RightWrapper,
        })

        New("UIFlexItem", {
            FlexMode = Enum.UIFlexMode.Grow,
            Parent = CurrentTabInfo,
        })

        New("UIListLayout", {
            FillDirection = Enum.FillDirection.Vertical,
            HorizontalAlignment = Enum.HorizontalAlignment.Left,
            VerticalAlignment = Enum.VerticalAlignment.Center,
            Parent = CurrentTabInfo,
        })

        New("UIPadding", {
            PaddingBottom = UDim.new(0, 8),
            PaddingLeft = UDim.new(0, 8),
            PaddingRight = UDim.new(0, 8),
            PaddingTop = UDim.new(0, 8),
            Parent = CurrentTabInfo,
        })

        CurrentTabLabel = New("TextLabel", {
            BackgroundTransparency = 1,
            Size = UDim2.fromScale(1, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            Text = "",
            TextSize = 14,
            TextXAlignment = Enum.TextXAlignment.Left,
            Parent = CurrentTabInfo,
        })

        CurrentTabDescription = New("TextLabel", {
            BackgroundTransparency = 1,
            Size = UDim2.fromScale(1, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            Text = "",
            TextWrapped = true,
            TextSize = 14,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextTransparency = 0.5,
            Parent = CurrentTabInfo,
        })

        SearchBox = New("TextBox", {
            BackgroundColor3 = "MainColor",
            PlaceholderText = "Search",
            Size = WindowInfo.SearchbarSize,
            TextScaled = true,
            Visible = not (WindowInfo.DisableSearch or false),
            Parent = RightWrapper,
        })
        New("UIFlexItem", {
            FlexMode = Enum.UIFlexMode.Shrink,
            Parent = SearchBox,
        })
        table.insert(
            Library.Corners,
            New("UICorner", {
                CornerRadius = UDim.new(0, WindowInfo.CornerRadius),
                Parent = SearchBox,
            })
        )
        New("UIPadding", {
            PaddingBottom = UDim.new(0, 8),
            PaddingLeft = UDim.new(0, 8),
            PaddingRight = UDim.new(0, 8),
            PaddingTop = UDim.new(0, 8),
            Parent = SearchBox,
        })
        New("UIStroke", {
            Color = "OutlineColor",
            Parent = SearchBox,
        })

        local SearchIcon = Library:GetIcon("search")
        if SearchIcon then
            New("ImageLabel", {
                Image = SearchIcon.Url,
                ImageColor3 = "FontColor",
                ImageRectOffset = SearchIcon.ImageRectOffset,
                ImageRectSize = SearchIcon.ImageRectSize,
                ImageTransparency = 0.5,
                Size = UDim2.fromScale(1, 1),
                SizeConstraint = Enum.SizeConstraint.RelativeYY,
                Parent = SearchBox,
            })
        end

        if MoveIcon then
            New("ImageLabel", {
                AnchorPoint = Vector2.new(1, 0.5),
                Image = MoveIcon.Url,
                ImageColor3 = "OutlineColor",
                ImageRectOffset = MoveIcon.ImageRectOffset,
                ImageRectSize = MoveIcon.ImageRectSize,
                Position = UDim2.new(1, -10, 0.5, 0),
                Size = UDim2.fromOffset(28, 28),
                SizeConstraint = Enum.SizeConstraint.RelativeYY,
                Parent = TopBar,
            })
        end

        BottomBackground = New("Frame", {
            AnchorPoint = Vector2.new(0, 1),
            BackgroundColor3 = function()
                return Library:GetBetterColor(Library.Scheme.BackgroundColor, 4)
            end,
            Position = UDim2.fromScale(0, 1),
            Size = UDim2.new(1, 0, 0, 20 + WindowInfo.CornerRadius),
            Parent = MainFrame
        })
        Library:MakeLine(MainFrame, { AnchorPoint = Vector2.new(0, 1), Position = UDim2.new(0, 0, 1, -20), Size = UDim2.new(1, 0, 0, 1), })

        local BottomBar = New("Frame", { AnchorPoint = Vector2.new(0, 1), BackgroundTransparency = 1, Position = UDim2.fromScale(0, 1), Size = UDim2.new(1, 0, 0, 20), Parent = MainFrame, })
        table.insert(
            Library.Corners,
            New("UICorner", {
                CornerRadius = UDim.new(0, WindowInfo.CornerRadius),
                Parent = BottomBackground,
            })
        )

        FooterLabel = New("TextLabel", {
            BackgroundTransparency = 1,
            Size = UDim2.fromScale(1, 1),
            Text = WindowInfo.Footer,
            TextSize = 14,
            TextTransparency = 0.5,
            Parent = BottomBar,
        })

        if WindowInfo.Resizable then
            ResizeButton = New("TextButton", {
                AnchorPoint = Vector2.new(1, 0),
                BackgroundTransparency = 1,
                Position = UDim2.new(1, -WindowInfo.CornerRadius / 4, 0, 0),
                Size = UDim2.fromScale(1, 1),
                SizeConstraint = Enum.SizeConstraint.RelativeYY,
                Text = "",
                Parent = BottomBar,
            })

            Library:MakeResizable(MainFrame, ResizeButton, function()
                for _, Tab in Library.Tabs do Tab:Resize(true) end
            end)
        end

        New("ImageLabel", {
            Image = ResizeIcon and ResizeIcon.Url or "",
            ImageColor3 = "FontColor",
            ImageRectOffset = ResizeIcon and ResizeIcon.ImageRectOffset or Vector2.zero,
            ImageRectSize = ResizeIcon and ResizeIcon.ImageRectSize or Vector2.zero,
            ImageTransparency = 0.5,
            Position = UDim2.fromOffset(2, 2),
            Size = UDim2.new(1, -4, 1, -4),
            Parent = ResizeButton,
        })

        Tabs = New("ScrollingFrame", {
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            BackgroundColor3 = "BackgroundColor",
            CanvasSize = UDim2.fromScale(0, 0),
            Position = UDim2.fromOffset(0, 49),
            ScrollBarThickness = 0,
            Size = UDim2.new(0, InitialLeftWidth, 1, -70),
            Parent = MainFrame,
        })
        New("UIListLayout", {
            Parent = Tabs,
        })

        Container = New("Frame", {
            AnchorPoint = Vector2.new(1, 0),
            BackgroundColor3 = function()
                return Library:GetBetterColor(Library.Scheme.BackgroundColor, 1)
            end,
            Name = "Container",
            Position = UDim2.new(1, 0, 0, 49),
            Size = UDim2.new(1, -InitialLeftWidth - 1, 1, -70),
            Parent = MainFrame,
        })
        New("UIPadding", {
            PaddingBottom = UDim.new(0, 0),
            PaddingLeft = UDim.new(0, 6),
            PaddingRight = UDim.new(0, 6),
            PaddingTop = UDim.new(0, 0),
            Parent = Container,
        })

        Library.WindowContainer = Container
    end

    local Window = {}

    local function SetUICorner(UICorner, Corner, HalfCurrent, HalfValue, Value)
        local Current = UICorner[Corner]
        if Current.Offset == 0 and Current.Scale == 0 then return end

        UICorner[Corner] = Current.Offset == HalfCurrent and HalfValue or Value
    end

    function Window:ChangeTitle(title)
        assert(typeof(title) == "string", "Expected string for title got: " .. typeof(title))

        WindowTitle.Text = title
        WindowInfo.Title = title
    end

    if WindowInfo.BackgroundImage then
        function Window:SetBackgroundImage(Image: string)
            assert(typeof(Image) == "string", "Expected string for Image got: " .. typeof(Image))

            BackgroundImage.Image = Image
            WindowInfo.BackgroundImage = Image
        end
    end

    function Window:SetFooter(footer: string)
        assert(typeof(footer) == "string", "Expected string for footer got: " .. typeof(footer))

        FooterLabel.Text = footer
        WindowInfo.Footer = footer
    end

    function Window:SetCornerRadius(Radius: number)
        assert(typeof(Radius) == "number", "Expected number for Radius got: " .. typeof(Radius))
        Radius = math.min(Radius, 20)

        local RadiusHalf = UDim.new(0, Radius / 2)
        local RadiusUDim = UDim.new(0, Radius / 2)
        local HalfCurrent = Library.CornerRadius / 2

        for _, UICorner in Library.Corners do
            if UICorner.CornerRadius.Offset == HalfCurrent then
                UICorner.CornerRadius = RadiusHalf
            else
                UICorner.CornerRadius = RadiusUDim
            end
        end

        for _, UICorner in Library.SpecificCorners do
            SetUICorner(UICorner, "TopRightRadius", HalfCurrent, RadiusHalf, RadiusUDim)
            SetUICorner(UICorner, "TopLeftRadius", HalfCurrent, RadiusHalf, RadiusUDim)
            SetUICorner(UICorner, "BottomRightRadius", HalfCurrent, RadiusHalf, RadiusUDim)
            SetUICorner(UICorner, "BottomLeftRadius", HalfCurrent, RadiusHalf, RadiusUDim)
        end

        Library.CornerRadius = Radius
        WindowInfo.CornerRadius = Radius

        ResizeButton.Position = UDim2.new(1, -Radius / 4, 0, 0)
        BottomBackground.Size = UDim2.new(1, 0, 0, 20 + Radius)

        for _, Tab in Library.Tabs do
            if Tab.IsKeyTab then continue end

            for _, Tabbox in Tab.Tabboxes do Tabbox:UpdateCorners() end
        end
    end

    local function ApplyCompact()
        IsCompact = Window:GetSidebarWidth() == WindowInfo.SidebarCompactWidth
        if WindowInfo.DisableCompactingSnap then IsCompact = Window:GetSidebarWidth() <= WindowInfo.CompactWidthActivation end

        WindowTitle.Visible = not IsCompact
        if not WindowInfo.Icon then WindowIcon.Visible = IsCompact end

        for _, Button in Library.TabButtons do
            if not Button.Icon then continue end

            Button.Label.Visible = not IsCompact
            Button.Padding.PaddingBottom = UDim.new(0, IsCompact and 6 or 11)
            Button.Padding.PaddingLeft = UDim.new(0, IsCompact and 6 or 12)
            Button.Padding.PaddingRight = UDim.new(0, IsCompact and 6 or 12)
            Button.Padding.PaddingTop = UDim.new(0, IsCompact and 6 or 11)
            Button.Icon.SizeConstraint = IsCompact and Enum.SizeConstraint.RelativeXY or Enum.SizeConstraint.RelativeYY
        end
    end

    function Window:IsSidebarCompacted()
        return IsCompact
    end

    function Window:SetCompact(State)
        Window:SetSidebarWidth(State and WindowInfo.SidebarCompactWidth or LastExpandedWidth)
    end

    function Window:GetSidebarWidth()
        return Tabs.Size.X.Offset
    end

    function Window:SetSidebarWidth(Width)
        Width = math.clamp(Width, 48, MainFrame.Size.X.Offset - WindowInfo.MinContainerWidth - 1)

        DividerLine.Position = UDim2.fromOffset(Width, 0)

        TitleHolder.Size = UDim2.new(0, Width, 1, 0)
        RightWrapper.Size = UDim2.new(1, -Width - 57 - 1, 1, -16)
        Tabs.Size = UDim2.new(0, Width, 1, -70)
        Container.Size = UDim2.new(1, -Width - 1, 1, -70)

        if WindowInfo.EnableCompacting then ApplyCompact() end
        if not IsCompact then LastExpandedWidth = Width end
    end

    function Window:ShowTabInfo(Name, Description)
        CurrentTabLabel.Text = Name
        CurrentTabDescription.Text = Description

        if IsDefaultSearchbarSize then SearchBox.Size = UDim2.fromScale(0.5, 1) end
        CurrentTabInfo.Visible = true
    end

    function Window:HideTabInfo() CurrentTabInfo.Visible = false; if IsDefaultSearchbarSize then SearchBox.Size = UDim2.fromScale(1, 1) end end

    function Window:AddTab(...)
        local Name = nil
        local Icon = nil
        local Description = nil

        if select("#", ...) == 1 and typeof(...) == "table" then
            local Info = select(1, ...)
            Name = Info.Name or "Tab"
            Icon = Info.Icon
            Description = Info.Description
        else
            Name = select(1, ...)
            Icon = select(2, ...)
            Description = select(3, ...)
        end

        local TabButton: TextButton
        local TabLabel
        local TabIcon

        local TabContainer
        local TabLeft
        local TabRight

        Icon = Library:GetCustomIcon(Icon)
        do
            TabButton = New("TextButton", {
                BackgroundColor3 = "MainColor",
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 0, 40),
                Text = "",
                Parent = Tabs,
            })
            local ButtonPadding = New("UIPadding", { PaddingBottom = UDim.new(0, IsCompact and 6 or 11), PaddingLeft = UDim.new(0, IsCompact and 6 or 12), PaddingRight = UDim.new(0, IsCompact and 6 or 12), PaddingTop = UDim.new(0, IsCompact and 6 or 11), Parent = TabButton, })

            TabLabel = New("TextLabel", {
                BackgroundTransparency = 1,
                Position = UDim2.fromOffset(30, 0),
                Size = UDim2.new(1, -30, 1, 0),
                Text = Name,
                TextSize = 16,
                TextTransparency = 0.5,
                TextXAlignment = Enum.TextXAlignment.Left,
                Visible = not IsCompact,
                Parent = TabButton,
            })

            if Icon then
                TabIcon = New("ImageLabel", {
                    Image = Icon.Url,
                    ImageColor3 = Icon.Custom and "WhiteColor" or "AccentColor",
                    ImageRectOffset = Icon.ImageRectOffset,
                    ImageRectSize = Icon.ImageRectSize,
                    ImageTransparency = 0.5,
                    ScaleType = Enum.ScaleType.Fit,
                    Size = UDim2.fromScale(1, 1),
                    SizeConstraint = IsCompact and Enum.SizeConstraint.RelativeXY or Enum.SizeConstraint.RelativeYY,
                    Parent = TabButton,
                })
            end

            table.insert(Library.TabButtons, {
                Label = TabLabel,
                Padding = ButtonPadding,
                Icon = TabIcon,
            })

            TabContainer = New("Frame", {
                BackgroundTransparency = 1,
                Size = UDim2.fromScale(1, 1),
                Visible = false,
                Parent = Container,
            })

            TabLeft = New("ScrollingFrame", {
                AutomaticCanvasSize = Enum.AutomaticSize.Y,
                BackgroundTransparency = 1,
                CanvasSize = UDim2.fromScale(0, 0),
                ScrollBarImageTransparency = 1,
                ScrollBarThickness = 0,
                Size = UDim2.new(0.5, -3, 1, 0),
                Parent = TabContainer,
            })
            New("UIListLayout", {
                Padding = UDim.new(0, 2),
                Parent = TabLeft,
            })
            New("UIPadding", {
                PaddingBottom = UDim.new(0, 2),
                PaddingLeft = UDim.new(0, 2),
                PaddingRight = UDim.new(0, 2),
                PaddingTop = UDim.new(0, 2),
                Parent = TabLeft,
            })
            do
                New("Frame", {
                    BackgroundTransparency = 1,
                    LayoutOrder = -1,
                    Parent = TabLeft,
                })
                New("Frame", {
                    BackgroundTransparency = 1,
                    LayoutOrder = 1,
                    Parent = TabLeft,
                })
            end

            TabRight = New("ScrollingFrame", {
                AnchorPoint = Vector2.new(1, 0),
                AutomaticCanvasSize = Enum.AutomaticSize.Y,
                BackgroundTransparency = 1,
                CanvasSize = UDim2.fromScale(0, 0),
                Position = UDim2.fromScale(1, 0),
                ScrollBarImageTransparency = 1,
                ScrollBarThickness = 0,
                Size = UDim2.new(0.5, -3, 1, 0),
                Parent = TabContainer,
            })
            New("UIListLayout", {
                Padding = UDim.new(0, 2),
                Parent = TabRight,
            })
            New("UIPadding", {
                PaddingBottom = UDim.new(0, 2),
                PaddingLeft = UDim.new(0, 2),
                PaddingRight = UDim.new(0, 2),
                PaddingTop = UDim.new(0, 2),
                Parent = TabRight,
            })
            do
                New("Frame", {
                    BackgroundTransparency = 1,
                    LayoutOrder = -1,
                    Parent = TabRight,
                })
                New("Frame", {
                    BackgroundTransparency = 1,
                    LayoutOrder = 1,
                    Parent = TabRight,
                })
            end
        end

        local WarningBoxHolder = New("Frame", { AutomaticSize = Enum.AutomaticSize.Y, BackgroundTransparency = 1, Position = UDim2.fromOffset(0, 7), Size = UDim2.fromScale(1, 0), Visible = false, Parent = TabContainer, })

        local WarningBox
        local WarningBoxOutline
        local WarningBoxShadowOutline
        local WarningBoxScrollingFrame
        local WarningTitle
        local WarningStroke
        local WarningText
        do
            WarningBox = New("Frame", {
                BackgroundColor3 = "BackgroundColor",
                Position = UDim2.fromOffset(2, 0),
                Size = UDim2.new(1, -5, 0, 0),
                Parent = WarningBoxHolder,
            })
            table.insert(
                Library.Corners,
                New("UICorner", {
                    CornerRadius = UDim.new(0, WindowInfo.CornerRadius),
                    Parent = WarningBox,
                })
            )
            WarningBoxOutline, WarningBoxShadowOutline = Library:AddOutline(WarningBox)

            WarningBoxScrollingFrame = New("ScrollingFrame", {
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                Size = UDim2.fromScale(1, 1),
                CanvasSize = UDim2.new(0, 0, 0, 0),
                ScrollBarThickness = 3,
                ScrollingDirection = Enum.ScrollingDirection.Y,
                Parent = WarningBox,
            })
            New("UIPadding", {
                PaddingBottom = UDim.new(0, 4),
                PaddingLeft = UDim.new(0, 6),
                PaddingRight = UDim.new(0, 6),
                PaddingTop = UDim.new(0, 4),
                Parent = WarningBoxScrollingFrame,
            })

            WarningTitle = New("TextLabel", {
                BackgroundTransparency = 1,
                Size = UDim2.new(1, -4, 0, 14),
                Text = "",
                TextColor3 = Color3.fromRGB(255, 50, 50),
                TextSize = 14,
                TextXAlignment = Enum.TextXAlignment.Left,
                Parent = WarningBoxScrollingFrame,
            })

            WarningStroke = New("UIStroke", {
                ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
                Color = Color3.fromRGB(169, 0, 0),
                LineJoinMode = Enum.LineJoinMode.Miter,
                Parent = WarningTitle,
            })

            WarningText = New("TextLabel", {
                BackgroundTransparency = 1,
                Position = UDim2.fromOffset(0, 16),
                Size = UDim2.new(1, -4, 0, 0),
                Text = "",
                TextSize = 14,
                TextWrapped = true,
                Parent = WarningBoxScrollingFrame,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextYAlignment = Enum.TextYAlignment.Top,
            })

            New("UIStroke", {
                ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
                Color = "DarkColor",
                LineJoinMode = Enum.LineJoinMode.Miter,
                Parent = WarningText,
            })
        end

        local Tab = {
            Connections = {},
            Destroyed = false,

            Groupboxes = {},
            Tabboxes = {},
            DependencyGroupboxes = {},
            Description = Description,
            Sides = { TabLeft, TabRight, },
            WarningBox = { IsNormal = false, LockSize = false, Visible = false, Title = "WARNING", Text = "", },
        }

        function Tab:UpdateWarningBox(Info)
            if typeof(Info.IsNormal) == "boolean" then Tab.WarningBox.IsNormal = Info.IsNormal end
            if typeof(Info.LockSize) == "boolean" then Tab.WarningBox.LockSize = Info.LockSize end
            if typeof(Info.Visible) == "boolean" then Tab.WarningBox.Visible = Info.Visible end
            if typeof(Info.Title) == "string" then Tab.WarningBox.Title = Info.Title end
            if typeof(Info.Text) == "string" then Tab.WarningBox.Text = Info.Text end

            WarningBoxHolder.Visible = Tab.WarningBox.Visible
            WarningTitle.Text = Tab.WarningBox.Title
            WarningText.Text = Tab.WarningBox.Text
            Tab:Resize(true)

            WarningBox.BackgroundColor3 = Tab.WarningBox.IsNormal == true and Library.Scheme.BackgroundColor
                or Color3.fromRGB(127, 0, 0)

            WarningBoxShadowOutline.Color = Tab.WarningBox.IsNormal == true and Library.Scheme.DarkColor
                or Color3.fromRGB(85, 0, 0)
            WarningBoxOutline.Color = Tab.WarningBox.IsNormal == true and Library.Scheme.OutlineColor
                or Color3.fromRGB(255, 50, 50)

            WarningTitle.TextColor3 = Tab.WarningBox.IsNormal == true and Library.Scheme.FontColor
                or Color3.fromRGB(255, 50, 50)
            WarningStroke.Color = Tab.WarningBox.IsNormal == true and Library.Scheme.OutlineColor
                or Color3.fromRGB(169, 0, 0)

            if not Library.Registry[WarningBox] then Library:AddToRegistry(WarningBox, {}) end
            if not Library.Registry[WarningBoxShadowOutline] then Library:AddToRegistry(WarningBoxShadowOutline, {}) end
            if not Library.Registry[WarningBoxOutline] then Library:AddToRegistry(WarningBoxOutline, {}) end
            if not Library.Registry[WarningTitle] then Library:AddToRegistry(WarningTitle, {}) end
            if not Library.Registry[WarningStroke] then Library:AddToRegistry(WarningStroke, {}) end

            Library.Registry[WarningBox].BackgroundColor3 = function()
                return Tab.WarningBox.IsNormal == true and Library.Scheme.BackgroundColor or Color3.fromRGB(127, 0, 0)
            end

            Library.Registry[WarningBoxShadowOutline].Color = function()
                return Tab.WarningBox.IsNormal == true and Library.Scheme.DarkColor or Color3.fromRGB(85, 0, 0)
            end

            Library.Registry[WarningBoxOutline].Color = function()
                return Tab.WarningBox.IsNormal == true and Library.Scheme.OutlineColor or Color3.fromRGB(255, 50, 50)
            end

            Library.Registry[WarningTitle].TextColor3 = function()
                return Tab.WarningBox.IsNormal == true and Library.Scheme.FontColor or Color3.fromRGB(255, 50, 50)
            end

            Library.Registry[WarningStroke].Color = function()
                return Tab.WarningBox.IsNormal == true and Library.Scheme.OutlineColor or Color3.fromRGB(169, 0, 0)
            end
        end

        function Tab:RefreshSides()
            local Offset = WarningBoxHolder.Visible and WarningBox.Size.Y.Offset + 8 or 0
            for _, Side in Tab.Sides do Side.Position = UDim2.new(Side.Position.X.Scale, 0, 0, Offset); Side.Size = UDim2.new(0.5, -3, 1, -Offset) end
        end

        function Tab:Resize(ResizeWarningBox: boolean?)
            if ResizeWarningBox then
                local MaximumSize = math.floor(TabContainer.AbsoluteSize.Y / 3.25)
                local _, YText = Library:GetTextBounds(
                    WarningText.Text,
                    Library.Scheme.Font,
                    WarningText.TextSize,
                    WarningText.AbsoluteSize.X
                )

                local YBox = 24 + YText
                if Tab.WarningBox.LockSize == true and YBox >= MaximumSize then
                    WarningBoxScrollingFrame.CanvasSize = UDim2.fromOffset(0, YBox)
                    YBox = MaximumSize
                else
                    WarningBoxScrollingFrame.CanvasSize = UDim2.fromOffset(0, 0)
                end

                WarningText.Size = UDim2.new(1, -4, 0, YText)
                WarningBox.Size = UDim2.new(1, -5, 0, YBox + 4)
            end

            Tab:RefreshSides()
        end

        function Tab:AddGroupbox(Info)
            local BoxHolder = New("Frame", { AutomaticSize = Enum.AutomaticSize.Y, BackgroundTransparency = 1, Size = UDim2.fromScale(1, 0), Parent = Info.Side == 1 and TabLeft or TabRight, })
            New("UIListLayout", {
                Padding = UDim.new(0, 6),
                Parent = BoxHolder,
            })
            New("UIPadding", {
                PaddingBottom = UDim.new(0, 4),
                PaddingTop = UDim.new(0, 4),
                Parent = BoxHolder,
            })

            local GroupboxHolder
            local GroupboxLabel

            local GroupboxContainer
            local GroupboxList

            do
                GroupboxHolder = New("Frame", {
                    BackgroundColor3 = "BackgroundColor",
                    Size = UDim2.fromScale(1, 0),
                    Parent = BoxHolder,
                })
                table.insert(
                    Library.Corners,
                    New("UICorner", {
                        CornerRadius = UDim.new(0, WindowInfo.CornerRadius),
                        Parent = GroupboxHolder,
                    })
                )
                Library:AddOutline(GroupboxHolder)

                Library:MakeLine(GroupboxHolder, { Position = UDim2.fromOffset(0, 34), Size = UDim2.new(1, 0, 0, 1), })

                local BoxIcon = Library:GetCustomIcon(Info.IconName)
                if BoxIcon then
                    New("ImageLabel", {
                        Image = BoxIcon.Url,
                        ImageColor3 = BoxIcon.Custom and "WhiteColor" or "AccentColor",
                        ImageRectOffset = BoxIcon.ImageRectOffset,
                        ImageRectSize = BoxIcon.ImageRectSize,
                        Position = UDim2.fromOffset(6, 6),
                        Size = UDim2.fromOffset(22, 22),
                        Parent = GroupboxHolder,
                    })
                end

                GroupboxLabel = New("TextLabel", {
                    BackgroundTransparency = 1,
                    Position = UDim2.fromOffset(BoxIcon and 24 or 0, 0),
                    Size = UDim2.new(1, 0, 0, 34),
                    Text = Info.Name,
                    TextSize = 15,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    Parent = GroupboxHolder,
                })
                New("UIPadding", {
                    PaddingLeft = UDim.new(0, 12),
                    PaddingRight = UDim.new(0, 12),
                    Parent = GroupboxLabel,
                })

                GroupboxContainer = New("Frame", {
                    BackgroundTransparency = 1,
                    Position = UDim2.fromOffset(0, 35),
                    Size = UDim2.new(1, 0, 1, -35),
                    Parent = GroupboxHolder,
                })

                GroupboxList = New("UIListLayout", {
                    Padding = UDim.new(0, 8),
                    Parent = GroupboxContainer,
                })
                New("UIPadding", {
                    PaddingBottom = UDim.new(0, 7),
                    PaddingLeft = UDim.new(0, 7),
                    PaddingRight = UDim.new(0, 7),
                    PaddingTop = UDim.new(0, 7),
                    Parent = GroupboxContainer,
                })
            end

            local Groupbox = {
                Connections = {},
                Destroyed = false,

                BoxHolder = BoxHolder,
                Holder = GroupboxHolder,
                Container = GroupboxContainer,

                Tab = Tab,
                DependencyBoxes = {},
                Elements = {},
            }

            function Groupbox:Resize()
                GroupboxHolder.Size = UDim2.new(1, 0, 0, (GroupboxList.AbsoluteContentSize.Y / Library.DPIScale) + 49)
            end

            function Groupbox:Destroy()
                Groupbox.Destroyed = true

                if Groupbox.Connections then
                    for _, Connection in Groupbox.Connections do Connection:Disconnect() end
                end

                for _, Element in Groupbox.Elements do
                    if Element.Destroy then Element:Destroy() end
                end
                table.clear(Groupbox.Elements)

                for _, SubDepbox in Groupbox.DependencyBoxes do
                    if SubDepbox.Destroy then SubDepbox:Destroy() end
                end
                table.clear(Groupbox.DependencyBoxes)

                if GroupboxHolder then GroupboxHolder:Destroy() end

                if BoxHolder then BoxHolder:Destroy() end
            end

            setmetatable(Groupbox, BaseGroupbox)

            Groupbox:Resize()
            Tab.Groupboxes[Info.Name] = Groupbox

            return Groupbox
        end

        function Tab:AddLeftGroupbox(Name, IconName)
            return Tab:AddGroupbox({ Side = 1, Name = Name, IconName = IconName })
        end

        function Tab:AddRightGroupbox(Name, IconName)
            return Tab:AddGroupbox({ Side = 2, Name = Name, IconName = IconName })
        end

        function Tab:AddTabbox(Info)
            local BoxHolder = New("Frame", { AutomaticSize = Enum.AutomaticSize.Y, BackgroundTransparency = 1, Size = UDim2.fromScale(1, 0), Parent = Info.Side == 1 and TabLeft or TabRight, })
            New("UIListLayout", {
                Padding = UDim.new(0, 6),
                Parent = BoxHolder,
            })
            New("UIPadding", {
                PaddingBottom = UDim.new(0, 4),
                PaddingTop = UDim.new(0, 4),
                Parent = BoxHolder,
            })

            local TabboxHolder
            local TabboxButtons

            do
                TabboxHolder = New("Frame", {
                    BackgroundColor3 = "BackgroundColor",
                    Size = UDim2.fromScale(1, 0),
                    Parent = BoxHolder,
                })
                table.insert(
                    Library.Corners,
                    New("UICorner", {
                        CornerRadius = UDim.new(0, WindowInfo.CornerRadius),
                        Parent = TabboxHolder,
                    })
                )
                Library:AddOutline(TabboxHolder)

                TabboxButtons = New("Frame", {
                    BackgroundTransparency = 1,
                    Size = UDim2.new(1, 0, 0, 34),
                    Parent = TabboxHolder,
                })
                New("UIListLayout", {
                    FillDirection = Enum.FillDirection.Horizontal,
                    HorizontalFlex = Enum.UIFlexAlignment.Fill,
                    Parent = TabboxButtons,
                })
            end

            local TotalButtons, TotalTabs = 0, 1
            local Tabbox = {
                Connections = {},
                Destroyed = false,

                ActiveTab = nil,

                BoxHolder = BoxHolder,
                Holder = TabboxHolder,
                Tabs = {}
            }

            function Tabbox:UpdateCorners()
                for _, Tab in Tabbox.Tabs do Tab:UpdateCorners() end
            end

            function Tabbox:AddTab(Name, IconName)
                local TabIndex = TotalTabs

                TotalButtons = TotalButtons + 1
                TotalTabs = TotalTabs + 1

                local BoxIcon = Library:GetCustomIcon(IconName)

                local Button = New("TextButton", { BackgroundColor3 = "MainColor", BackgroundTransparency = 0, Size = UDim2.fromOffset(0, 34), Text = "", Parent = TabboxButtons, })

                local ButtonCorner = New("UICorner", {
                    TopLeftRadius = UDim.new(0, WindowInfo.CornerRadius / 2),
                    TopRightRadius = UDim.new(0, WindowInfo.CornerRadius / 2),
                    BottomRightRadius = UDim.new(0, 0),
                    BottomLeftRadius = UDim.new(0, 0),
                    Parent = Button,
                }); table.insert(Library.SpecificCorners, ButtonCorner)

                local ButtonContent = New("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), AutomaticSize = Enum.AutomaticSize.X, BackgroundTransparency = 1, Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(0, 16), Parent = Button, })
                New("UIListLayout", {
                    FillDirection = Enum.FillDirection.Horizontal,
                    HorizontalAlignment = Enum.HorizontalAlignment.Center,
                    VerticalAlignment = Enum.VerticalAlignment.Center,
                    Padding = UDim.new(0, 8),
                    Parent = ButtonContent,
                })

                local ButtonIcon
                if BoxIcon then
                    ButtonIcon = New("ImageLabel", {
                        Image = BoxIcon.Url,
                        ImageColor3 = BoxIcon.Custom and "WhiteColor" or "AccentColor",
                        ImageRectOffset = BoxIcon.ImageRectOffset,
                        ImageRectSize = BoxIcon.ImageRectSize,
                        ImageTransparency = 0.5,
                        Size = UDim2.fromOffset(16, 16),
                        Parent = ButtonContent,
                    })
                end

                local ButtonLabel = New("TextLabel", { AutomaticSize = Enum.AutomaticSize.X, BackgroundTransparency = 1, Size = UDim2.fromOffset(0, 16), Text = Name, TextSize = 15, TextTransparency = 0.5, Parent = ButtonContent, })

                local Line = Library:MakeLine(Button, {
                    AnchorPoint = Vector2.new(0, 1),
                    Position = UDim2.new(0, 0, 1, 1),
                    Size = UDim2.new(1, 0, 0, 1),
                })

                local Container = New("Frame", { BackgroundTransparency = 1, Position = UDim2.fromOffset(0, 35), Size = UDim2.new(1, 0, 1, -35), Visible = false, Parent = TabboxHolder, })
                local List = New("UIListLayout", { Padding = UDim.new(0, 8), Parent = Container, })
                New("UIPadding", {
                    PaddingBottom = UDim.new(0, 7),
                    PaddingLeft = UDim.new(0, 7),
                    PaddingRight = UDim.new(0, 7),
                    PaddingTop = UDim.new(0, 7),
                    Parent = Container,
                })

                local Tab = {
                    Connections = {},
                    Destroyed = false,

                    ButtonHolder = Button,
                    Container = Container,
                    ButtonCorner = ButtonCorner,

                    Tab = Tab,
                    Elements = {},
                    DependencyBoxes = {},
                }

                function Tab:Show()
                    if Tabbox.ActiveTab then Tabbox.ActiveTab:Hide() end

                    Button.BackgroundTransparency = 1

                    ButtonLabel.TextTransparency = 0
                    if ButtonIcon then ButtonIcon.ImageTransparency = 0 end
                    Line.Visible = false

                    Container.Visible = true

                    Tabbox.ActiveTab = Tab
                    Tab:Resize()
                end

                function Tab:Hide()
                    Button.BackgroundTransparency = 0

                    ButtonLabel.TextTransparency = 0.5
                    if ButtonIcon then ButtonIcon.ImageTransparency = 0.5 end
                    Line.Visible = true
                    Container.Visible = false

                    Tabbox.ActiveTab = nil
                end

                function Tab:Resize()
                    if Tabbox.ActiveTab ~= Tab then return end

                    TabboxHolder.Size = UDim2.new(1, 0, 0, (List.AbsoluteContentSize.Y / Library.DPIScale) + 49)
                end

                function Tab:UpdateCorners()
                    local Radius = WindowInfo.CornerRadius / 2

                    ButtonCorner.TopLeftRadius = UDim.new(0, TabIndex == 1 and Radius or 0)
                    ButtonCorner.TopRightRadius = UDim.new(0, TabIndex == TotalButtons and Radius or 0)
                end

                function Tab:Destroy()
                    Tab.Destroyed = true

                    if Tab.Connections then
                        for _, Connection in Tab.Connections do Connection:Disconnect() end
                    end

                    for _, Element in Tab.Elements do
                        if Element.Destroy then Element:Destroy() end
                    end

                    for _, SubDepbox in Tab.DependencyBoxes do
                        if SubDepbox.Destroy then SubDepbox:Destroy() end
                    end

                    if Container then Container:Destroy() end

                    if Button then Button:Destroy() end
                end

                if not Tabbox.ActiveTab then Tab:Show() end

                Button.MouseButton1Click:Connect(Tab.Show)

                setmetatable(Tab, BaseGroupbox)

                Tabbox.Tabs[Name] = Tab
                Tabbox:UpdateCorners()

                return Tab
            end

            function Tabbox:Destroy()
                Tabbox.Destroyed = true

                if Tabbox.Connections then
                    for _, Connection in Tabbox.Connections do Connection:Disconnect() end
                end

                for _, Tab in Tabbox.Tabs do
                    if Tab.Destroy then Tab:Destroy() end
                end

                if TabboxHolder then TabboxHolder:Destroy() end

                if BoxHolder then BoxHolder:Destroy() end
            end

            if Info.Name then
                Tab.Tabboxes[Info.Name] = Tabbox
            else
                table.insert(Tab.Tabboxes, Tabbox)
            end

            return Tabbox
        end

        function Tab:AddLeftTabbox(Name)
            return Tab:AddTabbox({ Side = 1, Name = Name })
        end

        function Tab:AddRightTabbox(Name)
            return Tab:AddTabbox({ Side = 2, Name = Name })
        end

        function Tab:Hover(Hovering)
            if Library.ActiveTab == Tab then return end

            TweenService:Create(TabLabel, Library.TweenInfo, {
                TextTransparency = Hovering and 0.25 or 0.5,
            }):Play()
            if TabIcon then
                TweenService:Create(TabIcon, Library.TweenInfo, {
                    ImageTransparency = Hovering and 0.25 or 0.5,
                }):Play()
            end
        end

        function Tab:Show()
            if Library.ActiveTab then Library.ActiveTab:Hide() end

            TweenService:Create(TabButton, Library.TweenInfo, {
                BackgroundTransparency = 0,
            }):Play()
            TweenService:Create(TabLabel, Library.TweenInfo, {
                TextTransparency = 0,
            }):Play()
            if TabIcon then
                TweenService:Create(TabIcon, Library.TweenInfo, {
                    ImageTransparency = 0,
                }):Play()
            end

            if Description then Window:ShowTabInfo(Name, Description) end

            TabContainer.Visible = true
            Tab:RefreshSides()

            Library.ActiveTab = Tab

            if Library.Searching then Library:UpdateSearch(Library.SearchText) end
        end

        function Tab:Hide()
            TweenService:Create(TabButton, Library.TweenInfo, {
                BackgroundTransparency = 1,
            }):Play()
            TweenService:Create(TabLabel, Library.TweenInfo, {
                TextTransparency = 0.5,
            }):Play()
            if TabIcon then
                TweenService:Create(TabIcon, Library.TweenInfo, {
                    ImageTransparency = 0.5,
                }):Play()
            end
            TabContainer.Visible = false

            Window:HideTabInfo()

            Library.ActiveTab = nil
        end

        function Tab:SetVisible(Visible: boolean)
            TabButton.Visible = Visible

            if not Visible and Library.ActiveTab == Tab then Tab:Hide() end
        end

        function Tab:Destroy()
            Tab.Destroyed = true

            if Tab.Connections then
                for _, Connection in Tab.Connections do Connection:Disconnect() end
            end

            for _, Groupbox in Tab.Groupboxes do
                if Groupbox.Destroy then Groupbox:Destroy() end
            end
            table.clear(Tab.Groupboxes)

            for _, Tabbox in Tab.Tabboxes do
                if Tabbox.Destroy then Tabbox:Destroy() end
            end
            table.clear(Tab.Tabboxes)

            for _, DepGroupbox in Tab.DependencyGroupboxes do
                if DepGroupbox.Destroy then DepGroupbox:Destroy() end
            end

            if TabContainer then TabContainer:Destroy() end

            if TabButton then
                for Index, Entry in Library.TabButtons do
                    if typeof(Entry) == "table" and Entry.Button == TabButton then table.remove(Library.TabButtons, Index); break end
                end

                TabButton:Destroy()
            end

            Library.Tabs[Name] = nil
        end

        if not Library.ActiveTab then Tab:Show() end

        TabButton.MouseEnter:Connect(function()
            Tab:Hover(true)
        end)
        TabButton.MouseLeave:Connect(function()
            Tab:Hover(false)
        end)
        TabButton.MouseButton1Click:Connect(Tab.Show)

        Library.Tabs[Name] = Tab

        return Tab
    end

    function Window:AddKeyTab(...)
        local Name = nil
        local Icon = nil
        local Description = nil

        if select("#", ...) == 1 and typeof(...) == "table" then
            local Info = select(1, ...)
            Name = Info.Name or "Tab"
            Icon = Info.Icon
            Description = Info.Description
        else
            Name = select(1, ...) or "Tab"
            Icon = select(2, ...)
            Description = select(3, ...)
        end

        Icon = Icon or "key"

        local TabButton: TextButton
        local TabLabel
        local TabIcon

        local TabContainer

        Icon = if Icon == "key" then KeyIcon else Library:GetCustomIcon(Icon)
        do
            TabButton = New("TextButton", {
                BackgroundColor3 = "MainColor",
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 0, 40),
                Text = "",
                Parent = Tabs,
            })
            local ButtonPadding = New("UIPadding", { PaddingBottom = UDim.new(0, IsCompact and 6 or 11), PaddingLeft = UDim.new(0, IsCompact and 6 or 12), PaddingRight = UDim.new(0, IsCompact and 6 or 12), PaddingTop = UDim.new(0, IsCompact and 6 or 11), Parent = TabButton, })

            TabLabel = New("TextLabel", {
                BackgroundTransparency = 1,
                Position = UDim2.fromOffset(30, 0),
                Size = UDim2.new(1, -30, 1, 0),
                Text = Name,
                TextSize = 16,
                TextTransparency = 0.5,
                TextXAlignment = Enum.TextXAlignment.Left,
                Visible = not IsCompact,
                Parent = TabButton,
            })

            if Icon then
                TabIcon = New("ImageLabel", {
                    Image = Icon.Url,
                    ImageColor3 = Icon.Custom and "WhiteColor" or "AccentColor",
                    ImageRectOffset = Icon.ImageRectOffset,
                    ImageRectSize = Icon.ImageRectSize,
                    ImageTransparency = 0.5,
                    Size = UDim2.fromScale(1, 1),
                    SizeConstraint = IsCompact and Enum.SizeConstraint.RelativeXY or Enum.SizeConstraint.RelativeYY,
                    Parent = TabButton,
                })
            end

            table.insert(Library.TabButtons, {
                Label = TabLabel,
                Padding = ButtonPadding,
                Icon = TabIcon,
            })

            TabContainer = New("ScrollingFrame", {
                AutomaticCanvasSize = Enum.AutomaticSize.Y,
                BackgroundTransparency = 1,
                CanvasSize = UDim2.fromScale(0, 0),
                ScrollBarThickness = 0,
                Size = UDim2.fromScale(1, 1),
                Visible = false,
                Parent = Container,
            })
            New("UIListLayout", {
                HorizontalAlignment = Enum.HorizontalAlignment.Center,
                Padding = UDim.new(0, 8),
                VerticalAlignment = Enum.VerticalAlignment.Center,
                Parent = TabContainer,
            })
            New("UIPadding", {
                PaddingLeft = UDim.new(0, 1),
                PaddingRight = UDim.new(0, 1),
                Parent = TabContainer,
            })
        end

        local Tab = { Elements = {}, Description = Description, IsKeyTab = true, }

        function Tab:AddKeyBox(Callback)
            assert(typeof(Callback) == "function", "Callback must be a function")

            local Holder = New("Frame", { BackgroundTransparency = 1, Size = UDim2.new(0.75, 0, 0, 21), Parent = TabContainer, })

            local Box = New("TextBox", { BackgroundColor3 = "MainColor", PlaceholderText = "Key", Size = UDim2.new(1, -71, 1, 0), TextSize = 14, TextXAlignment = Enum.TextXAlignment.Left, Parent = Holder, })
            New("UIPadding", {
                PaddingLeft = UDim.new(0, 8),
                PaddingRight = UDim.new(0, 8),
                Parent = Box,
            })
            New("UIStroke", {
                Color = "OutlineColor",
                Parent = Box,
            })
            table.insert(
                Library.Corners,
                New("UICorner", {
                    CornerRadius = UDim.new(0, Library.CornerRadius / 2),
                    Parent = Box,
                })
            )

            local Button = New("TextButton", { AnchorPoint = Vector2.new(1, 0), BackgroundColor3 = "MainColor", Position = UDim2.fromScale(1, 0), Size = UDim2.new(0, 63, 1, 0), Text = "Execute", TextSize = 14, Parent = Holder, })
            New("UIStroke", {
                Color = "OutlineColor",
                Parent = Button,
            })
            table.insert(
                Library.Corners,
                New("UICorner", {
                    CornerRadius = UDim.new(0, Library.CornerRadius / 2),
                    Parent = Button,
                })
            )

            Button.InputBegan:Connect(function(Input)
                if not IsClickInput(Input) then return end

                if not Library:MouseIsOverFrame(Button, Input.Position) then return end

                Callback(Box.Text)
            end)
        end

        function Tab:Destroy()
            if TabContainer then TabContainer:Destroy() end

            if TabButton then
                for Index, Entry in Library.TabButtons do
                    if typeof(Entry) == "table" and Entry.Button == TabButton then table.remove(Library.TabButtons, Index); break end
                end

                TabButton:Destroy()
            end

            Library.Tabs[Name] = nil
        end

        function Tab:RefreshSides() end
        function Tab:Resize() end
        function Tab:UpdateCorners() end

        function Tab:Hover(Hovering)
            if Library.ActiveTab == Tab then return end

            TweenService:Create(TabLabel, Library.TweenInfo, {
                TextTransparency = Hovering and 0.25 or 0.5,
            }):Play()
            if TabIcon then
                TweenService:Create(TabIcon, Library.TweenInfo, {
                    ImageTransparency = Hovering and 0.25 or 0.5,
                }):Play()
            end
        end

        function Tab:Show()
            if Library.ActiveTab then Library.ActiveTab:Hide() end

            TweenService:Create(TabButton, Library.TweenInfo, {
                BackgroundTransparency = 0,
            }):Play()
            TweenService:Create(TabLabel, Library.TweenInfo, {
                TextTransparency = 0,
            }):Play()
            if TabIcon then
                TweenService:Create(TabIcon, Library.TweenInfo, {
                    ImageTransparency = 0,
                }):Play()
            end
            TabContainer.Visible = true

            if Description then Window:ShowTabInfo(Name, Description) end

            Tab:RefreshSides()

            Library.ActiveTab = Tab

            if Library.Searching then Library:UpdateSearch(Library.SearchText) end
        end

        function Tab:Hide()
            TweenService:Create(TabButton, Library.TweenInfo, {
                BackgroundTransparency = 1,
            }):Play()
            TweenService:Create(TabLabel, Library.TweenInfo, {
                TextTransparency = 0.5,
            }):Play()
            if TabIcon then
                TweenService:Create(TabIcon, Library.TweenInfo, {
                    ImageTransparency = 0.5,
                }):Play()
            end
            TabContainer.Visible = false

            Window:HideTabInfo()

            Library.ActiveTab = nil
        end

        function Tab:SetVisible(Visible: boolean)
            TabButton.Visible = Visible

            if not Visible and Library.ActiveTab == Tab then Tab:Hide() end
        end

        if not Library.ActiveTab then Tab:Show() end

        TabButton.MouseEnter:Connect(function()
            Tab:Hover(true)
        end)
        TabButton.MouseLeave:Connect(function()
            Tab:Hover(false)
        end)
        TabButton.MouseButton1Click:Connect(Tab.Show)

        Tab.Container = TabContainer
        setmetatable(Tab, BaseGroupbox)

        Library.Tabs[Name] = Tab

        return Tab
    end

    function Window:AddDialog(Idx, Info)
        Info = Library:Validate(Info, Templates.Dialog)

        local DialogFrame
        local DialogOverlay
        local DialogContainer
        local ButtonsHolder
        local FooterButtonsList = {}

        DialogOverlay = New("TextButton", {
            AutoButtonColor = false,
            BackgroundColor3 = "DarkColor",
            BackgroundTransparency = 1,
            Size = UDim2.fromScale(1, 1),
            Text = "",
            Active = false,
            ZIndex = 9000,
            Visible = true,
            Parent = MainFrame,
        })
        TweenService:Create(DialogOverlay, Library.TweenInfo, {
            BackgroundTransparency = 0.5,
        }):Play()

        DialogFrame = New("TextButton", {
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = "BackgroundColor",
            Position = UDim2.fromScale(0.5, 0.5),
            Size = UDim2.fromOffset(300, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            Text = "",
            AutoButtonColor = false,
            ZIndex = 9001,
            Parent = DialogOverlay,
        })
        table.insert(
            Library.Corners,
            New("UICorner", {
                CornerRadius = UDim.new(0, WindowInfo.CornerRadius),
                Parent = DialogFrame,
            })
        )
        Library:AddOutline(DialogFrame)

        local InnerContainer = New("Frame", { BackgroundTransparency = 1, Size = UDim2.fromScale(1, 0), AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 9002, Parent = DialogFrame, })
        local DialogScale = New("UIScale", { Scale = 0.95, Parent = DialogFrame, })
        TweenService:Create(DialogScale, Library.TweenInfo, {
            Scale = 1
        }):Play()
        local _InnerPadding = New("UIPadding", { PaddingBottom = UDim.new(0, 15), PaddingLeft = UDim.new(0, 15), PaddingRight = UDim.new(0, 15), PaddingTop = UDim.new(0, 15), Parent = InnerContainer, })
        local _InnerLayout = New("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = InnerContainer, })

        local HeaderContainer = New("Frame", { BackgroundTransparency = 1, Size = UDim2.fromScale(1, 0), AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = 1, ZIndex = 9002, Parent = InnerContainer, })
        New("UIListLayout", {
            Padding = UDim.new(0, 6),
            SortOrder = Enum.SortOrder.LayoutOrder,
            Parent = HeaderContainer,
        })
        New("UIPadding", {
            PaddingBottom = UDim.new(0, 5),
            Parent = HeaderContainer,
        })

        local TitleRow = New("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 20), AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = 1, ZIndex = 9002, Parent = HeaderContainer, })
        New("UIListLayout", {
            Padding = UDim.new(0, 6),
            FillDirection = Enum.FillDirection.Horizontal,
            VerticalAlignment = Enum.VerticalAlignment.Center,
            SortOrder = Enum.SortOrder.LayoutOrder,
            Parent = TitleRow,
        })

        if Info.Icon then
            local ParsedIcon = Library:GetCustomIcon(Info.Icon)
            if ParsedIcon then
                local IconImg = New("ImageLabel", { BackgroundTransparency = 1, Size = UDim2.fromOffset(16, 16), Image = ParsedIcon.Url, ImageColor3 = "FontColor", ImageRectOffset = ParsedIcon.ImageRectOffset, ImageRectSize = ParsedIcon.ImageRectSize, LayoutOrder = 1, ZIndex = 9002, Parent = TitleRow, })
                if Info.TitleColor then IconImg.ImageColor3 = Info.TitleColor end
            end
        end

        local TitleLabel = New("TextLabel", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 18), AutomaticSize = Enum.AutomaticSize.Y, Text = Info.Title, TextSize = 18, TextXAlignment = Enum.TextXAlignment.Left, LayoutOrder = 2, ZIndex = 9002, Parent = TitleRow, })
        if Info.TitleColor then TitleLabel.TextColor3 = Info.TitleColor end

        local DescriptionLabel = New("TextLabel", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 14), AutomaticSize = Enum.AutomaticSize.Y, Text = Info.Description, TextSize = 14, TextTransparency = Info.DescriptionColor and 0 or 0.2, TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = true, LayoutOrder = 2, ZIndex = 9002, Parent = HeaderContainer, })
        if Info.DescriptionColor then DescriptionLabel.TextColor3 = Info.DescriptionColor end

        DialogContainer = New("Frame", {
            BackgroundTransparency = 1,
            Size = UDim2.fromScale(1, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            LayoutOrder = 4,
            ZIndex = 9002,
            Parent = InnerContainer,
        })
        local _DialogContainerLayout = New("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = DialogContainer, })
        New("UIPadding", {
            PaddingBottom = UDim.new(0, 5),
            Parent = DialogContainer,
        })

        local _Sep2 = New("Frame", { BackgroundColor3 = "OutlineColor", BackgroundTransparency = 0, BorderSizePixel = 0, Size = UDim2.new(1, 0, 0, 1), LayoutOrder = 5, ZIndex = 9002, Parent = InnerContainer, })

        ButtonsHolder = New("Frame", {
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            LayoutOrder = 6,
            ZIndex = 9002,
            Parent = InnerContainer,
        })
        New("UIListLayout", {
            Padding = UDim.new(0, 8),
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalAlignment = Enum.HorizontalAlignment.Right,
            Wraps = true,
            SortOrder = Enum.SortOrder.LayoutOrder,
            Parent = ButtonsHolder,
        })
        New("UIPadding", {
            PaddingTop = UDim.new(0, 5),
            Parent = ButtonsHolder,
        })

        local Dialog = { Elements = {}, Container = DialogContainer, }

        function Dialog:Resize()
            local MaxWidth = MainFrame.AbsoluteSize.X * 0.75
            local MinWidth = 400

            local TotalButtonWidth = 0
            local ButtonCount = 0
            local HasButtons = false

            for _, BtnWrap in FooterButtonsList do HasButtons = true ButtonCount = ButtonCount + 1 TotalButtonWidth = TotalButtonWidth + BtnWrap.Container.Size.X.Offset end

            local TargetWidth = MinWidth
            if HasButtons then local RequiredWidth = TotalButtonWidth + ((ButtonCount - 1) * 8) + 30; TargetWidth = math.max(MinWidth, math.min(RequiredWidth, MaxWidth)) end

            DialogFrame.Size = UDim2.fromOffset(TargetWidth, 0)

            local _DescX, DescY = Library:GetTextBounds(DescriptionLabel.Text, Library.Scheme.Font, 14, TargetWidth - 30)
            DescriptionLabel.Size = UDim2.new(1, 0, 0, DescY)

            local HasElements = false
            for _, v in DialogContainer:GetChildren() do
                if not v:IsA("UIListLayout") and not v:IsA("UIPadding") then HasElements = true; break end
            end
            DialogContainer.Visible = HasElements

            ButtonsHolder.Visible = HasButtons
            _Sep2.Visible = HasButtons
        end

        function Dialog:SetTitle(Title) TitleLabel.Text = Title; Dialog:Resize() end

        function Dialog:SetDescription(Description) DescriptionLabel.Text = Description; Dialog:Resize() end

        function Dialog:Dismiss()
            Library.ActiveDialog = nil
            local CloseTween = TweenService:Create(DialogScale, Library.TweenInfo, { Scale = 0.95 })
            TweenService:Create(DialogOverlay, Library.TweenInfo, { BackgroundTransparency = 1 }):Play()
            CloseTween:Play()

            task.delay(Library.TweenInfo.Time, function()
                DialogOverlay:Destroy()
            end)
            Library.Dialogues[Idx] = nil
        end

        DialogOverlay.MouseButton1Click:Connect(function()
            if Info.OutsideClickDismiss then Dialog:Dismiss() end
        end)

        function Dialog:RemoveFooterButton(ButtonIdx)
            if FooterButtonsList[ButtonIdx] then FooterButtonsList[ButtonIdx].Container:Destroy(); FooterButtonsList[ButtonIdx] = nil end
        end

        function Dialog:SetButtonDisabled(ButtonIdx, Disabled)
            if FooterButtonsList[ButtonIdx] and type(FooterButtonsList[ButtonIdx].SetDisabled) == "function" then FooterButtonsList[ButtonIdx]:SetDisabled(Disabled) end
        end

        function Dialog:SetButtonOrder(ButtonIdx, Order)
            if FooterButtonsList[ButtonIdx] and FooterButtonsList[ButtonIdx].Container then FooterButtonsList[ButtonIdx].Container.LayoutOrder = Order end
        end

        function Dialog:AddFooterButton(ButtonIdx, ButtonInfo)
            Dialog:RemoveFooterButton(ButtonIdx)

            local WaitTime = ButtonInfo.WaitTime or 0

            local ButtonContainer = New("Frame", { BackgroundTransparency = 1, Size = UDim2.fromOffset(0, 26), LayoutOrder = ButtonInfo.Order or 0, ZIndex = 9002, Parent = ButtonsHolder, })

            local BtnColor = "MainColor"
            local BtnOutline = "OutlineColor"
            local Variant = ButtonInfo.Variant or "Primary"

            if Variant == "Primary" then
                BtnColor = "FontColor"
                BtnOutline = "FontColor"
            elseif Variant == "Secondary" then
                BtnColor = "MainColor"
                BtnOutline = "OutlineColor"
            elseif Variant == "Destructive" then
                BtnColor = "DestructiveColor"
                BtnOutline = "DestructiveColor"
            elseif Variant == "Ghost" then BtnColor = "BackgroundColor"; BtnOutline = "BackgroundColor" end

            local TextBtn = New("TextButton", { BackgroundColor3 = BtnColor, BorderColor3 = BtnOutline, BackgroundTransparency = WaitTime > 0 and 0.5 or 0, Size = UDim2.fromOffset(0, 26), Text = "", AutoButtonColor = false, ZIndex = 9002, Parent = ButtonContainer, })
            Library:AddOutline(TextBtn)
            table.insert(
                Library.Corners,
                New("UICorner", {
                    CornerRadius = UDim.new(0, Library.CornerRadius),
                    Parent = TextBtn
                })
            )

            local _BtnPadding = New("UIPadding", { PaddingLeft = UDim.new(0, 15), PaddingRight = UDim.new(0, 15), Parent = TextBtn, })

            local TextColor = Library.Scheme.FontColor
            if Variant == "Primary" then
                TextColor = Library.Scheme.BackgroundColor
            elseif Variant == "Destructive" then TextColor = Color3.new(1, 1, 1) end

            local BtnLabel = New("TextLabel", { BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), Text = ButtonInfo.Title or ButtonIdx, TextColor3 = TextColor, TextTransparency = WaitTime > 0 and 0.5 or 0, TextSize = 14, ZIndex = 9002, Parent = TextBtn, })

            local LabelX, _ = Library:GetTextBounds(BtnLabel.Text, Library.Scheme.Font, 14, 250)
            ButtonContainer.Size = UDim2.fromOffset(LabelX + 30, 26)
            TextBtn.Size = UDim2.fromOffset(LabelX + 30, 26)

            local ProgressBar
            if WaitTime > 0 then
                ProgressBar = New("Frame", {
                    BackgroundColor3 = "AccentColor",
                    BorderSizePixel = 0,
                    Position = UDim2.new(0, 0, 1, -2),
                    Size = UDim2.new(0, 0, 0, 2),
                    ZIndex = 2,
                    Parent = TextBtn,
                })
                table.insert(
                    Library.Corners,
                    New("UICorner", {
                        CornerRadius = UDim.new(0, Library.CornerRadius),
                        Parent = ProgressBar
                    })
                )
            end

            local IsActive = WaitTime <= 0

            local ButtonWrap = {
                Container = ButtonContainer,
                SetDisabled = function(self, Disabled)
                    IsActive = not Disabled
                    if Disabled then
                        TweenService:Create(TextBtn, Library.TweenInfo, { BackgroundTransparency = 0.5 }):Play()
                        TweenService:Create(BtnLabel, Library.TweenInfo, { TextTransparency = 0.5 }):Play()
                    else
                        TweenService:Create(TextBtn, Library.TweenInfo, { BackgroundTransparency = 0 }):Play()
                        TweenService:Create(BtnLabel, Library.TweenInfo, { TextTransparency = 0 }):Play()
                    end
                end
            }

            local ActiveColor = typeof(BtnColor) == "Color3" and BtnColor or Library.Scheme[BtnColor]
            local HoverColor = Variant == "Ghost" and Library.Scheme.MainColor or Library:GetBetterColor(ActiveColor, 10)

            TextBtn.MouseEnter:Connect(function()
                if not IsActive then return end
                TweenService:Create(TextBtn, Library.TweenInfo, {
                    BackgroundColor3 = HoverColor
                }):Play()
            end)
            TextBtn.MouseLeave:Connect(function()
                if not IsActive then return end
                TweenService:Create(TextBtn, Library.TweenInfo, {
                    BackgroundColor3 = ActiveColor
                }):Play()
            end)

            TextBtn.MouseButton1Click:Connect(function()
                if not IsActive then return end
                if ButtonInfo.Callback then ButtonInfo.Callback(Dialog) end
                if Info.AutoDismiss then Dialog:Dismiss() end
            end)

            if WaitTime > 0 then
                TweenService:Create(ProgressBar, TweenInfo.new(WaitTime, Enum.EasingStyle.Linear), {
                    Size = UDim2.new(1, 0, 0, 2)
                }):Play()

                task.delay(WaitTime, function()
                    ButtonWrap:SetDisabled(false)
                    if ProgressBar then
                        TweenService:Create(ProgressBar, Library.TweenInfo, {
                            BackgroundTransparency = 1
                        }):Play()
                    end
                end)
            end

            FooterButtonsList[ButtonIdx] = ButtonWrap
        end

        for BIdx, BInfo in Info.FooterButtons do if type(BIdx) == "number" and BInfo.Id then BIdx = BInfo.Id end; Dialog:AddFooterButton(BIdx, BInfo) end

        setmetatable(Dialog, BaseGroupbox)
        Library.Dialogues[Idx] = Dialog

        Dialog:Resize()

        Library.ActiveDialog = Dialog
        return Dialog
    end

    function Window:Toggle(Value: boolean?)
        if Library.ActiveLoading then
            if Value == true then return end

            if not Library.Toggled then return end
        end

        if typeof(Value) == "boolean" then
            Library.Toggled = Value
        else
            Library.Toggled = not Library.Toggled
        end

        MainFrame.Visible = Library.Toggled

        if WindowInfo.UnlockMouseWhileOpen then ModalElement.Modal = Library.Toggled end

        if Library.Toggled and not Library.IsMobile then
            local OldMouseIconEnabled = UserInputService.MouseIconEnabled
            local ShowCursorBinding = Library.ShowCursorBinding
            pcall(function()
                RunService:UnbindFromRenderStep(ShowCursorBinding)
            end)
            RunService:BindToRenderStep(ShowCursorBinding, Enum.RenderPriority.Last.Value, function()
                UserInputService.MouseIconEnabled = not Library.ShowCustomCursor

                Cursor.Position = UDim2.fromOffset(Mouse.X, Mouse.Y)
                Cursor.Visible = Library.ShowCustomCursor

                if not (Library.Toggled and ScreenGui and ScreenGui.Parent) then UserInputService.MouseIconEnabled = OldMouseIconEnabled Cursor.Visible = false RunService:UnbindFromRenderStep(ShowCursorBinding) end
            end)
        elseif not Library.Toggled then
            TooltipLabel.Visible = false

            for _, Option in Library.Options do
                if Option.Type == "ColorPicker" then
                    Option.ColorMenu:Close()
                    Option.ContextMenu:Close()
                elseif Option.Type == "Dropdown" or Option.Type == "KeyPicker" then Option.Menu:Close() end
            end
        end
    end

    function Library:Toggle(Value: boolean?)
        return Window:Toggle(Value)
    end

    if WindowInfo.EnableSidebarResize then
        local Threshold = (WindowInfo.MinSidebarWidth + WindowInfo.SidebarCompactWidth) * WindowInfo.SidebarCollapseThreshold
        local StartPos, StartWidth
        local Dragging = false
        local Changed

        local SidebarGrabber = New("TextButton", { AnchorPoint = Vector2.new(0.5, 0), BackgroundTransparency = 1, Position = UDim2.fromScale(0.5, 0), Size = UDim2.new(0, 8, 1, 0), Text = "", Parent = DividerLine, })
        SidebarGrabber.MouseEnter:Connect(function()
            TweenService:Create(DividerLine, Library.TweenInfo, {
                BackgroundColor3 = Library:GetLighterColor(Library.Scheme.OutlineColor),
            }):Play()
        end)
        SidebarGrabber.MouseLeave:Connect(function()
            if Dragging then return end
            TweenService:Create(DividerLine, Library.TweenInfo, {
                BackgroundColor3 = Library.Scheme.OutlineColor,
            }):Play()
        end)

        SidebarGrabber.InputBegan:Connect(function(Input: InputObject)
            if not IsClickInput(Input) then return end

            Library.CantDragForced = true

            StartPos = Input.Position
            StartWidth = Window:GetSidebarWidth()
            Dragging = true

            Changed = Input.Changed:Connect(function()
                if Input.UserInputState ~= Enum.UserInputState.End then return end

                Library.CantDragForced = false
                TweenService:Create(DividerLine, Library.TweenInfo, {
                    BackgroundColor3 = Library.Scheme.OutlineColor,
                }):Play()

                Dragging = false
                if Changed and Changed.Connected then Changed:Disconnect(); Changed = nil end
            end)
        end)

        Library:GiveSignal(UserInputService.InputChanged:Connect(function(Input: InputObject)
            if not Library.Toggled or not (ScreenGui and ScreenGui.Parent) then
                Dragging = false
                if Changed and Changed.Connected then Changed:Disconnect(); Changed = nil end

                return
            end

            if Dragging and IsHoverInput(Input) then
                local Delta = Input.Position - StartPos
                local Width = StartWidth + Delta.X

                if WindowInfo.DisableCompactingSnap then Window:SetSidebarWidth(Width); return end

                if Width > Threshold then
                    Window:SetSidebarWidth(math.max(Width, WindowInfo.MinSidebarWidth))
                else
                    Window:SetSidebarWidth(WindowInfo.SidebarCompactWidth)
                end
            end
        end))
    end
    if WindowInfo.EnableCompacting and WindowInfo.SidebarCompacted then Window:SetSidebarWidth(WindowInfo.SidebarCompactWidth) end
    if WindowInfo.AutoShow and not Library.ActiveLoading then task.spawn(Library.Toggle) end

    if Library.IsMobile then
        local ToggleButton = Library:AddDraggableButton("Toggle", function()
            Library:Toggle()
        end, true, true)

        local LockButton = Library:AddDraggableButton("Lock", function(self)
            Library.CantDragForced = not Library.CantDragForced
            self:SetText(Library.CantDragForced and "Unlock" or "Lock")
        end, true, true)

        if WindowInfo.MobileButtonsSide == "Right" then
            ToggleButton.Button.AnchorPoint = Vector2.new(1, 0)
            ToggleButton.Button.Position = UDim2.new(1, -6, 0, 6)

            LockButton.Button.AnchorPoint = Vector2.new(1, 0)
            LockButton.Button.Position = UDim2.new(1, -(ToggleButton.Button.Size.X.Offset + 12), 0, 6)
        else
            ToggleButton.Button.AnchorPoint = Vector2.new(0, 0)
            ToggleButton.Button.Position = UDim2.fromOffset(6, 6)

            LockButton.Button.AnchorPoint = Vector2.new(0, 0)
            LockButton.Button.Position = UDim2.fromOffset(ToggleButton.Button.Size.X.Offset + 12, 6)
        end

        if WindowInfo.ShowMobileButtons == false then ToggleButton.Button.Visible = false; LockButton.Button.Visible = false end
    end

    SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
        Library:UpdateSearch(SearchBox.Text)
    end)

    Library:GiveSignal(UserInputService.InputBegan:Connect(function(Input: InputObject)
        if Library.Unloaded then return end

        if UserInputService:GetFocusedTextBox() then return end

        if
            (
                typeof(Library.ToggleKeybind) == "table"
                and Library.ToggleKeybind.Type == "KeyPicker"
                and Input.KeyCode.Name == Library.ToggleKeybind.Value
            ) or Input.KeyCode == Library.ToggleKeybind
        then
            Library.Toggle()
        end
    end))

    Library:GiveSignal(UserInputService.WindowFocused:Connect(function()
        Library.IsRobloxFocused = true
    end))
    Library:GiveSignal(UserInputService.WindowFocusReleased:Connect(function()
        Library.IsRobloxFocused = false
    end))

    return Window
end

function Library:CreateLoading(LoadingInfo)
    if Library.ActiveLoading then warn("Loading GUI already exists, you cannot create multiple Loading GUIs."); return Library.ActiveLoading end

    LoadingInfo = Library:Validate(LoadingInfo, Templates.Loading)

    local Loading = {
        CurrentStep = LoadingInfo.CurrentStep,
        TotalSteps = LoadingInfo.TotalSteps,

        ShowSidebar = LoadingInfo.ShowSidebar,
        AutoResizeHeight = LoadingInfo.AutoResizeHeight,
        IsError = false,
        Destroyed = false,

        WindowWidth = LoadingInfo.WindowWidth,
        WindowHeight = LoadingInfo.WindowHeight,
        BaseWindowHeight = LoadingInfo.WindowHeight,
        WindowErrorHeight = LoadingInfo.WindowHeight,

        ContentWidth = LoadingInfo.ContentWidth,
        SidebarWidth = LoadingInfo.SidebarWidth,
    }

    local ScreenGui = New("ScreenGui", { Name = "ObsidianLoading", DisplayOrder = 999, ResetOnSpawn = false })
    ParentUI(ScreenGui)
    Loading.ScreenGui = ScreenGui

    ScreenGui.DescendantRemoving:Connect(function(Instance)
        Library:RemoveFromRegistry(Instance)
    end)

    local MainFrame = New("TextButton", {
        Name = "Main",
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = function()
            return Library:GetBetterColor(Library.Scheme.BackgroundColor, -1)
        end,
        Position = UDim2.fromScale(0.5, 0.5),
        Size = UDim2.fromOffset(Loading.ShowSidebar and (Loading.ContentWidth + Loading.SidebarWidth) or Loading.WindowWidth, Loading.WindowHeight),
        ClipsDescendants = true,
        Text = "",
        AutoButtonColor = false,
        Parent = ScreenGui,
    })
    Library:AddOutline(MainFrame)
    table.insert(Library.Corners, New("UICorner", { CornerRadius = UDim.new(0, Library.CornerRadius), Parent = MainFrame }))

	local MainScale = New("UIScale", { Scale = Library.IsMobile and 0.8 or 1, Parent = MainFrame })
	table.insert(Library.Scales, MainScale)
	Library.ScalesOffset[MainScale] = Library.IsMobile and 0.2 or 0

    local Container = New("Frame", { Name = "Content", BackgroundTransparency = 1, Position = UDim2.fromOffset(0, 0), Size = UDim2.new(0, Loading.ContentWidth, 1, 0), Parent = MainFrame, })

    local SideBar = New("Frame", { Name = "SideBar", BackgroundTransparency = 1, Position = UDim2.fromOffset(Loading.ContentWidth, 0), Size = UDim2.new(0, Loading.ShowSidebar and Loading.SidebarWidth or 0, 1, 0), ClipsDescendants = true, Visible = Loading.ShowSidebar, Parent = MainFrame, })
    local SidebarCorner = New("UICorner", { CornerRadius = UDim.new(0, Library.CornerRadius), Parent = SideBar })
    table.insert(Library.Corners, SidebarCorner)

    Library:AddOutline(SideBar)

    local SidebarDivider = New("Frame", { BackgroundColor3 = "OutlineColor", BorderSizePixel = 0, Position = UDim2.fromOffset(0, 0), Size = UDim2.new(0, 1, 1, 0), Visible = Loading.ShowSidebar, Parent = SideBar, })

    local TopBar = New("Frame", { Name = "TopBar", BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 48), ZIndex = 2, Parent = Container, })
    Library:MakeDraggable(MainFrame, TopBar, true, true)

    local TitleHolder = New("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Parent = TopBar, })
    New("UIListLayout", {
        FillDirection = Enum.FillDirection.Horizontal,
        HorizontalAlignment = Enum.HorizontalAlignment.Left,
        VerticalAlignment = Enum.VerticalAlignment.Center,
        Padding = UDim.new(0, 6),
        Parent = TitleHolder,
    })
    New("UIPadding", {
        PaddingLeft = UDim.new(0, 12),
        Parent = TitleHolder,
    })

    if LoadingInfo.Icon then
        local Icon = Library:GetCustomIcon(LoadingInfo.Icon)
        local _WindowIcon = New("ImageLabel", { Image = Icon.Url, ImageRectOffset = Icon.ImageRectOffset, ImageRectSize = Icon.ImageRectSize, Size = LoadingInfo.IconSize, Parent = TitleHolder, })
    else
        local _WindowIcon = New("TextLabel", { BackgroundTransparency = 1, Size = LoadingInfo.IconSize, Text = LoadingInfo.Title:sub(1, 1), TextScaled = true, Visible = false, Parent = TitleHolder, })
    end

    local TitleX = Library:GetTextBounds(
        LoadingInfo.Title,
        Library.Scheme.Font,
        20,
        TitleHolder.AbsoluteSize.X - (LoadingInfo.Icon and (LoadingInfo.IconSize.X.Offset + 6) or 0) - 12
    )
    local _WindowTitle = New("TextLabel", { BackgroundTransparency = 1, Size = UDim2.new(0, TitleX, 1, 0), Text = LoadingInfo.Title, TextSize = 20, Parent = TitleHolder, })

    Library:MakeLine(Container, { Position = UDim2.fromOffset(0, 48), Size = UDim2.new(1, 0, 0, 1), })

    local InnerContent = New("Frame", { Name = "InnerContent", BackgroundTransparency = 1, Position = UDim2.fromOffset(0, 49), Size = UDim2.new(1, 0, 1, -49), Parent = Container, })

    New("UIListLayout", {
        FillDirection = Enum.FillDirection.Vertical,
        HorizontalAlignment = Enum.HorizontalAlignment.Center,
        VerticalAlignment = Enum.VerticalAlignment.Center,
        Padding = UDim.new(0, 12),
        Parent = InnerContent,
    })

    local IconHolder = New("Frame", { Name = "IconHolder", BackgroundTransparency = 1, Size = UDim2.fromOffset(64, 64), Parent = InnerContent, })

    local LoaderIcon = Library:GetCustomIcon(LoadingInfo.LoadingIcon)
    local LoadingIcon = New("ImageLabel", { Name = "LoaderIcon", AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromScale(1, 1), Image = LoaderIcon.Url, ImageRectOffset = LoaderIcon.ImageRectOffset, ImageRectSize = LoaderIcon.ImageRectSize, ImageColor3 = LoadingInfo.LoadingIconColor or ((LoadingInfo.LoadingIcon == Templates.Loading.LoadingIcon) and "AccentColor" or "WhiteColor"), Parent = IconHolder, })

    local RotationTween
    if LoadingInfo.LoadingIconTweenTime > 0 then
        RotationTween = TweenService:Create(
            LoadingIcon,
            TweenInfo.new(LoadingInfo.LoadingIconTweenTime, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1),
            { Rotation = 360 }
        )
        RotationTween:Play()
    end

    local MessageLabel = New("TextLabel", { BackgroundTransparency = 1, AutomaticSize = Loading.AutoResizeHeight and Enum.AutomaticSize.Y or Enum.AutomaticSize.XY, Size = Loading.AutoResizeHeight and UDim2.new(1, -60, 0, 0) or UDim2.fromOffset(0, 0), Text = "", TextSize = 18, TextWrapped = Loading.AutoResizeHeight, Parent = InnerContent, })

    local DescriptionLabel = New("TextLabel", { BackgroundTransparency = 1, AutomaticSize = Loading.AutoResizeHeight and Enum.AutomaticSize.Y or Enum.AutomaticSize.XY, Size = Loading.AutoResizeHeight and UDim2.new(1, -60, 0, 0) or UDim2.fromOffset(0, 0), Text = "", TextSize = 14, TextTransparency = 0.5, TextWrapped = Loading.AutoResizeHeight, Parent = InnerContent, })

    local SliderBar = New("Frame", { BackgroundColor3 = "MainColor", Size = UDim2.new(0.7, 0, 0, 15), Parent = InnerContent, })
    Library:AddOutline(SliderBar)
    table.insert(Library.Corners, New("UICorner", { CornerRadius = UDim.new(0, Library.CornerRadius / 2), Parent = SliderBar }))

    local SliderFill = New("Frame", { BackgroundColor3 = "AccentColor", BorderSizePixel = 0, Size = UDim2.fromScale(0, 1), Parent = SliderBar, })
    table.insert(Library.Corners, New("UICorner", { CornerRadius = UDim.new(0, Library.CornerRadius / 2), Parent = SliderFill }))

    local ProgressLabel = New("TextLabel", { BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), Text = "", TextSize = 14, ZIndex = 2, Parent = SliderBar, })
    New("UIStroke", {
        ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
        Color = "DarkColor",
        LineJoinMode = Enum.LineJoinMode.Miter,
        Parent = ProgressLabel,
    })

    local SidebarScrolling = New("ScrollingFrame", { BackgroundTransparency = 1, BorderSizePixel = 0, CanvasSize = UDim2.new(0, 0, 0, 0), Size = UDim2.fromScale(1, 1), ScrollBarThickness = 2, ScrollBarImageColor3 = "OutlineColor", Parent = SideBar, })
    local SidebarList = New("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = SidebarScrolling, })
    New("UIPadding", {
        PaddingBottom = UDim.new(0, 12),
        PaddingLeft = UDim.new(0, 12),
        PaddingRight = UDim.new(0, 12),
        PaddingTop = UDim.new(0, 12),
        Parent = SidebarScrolling,
    })

    local SidebarObject = {
        Elements = {},
        DependencyBoxes = {},
        Tabboxes = {},

        BoxHolder = SidebarScrolling,
        Container = SidebarScrolling,

        Resize = function(self)
            SidebarScrolling.CanvasSize = UDim2.fromOffset(0, SidebarList.AbsoluteContentSize.Y + 24)
        end,
        Tab = { Elements = {}, DependencyBoxes = {}, DependencyGroupboxes = {}, Tabboxes = {}, },
    }

    SidebarList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        SidebarObject:Resize()
    end)

    setmetatable(SidebarObject, BaseGroupbox)
    Loading.Sidebar = SidebarObject

    local ErrorFrame = New("Frame", { Name = "Error", BackgroundTransparency = 1, Position = UDim2.fromOffset(0, 49), Size = UDim2.new(1, 0, 1, -49), ClipsDescendants = true, Visible = false, Parent = Container, })

    local _ErrorTitle = New("TextLabel", { BackgroundTransparency = 1, Position = UDim2.fromOffset(15, 15), Size = UDim2.new(1, -30, 0, 18), Text = "Error", TextColor3 = "RedColor", TextSize = 18, TextXAlignment = Enum.TextXAlignment.Left, Parent = ErrorFrame, })

    local ErrorLabel = New("TextLabel", { BackgroundTransparency = 1, Position = UDim2.fromOffset(15, 39), Size = UDim2.new(1, -30, 1, -90), Text = "Error Message", TextSize = 14, TextTransparency = 0.2, TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top, Parent = ErrorFrame, })

    local ErrorButtonsDivider = New("Frame", { BackgroundColor3 = "OutlineColor", BackgroundTransparency = 0, BorderSizePixel = 0, AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 1, -48), Size = UDim2.new(1, -30, 0, 1), Visible = false, Parent = ErrorFrame, })

    local ErrorButtonsHolder = New("Frame", { AnchorPoint = Vector2.new(0.5, 1), BackgroundTransparency = 1, Position = UDim2.new(0.5, 0, 1, 0), Size = UDim2.new(1, 0, 0, 42), Visible = false, Parent = ErrorFrame, })
    New("UIListLayout", {
        Padding = UDim.new(0, 8),
        FillDirection = Enum.FillDirection.Horizontal,
        HorizontalAlignment = Enum.HorizontalAlignment.Right,
        VerticalAlignment = Enum.VerticalAlignment.Center,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Parent = ErrorButtonsHolder,
    })
    New("UIPadding", {
        PaddingTop = UDim.new(0, 5),
        PaddingBottom = UDim.new(0, 15),
        PaddingRight = UDim.new(0, 15),
        Parent = ErrorButtonsHolder,
    })

    function Loading:UpdateLayout()
        if Loading.IsError then Loading:RecalculateErrorHeight() end

        local ShowSidebar = Loading.ShowSidebar
        local FinalWidth = ShowSidebar and (Loading.ContentWidth + Loading.SidebarWidth) or Loading.WindowWidth
        local FinalHeight = Loading.IsError and Loading.WindowErrorHeight or Loading.WindowHeight

        if ShowSidebar then SideBar.Visible = true; SidebarDivider.Visible = true end

        TweenService:Create(MainFrame, Library.TweenInfo, { Size = UDim2.fromOffset(FinalWidth, FinalHeight) }):Play()
        TweenService:Create(SideBar, Library.TweenInfo, { Position = UDim2.fromOffset(Loading.ContentWidth, 0), Size = UDim2.new(0, ShowSidebar and Loading.SidebarWidth or 0, 1, 0) }):Play()
        TweenService:Create(Container, Library.TweenInfo, { Size = UDim2.new(0, ShowSidebar and Loading.ContentWidth or Loading.WindowWidth, 1, 0) }):Play()

        if not ShowSidebar then
            task.delay(Library.TweenInfo.Time, function()
                if not Loading.ShowSidebar then SideBar.Visible = false; SidebarDivider.Visible = false end
            end)
        end
    end

    function Loading:RecalculateLoadingHeight()
        if not Loading.AutoResizeHeight then return end

        local RequiredHeight =
              49 -- TopBar
            + 48 -- Padding
            + InnerContent.UIListLayout.AbsoluteContentSize.Y

        Loading.WindowHeight = math.max(Loading.BaseWindowHeight, RequiredHeight)
    end

    function Loading:SetMessage(Text)
        MessageLabel.Text = Text

        if Loading.AutoResizeHeight then Loading:RecalculateLoadingHeight(); Loading:UpdateLayout() end
    end

    function Loading:SetDescription(Text)
        DescriptionLabel.Text = Text

        if Loading.AutoResizeHeight then Loading:RecalculateLoadingHeight(); Loading:UpdateLayout() end
    end

    function Loading:SetLoadingIcon(Icon)
        local IconData = Library:GetCustomIcon(Icon)
        LoadingIcon.Image = IconData.Url
        LoadingIcon.ImageRectOffset = IconData.ImageRectOffset
        LoadingIcon.ImageRectSize = IconData.ImageRectSize
    end

    function Loading:SetLoadingIconTweenTime(TweenTime)
        if RotationTween then RotationTween:Cancel(); RotationTween:Destroy() end

        if TweenTime > 0 then
            RotationTween = TweenService:Create(
                LoadingIcon,
                TweenInfo.new(TweenTime, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1),
                { Rotation = 360 }
            )
            RotationTween:Play()
        else
            LoadingIcon.Rotation = 0
        end
    end

    function Loading:SetLoadingIconColor(Color)
        LoadingIcon.ImageColor3 = Color
    end

    function Loading:SetCurrentStep(Step)
        Loading.CurrentStep = math.clamp(Step, 0, Loading.TotalSteps)

        local Progress = Loading.CurrentStep / Loading.TotalSteps
        TweenService:Create(SliderFill, Library.TweenInfo, { Size = UDim2.fromScale(Progress, 1) }):Play()

        ProgressLabel.Text = string.format("%d/%d", Loading.CurrentStep, Loading.TotalSteps)
    end

    function Loading:SetTotalSteps(Steps) Loading.TotalSteps = Steps; Loading:SetCurrentStep(Loading.CurrentStep) end

    function Loading:SetWindowHeight(Height) Loading.WindowHeight = Height; Loading:UpdateLayout() end

    function Loading:SetWindowWidth(Width) Loading.WindowWidth = Width; Loading:UpdateLayout() end

    function Loading:SetContentWidth(Width) Loading.ContentWidth = Width; Loading:UpdateLayout() end

    function Loading:SetSidebarWidth(Width) Loading.SidebarWidth = Width; Loading:UpdateLayout() end

    function Loading:ShowSidebarPage(Bool) Loading.ShowSidebar = Bool; Loading:UpdateLayout() end

    function Loading:ShowErrorPage(Enabled)
        Loading.IsError = Enabled
        InnerContent.Visible = not Enabled
        ErrorFrame.Visible = Enabled

        if Loading.ShowSidebar then
            Loading:ShowSidebarPage(not Enabled)
        else
            Loading:UpdateLayout()
        end
    end

    function Loading:RecalculateErrorHeight()
        local TargetWidth = (Loading.ShowSidebar and Loading.ContentWidth or Loading.WindowWidth) - 30
        local _, ErrorY = Library:GetTextBounds(ErrorLabel.Text, Library.Scheme.Font, 14, TargetWidth)

        ErrorLabel.Size = UDim2.new(1, -30, 0, ErrorY)

        local HasButtons = ErrorButtonsHolder.Visible
        local RequiredHeight =
              49                        -- TopBar
            + 15                        -- Padding Top
            + 18                        -- Title Height
            + 6                         -- Padding between Title and Label
            + ErrorY                    -- Label Height
            + 15                        -- Padding between Label and Buttons
            + (HasButtons and 48 or 0)  -- Buttons Area

        Loading.WindowErrorHeight = RequiredHeight -- math.max(Loading.WindowHeight, RequiredHeight)
    end

    function Loading:SetErrorMessage(Text) ErrorLabel.Text = Text; Loading:UpdateLayout() end

    function Loading:SetErrorButtons(Buttons)
        assert(typeof(Buttons) == "table", "Buttons must be a table")

        for _, button in ErrorButtonsHolder:GetChildren() do
            if button:IsA("Frame") then button:Destroy() end
        end

        local HasButtons = GetTableSize(Buttons) > 0
        ErrorButtonsHolder.Visible = HasButtons
        ErrorButtonsDivider.Visible = HasButtons

        for Idx, ButtonInfo in Buttons do
            local ButtonContainer = New("Frame", { BackgroundTransparency = 1, Size = UDim2.fromOffset(0, 26), Parent = ErrorButtonsHolder, })

            local BtnColor = "MainColor"
            local BtnOutline = "OutlineColor"
            local Variant = ButtonInfo.Variant or "Primary"

            if Variant == "Primary" then
                BtnColor = "FontColor"
                BtnOutline = "FontColor"
            elseif Variant == "Secondary" then
                BtnColor = "MainColor"
                BtnOutline = "OutlineColor"
            elseif Variant == "Destructive" then
                BtnColor = "DestructiveColor"
                BtnOutline = "DestructiveColor"
            elseif Variant == "Ghost" then BtnColor = "BackgroundColor"; BtnOutline = "BackgroundColor" end

            local TextBtn = New("TextButton", { BackgroundColor3 = BtnColor, BorderColor3 = BtnOutline, Size = UDim2.fromOffset(0, 26), Text = "", AutoButtonColor = false, Parent = ButtonContainer, })
            Library:AddOutline(TextBtn)
            table.insert(
                Library.Corners,
                New("UICorner", {
                    CornerRadius = UDim.new(0, Library.CornerRadius),
                    Parent = TextBtn
                })
            )

            New("UIPadding", {
                PaddingLeft = UDim.new(0, 15),
                PaddingRight = UDim.new(0, 15),
                Parent = TextBtn,
            })

            local TextColor = Library.Scheme.FontColor
            if Variant == "Primary" then
                TextColor = Library.Scheme.BackgroundColor
            elseif Variant == "Destructive" then TextColor = Color3.new(1, 1, 1) end

            local BtnLabel = New("TextLabel", { BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), Text = ButtonInfo.Title or Idx, TextColor3 = TextColor, TextSize = 14, Parent = TextBtn, })

            local LabelX, _ = Library:GetTextBounds(BtnLabel.Text, Library.Scheme.Font, 14, 250)
            ButtonContainer.Size = UDim2.fromOffset(LabelX + 30, 26)
            TextBtn.Size = UDim2.fromOffset(LabelX + 30, 26)

            local ActiveColor = typeof(BtnColor) == "Color3" and BtnColor or Library.Scheme[BtnColor]
            local HoverColor = Variant == "Ghost" and Library.Scheme.MainColor or Library:GetBetterColor(ActiveColor, 10)

            TextBtn.MouseEnter:Connect(function()
                TweenService:Create(TextBtn, Library.TweenInfo, {
                    BackgroundColor3 = HoverColor
                }):Play()
            end)
            TextBtn.MouseLeave:Connect(function()
                TweenService:Create(TextBtn, Library.TweenInfo, {
                    BackgroundColor3 = ActiveColor
                }):Play()
            end)

            TextBtn.MouseButton1Click:Connect(function()
                if ButtonInfo.Callback then ButtonInfo.Callback(Loading) end
            end)
        end

        Loading:UpdateLayout()
    end

    function Loading:Destroy()
        if RotationTween then RotationTween:Cancel() end

        ScreenGui:Destroy()
        Loading.Destroyed = true
        Library.ActiveLoading = nil

        if Library.Toggle and Library.Toggled == false and Library.Unloaded ~= true then Library:Toggle(true) end
    end

    Loading.Continue = Loading.Destroy;

    if Library.Toggle and Library.Toggled and Library.Unloaded ~= true then Library:Toggle(false) end

    Loading:SetCurrentStep(Loading.CurrentStep)

    Library.ActiveLoading = Loading
    return Loading
end

local function OnPlayerChange()
    if Library.Unloaded then return end

    local PlayerList, ExcludedPlayerList = GetPlayers(), GetPlayers(true)
    for _, Dropdown in Options do
        if Dropdown.Type == "Dropdown" and Dropdown.SpecialType == "Player" then Dropdown:SetValues(Dropdown.ExcludeLocalPlayer and ExcludedPlayerList or PlayerList) end
    end
end

local function OnTeamChange()
    if Library.Unloaded then return end

    local TeamList = GetTeams()
    for _, Dropdown in Options do
        if Dropdown.Type == "Dropdown" and Dropdown.SpecialType == "Team" then Dropdown:SetValues(TeamList) end
    end
end

Library:GiveSignal(Players.PlayerAdded:Connect(OnPlayerChange))
Library:GiveSignal(Players.PlayerRemoving:Connect(OnPlayerChange))

Library:GiveSignal(Teams.ChildAdded:Connect(OnTeamChange))
Library:GiveSignal(Teams.ChildRemoved:Connect(OnTeamChange))

function Library:Unload()
    Library.Unloaded = true

    for Index = #Library.Signals, 1, -1 do
        local Connection = table.remove(Library.Signals, Index)

        if Connection and Connection.Connected then Connection:Disconnect() end
    end

    for Index = #Library.UnloadSignals, 1, -1 do
        local Callback = table.remove(Library.UnloadSignals, Index)

        if Callback then Library:SafeCallback(Callback) end
    end

    for Index = #Library.Tabs, 1, -1 do
        local Tab = table.remove(Library.Tabs, Index)

        if Tab and Tab.Destroy then Library:SafeCallback(Tab.Destroy, Tab) end
    end

    for Index = #Tooltips, 1, -1 do
        local Tooltip = table.remove(Tooltips, Index)

        if Tooltip and Tooltip.Destroy then Library:SafeCallback(Tooltip.Destroy, Tooltip) end
    end

    if Library.ActiveLoading then Library.ActiveLoading:Destroy() end

    if ScreenGui then ScreenGui:Destroy() end

    table.clear(Library.Registry)

    table.clear(Options)
    table.clear(Toggles)
    table.clear(Buttons)
    table.clear(Labels)
    table.clear(Tooltips)

    table.clear(Library.Tabs)
    table.clear(Library.TabButtons)

    table.clear(Library.Scales)
    table.clear(Library.ScalesOffset)

    table.clear(Library.Corners)
    table.clear(Library.SpecificCorners)

    table.clear(Library.Notifications)
    table.clear(Library.Dialogues)
    table.clear(Library.DraggableElements)
    table.clear(Library.KeybindToggles)
    table.clear(Library.DependencyBoxes)

    Library.Toggle = function(...) end
    Library.ScreenGui = nil
    Library.WindowContainer = nil
    Library.KeybindFrame = nil
    Library.KeybindContainer = nil

    getgenv().Library = nil
end

getgenv().Library = Library
return Library

]=]

    _JWThemeSrc = [=[
local cloneref = (cloneref or clonereference or function(instance: any)
    return instance
end)
local clonefunction = (clonefunction or copyfunction or function(func)
    return func
end)

local HttpService: HttpService = cloneref(game:GetService("HttpService"))

local isfolder, isfile, listfiles = isfolder, isfile, listfiles
local isfolder_copy, isfile_copy, listfiles_copy = clonefunction(isfolder), clonefunction(isfile), clonefunction(listfiles)
local isfolder_success, isfolder_error = pcall(function() return isfolder_copy("test" .. tostring(math.random(1000000, 9999999))) end)

if isfolder_success == false or typeof(isfolder_error) ~= "boolean" then
    isfolder = function(folder)
        local success, data = pcall(isfolder_copy, folder)
        return (if success then data else false)
    end

    isfile = function(file)
        local success, data = pcall(isfile_copy, file)
        return (if success then data else false)
    end

    listfiles = function(folder)
        local success, data = pcall(listfiles_copy, folder)
        return (if success then data else {})
    end
end

local SchemeIndexes = { "FontColor", "MainColor", "AccentColor", "BackgroundColor", "OutlineColor" }
local ThemeManager = {
    Library = nil,

    Folder = "ObsidianLibSettings",

    AppliedToTab = false,
    DefaultThemeName = nil,

    BuiltInThemes = {
        ["Default"] = {
            1,
            { FontColor = "ffffff", MainColor = "191919", AccentColor = "7d55ff", BackgroundColor = "0f0f0f", OutlineColor = "282828", BackgroundImage = "" },
        },
        ["BBot"] = {
            2,
            { FontColor = "ffffff", MainColor = "1e1e1e", AccentColor = "7e48a3", BackgroundColor = "232323", OutlineColor = "141414", BackgroundImage = "" },
        },
        ["Fatality"] = {
            3,
            { FontColor = "ffffff", MainColor = "1e1842", AccentColor = "c50754", BackgroundColor = "191335", OutlineColor = "3c355d", BackgroundImage = "" },
        },
        ["Jester"] = {
            4,
            { FontColor = "ffffff", MainColor = "242424", AccentColor = "db4467", BackgroundColor = "1c1c1c", OutlineColor = "373737", BackgroundImage = "" },
        },
        ["Mint"] = {
            5,
            { FontColor = "ffffff", MainColor = "242424", AccentColor = "3db488", BackgroundColor = "1c1c1c", OutlineColor = "373737", BackgroundImage = "" },
        },
        ["Tokyo Night"] = {
            6,
            { FontColor = "ffffff", MainColor = "191925", AccentColor = "6759b3", BackgroundColor = "16161f", OutlineColor = "323232", BackgroundImage = "" },
        },
        ["Ubuntu"] = {
            7,
            { FontColor = "ffffff", MainColor = "3e3e3e", AccentColor = "e2581e", BackgroundColor = "323232", OutlineColor = "191919", BackgroundImage = "" },
        },
        ["Quartz"] = {
            8,
            { FontColor = "ffffff", MainColor = "232330", AccentColor = "426e87", BackgroundColor = "1d1b26", OutlineColor = "27232f", BackgroundImage = "" },
        },
        ["Nord"] = {
            9,
            { FontColor = "eceff4", MainColor = "3b4252", AccentColor = "88c0d0", BackgroundColor = "2e3440", OutlineColor = "4c566a", BackgroundImage = "" },
        },
        ["Dracula"] = {
            10,
            { FontColor = "f8f8f2", MainColor = "44475a", AccentColor = "ff79c6", BackgroundColor = "282a36", OutlineColor = "6272a4", BackgroundImage = "" },
        },
        ["Monokai"] = {
            11,
            { FontColor = "f8f8f2", MainColor = "272822", AccentColor = "f92672", BackgroundColor = "1e1f1c", OutlineColor = "49483e", BackgroundImage = "" },
        },
        ["Gruvbox"] = {
            12,
            { FontColor = "ebdbb2", MainColor = "3c3836", AccentColor = "fb4934", BackgroundColor = "282828", OutlineColor = "504945", BackgroundImage = "" },
        },
        ["Solarized"] = {
            13,
            { FontColor = "839496", MainColor = "073642", AccentColor = "cb4b16", BackgroundColor = "002b36", OutlineColor = "586e75", BackgroundImage = "" },
        },
        ["Catppuccin"] = {
            14,
            { FontColor = "d9e0ee", MainColor = "302d41", AccentColor = "f5c2e7", BackgroundColor = "1e1e2e", OutlineColor = "575268", BackgroundImage = "" },
        },
        ["One Dark"] = {
            15,
            { FontColor = "abb2bf", MainColor = "282c34", AccentColor = "c678dd", BackgroundColor = "21252b", OutlineColor = "5c6370", BackgroundImage = "" },
        },
        ["Cyberpunk"] = {
            16,
            { FontColor = "f9f9f9", MainColor = "262335", AccentColor = "00ff9f", BackgroundColor = "1a1a2e", OutlineColor = "413c5e", BackgroundImage = "" },
        },
        ["Oceanic Next"] = {
            17,
            { FontColor = "d8dee9", MainColor = "1b2b34", AccentColor = "6699cc", BackgroundColor = "16232a", OutlineColor = "343d46", BackgroundImage = "" },
        },
        ["Material"] = {
            18,
            { FontColor = "eeffff", MainColor = "212121", AccentColor = "82aaff", BackgroundColor = "151515", OutlineColor = "424242", BackgroundImage = "" },
        }
    }
}

function ThemeManager:SetLibrary(Library)
    ThemeManager.Library = Library
end

local function Trim(Text: string)
    return Text:match("^%s*(.-)%s*$")
end

local function IsStringEmpty(String: string): boolean
    return if typeof(String) == "string" then Trim(String) == "" else true
end

local function IsValidFolderPath(Name: string): boolean
    return typeof(Name) == "string" and (
        Trim(Name) ~= "" and
        not Name:match("^%s*$") and
        not Name:find('[<>:"|%?%*%z]')
    )
end

local function SplitPath(Path: string): {string}
	local Result = {}
	local Current = ""

	for Part in string.gmatch(Path, "[^/]+") do Current = if Current == "" then Part else (Current .. "/" .. Part); table.insert(Result, Current) end

	return Result
end

local function GetFolderPath(): false | string
    if IsStringEmpty(ThemeManager.Folder) then return false end

    return string.format("%s/themes", ThemeManager.Folder)
end

local GetCurrentThemesPath = GetFolderPath

local function GetThemePath(ThemeName: string): false | string
    local CurrentThemesPath = GetCurrentThemesPath()
    return if CurrentThemesPath == false then false else string.format("%s/%s.json", CurrentThemesPath, ThemeName)
end

local function DoesThemeExist(ThemeName: string, IncludeBuiltIn: boolean): boolean
    if ThemeManager.BuiltInThemes[ThemeName] then return true end

    local ThemePath = GetThemePath(ThemeName)
    return if ThemePath == false then false else isfile(ThemePath)
end

local function GetDefaultThemePath(): false | string
    local CurrentThemesPath = GetCurrentThemesPath()
    return if CurrentThemesPath == false then false else string.format("%s/default.txt", CurrentThemesPath)
end

function ThemeManager:GetPaths(): {string}
    local FolderPath = GetFolderPath()
    return if FolderPath == false then {} else SplitPath(FolderPath)
end

function ThemeManager:BuildFolderTree(SkipWhenCreated: boolean?)
    local Paths = ThemeManager:GetPaths()
    if #Paths == 0 then return false end

    if SkipWhenCreated == true then
        if isfolder(Paths[1]) then return true end
    end

    for _, Path in Paths do
        if isfolder(Path) then continue end

        makefolder(Path)
    end

    return true
end

function ThemeManager:CheckFolderTree()
    return ThemeManager:BuildFolderTree(true)
end

function ThemeManager:SetFolder(Folder: string)
    assert(IsValidFolderPath(Folder), "Invalid path provided")

    ThemeManager.Folder = Folder
    ThemeManager:BuildFolderTree()
end

function ThemeManager:ReloadCustomThemes()
    local SettingsPath = GetCurrentThemesPath()
    if SettingsPath == false then return {} end

    local SuccessList, Files = pcall(listfiles, SettingsPath)
    if not (SuccessList and typeof(Files) == "table") then ThemeManager.Library:Notify(string.format("Failed to load theme list: %s", tostring(Files))); return {} end

    local FileNames = {}
    for _, FilePath in Files do
        local RawFileName = FilePath:match("(.+)%..+$")
        if not RawFileName then continue end

        local Position = RawFileName:gsub("\\", "/"):find("/[^/]*$")
        local FileName = Position and RawFileName:sub(Position + 1) or RawFileName
        if not FileName or FileName == "default" then continue end

        table.insert(FileNames, FileName)
    end

    return FileNames
end

function ThemeManager:GetCustomTheme(ThemeName: string): any
    if IsStringEmpty(ThemeName) then return nil end

    local ThemePath = GetThemePath(ThemeName)
    if ThemePath == false or not isfile(ThemePath) then return nil end

    local SuccessRead, Content = pcall(readfile, ThemePath)
    if not SuccessRead then return nil end

    local SuccessDecode, Decoded = pcall(HttpService.JSONDecode, HttpService, Content)
    if not SuccessDecode or typeof(Decoded) ~= "table" then return nil end

    return Decoded
end

function ThemeManager:SaveCustomTheme(ThemeName: string): any
    if IsStringEmpty(ThemeName) then return false, "Invalid theme name provided" end

    if string.lower(ThemeName) == "default" then return false, "Invalid theme name provided" end

    local ThemePath = GetThemePath(ThemeName)
    if ThemePath == false then return false, "Invalid theme name provided" end

    ThemeManager:CheckFolderTree()

    local Library = ThemeManager.Library
    local ThemeData = { FontFace = Library.Options.FontFace.Value, BackgroundImage = Library.Options.BackgroundImage.Value }

    for _, SchemeIndex in SchemeIndexes do ThemeData[SchemeIndex] = Library.Options[SchemeIndex].Value:ToHex() end

    local SuccessEncode, EncodedData = pcall(HttpService.JSONEncode, HttpService, ThemeData)
    if not SuccessEncode then return false, "Failed to encode data" end

    local SuccessWrite, ErrorMessage = pcall(writefile, ThemePath, EncodedData)
    if not SuccessWrite then return false, "Failed to write theme file: " .. tostring(ErrorMessage) end

    return true
end

function ThemeManager:Delete(ThemeName: string): (boolean | string?)
    if IsStringEmpty(ThemeName) then return false, "No theme is selected" end

    local ThemePath = GetThemePath(ThemeName)
    if ThemePath == false or not isfile(ThemePath) then return false, "Theme file does not exist" end

    local SuccessDelete, ErrorMessage = pcall(delfile, ThemePath)
    if not SuccessDelete then return false, "Failed to delete theme file: " .. tostring(ErrorMessage) end

    if ThemeName == ThemeManager.DefaultThemeName then ThemeManager:DeleteDefaultTheme() end

    return true
end

function ThemeManager:GetDefaultTheme(): (string, boolean, string?)
    ThemeManager:CheckFolderTree()

    local DefaultThemePath = GetDefaultThemePath()
    if DefaultThemePath == false then return "none", false, "Invalid path provided" end

    if not isfile(DefaultThemePath) then return "none", false, "Default theme is not set" end

    local SuccessRead, DefaultThemeName = pcall(readfile, DefaultThemePath)
    if not (SuccessRead and typeof(DefaultThemeName) == "string") then return "none", false, DefaultThemeName end

    local ConfigExists = DoesThemeExist(DefaultThemeName, true)
    if not ConfigExists then return "none", false, "Theme file not found" end

    ThemeManager.DefaultThemeName = DefaultThemeName
    return DefaultThemeName, true
end

function ThemeManager:SetDefaultTheme(Theme: any)
    assert(ThemeManager.Library, "Library is not set, call ThemeManager:SetLibrary(Library) first.")
    assert(not ThemeManager.AppliedToTab, "Cannot set default theme after applying ThemeManager to a tab!")

    local Library = ThemeManager.Library
    local DefaultThemeData = ThemeManager.BuiltInThemes["Default"][2]

    local LibraryScheme = {}
    local FinalTheme = {}

    for _, SchemeIndex in SchemeIndexes do
        local IndexData = Theme[SchemeIndex]
        local IndexType = typeof(IndexData)

        if IndexType == "Color3" then
            LibraryScheme[SchemeIndex] = IndexData
            FinalTheme[SchemeIndex] = string.format("#%s", IndexData:ToHex())

        elseif IndexType == "string" then
            LibraryScheme[SchemeIndex] = Color3.fromHex(IndexData)
            FinalTheme[SchemeIndex] = if IndexData:sub(1, 1) == "#" then IndexData else string.format("#%s", IndexData)

        else
            local Value = DefaultThemeData[SchemeIndex]
            LibraryScheme[SchemeIndex] = Color3.fromHex(Value)
            FinalTheme[SchemeIndex] = Value
        end
    end

    local FontFace = Theme["FontFace"]
    local FontFaceType = typeof(FontFace)

    if FontFaceType == "EnumItem" then
        LibraryScheme.Font = Font.fromEnum(FontFace)
        FinalTheme.FontFace = FontFace.Name

    elseif FontFaceType == "string" then
        LibraryScheme.Font = Font.fromEnum(Enum.Font[FontFace] :: Enum.Font)
        FinalTheme.FontFace = FontFace

    else
        LibraryScheme.Font = Font.fromEnum(Enum.Font.Code)
        FinalTheme.FontFace = "Code"
    end

    for _, DefaultSchemeColor in { "RedColor", "DestructiveColor", "DarkColor", "WhiteColor" } do LibraryScheme[DefaultSchemeColor] = Library.Scheme[DefaultSchemeColor] end

    Library.Scheme = LibraryScheme
    ThemeManager.BuiltInThemes["Default"] = { 1, FinalTheme }

    Library:UpdateColorsUsingRegistry()
end

function ThemeManager:SaveDefault(ThemeName: string): (boolean, string?)
    if IsStringEmpty(ThemeName) then return false, "No theme is selected" end

    ThemeManager:CheckFolderTree()

    local DefaultThemePath = GetDefaultThemePath()
    if DefaultThemePath == false then return false, "Invalid path provided" end

    if not DoesThemeExist(ThemeName, true) then return false, "Theme does not exist" end

    local SuccessWrite, ErrorMessage = pcall(writefile, DefaultThemePath, ThemeName)
    if not SuccessWrite then return false, ErrorMessage end

    ThemeManager.DefaultThemeName = ThemeName
    return true
end

function ThemeManager:LoadDefault()
    local ThemeName, Success, FetchErrorMessage = ThemeManager:GetDefaultTheme()
    if not Success or FetchErrorMessage then
        if FetchErrorMessage ~= "Default theme is not set" then ThemeManager.Library:Notify(string.format("Failed to apply default theme: %s", FetchErrorMessage)) end

        return
    end

    if not ThemeManager:GetCustomTheme(ThemeName) then ThemeManager.Library.Options.ThemeManager_ThemeList:SetValue(ThemeName); return end

    local SuccessLoad, LoadErrorMessage = ThemeManager:ApplyTheme(ThemeName)
    if not SuccessLoad then ThemeManager.Library:Notify(string.format("Failed to apply default theme: %s", LoadErrorMessage)); return end

    ThemeManager.Library:Notify(string.format("Successfully applied default theme %q", ThemeName))
end

function ThemeManager:DeleteDefaultTheme(): (boolean, string?)
    ThemeManager:CheckFolderTree()

    local DefaultThemePath = GetDefaultThemePath()
    if DefaultThemePath == false then return false, "Invalid path provided" end

    if not isfile(DefaultThemePath) then return false, "Default theme is not set" end

    local SuccessDelete, ErrorMessage = pcall(delfile, DefaultThemePath)
    if not SuccessDelete then return false, ErrorMessage end

    ThemeManager.DefaultThemeName = nil
    return true
end

function ThemeManager:ThemeUpdate()
    local Library = ThemeManager.Library

    for _, SchemeIndex in SchemeIndexes do
        local Element = Library.Options[SchemeIndex]
        if not Element then continue end

        Library.Scheme[SchemeIndex] = Element.Value
    end

    Library:UpdateColorsUsingRegistry()
end

function ThemeManager:ApplyTheme(ThemeName: string)
    if IsStringEmpty(ThemeName) then return false, "No theme is selected" end

    local CustomThemeData = ThemeManager:GetCustomTheme(ThemeName)
    local Data = CustomThemeData or ThemeManager.BuiltInThemes[ThemeName]

    if not Data then return false, "Theme not found" end

    local Library = ThemeManager.Library
    local SchemeData = Data[2]
    local ThemeData = CustomThemeData or SchemeData

    for Index, Value in ThemeData do
        if Index == "VideoLink" then continue end

        local Element = Library.Options[Index]
        local FinalValue = Value

        if Index == "FontFace" then
            ThemeManager.Library:SetFont(Enum.Font[FinalValue])

        elseif Index == "BackgroundImage" then
            ThemeManager.Library:SetBackgroundImage(FinalValue)

        else
            FinalValue = Color3.fromHex(Value)
            Library.Scheme[Index] = FinalValue
        end

        if Element then Element:SetValue(FinalValue) end
    end

    ThemeManager:ThemeUpdate()
    return true
end

local function ShowDialog(
    Condition: () -> boolean,

    Index: string,
    Title: string,
    Description: string,

    DestructiveText: string,
    DestructiveAction: () -> nil
)
    if Condition() == false then return DestructiveAction() end

    return ThemeManager.Library.Window:AddDialog(Index, {
        Title = Title,
        Description = Description,
        AutoDismiss = false,

        FooterButtons = {
            Cancel = {
                Title = "Cancel",
                Variant = "Ghost",
                Order = 1,
                Callback = function(Dialog)
                    Dialog:Dismiss()
                end
            },

            DestructiveAction = {
                Title = DestructiveText,
                Variant = "Destructive",
                Order = 2,
                Callback = function(Dialog)
                    Dialog:Dismiss()
                    DestructiveAction()
                end
            }
        }
    })
end

function ThemeManager:CreateThemeManager(Themesbox: any)
    assert(ThemeManager.Library, "Library is not set, call ThemeManager:SetLibrary(Library) first.")

    local BuiltInThemesNames = {}
    for Name, _ThemeData in ThemeManager.BuiltInThemes do table.insert(BuiltInThemesNames, Name) end

    local CustomThemeList, CustomThemeName, ThemeList, FontFace, BackgroundImage, DefaultThemeLabel
    local function RefreshList()
        CustomThemeList:SetValues(ThemeManager:ReloadCustomThemes())
        CustomThemeList:SetValue(nil)

        ThemeList:SetValues(BuiltInThemesNames)
    end

    local function RefreshDefaultThemeLabel()
        local DefaultThemeName, _Success, _ErrorMessage = ThemeManager:GetDefaultTheme()

        DefaultThemeLabel:SetText(string.format("Current default theme: %s", DefaultThemeName))
        if CustomThemeList then RefreshList() end
    end

    table.sort(BuiltInThemesNames, function(IndexA, IndexB)
        return ThemeManager.BuiltInThemes[IndexA][1] < ThemeManager.BuiltInThemes[IndexB][1]
    end)

    local function CreateColorOption(Text, SchemeIndex)
        Themesbox:AddLabel(Text):AddColorPicker(SchemeIndex, { Default = ThemeManager.Library.Scheme[SchemeIndex] })

        return ThemeManager.Library.Options[SchemeIndex]
    end

    local BackgroundColor = CreateColorOption("Background color", "BackgroundColor")
    local MainColor = CreateColorOption("Main color", "MainColor")
    local AccentColor = CreateColorOption("Accent color", "AccentColor")
    local OutlineColor = CreateColorOption("Outline color", "OutlineColor")
    local FontColor = CreateColorOption("Font color", "FontColor")

    Themesbox:AddDropdown("FontFace", {
        Text = "Font Face",
        Default = "Code",

        Values = { "BuilderSans", "Code", "Fantasy", "Gotham", "Jura", "Roboto", "RobotoMono", "SourceSans" },
        AllowNull = false,
        Multi = false
    })

    Themesbox:AddInput("BackgroundImage", {
        Text = "Background Image",

        Default = "",
        Finished = true,
        ClearTextOnFocus = false,
        ClearTextOnBlur = false
    })

    Themesbox:AddDivider()

    Themesbox:AddDropdown("ThemeManager_ThemeList", {
        Text = "Theme list",

        Values = BuiltInThemesNames,
        AllowNull = true,
        Multi = false,

        FormatDisplayValue = function(Value: any)
            if Value ~= "Default" and Value == ThemeManager.DefaultThemeName then return string.format("%s (default)", Value) end

            return Value
        end,
        FormatListValue = function(Value: any)
            if Value ~= "Default" and Value == ThemeManager.DefaultThemeName then return string.format("%s (default)", Value) end

            return Value
        end
    })

    Themesbox:AddButton("Set as default", function()
        local ThemeName = ThemeList.Value
        ThemeManager:SaveDefault(ThemeName)

        ThemeManager.Library:Notify(string.format("Successfully set default theme to %q", ThemeName))
        RefreshDefaultThemeLabel()
    end)

    Themesbox:AddDivider()

    CustomThemeName = Themesbox:AddInput("ThemeManager_CustomThemeName", {
        Text = "Custom theme name"
    })

    Themesbox:AddButton("Create theme", function()
        local Name = CustomThemeName.Value
        if IsStringEmpty(Name) then ThemeManager.Library:Notify("Theme name cannot be empty."); return end

        if string.lower(Name) == "default" then ThemeManager.Library:Notify("Invalid theme name provided."); return end

        ShowDialog(
            function(): boolean
                return ThemeManager:GetCustomTheme(Name) ~= nil
            end,

            "ThemeManager_CreateTheme",
            "Theme already exists",
            string.format("A custom theme named %q already exists. Overwriting it will replace it with your current colors.", Name),

            "Overwrite",
            function()
                local Success, ErrorMessage = ThemeManager:SaveCustomTheme(Name)
                if not Success then ThemeManager.Library:Notify(string.format("Failed to create theme %q: %s", Name, ErrorMessage)); return end

                ThemeManager.Library:Notify(string.format("Successfully created theme %q", Name))
                RefreshList()
            end
        )
    end)

    Themesbox:AddDivider()

    CustomThemeList = Themesbox:AddDropdown("ThemeManager_CustomThemeList", {
        Text = "Custom themes",

        Values = ThemeManager:ReloadCustomThemes(),
        AllowNull = true,
        Multi = false,

        FormatDisplayValue = function(Value: any)
            if Value == ThemeManager.DefaultThemeName then return string.format("%s (default)", Value) end

            return Value
        end,
        FormatListValue = function(Value: any)
            if Value == ThemeManager.DefaultThemeName then return string.format("%s (default)", Value) end

            return Value
        end
    })

    Themesbox:AddButton("Load theme", function()
        local Name = CustomThemeList.Value
        if IsStringEmpty(Name) then ThemeManager.Library:Notify("Please select a theme first."); return end

        ThemeManager:ApplyTheme(Name)
        ThemeManager.Library:Notify(string.format("Successfully loaded theme %q", Name))
    end)

    Themesbox:AddButton("Overwrite theme", function()
        local Name = CustomThemeList.Value
        if IsStringEmpty(Name) then ThemeManager.Library:Notify("Please select a theme first."); return end

        ShowDialog(
            function(): boolean
                return true
            end,

            "ThemeManager_OverwriteTheme",
            "Overwrite theme",
            string.format("Are you sure you want to overwrite %q with your current colors? This cannot be undone.", Name),

            "Overwrite",
            function()
                ThemeManager:SaveCustomTheme(Name)
                ThemeManager.Library:Notify(string.format("Successfully overwrote theme %q", Name))
            end
        )
    end)

    Themesbox:AddButton("Delete theme", function()
        local Name = CustomThemeList.Value
        if IsStringEmpty(Name) then ThemeManager.Library:Notify("Please select a theme first."); return end

        ShowDialog(
            function(): boolean
                return true
            end,

            "ThemeManager_DeleteTheme",
            "Delete theme",
            string.format("Are you sure you want to delete %q? This cannot be undone.", Name),

            "Delete",
            function()
                local Success, ErrorMessage = ThemeManager:Delete(Name)
                if not Success then ThemeManager.Library:Notify(string.format("Failed to delete theme: %s", ErrorMessage)); return end

                ThemeManager.Library:Notify(string.format("Successfully deleted theme %q", Name))
                RefreshDefaultThemeLabel()
            end
        )
    end)

    Themesbox:AddButton("Refresh list", RefreshList)

    Themesbox:AddButton("Set as default", function()
        local Name = CustomThemeList.Value
        if IsStringEmpty(Name) then ThemeManager.Library:Notify("Please select a theme first."); return end

        ThemeManager:SaveDefault(Name)
        ThemeManager.Library:Notify(string.format("Successfully set default theme to %q", Name))
        RefreshDefaultThemeLabel()
    end)

    Themesbox:AddButton("Reset default", function()
        ShowDialog(
            function(): boolean
                return true
            end,

            "ThemeManager_ResetDefault",
            "Reset default theme",
            "Are you sure you want to clear the default theme? The library will revert to its built-in default on next load.",

            "Reset",
            function()
                local Success, ErrorMessage = ThemeManager:DeleteDefaultTheme()
                if not Success then ThemeManager.Library:Notify(string.format("Failed to reset default theme: %s", ErrorMessage)); return end

                ThemeManager.Library:Notify("Successfully reset default theme.")
                RefreshDefaultThemeLabel()
            end
        )
    end)

    DefaultThemeLabel = Themesbox:AddLabel("Current default theme: ...", true);

    CustomThemeList, CustomThemeName, ThemeList, FontFace, BackgroundImage =
        ThemeManager.Library.Options.ThemeManager_CustomThemeList,
        ThemeManager.Library.Options.ThemeManager_CustomThemeName,
        ThemeManager.Library.Options.ThemeManager_ThemeList,
        ThemeManager.Library.Options.FontFace,
        ThemeManager.Library.Options.BackgroundImage;

    ThemeList:OnChanged(function()
        ThemeManager:ApplyTheme(ThemeList.Value)
    end)

    local function UpdateTheme()
        ThemeManager:ThemeUpdate()
    end

    BackgroundColor:OnChanged(UpdateTheme)
    MainColor:OnChanged(UpdateTheme)
    AccentColor:OnChanged(UpdateTheme)
    OutlineColor:OnChanged(UpdateTheme)
    FontColor:OnChanged(UpdateTheme)
    FontFace:OnChanged(function(Value) ThemeManager.Library:SetFont(Enum.Font[Value]) end)
    BackgroundImage:OnChanged(function(Value) ThemeManager.Library:SetBackgroundImage(Value) end)

    ThemeManager:LoadDefault()
    ThemeManager.AppliedToTab = true
    RefreshDefaultThemeLabel()

    return Themesbox
end

function ThemeManager:CreateGroupBox(Tab: any, IconName: string)
    return Tab:AddLeftGroupbox("Themes", IconName or "paintbrush")
end

function ThemeManager:ApplyToTab(Tab: any, IconName: string) local Groupbox = ThemeManager:CreateGroupBox(Tab, IconName); return ThemeManager:CreateThemeManager(Groupbox) end

function ThemeManager:ApplyToGroupbox(Groupbox: any)
    return ThemeManager:CreateThemeManager(Groupbox)
end

getgenv().ObsidianThemeManager = ThemeManager
return ThemeManager
]=]

    _JWSaveSrc = [=[
local cloneref = (cloneref or clonereference or function(instance: any)
    return instance
end)
local clonefunction = (clonefunction or copyfunction or function(func)
    return func
end)

local HttpService: HttpService = cloneref(game:GetService("HttpService"))

local isfolder, isfile, listfiles = isfolder, isfile, listfiles
local isfolder_copy, isfile_copy, listfiles_copy = clonefunction(isfolder), clonefunction(isfile), clonefunction(listfiles)
local isfolder_success, isfolder_error = pcall(function() return isfolder_copy("test" .. tostring(math.random(1000000, 9999999))) end)

if isfolder_success == false or typeof(isfolder_error) ~= "boolean" then
    isfolder = function(folder)
        local success, data = pcall(isfolder_copy, folder)
        return (if success then data else false)
    end

    isfile = function(file)
        local success, data = pcall(isfile_copy, file)
        return (if success then data else false)
    end

    listfiles = function(folder)
        local success, data = pcall(listfiles_copy, folder)
        return (if success then data else {})
    end
end

local SaveManager = {
    Library = nil,

    Folder = "ObsidianLibSettings",
    SubFolder = "",

    Ignore = {},
    LoadingOrder = {},
    UseLoadingOrder = false,

    AutoloadConfig = nil
}

function SaveManager:SetLibrary(Library)
    SaveManager.Library = Library
end

local SpecialValueParser = {
    UDim2 = {
        Encode = function(Value: UDim2)
            return {
                X = { Scale = Value.X.Scale, Offset = Value.X.Offset },
                Y = { Scale = Value.Y.Scale, Offset = Value.Y.Offset }
            }
        end,

        Decode = function(Data: any)
            local DataType = typeof(Data)
            if DataType == "table" then
                return UDim2.new(Data.X.Scale, Data.X.Offset, Data.Y.Scale, Data.Y.Offset)
            elseif DataType == "UDim2" then return Data end

            return nil
        end
    }
}

local ElementParser = {}; do
    local function CreateParser(
        ElementType: string,
        LibaryIndex: string,

        Save: (string, any, ...any) -> any,
        Load: (any?, any) -> any,
        CustomElementFetcher: boolean?
    )
        ElementParser[ElementType] = {
            Save = function(Index: string, Element: any, ...)
                local Data = Save(Index, Element, ...)
                Data.type = ElementType
                Data.idx = Index

                return Data
            end,

            Load = function(Index: string?, Data: any)
                if CustomElementFetcher == true then return Load(nil, Data) end

                local Elements = SaveManager.Library and SaveManager.Library[LibaryIndex]
                local Element = Elements and Elements[Index]
                return Load(Element, Data)
            end
        }
    end

    CreateParser(
        "Toggle", "Toggles",
        function(Index: string, Toggle: any)
            return { value = Toggle.Value }
        end,
        function(Element: any?, Data: any)
            if not Element then return end
            if Element.Value == Data.value then Element:RunChanged(); return end

            Element:SetValue(Data.value)
        end
    )

    CreateParser(
        "Slider", "Options",
        function(Index: string, Slider: any)
            return { value = tostring(Slider.Value) }
        end,
        function(Element: any?, Data: any)
            if not Element then return end
            if Element.Value == Data.value then Element:RunChanged(); return end

            Element:SetValue(Data.value)
        end
    )

    CreateParser(
        "Dropdown", "Options",
        function(Index: string, Dropdown: any)
            return { value = Dropdown.Value, multi = Dropdown.Multi }
        end,
        function(Element: any?, Data: any)
            if not Element then return end
            if Element.Value == Data.value then Element:RunChanged(); return end

            Element:SetValue(Data.value)
        end
    )

    CreateParser(
        "ColorPicker", "Options",
        function(Index: string, ColorPicker: any)
            return { value = ColorPicker.Value:ToHex(), transparency = ColorPicker.Transparency }
        end,
        function(Element: any?, Data: any)
            if not Element then return end

            Element:SetValueRGB(Color3.fromHex(Data.value), Data.transparency)
        end
    )

    CreateParser(
        "KeyPicker", "Options",
        function(Index: string, KeyPicker: any)
            return { mode = KeyPicker.Mode, key = KeyPicker.Value, modifiers = KeyPicker.Modifiers, toggled = KeyPicker.Toggled }
        end,
        function(Element: any?, Data: any)
            if not Element then return end

            Element:SetValue({ Data.key, Data.mode, Data.modifiers })
            if Data.mode == "Toggle" and Data.toggled ~= nil then Element.Toggled = Data.toggled; Element:Update() end
        end
    )

    CreateParser(
        "Input", "Options",
        function(Index: string, Input: any)
            return { text = Input.Value }
        end,
        function(Element: any?, Data: any)
            if not Element then return end
            if typeof(Data.text) ~= "string" then return end

            if Element.Value == Data.text then Element:RunChanged(); return end

            Element:SetValue(Data.text)
        end
    )

    CreateParser(
        "Groupbox", "Tabs",
        function(Index: string, Groupbox: any, TabIndex: string)
            return { collapsed = Groupbox.Collapsed, tabIdx = TabIndex }
        end,
        function(_, Data: any)
            local TabIndex, Index = Data.tabIdx, Data.idx
            if typeof(TabIndex) ~= "string" or typeof(Index) ~= "string" then return end

            local Tabs = SaveManager.Library and SaveManager.Library.Tabs
            local Tab = Tabs and Tabs[TabIndex]
            if not Tab then return end

            local Groupbox = Tab.Groupboxes[Index]
            if not Groupbox or Groupbox.Collapsed == Data.collapsed then return end

            Groupbox:SetCollapsed(Data.collapsed == true)
        end,
        true
    )
end

local function Trim(Text: string)
    return Text:match("^%s*(.-)%s*$")
end

local function IsStringEmpty(String: string): boolean
    return if typeof(String) == "string" then Trim(String) == "" else true
end

local function IsValidFolderPath(Name: string): boolean
    return typeof(Name) == "string" and (
        Trim(Name) ~= "" and
        not Name:match("^%s*$") and
        not Name:find('[<>:"|%?%*%z]')
    )
end

local function SplitPath(Path: string): {string}
    local Result = {}
    local Current = ""

    for Part in string.gmatch(Path, "[^/]+") do Current = if Current == "" then Part else (Current .. "/" .. Part); table.insert(Result, Current) end

    return Result
end

local function GetFolderPath(): false | string
    if IsStringEmpty(SaveManager.Folder) then return false end

    return string.format("%s/settings", SaveManager.Folder)
end

local function GetSubFolderPath(): false | string
    if IsStringEmpty(SaveManager.Folder) or IsStringEmpty(SaveManager.SubFolder) then return false end

    return string.format("%s/settings/%s", SaveManager.Folder, SaveManager.SubFolder)
end

local function GetCurrentSettingsPath(): false | string
    local SubFolderPath = GetSubFolderPath()
    return if SubFolderPath == false then GetFolderPath() else SubFolderPath
end

local function GetConfigPath(ConfigName: string): false | string
    local CurrentSettingsPath = GetCurrentSettingsPath()
    return if CurrentSettingsPath == false then false else string.format("%s/%s.json", CurrentSettingsPath, ConfigName)
end

local function DoesConfigExist(ConfigName: string): boolean
    local ConfigPath = GetConfigPath(ConfigName)
    return if ConfigPath == false then false else isfile(ConfigPath)
end

local function GetAutoloadPath(): false | string
    local CurrentSettingsPath = GetCurrentSettingsPath()
    return if CurrentSettingsPath == false then false else string.format("%s/autoload.txt", CurrentSettingsPath)
end

function SaveManager:SetLoadingOrder(Enabled: boolean, Order: {string}?) SaveManager.UseLoadingOrder = Enabled == true; SaveManager.LoadingOrder = typeof(Order) == "table" and Order or SaveManager.LoadingOrder end

function SaveManager:SetIgnoreIndexes(Indexes: {string}?)
    assert(typeof(Indexes) == "table", "Expected table, got " .. typeof(Indexes))

    for _, Index in Indexes do SaveManager.Ignore[Index] = true end
end

function SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "BackgroundColor", "MainColor", "AccentColor", "OutlineColor", "FontColor", "FontFace", "BackgroundImage", "ThemeManager_ThemeList", "ThemeManager_CustomThemeList", "ThemeManager_CustomThemeName" })
end

function SaveManager:GetPaths(): {string}
    local SubFolderPath = GetSubFolderPath()
    if SubFolderPath == false then local FolderPath = GetFolderPath(); return if FolderPath == false then {} else SplitPath(FolderPath) end

    return SplitPath(SubFolderPath)
end

function SaveManager:BuildFolderTree(SkipWhenCreated: boolean?)
    local Paths = SaveManager:GetPaths()
    if #Paths == 0 then return false end

    if SkipWhenCreated == true then
        if isfolder(Paths[1]) then return true end
    end

    for _, Path in Paths do
        if isfolder(Path) then continue end

        makefolder(Path)
    end

    return true
end

function SaveManager:CheckFolderTree()
    return SaveManager:BuildFolderTree(true)
end

function SaveManager:CheckSubFolder(CreateFolder: boolean)
    local SubFolderPath = GetSubFolderPath()
    if SubFolderPath == false then return false end

    local FolderExists = isfolder(SubFolderPath)
    if not CreateFolder then return FolderExists end

    makefolder(SubFolderPath)
    return true
end

function SaveManager:SetFolder(Folder: string)
    assert(IsValidFolderPath(Folder), "Invalid path provided")

    SaveManager.Folder = Folder
    SaveManager:BuildFolderTree()
end

function SaveManager:SetSubFolder(SubFolder: string)
    assert(IsValidFolderPath(SubFolder), "Invalid path provided")

    SaveManager.SubFolder = SubFolder
    SaveManager:BuildFolderTree()
end

function SaveManager:RefreshConfigList()
    local SettingsPath = GetCurrentSettingsPath()
    if SettingsPath == false then return {} end

    local SuccessList, Files = pcall(listfiles, SettingsPath)
    if not (SuccessList and typeof(Files) == "table") then SaveManager.Library:Notify(string.format("Failed to load config list: %s", tostring(Files))); return {} end

    local FileNames = {}
    for _, FilePath in Files do
        local RawFileName = FilePath:match("(.+)%..+$")
        if not RawFileName then continue end

        local Position = RawFileName:gsub("\\", "/"):find("/[^/]*$")
        local FileName = Position and RawFileName:sub(Position + 1) or RawFileName
        if not FileName or FileName == "autoload" then continue end

        table.insert(FileNames, FileName)
    end

    return FileNames
end

function SaveManager:SaveJSON(ConfigName)
    local Library = SaveManager.Library
    local IgnoreIndexes = SaveManager.Ignore
    local CurrentData = {
        timestamp = os.date("%d.%m.%Y %H:%M:%S"),
        name = ConfigName or "",

        objects = {},
        keybindMenu = if Library.KeybindFrame then {
            visible = Library.KeybindFrame.Visible,
            position = SpecialValueParser.UDim2.Encode(Library.KeybindFrame.Position)
        } else nil
    }

    for Index, Toggle in Library.Toggles do
        if not Toggle.Type then continue end
        if IgnoreIndexes[Index] then continue end

        local Parser = ElementParser[Toggle.Type]
        if not Parser then continue end

        table.insert(CurrentData.objects, Parser.Save(Index, Toggle))
    end

    for Index, Option in Library.Options do
        if not Option.Type then continue end
        if IgnoreIndexes[Index] then continue end

        local Parser = ElementParser[Option.Type]
        if not Parser then continue end

        table.insert(CurrentData.objects, Parser.Save(Index, Option))
    end

    for TabIndex, Tab in Library.Tabs do
        if not Tab.Groupboxes then continue end

        for Index, Groupbox in Tab.Groupboxes do
            if IgnoreIndexes[Index] then continue end

            local Parser = ElementParser.Groupbox
            if not Parser then continue end

            table.insert(CurrentData.objects, Parser.Save(Index, Groupbox, TabIndex))
        end
    end

    local SuccessEncode, EncodedData = pcall(HttpService.JSONEncode, HttpService, CurrentData)
    if not SuccessEncode then return "", false, "Failed to encode data" end

    return EncodedData, true
end

function SaveManager:Save(ConfigName: string): (boolean, string?)
    if IsStringEmpty(ConfigName) then return false, "Invalid config name provided" end

    if string.lower(ConfigName) == "autoload" then return false, "Invalid config name provided" end

    local ConfigPath = GetConfigPath(ConfigName)
    if ConfigPath == false then return false, "Invalid config name provided" end

    SaveManager:CheckFolderTree()

    local EncodedData, SuccessEncode, EncodeErrorMessage = SaveManager:SaveJSON(ConfigName)
    if not SuccessEncode then return false, EncodeErrorMessage end

    local SuccessWrite, ErrorMessage = pcall(writefile, ConfigPath, EncodedData)
    if not SuccessWrite then return false, "Failed to write config file: " .. tostring(ErrorMessage) end

    return true
end

function SaveManager:LoadJSON(Content: string)
    if IsStringEmpty(Content) then return false, "No JSON provided" end

    local SuccessDecode, Decoded = pcall(HttpService.JSONDecode, HttpService, Content)
    if not SuccessDecode or typeof(Decoded) ~= "table" or typeof(Decoded.objects) ~= "table" then return false, "Failed to decode config data" end

    local Library = SaveManager.Library
    local LoadingOrder = SaveManager.LoadingOrder
    local IgnoreIndexes = SaveManager.Ignore

    if SaveManager.UseLoadingOrder == true and typeof(LoadingOrder) == "table" then
        table.sort(Decoded.objects, function(a, b)
            local aIndex = table.find(LoadingOrder, a.type) or math.huge
            local bIndex = table.find(LoadingOrder, b.type) or math.huge
            return aIndex < bIndex
        end)
    end

    if Library.KeybindFrame and typeof(Decoded.keybindMenu) == "table" then
        local KeybindFrameData = Decoded.keybindMenu
        local IsVisible = KeybindFrameData.visible == true
        local Position = SpecialValueParser.UDim2.Decode(KeybindFrameData.position)

        Library.KeybindFrame.Visible = IsVisible
        Library.KeybindFrame.Position = Position or Library.KeybindFrame.Position

        local KeybindMenuToggle = Library.Options and Library.Options.KeybindMenuOpen
        if KeybindMenuToggle then KeybindMenuToggle:SetValue(IsVisible) end
    end

    for _, Option in Decoded.objects do
        if not Option.type then continue end
        if IgnoreIndexes[Option.idx] then continue end

        local Parser = ElementParser[Option.type]
        if not Parser then continue end

        task.defer(Parser.Load, Option.idx, Option)
    end

    return true
end

function SaveManager:Load(ConfigName: string): (boolean, string?)
    if IsStringEmpty(ConfigName) then return false, "No config is selected" end

    local ConfigPath = GetConfigPath(ConfigName)
    if ConfigPath == false or not isfile(ConfigPath) then return false, "Config file does not exist" end

    local SuccessRead, Content = pcall(readfile, ConfigPath)
    if not SuccessRead then return false, "Failed to read config file" end

    return SaveManager:LoadJSON(Content)
end

function SaveManager:Delete(ConfigName: string): (boolean | string?)
    if IsStringEmpty(ConfigName) then return false, "No config is selected" end

    local ConfigPath = GetConfigPath(ConfigName)
    if ConfigPath == false or not isfile(ConfigPath) then return false, "Config file does not exist" end

    local SuccessDelete, ErrorMessage = pcall(delfile, ConfigPath)
    if not SuccessDelete then return false, "Failed to delete config file: " .. tostring(ErrorMessage) end

    if ConfigName == SaveManager.AutoloadConfig then SaveManager:DeleteAutoLoadConfig() end

    return true
end

function SaveManager:GetAutoloadConfig(): (string, boolean, string?)
    SaveManager:CheckFolderTree()

    local AutoloadPath = GetAutoloadPath()
    if AutoloadPath == false then return "none", false, "Invalid path provided" end

    if not isfile(AutoloadPath) then return "none", false, "Autoload config is not set" end

    local SuccessRead, AutoloadConfigName = pcall(readfile, AutoloadPath)
    if not (SuccessRead and typeof(AutoloadConfigName) == "string") then return "none", false, AutoloadConfigName end

    local ConfigExists = DoesConfigExist(AutoloadConfigName)
    if not ConfigExists then return "none", false, "Config file not found" end

    SaveManager.AutoloadConfig = AutoloadConfigName
    return AutoloadConfigName, true
end

function SaveManager:SaveAutoloadConfig(ConfigName: string): (boolean, string?)
    if IsStringEmpty(ConfigName) then return false, "No config is selected" end

    SaveManager:CheckFolderTree()

    local AutoloadPath = GetAutoloadPath()
    if AutoloadPath == false then return false, "Invalid path provided" end

    if not DoesConfigExist(ConfigName) then return false, "Config does not exist" end

    local SuccessWrite, ErrorMessage = pcall(writefile, AutoloadPath, ConfigName)
    if not SuccessWrite then return false, ErrorMessage end

    SaveManager.AutoloadConfig = ConfigName
    return true
end

function SaveManager:LoadAutoloadConfig()
    local ConfigName, Success, FetchErrorMessage = SaveManager:GetAutoloadConfig()
    if not Success or FetchErrorMessage then
        if FetchErrorMessage ~= "Autoload config is not set" then SaveManager.Library:Notify(string.format("Failed to load autoload config: %s", FetchErrorMessage)) end

        return
    end

    local SuccessLoad, LoadErrorMessage = SaveManager:Load(ConfigName)
    if not SuccessLoad then SaveManager.Library:Notify(string.format("Failed to load autoload config: %s", LoadErrorMessage)); return end

    SaveManager.Library:Notify(string.format("Successfully loaded autoload config %q", ConfigName))
end

function SaveManager:DeleteAutoLoadConfig(): (boolean, string?)
    SaveManager:CheckFolderTree()

    local AutoloadPath = GetAutoloadPath()
    if AutoloadPath == false then return false, "Invalid path provided" end

    if not isfile(AutoloadPath) then return false, "Autoload config is not set" end

    local SuccessDelete, ErrorMessage = pcall(delfile, AutoloadPath)
    if not SuccessDelete then return false, ErrorMessage end

    SaveManager.AutoloadConfig = nil
    return true
end

local function ShowDialog(
    Condition: () -> boolean,

    Index: string,
    Title: string,
    Description: string,

    DestructiveText: string,
    DestructiveAction: () -> nil
)
    if Condition() == false then return DestructiveAction() end

    return SaveManager.Library.Window:AddDialog(Index, {
        Title = Title,
        Description = Description,
        AutoDismiss = false,

        FooterButtons = {
            Cancel = {
                Title = "Cancel",
                Variant = "Ghost",
                Order = 1,
                Callback = function(Dialog)
                    Dialog:Dismiss()
                end
            },

            DestructiveAction = {
                Title = DestructiveText,
                Variant = "Destructive",
                Order = 2,
                Callback = function(Dialog)
                    Dialog:Dismiss()
                    DestructiveAction()
                end
            }
        }
    })
end

function SaveManager:BuildConfigSection(Tab: any, IconName: string)
    assert(SaveManager.Library, "Library is not set, call SaveManager:SetLibrary(Library) first.")
    local ConfigurationBox = Tab:AddRightGroupbox("Configuration", IconName or "folder-cog")

    local ConfigNameInput, ConfigList, ConfigJSONInput, AutoloadConfigLabel
    local function RefreshList() ConfigList:SetValues(SaveManager:RefreshConfigList()); ConfigList:SetValue(nil) end

    local function RefreshAutoloadConfigLabel()
        local AutoloadConfigName, _Success, _ErrorMessage = SaveManager:GetAutoloadConfig()

        AutoloadConfigLabel:SetText(string.format("Current autoload config: %s", AutoloadConfigName))
        if ConfigList then RefreshList() end
    end

    ConfigurationBox:AddInput("SaveManager_ConfigName", { Text = "Config name" })

    ConfigurationBox:AddButton("Create config", function()
        local ConfigName = ConfigNameInput.Value
        if IsStringEmpty(ConfigName) then SaveManager.Library:Notify("Configuration name cannot be empty."); return end

        if string.lower(ConfigName) == "autoload" then SaveManager.Library:Notify("Invalid config name provided."); return end

        ShowDialog(
            function(): boolean
                return DoesConfigExist(ConfigName)
            end,

            "SaveManager_CreateConfig",
            "Config already exists",
            string.format("A config named %q already exists. Overwriting will replace it with your current settings.", ConfigName),

            "Overwrite",
            function()
                local Success, ErrorMessage = SaveManager:Save(ConfigName)
                if not Success then SaveManager.Library:Notify(string.format("Failed to create config %q: %s", ConfigName, ErrorMessage)); return end

                SaveManager.Library:Notify(string.format("Successfully created config %q", ConfigName))
                RefreshList()
            end
        )
    end)

    ConfigurationBox:AddDivider()

    ConfigurationBox:AddDropdown("SaveManager_ConfigList", {
        Text = "Config list",

        Values = SaveManager:RefreshConfigList(),
        AllowNull = true,
        Multi = false,

        FormatDisplayValue = function(Value: any)
            if Value == SaveManager.AutoloadConfig then return string.format("%s (autoload)", Value) end

            return Value
        end,
        FormatListValue = function(Value: any)
            if Value == SaveManager.AutoloadConfig then return string.format("%s (autoload)", Value) end

            return Value
        end
    })

    ConfigurationBox:AddButton({
        Text = "Load config",
        DoubleClick = false,

        Func = function()
            local ConfigName = ConfigList.Value
            if IsStringEmpty(ConfigName) then SaveManager.Library:Notify("Please select a config first."); return end

            ShowDialog(
                function(): boolean
                    return true --// Always show
                end,

                "SaveManager_LoadConfig",
                "Load config",
                string.format("Are you sure you want to load %q? Your current settings will be overwritten.", ConfigName),

                "Load",
                function()
                    local Success, ErrorMessage = SaveManager:Load(ConfigName)
                    if not Success then SaveManager.Library:Notify(string.format("Failed to load config %q: %s", ConfigName, ErrorMessage)); return end

                    SaveManager.Library:Notify(string.format("Successfully loaded config %q", ConfigName))
                end
            )
        end
    })

    ConfigurationBox:AddButton({
        Text = "Overwrite config",
        DoubleClick = false,

        Func = function()
            local ConfigName = ConfigList.Value
            if IsStringEmpty(ConfigName) then SaveManager.Library:Notify("Please select a config first."); return end

            ShowDialog(
                function(): boolean
                    return true --// Always show
                end,

                "SaveManager_OverwriteConfig",
                "Overwrite config",
                string.format("Are you sure you want to overwrite %q with your current settings? This cannot be undone.", ConfigName),

                "Overwrite",
                function()
                    local Success, ErrorMessage = SaveManager:Save(ConfigName)
                    if not Success then SaveManager.Library:Notify(string.format("Failed to overwrite config %q: %s", ConfigName, ErrorMessage)); return end

                    SaveManager.Library:Notify(string.format("Successfully overwrote config %q", ConfigName))
                end
            )
        end
    })

    ConfigurationBox:AddButton({
        Text = "Delete config",
        DoubleClick = false,

        Func = function()
            local ConfigName = ConfigList.Value
            if IsStringEmpty(ConfigName) then SaveManager.Library:Notify("Please select a config first."); return end

            ShowDialog(
                function(): boolean
                    return true --// Always show
                end,

                "SaveManager_DeleteConfig",
                "Delete config",
                string.format("Are you sure you want to delete %q? This cannot be undone.", ConfigName),

                "Delete",
                function()
                    local Success, ErrorMessage = SaveManager:Delete(ConfigName)
                    if not Success then SaveManager.Library:Notify(string.format("Failed to delete config %q: %s", ConfigName, ErrorMessage)); return end

                    SaveManager.Library:Notify(string.format("Successfully deleted config %q", ConfigName))
                    RefreshAutoloadConfigLabel()
                end
            )
        end
    })

    ConfigurationBox:AddButton("Refresh list", RefreshList)

    ConfigurationBox:AddButton({
        Text = "Set as autoload",
        DoubleClick = false,

        Func = function()
            local ConfigName = ConfigList.Value
            if IsStringEmpty(ConfigName) then SaveManager.Library:Notify("Please select a config first."); return end

            local Success, ErrorMessage = SaveManager:SaveAutoloadConfig(ConfigName)
            if not Success then SaveManager.Library:Notify(string.format("Failed to set autoload config %q: %s", ConfigName, ErrorMessage)); return end

            SaveManager.Library:Notify(string.format("Successfully set autoload config to %q", ConfigName))
            RefreshAutoloadConfigLabel()
        end
    })

    ConfigurationBox:AddButton({
        Text = "Reset autoload",
        DoubleClick = false,

        Func = function()
            ShowDialog(
                function(): boolean
                    return true --// Always show
                end,

                "SaveManager_ResetAutoload",
                "Reset autoload config",
                "Are you sure you want to clear the autoload config? No config will be loaded automatically on next launch.",

                "Reset",
                function()
                    local Success, ErrorMessage = SaveManager:DeleteAutoLoadConfig()
                    if not Success then SaveManager.Library:Notify(string.format("Failed to reset autoload config: %s", ErrorMessage)); return end

                    SaveManager.Library:Notify("Successfully reset autoload config.")
                    RefreshAutoloadConfigLabel()
                end
            )
        end
    })

    AutoloadConfigLabel = ConfigurationBox:AddLabel("Current autoload config: ...", true);

    ConfigurationBox:AddDivider()

    ConfigurationBox:AddInput("SaveManager_JSON", { Text = "Config JSON" })

    ConfigurationBox:AddButton("Import config", function()
        local ConfigJSON = ConfigJSONInput.Value
        if IsStringEmpty(ConfigJSON) then SaveManager.Library:Notify("Configuration JSON cannot be empty"); return end

        ShowDialog(
            function(): boolean
                return true --// Always show
            end,

            "SaveManager_ImportConfig",
            "Import config",
            "Are you sure you want to import this configuration? Your current settings will be overwritten.",

            "Import",
            function()
                local Success, ErrorMessage = SaveManager:LoadJSON(ConfigJSON)
                if not Success then SaveManager.Library:Notify(string.format("Failed to import config: %s", ErrorMessage)); return end

                SaveManager.Library:Notify("Successfully imported config")
            end
        )
    end)

    ConfigurationBox:AddButton("Export current config", function()
        local EncodedData, Success, ErrorMessage = SaveManager:SaveJSON()
        if not Success  then SaveManager.Library:Notify(ErrorMessage); return end

        ConfigJSONInput:SetValue(EncodedData)
        if setclipboard then setclipboard(EncodedData); SaveManager.Library:Notify("Copied config to your clipboard") end
    end)

    ConfigNameInput, ConfigList, ConfigJSONInput =
        SaveManager.Library.Options.SaveManager_ConfigName,
        SaveManager.Library.Options.SaveManager_ConfigList,
        SaveManager.Library.Options.SaveManager_JSON;

    RefreshAutoloadConfigLabel()
    SaveManager:SetIgnoreIndexes({ "SaveManager_ConfigList", "SaveManager_ConfigName", "SaveManager_JSON" })

    return ConfigurationBox
end

SaveManager:BuildFolderTree()
return SaveManager

]=]

    _JWAttackSrc = [=[


local Remotes = game:GetService("ReplicatedStorage"):WaitForChild("Remotes")
local Class_Skill_Leap = { 1, "Leap", 8.1, "Melee", 20, SkipFirst = true }
local Class_Profile_Swordmaster = { DisplayName = "Swordmaster", Distance = "Melee", 	SkillInfo = { 		{ 6, "Swordmaster", 0.34, "Melee", 15 }, 		{ 5, "CrescentStrike", 5.1, "Ranged", 40 }, Class_Skill_Leap, 		{ 20, "SwordCyclone", 30.1, "Melee", 40 } } }
local Class_Skill_Groundbreaker = { 1, "Groundbreaker", 5.1, "Ranged", 20, SkipFirst = true }
local Class_Skill_DefenderShield = { 1, "DefenderShield", 30.1, "Melee", 15, SkipFirst = true }
local Skillset_Defender_Ultimate = Remotes:WaitForChild("Skillset_Defender_Ultimate")
local Class_Profile_Defender = { DisplayName = "Defender", Distance = "Melee", 	SkillInfo = { 		{ 5, "Defender", 0.66, "Melee", 15 }, Class_Skill_Groundbreaker, 		{ 8, "Spin", 8.1, "Melee", 15 }, Class_Skill_DefenderShield, 		{ 1, Skillset_Defender_Ultimate, 1, "CFrameRemote", 20, SkipFirst = true } } }
local Class_Skill_ArcaneWave = { 12, "ArcaneWave", 8.1, "Ranged", 40, 	IncrementD = { 6, 5 } }
local Class_Profile_ArcaneMage = { DisplayName = "Arcane Mage", Distance = "Ranged", 	SkillInfo = { 		{ 3, "Mage", 0.33, "Ranged", 65 }, 		{ 1, 			{ "ArcaneBlast", "ArcaneBlastAOE" }, 5.1, "Ranged", 45 }, Class_Skill_ArcaneWave, 		{ 1, "ArcaneAscension", 30.1, "Ranged", 75 } } }
local Class_Skill_DualWield = { 10, "DualWield", 0.55, "Melee", 15, 	AddCd = { 5, 0.2 } }
local Class_Skill_DashStrike = { 1, "DashStrike", 6.1, "Melee", 15, SkipFirst = true }
local Class_Skill_DualWieldUltimateSlam = { 1, "DualWieldUltimateSlam", 30.1, "Ranged", 20, SkipFirst = true }
local Skillset_DualWielder_AttackBuff = Remotes:WaitForChild("Skillset_DualWielder_AttackBuff")
local Class_Profile_DualWielder = { DisplayName = "Dual Wielder", Distance = "Melee", 	SkillInfo = { Class_Skill_DualWield, Class_Skill_DashStrike, 		{ 10, "CrossSlash", 8.1, "Ranged", 50 }, 		{ 8, "DualWieldUltimateHit", 30.1, "Ranged", 20 }, Class_Skill_DualWieldUltimateSlam, 		{ 3, "DualWieldUltimateSlam", 30.1, "Ranged", 20 }, 		{ 16, "DualWieldUltimateSword1", 30.1, "Ranged", 20 }, 		{ 1, Skillset_DualWielder_AttackBuff, 1, "Remote", 50, SkipFirst = true } } }
local Class_Skill_IcefireMageFireball = { 1, 	{ "IcefireMageFireball", "IcefireMageFireballBlast" }, 7.1, "Ranged", 100, SkipFirst = true }
local Class_Skill_IcefireMageUltimateFrost = { 1, "IcefireMageUltimateFrost", 30.1, "Ranged", 100, SkipFirst = true }
local Class_Profile_Elementalist = { DisplayName = "Elementalist", Distance = "Ranged", 	SkillInfo = { 		{ 3, "IcefireMage", 0.55, "Ranged", 100 }, 		{ 1, "IcySpikes", 6.1, "Ranged", 40 }, Class_Skill_IcefireMageFireball, 		{ 5, "LightningStrike", 10.1, "Ranged", 100 }, Class_Skill_IcefireMageUltimateFrost, 		{ 10, "IcefireMageUltimateMeteor", 30.1, "Ranged", 100 } } }
local Class_Skill_RockSpikes = { 3, "RockSpikes", 6.1, "Ranged", 30, 	IncrementD = { 2, 2.5 } }
local Class_Skill_SwordPrison = { 12, "SwordPrison", 30.1, "Ranged", 120, 	IncrementD = { 7, 10 } }
local Class_Remote_Skillset_Guardian_AggroDraw = { 1, Remotes:WaitForChild("Skillset_Guardian_AggroDraw"), 1, "Remote", 180, SkipFirst = true }
local Skillset_Guardian_Ultimate = Remotes:WaitForChild("Skillset_Guardian_Ultimate")
local Class_Profile_Guardian = { DisplayName = "Guardian", Distance = "Melee", 	SkillInfo = { 		{ 4, "Guardian", 0.6, "Melee", 15 }, Class_Skill_RockSpikes, 		{ 8, "SlashFury", 8.1, "Ranged", 30 }, Class_Skill_SwordPrison, Class_Remote_Skillset_Guardian_AggroDraw, 		{ 1, Skillset_Guardian_Ultimate, 1, "GuardianRemote", 180, SkipFirst = true } } }
local Class_Skill_MageOfLight = { 1, 	{ "MageOfLight", "MageOfLightBlast" }, 0.25, "Ranged", 100, 	AddCd = { 2, 0.05 }, SkipFirst = true }
local Class_Skill_MageOfLightCharged = { 1, 	{ "MageOfLightCharged", "MageOfLightBlastCharged" }, 0.33, "Ranged", 100, SkipFirst = true }
local Class_Remote_Skillset_MageOfLight_HealCircle = { 1, 	{ Remotes:WaitForChild("Skillset_MageOfLight_HealCircle"), Remotes:WaitForChild("Skillset_MageOfLight_Ultimate") }, 1, "Remote", 100, SkipFirst = true }
local Skillset_MageOfLight_Barrier = Remotes:WaitForChild("Skillset_MageOfLight_Barrier")
local Class_Profile_MageofLight = { DisplayName = "Mage of Light", Distance = "Ranged", 	SkillInfo = { Class_Skill_MageOfLight, Class_Skill_MageOfLightCharged, Class_Remote_Skillset_MageOfLight_HealCircle, 		{ 1, Skillset_MageOfLight_Barrier, 1, "PlayerRemote", 180, SkipFirst = true } } }
local Class_Skill_BlockingPaladin = { 1, "BlockingPaladin", 0.37, "Ranged", 20, SkipFirst = true }
local Class_Remote_Skillset_Paladin_Block = { 1, 	{ Remotes:WaitForChild("Skillset_Paladin_Block"), Remotes:WaitForChild("Skillset_Paladin_GuildedLight"), Remotes:WaitForChild("Skillset_Paladin_LightThrust") }, 1, "Remote", 80, SkipFirst = true }
local Skillset_Paladin_Ultimate = Remotes:WaitForChild("Skillset_Paladin_Ultimate")
local Class_Profile_Paladin = { DisplayName = "Paladin", Distance = "Melee", 	SkillInfo = { Class_Skill_BlockingPaladin, 		{ 4, "Paladin", 0.52, "Melee", 15 }, 		{ 4, "LightPaladin", 0.52, "Melee", 20 }, Class_Remote_Skillset_Paladin_Block, 		{ 1, Skillset_Paladin_Ultimate, 1, "PlayerPositionRemote", 80, SkipFirst = true } } }
local Class_Skill_AggroSlam = { 1, "AggroSlam", 5.1, "Ranged", 40, SkipFirst = true }
local Class_Remote_Skillset_Berserker_AggroSlam = { Remotes:WaitForChild("Skillset_Berserker_AggroSlam"), Remotes:WaitForChild("Skillset_Berserker_Ultimate") }
local Class_Profile_Berserker = { DisplayName = "Berserker", Distance = "Melee", 	SkillInfo = { 		{ 6, "Berserker", 0.51, "Melee", 15 }, Class_Skill_AggroSlam, 		{ 8, "GigaSpin", 7.1, "Ranged", 40 }, 		{ 2, "Fissure", 10.1, "Ranged", 40 }, 		{ 8, "FissureErrupt", 10.1, "Ranged", 60 }, 		{ 1, Class_Remote_Skillset_Berserker_AggroSlam, 1, "Remote", 60, SkipFirst = true } } }
local Class_Skill_Archer = { 1, "Archer", 0.47, "Ranged", 80, SkipFirst = true }
local Class_Skill_MortarStrike = { 8, "MortarStrike", 12.1, "Ranged", 60, 	IncrementD = { 2, 17 } }
local Class_Profile_SpiritArcher = { DisplayName = "Spirit Archer", Distance = "Ranged", 	SkillInfo = { Class_Skill_Archer, 		{ 9, "PiercingArrow", 5.1, "Ranged", 100 }, 		{ 1, "SpiritBomb", 10.1, "Ranged", 210 }, Class_Skill_MortarStrike, 		{ 6, "HeavenlySword", 30.1, "Ranged", 145 }, 		{ 1, "BackstepAttack", 3.1, "Ranged", 200, SkipFirst = true } } }
local Class_Skill_DragoonDash = { 1, "DragoonDash", 6.1, "Ranged", 20, SkipFirst = true }
local Class_Skill_DragoonFall = { 1, "DragoonFall", 8.1, "Melee", 19, SkipFirst = true }
local Class_Skill_DragoonUltimate = { 1, "DragoonUltimate", 30.1, "Ranged", 50, SkipFirst = true }
local Class_Remote_Skillset_Dragoon_Ultimate = { Remotes:WaitForChild("Skillset_Dragoon_Ultimate") }
local Class_Profile_Dragoon = { DisplayName = "Dragoon", Distance = "Melee", 	SkillInfo = { 		{ 6, "Dragoon", 0.45, "Melee", 17 }, Class_Skill_DragoonDash, 		{ 10, "DragoonCross", 6.1, "Ranged", 20 }, 		{ 5, "MultiStrike", 6.1, "Melee", 19 }, Class_Skill_DragoonFall, Class_Skill_DragoonUltimate, 		{ 18, "UltimateDragon", 30.1, "Ranged", 100 }, 		{ 1, Class_Remote_Skillset_Dragoon_Ultimate, 1, "Remote", 100, SkipFirst = true } } }
local Class_Skill_DemonDPS = { 9, "DemonDPS", 0.85, "Melee", 16, 	IncrementC = { 2, 0.35 } }
local Class_Skill_DemonLifeStealDPS = { 1, "DemonLifeStealDPS", 8.1, "Ranged", 60, SkipFirst = true }
local Skillset_Demon_Ultimate = Remotes:WaitForChild("Skillset_Demon_Ultimate")
local Class_Profile_Demon = { DisplayName = "Demon", Distance = "Melee", 	SkillInfo = { Class_Skill_DemonDPS, 		{ 3, "ScytheThrowDPS", 5.1, "Ranged", 150 }, 		{ 8, "ScytheThrow", 5.1, "Ranged", 150 }, Class_Skill_DemonLifeStealDPS, 		{ 3, "DemonSoulDPS", 30.1, "Ranged", 30 }, 		{ 1, Skillset_Demon_Ultimate, 1, "Remote", 150, SkipFirst = true } } }
local Class_Skill_ChainsOfWar = { 1, "ChainsOfWar", 8.1, "Ranged", 75, SkipFirst = true }
local Class_Skill_BlockingWarlord = { 1, "BlockingWarlord", 2.5, "Ranged", 20, SkipFirst = true }
local Class_Skill_Piledriver = { 3, "Piledriver", 5.1, "Ranged", 13, 	IncrementC = { 2, 1 } }
local Skillset_Warlord_Block = Remotes:WaitForChild("Skillset_Warlord_Block")
local Class_Profile_Warlord = { DisplayName = "Warlord", Distance = "Melee", 	SkillInfo = { 		{ 4, "Warlord", 0.42, "Melee", 15 }, Class_Skill_ChainsOfWar, Class_Skill_BlockingWarlord, Class_Skill_Piledriver, 		{ 5, "WarlordUltimate", 30.1, "Ranged", 55 }, 		{ 1, Skillset_Warlord_Block, 1, "Remote", 75, SkipFirst = true } } }
local Class_Skill_Summoner = { 4, "Summoner", 0.55, "Ranged", 80, 	IncrementC = { 2, 0.25 } }
local Class_Remote_Skillset_Summoner_Summon = { Remotes:WaitForChild("Skillset_Summoner_Summon"), Remotes:WaitForChild("Skillset_Summoner_Ultimate") }
local Class_Profile_Summoner = { DisplayName = "Summoner", Distance = "Ranged", 	SkillInfo = { Class_Skill_Summoner, 		{ 5, "SoulHarvest", 1.1, "Ranged", 75 }, 		{ 1, Class_Remote_Skillset_Summoner_Summon, 1, "Remote", 80, SkipFirst = true } } }
local Class_Skill_ShadowLeap = { 1, "ShadowLeap", 3.1, "Ranged", 50, SkipFirst = true }
local Class_Skill_RealmOfShadows = { 1, "RealmOfShadows", 30.1, "Ranged", 80, SkipFirst = true }
local Class_Remote_Skillset_Assassin_EventStealthWalk = { Remotes:WaitForChild("Skillset_Assassin_EventStealthWalk"), Remotes:WaitForChild("Skillset_Assassin_Ultimate") }
local Class_Profile_Shadowblade = { DisplayName = "Shadowblade", Distance = "Melee", 	SkillInfo = { 		{ 8, "Assassin", 0.26, "Melee", 15 }, Class_Skill_ShadowLeap, 		{ 2, "ShadowSlash", 6.1, "Ranged", 60 }, Class_Skill_RealmOfShadows, 		{ 5, "ShadowMulti", 30.1, "Ranged", 60 }, 		{ 1, Class_Remote_Skillset_Assassin_EventStealthWalk, 1, "Remote", 60, SkipFirst = true } } }
local Class_Skill_StormSurgeInit = { 1, 	{ "StormSurgeInit", "StormSurge" }, 10.1, "Ranged", 0, 	IncrementD = { 1, 20 }, SkipFirst = true }
local Class_Skill_UltimateDischarge = { 1, "UltimateDischarge", 1.5, "Ranged", 35, SkipFirst = true }
local Class_Skill_StormcallerUltBlast = { 1, "StormcallerUltBlast", 30.1, "Melee", 44, SkipFirst = true }
local Class_Skill_StormcallerThunderGod = { 8, "StormcallerThunderGod", 0.3, "Melee", 15, 	IncrementC = { 2, 0.286 } }
local Class_Skill_ShockDashBall = { 1, "ShockDashBall", 3.1, "Ranged", 40, SkipFirst = true }
local Skillset_Stormcaller_Ultimate = Remotes:WaitForChild("Skillset_Stormcaller_Ultimate")
local Class_Profile_Stormcaller = { DisplayName = "Stormcaller", Distance = "Melee", 	SkillInfo = { 		{ 1, "Stormcaller", 0.4, "Ranged", 100 }, 		{ 8, "ChainLightning", 7.1, "Ranged", 120 }, Class_Skill_StormSurgeInit, Class_Skill_UltimateDischarge, Class_Skill_StormcallerUltBlast, Class_Skill_StormcallerThunderGod, Class_Skill_ShockDashBall, 		{ 3, "ShockDash", 3.1, "Ranged", 40 }, 		{ 1, Skillset_Stormcaller_Ultimate, 1, "Remote", 120, SkipFirst = true } } }
local Class_Skill_MageOfShadows = { 1, 	{ "MageOfShadows", "MageOfShadowsBlast", "MageOfShadowsCharged", "MageOfShadowsBlastCharged" }, 0.25, "Ranged", 100, 	AddCd = { 2, 0.25 }, SkipFirst = true }
local Class_Skill_BighShadowOrb = { 1, 	{ "BighShadowOrb", "MageOfShadowsDamageCircle" }, 0.5, "Ranged", 75, 	IncrementD = { 1, 25 }, SkipFirst = true }
local Skillset_MageOfShadows_ShadowChains = Remotes:WaitForChild("Skillset_MageOfShadows_ShadowChains")
local Class_Profile_MageofShadows = { DisplayName = "Mage of Shadows", Distance = "Ranged", 	SkillInfo = { Class_Skill_MageOfShadows, Class_Skill_BighShadowOrb, 		{ 1, Skillset_MageOfShadows_ShadowChains, 6, "ShadowChain", 125, SkipFirst = true } } }
local Class_Skill_Hunter = { 3, "Hunter", 0.47, "Ranged", 80, SkipFirst = true }
local Class_Skill_HunterExplosiveArrow = { 5, "HunterExplosiveArrow", 4.1, "Ranged", 150, SkipFirst = true }
local Class_Skill_BearTrap = { 1, 	{ "BearTrap", "BearTrapAOE" }, 1.1, "Ranged", 150, SkipFirst = true }
local Class_Skill_FamiliarBurst = { 1, "FamiliarBurst", 5.1, "Ranged", 150, SkipFirst = true }
local Class_Skill_BackstepAttackHunter = { 1, "BackstepAttackHunter", 3.1, "Ranged", 150, SkipFirst = true }
local Class_Remote_Skillset_Hunter_Frenzy = { 1, 	{ Remotes:WaitForChild("Skillset_Hunter_Frenzy"), Remotes:WaitForChild("Skillset_Hunter_Summon") }, 1, "Remote", 150, 	AddCd = { 2, 15 }, SkipFirst = true }
local Skillset_Hunter_DivineArrowHeal = Remotes:WaitForChild("Skillset_Hunter_DivineArrowHeal")
local Class_Profile_Hunter = { DisplayName = "Hunter", Distance = "Ranged", 	SkillInfo = { Class_Skill_Hunter, Class_Skill_HunterExplosiveArrow, Class_Skill_BearTrap, Class_Skill_FamiliarBurst, 		{ 10, "DivineArrow", 30.1, "Ranged", 150 }, Class_Skill_BackstepAttackHunter, Class_Remote_Skillset_Hunter_Frenzy, 		{ 1, Skillset_Hunter_DivineArrowHeal, 2.5, "HunterRemote", 150, SkipFirst = true } } }
local Class_Skill_WaterCyclone = { 1, 	{ "WaterCyclone", "Mealstrom" }, 0.25, "Ranged", 100, 	AddCd = { 2, 0.2 }, SkipFirst = true }
local Class_Skill_Hydrosurge = { 1, "Hydrosurge", 3.1, "Melee", 44, SkipFirst = true }
local Class_Skill_MaelstromBubblePop = { 1, "MaelstromBubblePop", 8.1, "Ranged", 100, SkipFirst = true }
local Skillset_Leviathan_PoppingBubbleDamage = Remotes:WaitForChild("Skillset_Leviathan_PoppingBubbleDamage")
local Class_Profile_Leviathan = { DisplayName = "Leviathan", Distance = "Melee", 	SkillInfo = { 		{ 6, "Leviathan", 0.45, "Melee", 17 }, Class_Skill_WaterCyclone, Class_Skill_Hydrosurge, Class_Skill_MaelstromBubblePop, 		{ 8, "LeviathanUltimate", 30.1, "Ranged", 40 }, 		{ 1, Skillset_Leviathan_PoppingBubbleDamage, 1, "TableRemote", 95, SkipFirst = true } } }
local Class_Skill_StarbreakerUltimateHitInit = { 1, "StarbreakerUltimateHitInit", 30.1, "Ranged", 20, SkipFirst = true }
local Class_Skill_StarbreakerUltimateHit = { 1, "StarbreakerUltimateHit", 1.51, "Ranged", 115, SkipFirst = true }
local Class_Skill_StarbreakerWaves = { 1, "", 1.1, "StarbreakerWaves", 20, SkipFirst = true }
local Class_Remote_Skillset_Starbreaker_Starforge = { 1, Remotes:WaitForChild("Skillset_Starbreaker_Starforge"), 1, "MobPositionRemote", 115, SkipFirst = true }
local Skillset_Starbreaker_Ultimate = Remotes:WaitForChild("Skillset_Starbreaker_Ultimate")
local Class_Profile_Starbreaker = { DisplayName = "Starbreaker", Distance = "Melee", 	SkillInfo = { Class_Skill_StarbreakerUltimateHitInit, 		{ 2, "StarforgeExplosion", 25.1, "Ranged", 20 }, 		{ 10, "StarbreakerFlare", 10.1, "Ranged", 110 }, 		{ 4, "Nova", 7.1, "Ranged", 60 }, Class_Skill_StarbreakerUltimateHit, Class_Skill_StarbreakerWaves, 		{ 8, 			{ "Starbreaker", "StarbreakerBoosted" }, 0.61, "Melee", 15 }, Class_Remote_Skillset_Starbreaker_Starforge, 		{ 1, Skillset_Starbreaker_Ultimate, 1, "Remote", 115, SkipFirst = true } } }
local Class_Skill_NecroDPS = { 9, "NecroDPS", 0.85, "Melee", 16, 	IncrementC = { 2, 0.35 } }
local Class_Skill_SpiritExplosion0 = { 1, "SpiritExplosion0", 2.25, "Melee", 12, SkipFirst = true }
local Class_Skill_SpiritExplosion1 = { 1, "SpiritExplosion1", 2.25, "Melee", 13, SkipFirst = true }
local Class_Skill_SpiritExplosion2 = { 1, "SpiritExplosion2", 3, "Melee", 15, SkipFirst = true }
local Class_Skill_SpiritExplosion3 = { 1, "SpiritExplosion3", 3.25, "Melee", 17, SkipFirst = true }
local Class_Skill_SpiritExplosion4 = { 1, "SpiritExplosion4", 4, "Melee", 20, SkipFirst = true }
local Class_Skill_UltScytheDrop = { 1, "UltScytheDrop", 30.1, "Ranged", 150, SkipFirst = true }
local Class_Remote_Skillset_Necromancer_Ultimate = { 1, Remotes:WaitForChild("Skillset_Necromancer_Ultimate"), 1, "Remote", 150, SkipFirst = true }
local Class_Profile_Necromancer = { DisplayName = "Necromancer", Distance = "Melee", 	SkillInfo = { Class_Skill_NecroDPS, Class_Skill_SpiritExplosion0, Class_Skill_SpiritExplosion1, Class_Skill_SpiritExplosion2, Class_Skill_SpiritExplosion3, Class_Skill_SpiritExplosion4, 		{ 5, "TombstoneRise", 4.2, "Melee", 25 }, 		{ 6, "SpiritCavern", 10.2, "Ranged", 150 }, Class_Skill_UltScytheDrop, Class_Remote_Skillset_Necromancer_Ultimate } }
ClassTable = { Swordmaster = Class_Profile_Swordmaster, Defender = Class_Profile_Defender, Mage = Class_Profile_ArcaneMage, DualWielder = Class_Profile_DualWielder, IcefireMage = Class_Profile_Elementalist, Guardian = Class_Profile_Guardian, MageOfLight = Class_Profile_MageofLight, Paladin = Class_Profile_Paladin, Berserker = Class_Profile_Berserker, Archer = Class_Profile_SpiritArcher, Dragoon = Class_Profile_Dragoon, Demon = Class_Profile_Demon, Warlord = Class_Profile_Warlord, Summoner = Class_Profile_Summoner, Assassin = Class_Profile_Shadowblade, Stormcaller = Class_Profile_Stormcaller, MageOfShadows = Class_Profile_MageofShadows, Hunter = Class_Profile_Hunter, Leviathan = Class_Profile_Leviathan, Starbreaker = Class_Profile_Starbreaker, Necromancer = Class_Profile_Necromancer }
return ClassTable

]=]

    _JWPetSrc = [=[
local PetSkill_Bite = { 	R = { 1, "Bite", 15.1, "Ranged", SkipFirst = true } }
local PetSkill_Scratch = { 	R = { 1, "Scratch", 15.1, "Ranged", SkipFirst = true } }
local PetSkill_Fireball = { 	R = { 1, 		{ "PetFireball", "PetFireballBlast" }, 15.1, "Ranged", SkipFirst = true } }
local PetSkill_FireballGreen = { 	R = { 1, 		{ "PetFireballGreen", "PetFireballBlastGreen" }, 15.1, "Ranged", SkipFirst = true } }
local PetSkill_Iceball = { 	R = { 1, 		{ "PetIceball", "PetIceballBlast" }, 15.1, "Ranged", SkipFirst = true } }
local PetSkill_PoisonSplash = { 	R = { 1, "PetPoisonSplash", 15.1, "Ranged", SkipFirst = true } }
local PetSkill_HealPulse = { 	R = { 1, "PlayerPosition", 30.1, "Self", SkipFirst = true } }
local PetSkill_IcySpikes = { 	R = { 1, "PetIcySpikes", 15.1, "Ranged", SkipFirst = true } }
local PetSkill_BlackFlame = { 	R = { 6, "PetBlackFlame", 20.1, "Ranged" } }
local PetSkill_LightningStrike = { 	R = { 5, "PetLightningStrike", 25.1, "Ranged" } }
local PetSkill_DireBlast = { 	R = { 1, "PetDireBlast", 20.1, "Ranged", SkipFirst = true } }
local PetSkill_DragonBlast = { 	R = { 3, "PetAlphaDragon", 20.1, "Ranged" } }
local PetSkill_FrontalFire = { 	R = { 5, "AetherPet", 30.1, "Ranged" } }
local PetSkill_MiseryFire = { 	R = { 5, "MiseryPet", 30.1, "Ranged" } }
local PetSkill_Unknown = { 	R = { 5, "MiseryPet", 30.1, "Ranged" } }
local PetSkill_CerberusFire = { 	R = { 5, "CerberusFire", 30.1, "Ranged" } }
local PetSkill_Wildfire = { 	R = { 5, "WildfirePet", 30.1, "Ranged" } }
local PetSkill_SkeletalSlash = { 	R = { 6, "SkeletalSlash", 30.1, "Ranged" } }
local PetSkill_DeathSlash = { 	R = { 6, "DeathSlash", 30.1, "Ranged" } }
local PetSkill_HoodedSlash = { 	R = { 1, "HoodedSlash", 30.1, "Ranged", SkipFirst = true } }
local PetSkill_HoodedSlashPoison = { 	R = { 1, "HoodedSlashPoison", 25.1, "Ranged", SkipFirst = true } }
local PetSkill_PoisonBreath = { 	R = { 3, "PetPoisonBreath", 20.1, "Ranged" } }
local PetSkill_TetheredHeal = { 	R = { 1, "PlayerPosition", 25.1, "Self", SkipFirst = true } }
local PetSkill_Barrier = { 	R = { 1, "PlayerPosition", 25.1, "Self", SkipFirst = true } }
local PetSkill_CrystalBarrier = { 	R = { 1, "PlayerPosition", 30.1, "Self", SkipFirst = true } }
local PetSkill_BlackHole = { 	R = { 10, "PetBlackHole", 30.1, "Ranged" } }
local PetSkill_BlackHolePumpkin = { 	R = { 10, "PetBlackHolePumpkin", 30.1, "Ranged" } }
local PetSkill_BlackHoleBlazing = { 	R = { 10, "PetBlackHoleBlazing", 30.1, "Ranged" } }
local PetSkill_BlackHoleCabbage = { 	R = { 10, "PetBlackHoleCabbage", 30.1, "Ranged" } }
local PetSkill_MeteorStrike = { 	R = { 8, "PetMeteorStrike", 25.1, "Ranged" } }
local PetSkill_AlienStrike = { 	R = { 8, "PetAlienStrike", 25.1, "Ranged" } }
local PetSkill_UltRing = { 	R = { 1, "PlayerPosition", 35.1, "Self", SkipFirst = true } }
local PetSkill_UltRingGalactic = { 	R = { 6, "PetGalactic", 35.1, "Ranged" } }
local PetSkill_EquinoxMist = { 	R = { 1, "PlayerPosition", 40.1, "Self", SkipFirst = true } }
local PetSkill_RollingJimothy = { 	R = { 4, "Jimothy", 20.1, "Ranged" } }
local PetSkill_BlackSheepAttack = { 	R = { 4, "BlackSheep", 20.1, "Ranged" } }
local PetSkill_PinkSheepAttack = { 	R = { 1, "PlayerPosition", 25.1, "Self", SkipFirst = true } }
local PetSkill_PurpleDragonAttack = { 	R = { 2, "PurpleDragon", 15.1, "Ranged" } }
local PetSkill_CyberBeamAttack = { 	R = { 2, "CyberBeam", 15.1, "Ranged" } }
local PetSkill_RedDragonAttack = { 	R = { 7, "RedDragon", 25.1, "Ranged" } }
local PetSkill_HellhoundAttack = { 	R = { 2, "HellhoundAttack", 15.1, "Ranged" } }
local PetSkill_PumpkinAttack = { 	R = { 1, "PumpkinAttack", 20.1, "Ranged", SkipFirst = true } }
local PetSkill_CupidPetShockwave = { 	R = { 1, "CupidPetShockwave", 25.1, "Ranged", SkipFirst = true } }
local PetSkill_SkeledileAttack = { 	R = { 9, "SkeledileAttack", 20.1, "Ranged" } }
local PetSkill_Whirlpool = { 	R = { 8, "WhirlpoolSmall", 25.1, "Ranged" } }
local PetSkill_WhirlpoolIce = { 	R = { 8, "WhirlpoolSmallIce", 20.1, "Ranged" } }
local PetSkill_HealReach = { 	R = { 1, "PlayerPosition", 30.1, "Self", SkipFirst = true } }
local PetSkill_HealReachPro = { 	R = { 1, "PlayerPosition", 30.1, "Self", SkipFirst = true } }
local PetSkill_RockAttack = { 	R = { 1, "PlayerPosition", 25.1, "Self", SkipFirst = true } }
local PetSkill_BeeAttack = { 	R = { 1, "BeeAttack", 20.1, "Ranged", SkipFirst = true } }
local PetSkill_BeeAttackPro = { 	R = { 4, "BeeAttack", 15.1, "Ranged" } }
local PetSkill_CatAttack = { 	R = { 1, "PlayerPosition", 25.1, "Self", SkipFirst = true } }
local PetSkill_CatAttackPro = { 	R = { 1, "PlayerPosition", 25.1, "Self", SkipFirst = true } }
local PetSkill_GoldenRoad = { 	R = { 1, "PlayerPosition", 25.1, "Self", SkipFirst = true } }
local PetSkill_GlyphAttack = { 	R = { 1, 		{ "Bite", "PetFireball", "PetFireballBlast", "PetIcySpikes" }, 25.1, "Ranged", SkipFirst = true } }
local PetSkill_GlyphAttackPro = { 	R = { 10, "PetBlackHole", 20.1, "Ranged" }, 	EA = { 1, 		{ "PetFireball", "PetFireballBlast", "PetIcySpikes" }, 20, "Ranged", SkipFirst = true } }
local PetSkill_FlameProtection = { 	R = { 6, "FlameProtection", 20.1, "Ranged" } }
local PetSkill_FlameProtectionPurple = { 	R = { 3, "FlameProtectionPurple", 20.1, "Ranged" } }
local PetSkill_AvatarFlameProtection = { 	R = { 3, "AvatarProtection", 20.1, "Ranged" } }
local PetSkill_PurpleSheepAttack = { 	R = { 4, "PurpleSheep", 20.1, "Ranged" } }
local PetSkill_MegaBite = { 	R = { 1, "MegaBite", 15.1, "Ranged", SkipFirst = true } }
local PetSkill_MegaBitePro = { 	R = { 1, "MegaBitePro", 15.1, "Ranged", SkipFirst = true } }
local PetSkill_ChocolateSplash = { 	R = { 5, "ChocolateSplash", 30.1, "Ranged" } }
local PetSkill_SlimeSplash = { 	R = { 5, "SlimeSplash", 30.1, "Ranged" } }
local PetSkill_SlimeSplashFire = { 	R = { 5, "SlimeSplashFire", 30.1, "Ranged" } }
local PetSkill_SlimeSplashPoison = { 	R = { 5, "SlimeSplashPoison", 30.1, "Ranged" } }
local PetSkill_SlimeSplashIce = { 	R = { 5, "SlimeSplashIce", 30.1, "Ranged" } }
local PetSkill_Cure = { 	R = { 1, "PlayerPosition", 15.1, "Self", SkipFirst = true } }
local PetSkill_CurePro = { 	R = { 1, "PlayerPosition", 15.1, "Self", SkipFirst = true } }
local PetSkill_Snowstorm = { 	R = { 16, "PetSnowstorm", 30.1, "Ranged" } }
local PetSkill_CarrotStorm = { 	R = { 20, "PetCarrotStorm", 30.1, "Ranged" } }
local PetSkill_ShadowEssence = { 	R = { 20, "ShadowEssence", 30.1, "Ranged" } }
local PetSkill_ShiningCrystal = { 	R = { 1, "ShiningCrystal", 20.1, "Ranged", SkipFirst = true } }
local PetSkill_ShiningCrystalPro = { 	R = { 1, "ShiningCrystalPro", 20.1, "Ranged", SkipFirst = true } }
local PetSkill_CharmingHeart = { 	R = { 4, "CharmingHeart", 25.1, "Ranged" } }
local PetSkill_CharmingBrokenHeart = { 	R = { 4, "CharmingBrokenHeart", 25.1, "Ranged" } }
local PetSkill_CharmingHeartHeal = { 	R = { 4, "CharmingHeartHeal", 25.1, "Ranged" } }
local PetSkill_CharmingSnowflake = { 	R = { 4, "CharmingSnowflake", 25.1, "Ranged" } }
local PetSkill_SpiritBeam = { 	R = { 5, "SpiritBeam", 20.1, "Ranged" } }
local PetSkill_SpiritBeamFire = { 	R = { 5, "SpiritBeamFire", 20.1, "Ranged", SkipFirst = true } }
local PetSkill_SpiritBeamAether = { 	R = { 5, "SpiritBeamAether", 20.1, "Ranged", SkipFirst = true } }
local PetSkill_SpiritBeamPoison = { 	R = { 5, "SpiritBeamPoison", 20.1, "Ranged", SkipFirst = true } }
local PetSkill_NaughtyOrNice = { 	R = { 1, "PlayerPosition", 25.1, "Self", SkipFirst = true } }
local PetSkill_TurkeyFoodDrop = { 	R = { 1, "PlayerPosition", 25.1, "Self", SkipFirst = true } }
local PetSkill_PenguinSlide = { 	R = { 8, "PenguinSlide", 30.1, "Ranged" } }
local PetSkill_PenguinSlide_Aether = { 	R = { 8, "PenguinSlide_Aether", 30.1, "Ranged" } }
local PetSkill_PenguinSlide_Frozen = { 	R = { 8, "PenguinSlide_Frozen", 30.1, "Ranged" } }
local PetSkill_PenguinSlide_Burn = { 	R = { 8, "PenguinSlide_Burn", 30.1, "Ranged" } }
local PetSkill_PenguinSlide_Poison = { 	R = { 8, "PenguinSlide_Poison", 30.1, "Ranged" } }
local PetSkill_GMMoAttack = { 	R = { 1, "PlayerPosition", 25.1, "Self", SkipFirst = true } }
local PetSkill_GMRodAttack = { 	R = { 1, "PlayerPosition", 25.1, "Self", SkipFirst = true } }
local PetSkill_GMKnoxAttack = { 	R = { 1, "KnoxAttack", 25.1, "Ranged", SkipFirst = true } }
local PetSkill_FireballDH = { 	R = { 8, "PetFireballDH", 15.1, "Ranged" }, 	EA = { 1, 		{ "PetFireball", "PetFireballBlast" }, 15.1, "Ranged", SkipFirst = true } }
local PetSkill_GargoyleSkill = { 	R = { 5, "GargoyleSkill", 30.1, "Ranged" } }
local PetSkill_MoltenGolemAttack = { 	R = { 4, "MoltenGolemAttack", 25.1, "Ranged" } }
local PetSkill_EvilClownSkill = { 	R = { 1, "PlayerPosition", 30.1, "MobPosition", SkipFirst = true } }
local PetSkill_TrippleFireball = { 	R = { 3, 		{ "PetFireball", "PetFireballBlast" }, 15.1, "Ranged", SkipFirst = true } }
local PetSkill_IceShards = { 	R = { 5, "PetIceShards", 15.1, "Ranged" } }
local PetSkill_ToxicThorns = { 	R = { 4, "PetToxicThorns", 20, "Ranged" } }
local PetSkill_IgnisDragonPetAttack = { 	R = { 8, "IgnisDragonPetAttack", 15.1, "Ranged" } }
local PetSkill_PinataParty = { 	R = { 10, "PetPinataParty", 20.1, "Ranged" } }
PetSkills = { Bite = PetSkill_Bite, Scratch = PetSkill_Scratch, Fireball = PetSkill_Fireball, FireballGreen = PetSkill_FireballGreen, Iceball = PetSkill_Iceball, PoisonSplash = PetSkill_PoisonSplash, HealPulse = PetSkill_HealPulse, IcySpikes = PetSkill_IcySpikes, BlackFlame = PetSkill_BlackFlame, LightningStrike = PetSkill_LightningStrike, DireBlast = PetSkill_DireBlast, DragonBlast = PetSkill_DragonBlast, FrontalFire = PetSkill_FrontalFire, MiseryFire = PetSkill_MiseryFire, Unknown = PetSkill_Unknown, CerberusFire = PetSkill_CerberusFire, Wildfire = PetSkill_Wildfire, SkeletalSlash = PetSkill_SkeletalSlash, DeathSlash = PetSkill_DeathSlash, HoodedSlash = PetSkill_HoodedSlash, HoodedSlashPoison = PetSkill_HoodedSlashPoison, PoisonBreath = PetSkill_PoisonBreath, TetheredHeal = PetSkill_TetheredHeal, Barrier = PetSkill_Barrier, CrystalBarrier = PetSkill_CrystalBarrier, BlackHole = PetSkill_BlackHole, BlackHolePumpkin = PetSkill_BlackHolePumpkin, BlackHoleBlazing = PetSkill_BlackHoleBlazing, BlackHoleCabbage = PetSkill_BlackHoleCabbage, MeteorStrike = PetSkill_MeteorStrike, AlienStrike = PetSkill_AlienStrike, UltRing = PetSkill_UltRing, UltRingGalactic = PetSkill_UltRingGalactic, EquinoxMist = PetSkill_EquinoxMist, RollingJimothy = PetSkill_RollingJimothy, BlackSheepAttack = PetSkill_BlackSheepAttack, PinkSheepAttack = PetSkill_PinkSheepAttack, PurpleDragonAttack = PetSkill_PurpleDragonAttack, CyberBeamAttack = PetSkill_CyberBeamAttack, RedDragonAttack = PetSkill_RedDragonAttack, HellhoundAttack = PetSkill_HellhoundAttack, PumpkinAttack = PetSkill_PumpkinAttack, CupidPetShockwave = PetSkill_CupidPetShockwave, SkeledileAttack = PetSkill_SkeledileAttack, Whirlpool = PetSkill_Whirlpool, WhirlpoolIce = PetSkill_WhirlpoolIce, HealReach = PetSkill_HealReach, HealReachPro = PetSkill_HealReachPro, RockAttack = PetSkill_RockAttack, BeeAttack = PetSkill_BeeAttack, BeeAttackPro = PetSkill_BeeAttackPro, CatAttack = PetSkill_CatAttack, CatAttackPro = PetSkill_CatAttackPro, GoldenRoad = PetSkill_GoldenRoad, GlyphAttack = PetSkill_GlyphAttack, GlyphAttackPro = PetSkill_GlyphAttackPro, FlameProtection = PetSkill_FlameProtection, FlameProtectionPurple = PetSkill_FlameProtectionPurple, AvatarFlameProtection = PetSkill_AvatarFlameProtection, PurpleSheepAttack = PetSkill_PurpleSheepAttack, MegaBite = PetSkill_MegaBite, MegaBitePro = PetSkill_MegaBitePro, ChocolateSplash = PetSkill_ChocolateSplash, SlimeSplash = PetSkill_SlimeSplash, SlimeSplashFire = PetSkill_SlimeSplashFire, SlimeSplashPoison = PetSkill_SlimeSplashPoison, SlimeSplashIce = PetSkill_SlimeSplashIce, Cure = PetSkill_Cure, CurePro = PetSkill_CurePro, Snowstorm = PetSkill_Snowstorm, CarrotStorm = PetSkill_CarrotStorm, ShadowEssence = PetSkill_ShadowEssence, ShiningCrystal = PetSkill_ShiningCrystal, ShiningCrystalPro = PetSkill_ShiningCrystalPro, CharmingHeart = PetSkill_CharmingHeart, CharmingBrokenHeart = PetSkill_CharmingBrokenHeart, CharmingHeartHeal = PetSkill_CharmingHeartHeal, CharmingSnowflake = PetSkill_CharmingSnowflake, SpiritBeam = PetSkill_SpiritBeam, SpiritBeamFire = PetSkill_SpiritBeamFire, SpiritBeamAether = PetSkill_SpiritBeamAether, SpiritBeamPoison = PetSkill_SpiritBeamPoison, NaughtyOrNice = PetSkill_NaughtyOrNice, TurkeyFoodDrop = PetSkill_TurkeyFoodDrop, PenguinSlide = PetSkill_PenguinSlide, PenguinSlide_Aether = PetSkill_PenguinSlide_Aether, PenguinSlide_Frozen = PetSkill_PenguinSlide_Frozen, PenguinSlide_Burn = PetSkill_PenguinSlide_Burn, PenguinSlide_Poison = PetSkill_PenguinSlide_Poison, GMMoAttack = PetSkill_GMMoAttack, GMRodAttack = PetSkill_GMRodAttack, GMKnoxAttack = PetSkill_GMKnoxAttack, FireballDH = PetSkill_FireballDH, GargoyleSkill = PetSkill_GargoyleSkill, MoltenGolemAttack = PetSkill_MoltenGolemAttack, EvilClownSkill = PetSkill_EvilClownSkill, TrippleFireball = PetSkill_TrippleFireball, IceShards = PetSkill_IceShards, ToxicThorns = PetSkill_ToxicThorns, IgnisDragonPetAttack = PetSkill_IgnisDragonPetAttack, PinataParty = PetSkill_PinataParty }
return PetSkills

]=]

    do
        local embeddedLibOk, embeddedLib = pcall(_JWRun, _JWLibSrc, "JewHub:Obsidian")

        if embeddedLibOk and type(embeddedLib) == "table" and type(embeddedLib.CreateWindow) == "function" then
            Library = embeddedLib
            print("JEW: embedded library loaded")
        else
            warn("JEW: embedded library failed (" .. tostring(embeddedLib) .. ") - falling back to remote")

            if Settings.BadExecutor then
                Library = LoadCachedFile("https://raw.githubusercontent.com/fnkq/jewhub32skidy/refs/heads/main/old_obsidian_library", "GlobalFlag1")
            else
                Library = LoadCachedFile("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua", "GlobalFlag1")
            end
        end

        local embeddedThemeOk, embeddedTheme = pcall(_JWRun, _JWThemeSrc, "JewHub:ThemeManager")

        if embeddedThemeOk and type(embeddedTheme) == "table" then
            ThemeManager = embeddedTheme
            print("JEW: embedded theme manager loaded")
        else
            warn("JEW: embedded theme manager failed (" .. tostring(embeddedTheme) .. ") - falling back to remote")
            ThemeManager = LoadCachedFile("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua", "GlobalFlag2")
        end

        local embeddedSaveOk, embeddedSave = pcall(_JWRun, _JWSaveSrc, "JewHub:SaveManager")

        if embeddedSaveOk and type(embeddedSave) == "table" then
            SaveManager = embeddedSave
            print("JEW: embedded save manager loaded")
        else
            warn("JEW: embedded save manager failed (" .. tostring(embeddedSave) .. ") - falling back to remote")
            SaveManager = LoadCachedFile("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua", "GlobalFlag3")
        end
    end

    task.wait()
    task.wait()
    _G.ScriptStep = "obsidian loading gui"
    ThemeManager:SetLibrary(Library)
    SaveManager:SetLibrary(Library)

    local function apply_accent_color(color)
        local accentColor = color or Color3.fromRGB(255, 255, 255)
        local ok, scheme = pcall(function()
            return Library.Scheme
        end)

        if ok and type(scheme) == "table" then
            scheme.AccentColor = accentColor
            scheme.MainColor = scheme.MainColor or Color3.fromRGB(22, 22, 26)
            scheme.BackgroundColor = scheme.BackgroundColor or Color3.fromRGB(12, 12, 16)
            scheme.OutlineColor = scheme.OutlineColor or Color3.fromRGB(48, 46, 38)
            scheme.FontColor = scheme.FontColor or Color3.fromRGB(246, 246, 252)

            pcall(function()
                if Library and Library.UpdateColorsUsingRegistry then Library:UpdateColorsUsingRegistry() end
            end)
        end
    end

    local function apply_default_accent()
        apply_accent_color(Color3.fromRGB(255, 255, 255))
    end

    apply_default_accent()

    Loading = Library:CreateLoading({
		Title = "JewHub",
		Icon = "rbxassetid://81638085579862",
		TotalSteps = 5,
		ShowSidebar = true,
		LoadingIconTweenTime = 4
	})
    Loading:SetDescription("Loading script...")
    task.spawn(function()
        local TweenServiceLocal = game:GetService("TweenService")
        local LoadingScreen = Loading and Loading.ScreenGui

        if not LoadingScreen then return end

        local MainFrame = LoadingScreen:FindFirstChild("Main")

        if MainFrame then
            MainFrame.BackgroundTransparency = 0.16
            MainFrame.Position = MainFrame.Position + UDim2.fromOffset(0, 12)

            task.delay(0.04, function()
                TweenServiceLocal:Create(MainFrame, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0 }):Play()
                TweenServiceLocal:Create(MainFrame, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = MainFrame.Position - UDim2.fromOffset(0, 12) }):Play()
            end)
        end

        local Content = MainFrame and MainFrame:FindFirstChild("Content")
        local InnerContent = Content and Content:FindFirstChild("InnerContent")
        local ProgressBar = InnerContent and InnerContent:FindFirstChild("SliderBar")

        if ProgressBar then
            ProgressBar.Size = UDim2.new(0.7, 0, 0, 8)
            ProgressBar.BackgroundColor3 = Color3.fromRGB(17, 17, 21)

            local ProgressFill = ProgressBar:FindFirstChild("SliderFill")

            if ProgressFill then ProgressFill.BackgroundColor3 = Color3.fromRGB(255, 255, 255) end

            local ProgressLabel = ProgressBar:FindFirstChildOfClass("TextLabel")

            if ProgressLabel then ProgressLabel.Visible = false end
        end
    end)
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
    local MissionStartConfig = { "MissionStart", DescendantCheck = true }
    local MissionScriptList = { MissionStartConfig }
    task.wait()
    local CosmeticItemNames = { "ChakraWings", "EclipseHalo", "SlayerUniformM", "SlayerUniformF", "AcademyBackpack", "GemstoneHeadband", "PsychicGlasses", "FlameEars" }
    task.wait()
    local HexColorList = { "ffffff", "000000", "e6e6e6", "1e1e1e", "d4af37", "11ccee", "ffaabb", "ddeadd", "dec0de", "b00000", "bbaadd", "c0aa11", "00bdae", "55eeaa", "ffaded", "beeeee", "ffaaee", "ac11dd", "acce55", "ff0011", "decade", "deeeed", "deeee1" }
    task.wait()
    local EggNameList = { "StarEgg", "JungleEgg", "CrystalEgg", "ChristmasEgg", "DesertEgg", "MoltenEgg", "OceanEgg", "SkyEgg", "CatEgg", "CatEggHalloween", "AlligatorEgg", "FairyEgg", "AetherEgg", "CabbageEgg", "SkeletonEgg", "CupidEgg", "SlimeEgg", "TeddyEgg", "SantaEgg", "ArcaneEgg", "GhostEgg", "PenguinEgg", "RobloxEventEggHatchable", "GoldenEgg", "MiseryEgg", "BunnyEgg", "RheaEgg" }
    task.wait()
    local SpecialEggMap = { MoltenEgg = true, OceanEgg = true, SkyEgg = true, AlligatorEgg = true, FairyEgg = true, ArcaneEgg = true }
    task.wait()
    local NightmarePortalConfig = { Level = 150, DungeonName = "Nightmare Portal", DungeonDelay = 60, DungeonID = 1005 }
    local AstralAcademyConfig = { Level = 135, DungeonName = "Astral Academy", DungeonDelay = 135, DungeonID = 42 }
    local CrystalChaosConfig = { Level = 130, DungeonName = "Crystal Chaos", DungeonDelay = 115, DungeonID = 41 }
    local AetherFortressConfig = { Level = 120, DungeonName = "Aether Fortress", DungeonDelay = 45, DungeonID = 33 }
    local TreetopTroubleConfig = { Level = 115, DungeonName = "Treetop Trouble", DungeonDelay = 90, DungeonID = 32 }
    local RuinRushConfig = { Level = 105, DungeonName = "Ruin Rush", DungeonDelay = 65, DungeonID = 31 }
    local RescueInTheRuinsConfig = { Level = 100, DungeonName = "Rescue in the Ruins", DungeonDelay = 78, DungeonID = 30 }
    local TheLabyrinthConfig = { Level = 95, DungeonName = "The Labyrinth", DungeonDelay = 20, DungeonID = 37 }
    local TheUnderworldConfig = { Level = 90, DungeonName = "The Underworld", DungeonDelay = 85, DungeonID = 26 }
    local TreasureHuntConfig = { Level = 80, DungeonName = "Treasure Hunt", DungeonDelay = 36, DungeonID = 36 }
    local RoughWatersConfig = { Level = 75, DungeonName = "Rough Waters", DungeonDelay = 55, DungeonID = 25 }
    local KonohInfernoConfig = { Level = 65, DungeonName = "Konoh Inferno", DungeonDelay = 40, DungeonID = 35 }
    local KonohHeartlandsConfig = { Level = 60, DungeonName = "Konoh Heartlands", DungeonDelay = 45, DungeonID = 24 }
    local PyramidDungeonConfig = { Level = 55, DungeonName = "Pyramid Dungeon", DungeonDelay = 40, DungeonID = 18 }
    local DesertedBurrowmineConfig = { Level = 50, DungeonName = "Deserted Burrowmine", DungeonDelay = 40, DungeonID = 19 }
    local ScrapCanyonConfig = { Level = 45, DungeonName = "Scrap Canyon", DungeonDelay = 50, DungeonID = 20 }
    local WinterDungeonConfig = { Level = 40, DungeonName = "Winter Dungeon", DungeonDelay = 60, DungeonID = 16 }
    local WinterCavernConfig = { Level = 35, DungeonName = "Winter Cavern", DungeonDelay = 20, DungeonID = 15 }
    local MountainPassConfig = { Level = 30, DungeonName = "Mountain Pass", DungeonDelay = 35, DungeonID = 14 }
    local VolcanoDungeonConfig = { Level = 26, DungeonName = "Volcano Dungeon", DungeonDelay = 40, DungeonID = 7 }
    local VolcanoShadowConfig = { Level = 22, DungeonName = "Volcano's Shadow", DungeonDelay = 59, DungeonID = 13 }
    local MamaTraumaConfig = { Level = 18, DungeonName = "Mama Trauma", DungeonDelay = 35, DungeonID = 12 }
    local TempleOfRuinConfig = { Level = 15, DungeonName = "Temble of Ruin", DungeonDelay = 33, DungeonID = 11 }
    local GravetowerDungeonConfig = { Level = 12, DungeonName = "Gravetower Dungeon", DungeonDelay = 45, DungeonID = 6 }
    local KingslayerConfig = { Level = 10, DungeonName = "Kingslayer", DungeonDelay = 32, DungeonID = 4 }
    local DireProblemConfig = { Level = 7, DungeonName = "Dire Problem", DungeonDelay = 15, DungeonID = 2 }
    local ScarecrowDefenseConfig = { Level = 4, DungeonName = "Scarecrow Defense", DungeonDelay = 20, DungeonID = 3 }
    local CrabbyCrusadeConfig = { Level = 1, DungeonName = "Crabby Crusade", DungeonDelay = 20, DungeonID = 1 }
    local CelestialTowerConfig = { Level = 0, DungeonName = "Celestial Tower", DungeonDelay = 580, DungeonID = 39 }
    local ArcaneTowerConfig = { Level = 0, DungeonName = "Arcane Tower", DungeonDelay = 320, DungeonID = 43 }
    local AetherTowerConfig = { Level = 0, DungeonName = "Aether Tower", DungeonDelay = 270, DungeonID = 34 }
    local OasisTowerConfig = { Level = 0, DungeonName = "Oasis Tower", DungeonDelay = 280, DungeonID = 29 }
    local MezuvianTowerConfig = { Level = 0, DungeonName = "Mezuvian Tower", DungeonDelay = 270, DungeonID = 27 }
    local AtlantisTowerConfig = { Level = 0, DungeonName = "Atlantis Tower", DungeonDelay = 279, DungeonID = 23 }
    local PrisonTowerConfig = { Level = 0, DungeonName = "Prison Tower", DungeonDelay = 240, DungeonID = 21 }
    local InfiniteTowerConfig = { Level = 0, DungeonName = "Infinite Tower", DungeonDelay = 0, DungeonID = 38 }
    local DungeonConfigList = { NightmarePortalConfig, AstralAcademyConfig, CrystalChaosConfig, AetherFortressConfig, TreetopTroubleConfig, RuinRushConfig, RescueInTheRuinsConfig, TheLabyrinthConfig, TheUnderworldConfig, TreasureHuntConfig, RoughWatersConfig, KonohInfernoConfig, KonohHeartlandsConfig, PyramidDungeonConfig, DesertedBurrowmineConfig, ScrapCanyonConfig, WinterDungeonConfig, WinterCavernConfig, MountainPassConfig, VolcanoDungeonConfig, VolcanoShadowConfig, MamaTraumaConfig, TempleOfRuinConfig, GravetowerDungeonConfig, KingslayerConfig, DireProblemConfig, ScarecrowDefenseConfig, CrabbyCrusadeConfig, CelestialTowerConfig, ArcaneTowerConfig, AetherTowerConfig, OasisTowerConfig, MezuvianTowerConfig, AtlantisTowerConfig, PrisonTowerConfig, InfiniteTowerConfig }
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

        if totalSeconds < 60 then return tostring((math.floor(totalSeconds))) .. "s" end

        if totalSeconds < 3600 then return string.format("%d:%02d", minutes, seconds) end

        if totalSeconds < 86400 then return string.format("%d:%02d:%02d", hours, minutes, seconds) end

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
                if IsMissionCleared() then print("Mission is finished") end
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
                            if Settings.PartyRaidID == 1 then MissionScriptRef.BOSSDireBoarwolf = true; MissionScriptRef.BOSSTreeEnt = true end

                            if Settings.PartyRaidID == 20 then MissionScriptRef.BOSSAnubis = true; MissionScriptRef.BOSSHogRider = true end

                            if Settings.PartyRaidID == 22 then MissionScriptRef.BOSSFallenKing = true end

                            if Settings.PartyRaidID == 24 then MissionScriptRef.CorruptedGreaterTree = true end

                            if Settings.PartyRaidID == 25 then
                                MissionScriptRef.BOSSKrakenMain = true
                                MissionScriptRef.DavyJones = true
                                MissionScriptRef.Nautilus = true
                                MissionScriptRef.PirateCrab = true
                            end

                            if Settings.PartyRaidID == 26 then MissionScriptRef.HadesCerberus = true MissionScriptRef.SentryOfCerberus = true MissionScriptRef.MinotaurDungeonBoss = true end

                            if Settings.PartyRaidID == 28 then MissionScriptRef.BOSSEvilSanta = true end

                            if Settings.PartyRaidID == 32 then MissionScriptRef.RustyCommander = true; MissionScriptRef.AetherKing = true end

                            if Settings.PartyRaidID == 41 then MissionScriptRef.MiniBossCrystalWeaver = true MissionScriptRef.DungeonBOSSCrystalWolf = true MissionScriptRef.BOSSKandrix = true end

                            if Settings.PartyRaidID == 44 then MissionScriptRef.EVENTBOSSVane = true; MissionScriptRef.BOSSDarkriseDarkDragon = true end

                            if Settings.PartyRaidID == 45 then MissionScriptRef.EVENTBOSSKraken = true; MissionScriptRef.EVENTBOSSDavyJones = true end

                            if Settings.PartyRaidID == 46 then MissionScriptRef.EVENTBOSSCupid = true end
                        end
                    end
                end
            end)

            if not ok then HandleError("BOSS MOBS", (tostring(result))) end
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

        if not ok then HandleError("PLAYER PING", (tostring(result))) end
    end
    task.wait()
    _G.ScriptStep = "mob scanner"
    local ScanForMobs = function()
        if (InLobby or InDungeon) and (Settings.CanRequire and (HookFunction and NewCClosure)) then
            local PlayerRemover = require(Mobs:WaitForChild("PlayerRemover", 1e999))

            HookFunction(PlayerRemover.AddMobToSearch, NewCClosure(function()
            end))

            for _, child in pairs(MobsFolder:GetChildren()) do PlayerRemover:RemoveMobFromSearch(child) end
        end

        if InDungeon then
            local success, result = pcall(function()
                local FakeSpawnMobs = { DireBridgeSpawn = true, DireBoulderSpawn = true, DireCaveSpawn = true, FakeKingSpawn = true, BridgeMama = true, CerberusSpawn1 = true, CerberusSpawn2 = true, FakeBoss = true, FakeBossSpawn = true }
                local PriorityMobs = { EVENTBOSSEasterBunny = true, EVENTBOSSEasterBunnyEnraged = true, BabyWinterfall = true, BabyIgnis = true }
                local UnitScale = Vector3.new(1, 1, 1)
                local GolemScale = Vector3.new(52, 30, 52)
                local GuardScale = Vector3.new(52, 30, 52)
                local CrystalScale = Vector3.new(25, 20, 25)
                local ResizedColliderMobs = { CorruptedGreaterTree = UnitScale, BOSSCrystalGolem = GolemScale, EVENTBOSSZeroGuardian = GuardScale, Crystal = CrystalScale }
                local PreventStuckMobs = { BOSSTreeEnt = true, HadesCerberus = true, EVENTBOSSEasterBunny = true }
                local BadBosses = { BOSSKrakenMain = true, AlienMothership = true, AlienUFO = true }
                local SummonMobs = { SummonerSummonWeak = true, SummonerSUmmonStrong = true, NecromancerSummon = true, EvilClown = true }
                local BlockerNames = { Pillar1 = true, Pillar2 = true, Pillar3 = true, IceBarricade = true, Blocker1 = true, Blocker2 = true, Blocker3 = true, Model = true, Crystal = true, EasterGiantEgg = true }
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

                                if HumanoidRootPart2 then HumanoidRootPart2.Anchored = true HumanoidRootPart2.CanCollide = false HumanoidRootPart2.Transparency = 1 end
                            end
                        end)

                        if not mobName then mobName = mobHealthInstance.Name end

                        if BlockerNames[mobName] then
                            local Part = mobHealthInstance:FindFirstChild("Part")

                            if not Part then
                                Part = mobHealthInstance:FindFirstChild("Base")

                                if not Part then Part = mobHealthInstance:FindFirstChild("hitbox") or (mobHealthInstance:FindFirstChild("EasterGiantEgg") or mobHealthInstance:FindFirstChild("Collider")) end
                            end

                            if not Part then
                                if MobDebug then warn("JEW:", mobName, "(blocker has no target part)") end

                                return
                            end

                            Part.Name = "Collider"
                            Tracking.MobTable[mobHealthInstance] = { IsBlocker = true }

                            if MobDebug then print("JEW:", mobName, "(added, blocker)") end

                            return
                        end

                        if mobHealthInstance.Parent then
                            local MobData
                            local loadDeadline = time() + 5
                            repeat
                                if loadDeadline < time() then
                                    if Tracking.MobDebug then warn("JEW:", mobName, "(exceeded load time)") end

                                    break
                                end

                                MobData = lib:GetMobData(mobHealthInstance)
                                task.wait()
                            until MobData
                            if MobData and MobData.IsHunterPet or MobData.CanAttackMobs then
                                if MobDebug then warn("JEW:", mobName, "(familiar or summon)") end

                                return
                            end
                            local newSize = ResizedColliderMobs[mobName]
                            if newSize then
                                if MobData then
                                    MobData.Collider.Size = newSize
                                else
                                    local Collider2 = mobHealthInstance:WaitForChild("Collider", 5)

                                    if Collider2 then Collider2.Size = newSize end
                                end
                            end
                            if PreventStuckMobs[mobName] then
                                if MobDebug then print("JEW:", mobName, "(prevent stuck)") end

                                task.wait(1)
                            end
                            if PriorityMobs[mobName] then
                                Tracking.MobTable[mobHealthInstance] = { Priority = true }

                                if MobDebug then print("JEW:", mobName, "(added, priority)") end

                                return
                            end
                            if MobData then
                                Tracking.MobTable[mobHealthInstance] = {}

                                if MobDebug then
                                    print("JEW:", mobName, "(added)")

                                    return
                                end
                            else
                                Tracking.MobTable[mobHealthInstance] = { NoData = true }

                                if MobDebug then print("JEW:", mobName, "(added, no mob data)") end
                            end

                            return
                        end

                        if MobDebug then warn("JEW:", mobName, "(didn't add, no parent)") end
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

                            if Tracking.MobDebug then warn("JEW:", mobInstance, "(died)") end
                        end
                    end)
                    for _, mobHealthInstance in pairs(MobsFolder:GetChildren()) do AddMobToTracking(mobHealthInstance) end
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

                                if not PlayerHealthInstance then continue end

                                if not PlayerHealthInstance.Parent then
                                    if Tracking.MobDebug then warn("JEW:", PlayerHealthInstance.Name, "(no parent)") end

                                    MobTable[PlayerHealthInstance] = nil

                                    continue
                                end

                                local HealthProperties = PlayerHealthInstance:FindFirstChild("HealthProperties")

                                if HealthProperties then HealthProperties = HealthProperties:FindFirstChild("Health") end

                                if HealthProperties then HealthProperties = HealthProperties.Value == 0 end

                                if HealthProperties then
                                    if Tracking.MobDebug then warn("JEW:", PlayerHealthInstance.Name, "(zero health)") end

                                    MobTable[PlayerHealthInstance] = nil

                                    continue
                                end

                                if mobEntry.IsBlocker then
                                    closestBlocker = PlayerHealthInstance

                                    break
                                end

                                local MobData = lib:GetMobData(PlayerHealthInstance)

                                if mobEntry.NoData and MobData then mobEntry.NoData = nil end

                                if not MobData then
                                    local Collider3 = PlayerHealthInstance:FindFirstChild("Collider")

                                    if not Collider3 then continue end

                                    MobData = { Collider = Collider3 }
                                end

                                if not MobData.Invincible then
                                    local Magnitude = (MobData.Collider.Position - HumanoidRootPart.Position).Magnitude

                                    if not MobData.BossTag then
                                        if Magnitude < closestMobDistance then closestBlocker = PlayerHealthInstance; closestMobDistance = Magnitude end
                                    elseif mobEntry.NoData then
                                        bossNoData = PlayerHealthInstance
                                    elseif Magnitude < closestBossDistance then closestBoss = PlayerHealthInstance; closestBossDistance = Magnitude end
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
                        if child:WaitForChild("RaidID").Value == 30 then FakeSpawnMobs.Part = true end
                    end
                    local function AddMobToTrackingFallback(mobHealthInstance, mobName)
                        local MobDebug = Tracking.MobDebug

                        if not mobName then mobName = mobHealthInstance.Name end

                        if BlockerNames[mobName] then
                            local Part = mobHealthInstance:FindFirstChild("Part")

                            if not Part then Part = mobHealthInstance:FindFirstChild("Base") or (mobHealthInstance:FindFirstChild("hitbox") or mobHealthInstance:FindFirstChild("EasterGiantEgg")) end

                            if not Part then return end

                            Part.Name = "Collider"
                            Tracking.MobTable[mobHealthInstance] = { IsBlocker = true }

                            if MobDebug then print("JEW:", mobName, "(added, blocker)") end

                            return
                        end

                        if mobHealthInstance.Parent then
                            if SummonMobs[mobName] then
                                if MobDebug then warn("JEW:", mobName, "(summon)") end

                                return
                            end

                            if BadBosses[mobName] then
                                if MobDebug then warn("JEW:", mobName, "(bad boss)") end

                                return
                            end

                            local FromSpawnPart = mobHealthInstance:WaitForChild("FromSpawnPart", 2)

                            if FromSpawnPart and (FromSpawnPart.Value and FakeSpawnMobs[tostring(FromSpawnPart.Value)]) then
                                if MobDebug then warn("JEW:", mobName, "(fake mob)") end

                                return
                            end

                            local MobProperties = mobHealthInstance:WaitForChild("MobProperties", 2)
                            local ownerValue = MobProperties and MobProperties:WaitForChild("Owner", 2)

                            if ownerValue and ownerValue.Value then
                                if MobDebug then warn("JEW:", mobName, "(familiar)") end

                                return
                            end

                            local newSize2 = ResizedColliderMobs[mobName]

                            if newSize2 then
                                local Collider4 = mobHealthInstance:WaitForChild("Collider", 2)

                                if Collider4 then Collider4.Size = newSize2 end
                            end

                            if PreventStuckMobs[mobName] then task.wait(1) end

                            if PriorityMobs[mobName] then
                                Tracking.MobTable[mobHealthInstance] = { Priority = true }

                                if MobDebug then print("JEW:", mobName, "(priority)") end

                                return
                            end

                            Tracking.MobTable[mobHealthInstance] = {}

                            if MobDebug then print("JEW:", mobName, "(added)") end
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

                            if Tracking.MobDebug then warn("JEW:", mobInstance, "(died)") end
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

                                    if HealthProperties then HealthProperties = HealthProperties:FindFirstChild("Health") end

                                    if HealthProperties then HealthProperties = HealthProperties.Value == 0 end

                                    if HealthProperties then
                                        MobTable[mobHealthInstance] = nil

                                        if Tracking.MobDebug then warn("JEW:", mobHealthInstance.Name, "(zero health)") end

                                        continue
                                    end

                                    if mobEntry.Invincible then continue end

                                    local Collider5 = mobHealthInstance:FindFirstChild("Collider")

                                    if not Collider5 then continue end

                                    if mobEntry.Priority then
                                        closestNormal = mobHealthInstance

                                        break
                                    end

                                    local Magnitude = (Collider.Position - Collider5.Position).Magnitude

                                    if MissionScriptRef[mobHealthInstance.Name] then
                                        if Magnitude < closestBossDistance then closestBoss = mobHealthInstance; closestBossDistance = Magnitude end
                                    elseif Magnitude < closestNormalDistance then closestNormal = mobHealthInstance; closestNormalDistance = Magnitude end

                                    continue
                                end

                                MobTable[mobHealthInstance] = nil

                                if Tracking.MobDebug then warn("JEW:", mobHealthInstance.Name, "(no parent)") end
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
            if not success then HandleError("MOB SCANNER", (tostring(result))) end
        end
    end
    _G.ScriptStep = "destroy mission scripts"
    local DestroyMissionScripts = function()
        if InDungeon then
            local HazardScripts = { FireDart = true, HammerHit = true, CreateBolder = true, ToxinTrigger = true, RollingBoulder = true }
            local ModuleScript = ReplicatedStorage:WaitForChild("MissionScripts", math.huge):FindFirstChildWhichIsA("ModuleScript")

            if ModuleScript then
                local GetChildren = ModuleScript.GetChildren

                for _, v in pairs(GetChildren(ModuleScript)) do
                    if v and v.Parent and HazardScripts[v.Name] then v:Destroy() end
                end
            end
        end
    end
    _G.ScriptStep = "ping once unlocked"
    local PingMasteryTracker = function(unlockName)
        local _, _ = pcall(function()
            local str = tostring(PlayerName)
            local masteryPayload = { username = "Mastery tracker", content = unlockName .. " unlocked on account: " .. str .. "\n-# " .. WebhookMention }
            local DiscordWebhookLink = Settings.DiscordWebhookLink

            if not DiscordWebhookLink and true then
                warn("No webhook link provided")

                return
            end

            local hookCheckEnabled = false
            local _, _ = pcall(function()

                if not HttpRequest then
                    return
                end

                local httpRequestRef = HttpRequest
                local webhookUrl = DiscordWebhookLink
                local webhookHeaders = { ["Content-Type"] = "application/json" }
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
        if InDungeon then Tracking.LoggedDifficulty = GetDifficulty() end
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
            if dungeonId == 49 then dungeonId = 1 end

            while _G.Is_Script_Running do Remotes:WaitForChild("Teleport_StartRaid", math.huge):FireServer(dungeonId, difficulty); task.wait(10) end
        end)

        if not ok then HandleError("REPLAY DUNGEON", (tostring(result))) end
    end
    _G.ScriptStep = "rejoin last dungeon"
    local RejoinLastDungeon = function(dungeonId)
        local DungeonId = dungeonId
        local ok, result = pcall(function()
            local rejoinFilePath = "JEW/" .. PlayerName .. "_Rejoin"

            if isfile(rejoinFilePath) then
                if Loading then DamageIncrease += 1 Loading:SetCurrentStep(5) Loading.Sidebar:AddLabel("<font color='#FF3333'>LOADING EXCEPTION FOUND.\nFORCING DUNGEON RESTART.</font>") end
                local CombatState
                pcall(function()
                    CombatState = HttpService:JSONDecode(readfile(rejoinFilePath))
                end)
                if CombatState and CombatState ~= "" then
                    local Dungeon = CombatState.Dungeon
                    local RejoinDifficulty = CombatState.RejoinDifficulty
                    local DisconnectedTime = CombatState.DisconnectedTime

                    delfile(rejoinFilePath)

                    if DisconnectedTime + 300 > os.time() then MissionDone = true; ReplayDungeon(Dungeon, RejoinDifficulty) end
                else
                    delfile(rejoinFilePath)

                    if IsEventDungeon then
                        ReplayDungeon(Tracking.CurrentDungeonID, 1)
                    elseif InDungeon then
                        ReplayDungeon(Tracking.CurrentDungeonID, 5)
                    elseif InTower then ReplayDungeon(Tracking.CurrentDungeonID, false) end
                end
            end

            if DungeonId then
                if Loading then DamageIncrease += 1 Loading:SetCurrentStep(5) Loading.Sidebar:AddLabel("<font color='#FF3333'>LOADING EXCEPTION FOUND.\nFORCING DUNGEON RESTART.</font>") end

                local LoggedDifficulty = Tracking.LoggedDifficulty

                if InTower then LoggedDifficulty = nil end

                local MissionId = Tracking.MissionId
                local timestamp = os.time()

                DungeonData = { Dungeon = MissionId, RejoinDifficulty = LoggedDifficulty, DisconnectedTime = timestamp }
                writefile(rejoinFilePath, HttpService:JSONEncode(DungeonData))
                TeleportService:Teleport(tonumber("4310463616"), LocalPlayer)
            end
        end)
        if not ok then HandleError("REJOIN LAST DUNGEON", (tostring(result))) end
    end
    _G.ScriptStep = "restart dungeon"
    local RestartDungeon = function(forceRestart)
        if not Settings.ReplayMission and (not Settings.DoingGuildDungeon and not forceRestart) then return end

        if Settings.TowerChestDelay then task.wait(6) end

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

        if InTower then difficulty = nil end

        if Remotes:WaitForChild("Missions_GetCurrentLives", 1e999):InvokeServer() == 0 then ReplayDungeon(Tracking.MissionId, difficulty) end

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
                elseif DoAllDropdownValue == "Play nightmare dungeons" then ReplayDungeon(1005, 5) end
            end
        end

        local playNightmareDungeons = Settings.IsNightmareDungeon

        if playNightmareDungeons then
            playNightmareDungeons = Settings.PrioNmDCount

            if playNightmareDungeons then playNightmareDungeons = Tracking.PlayerLevel == 150 end
        end

        if playNightmareDungeons then
            local dailyDungeons = Remotes:WaitForChild("Missions_GetCurrentDailyDungeon", math.huge):InvokeServer()

            for _, v in pairs(dailyDungeons) do
                local InternalID = v.InternalID

                for k, _ in pairs(Options.PrioNmDropdown.Value) do
                    if InternalID == Settings.PrioritizedNightmareDungeons[k] then ReplayDungeon(v.ID, difficulty) end
                end
            end
        end

        if Settings.AutoLeveling and not IsEventDungeon then
            local children = Players:GetChildren()
            local lowestLevel = 1e999

            if #children > 1 then
                for _, v in pairs(children) do
                    local Level = v:GetAttribute("Level")

                    if Level and Level < lowestLevel then lowestLevel = Level end
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

        if Settings.RandomNightmareDungeon and Settings.IsNightmareDungeon then Tracking.MissionId = Settings.RandomNightmareDungeon end

        ReplayDungeon(Tracking.MissionId, difficulty)
    end
    task.wait()
    _G.ScriptStep = "wait for game crash"
    task.spawn(function()
        if InDungeon then CoreGui:WaitForChild("RobloxPromptGui", 1e999):WaitForChild("promptOverlay", 1e999):WaitForChild("ErrorPrompt", math.huge); RejoinLastDungeon(true) end
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
            if Settings.CanRequire then itemsLib = require(Items) end

            local ok, _ = pcall(function()
                ownsExtraChestPass = MarketplaceService:UserOwnsGamePassAsync(UserId, 8136250)
            end)

            if not ok then warn("unable to check if user owns extra chest gamepass") end

            local Missions_GetMissionPrize = Remotes:WaitForChild("Missions_GetMissionPrize", 1e999)

            for i = 1, 3 do
                if i == 3 and not ownsExtraChestPass then return end

                task.wait(Settings.CollectChestsDelay)

                local reward = Missions_GetMissionPrize:InvokeServer()

                if reward then
                    if itemsLib then reward = itemsLib[tostring(reward)].DisplayKey end

                    Library:Notify("Chest reward: " .. tostring(reward), 1)
                    table.insert(collectedRewards, reward)
                end

                task.wait(0.1)
            end
        end)
        if not success then HandleError("COLLECT DUNGEON CHESTS", (tostring(result))) end

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

                if Settings.ShowTime then Library:Notify({ Title = "Dungeon completed", Description = "Completed in " .. Settings.DungeonCompletionTime, Icon = "trophy", Time = 5 }) end

                if Settings.AutoLeveling then
                    local ok, result = pcall(function()
                        local Active = CharacterData:WaitForChild("Quests", 1e999):WaitForChild("Active", 1e999)

                        if Settings.ClaimGuildQuests then
                            local DailyGuildQuests = require(Quests):GetDailyGuildQuests()

                            for _, v in pairs(DailyGuildQuests) do
                                local ID = v.ID

                                if not Remotes:WaitForChild("Quests_GuildDailyIsClaimed", 1e999):InvokeServer(ID) and Active:FindFirstChild(ID) then
                                    for _ = 1, 2 do Remotes:WaitForChild("Quests_ClaimDailyGuildQuest", math.huge):FireServer(ID) end

                                    task.wait(1.5)
                                end
                            end
                        end

                        local Quests_ClaimQuest = Remotes:WaitForChild("Quests_ClaimQuest", 1e999)

                        if Quests_ClaimQuest then
                            local GetChildren = Active.GetChildren

                            for _, v in ipairs(GetChildren(Active)) do Quests_ClaimQuest:FireServer(tonumber(v.Name)) end
                        end
                    end)

                    if not ok then HandleError("CLAIM QUESTS", (tostring(result))) end
                end

                local chestRewards = { "none" }

                if Settings.CollectDungeonChest then chestRewards = CollectChests() end

                if Settings.LogDungeon then
                    local embedColor = 65280
                    local dungeonName = "unknown"
                    local children = Players:GetChildren()

                    if isFailed then embedColor = 16711680 end

                    if Settings.CanRequire then
                        dungeonName = require(Missions):GetCurrentMissionData().NameTag
                    else
                        DungeoName = dungeonName .. "(missing require())"
                    end

                    local partyInfo

                    if Toggles.ShowPlayersToggle.Value then
                        local playerNames = {}

                        for _, v in pairs(children) do table.insert(playerNames, v.Name) end

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

                            if Tracking.MissionId == 43 then assetId = 15046578670 end

                            local imageFilePath = "JEW/DungeonImages"
                            local imageUrl

                            if not isfile("JEW/DungeonImages") then
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

                                    for k, v in pairs(Images) do updatedImages[k] = { table.unpack(v) } end

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

                            if string.find(tostring(imageUrl), "token") then imageUrl = "" end

                            Tracking.DungeonImage = imageUrl
                        end)

                        if not ok then Tracking.DungeonImage = "" end
                    end

                    local description = "**Dungeon:** `" .. dungeonName .. "`\n" .. "**Time:** `" .. Settings.DungeonCompletionTime .. "`\n" .. "**Party size:** `" .. partyInfo .. "`\n" .. "**Chest drops:** `" .. table.concat(chestRewards, "`, `") .. "`"
                    local thumbnailObj = { url = Tracking.DungeonImage }
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
                                        if typeof(v) == "Instance" and v.ClassName == "LocalScript" then scriptCount += 1 end
                                    end
                                end)
                                if scriptCount > 2 or scriptCount == 0 then return end
                                if not ok then return end
                                local hooksDetected = false
                                local success = pcall(function()
                                    local requestHooked = ishooked and ishooked(request)

                                    if not requestHooked then requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request)) end

                                    if requestHooked then
                                        hooksDetected = true

                                        return
                                    end
                                end)
                                if not success then return end
                                local pcallOk, _ = pcall(function()
                                    local httpGetHooked = ishooked and ishooked(game.HttpGet)

                                    if not httpGetHooked then
                                        httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                        if not httpGetHooked then httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet) end
                                    end

                                    if httpGetHooked then
                                        hooksDetected = true

                                        return
                                    end
                                end)
                                if hooksDetected then return end
                                if not pcallOk then return end
                            end

                            if not HttpRequest then return end

                            local httpRequestRef = HttpRequest
                            local webhookUrl = DiscordWebhookLink
                            local webhookHeaders = { ["Content-Type"] = "application/json" }
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

                if ActiveSellCount == 0 then if BuySellLock ~= 0 then end end

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

        if UpgradeLimit and UpgradeLimit.Value == 20 then return 7 end

        if equipmentPart:FindFirstChild("Perk3") then return 5 end

        if equipmentPart:FindFirstChild("Perk2") then return 4 end

        if equipmentPart:FindFirstChild("Perk1") then return 3 end

        if Uograde then return 2 end

        return "NotEquipment"
    end
    task.wait()
    _G.ScriptStep = "equip new item added"
    local EquipNewItem = function()
        local ok, result = pcall(function()


local Items = (ResolveBackpack() or PlayerBackpack):WaitForChild("Items")
            local EquipmentSlots = { "Armor", "Primary", "Offhand" }
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
                        if child and (child.Parent and child.Parent.Name ~= "Items") then return end

                        local equipFolder = playerEquips[slot]
                        local Level = child:FindFirstChild("Level")
                        local Folder = equipFolder:FindFirstChildWhichIsA("Folder")

                        if Level and Folder then
                            OldItemLevel = Folder:FindFirstChild("Level")

                            if OldItemLevel and Level.Value >= OldItemLevel.Value then
                                if Level.Value == OldItemLevel.Value then
                                    local childRarity = GetRarity(child)
                                    local folderRarity = GetRarity(Folder)

                                    if typeof(childRarity) == "number" and (typeof(folderRarity) == "number" and folderRarity < childRarity) then Inventory_EquipItem:FireServer(child, equipFolder) end
                                else
                                    Inventory_EquipItem:FireServer(child, equipFolder)
                                end
                            end
                        end
                    end

                    task.wait(1)
                    BuySellLock -= 1
                end)

                if not ok then HandleError("SCAN ITEM TO EQUIP", tostring(result), child) end
            end)
        end)

        if not ok then HandleError("EQUIP NEW ITEM", (tostring(result))) end
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
    StatTotals = { CrystalsEarned = 0, DefeatedMonsters = 0, DistanceTraveled = 0, DungeonsCompleted = 0, EggsHatched = 0, GoldEarned = 0, TimePlayed = 0 }
    task.wait()
    _G.ScriptStep = "miscellaneous checks"
    pcall(function()
        if isfolder("JEW/JEW SCRIPT DEVELOPER KEY 1029") then
            LocalPlayer:Kick("did you really think there was a secret key? СЂСџВвЂљ")

            return
        end

        if InDungeon or InLobby then
            local DeveloperKeySet = { ouiPYM1v390ceedpctxE = true }
            local GUID = CharacterData:WaitForChild("GUID", math.huge)

            if GUID then GUID = DeveloperKeySet[tostring(GUID.Value)] end

            if GUID then Settings.IsScriptDeveloper = true end
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

                    for k, _ in pairs(chestStates) do Chests_OpenChest:FireServer(k) end

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
                            while chestPart.Parent do chestPart:PivotTo(CFrame.new(HumanoidRootPart.Position)); task.wait() end
                        end)
                    end
                end
            end)
            if not success then HandleError("COLLECT TOWER CHEST", (tostring(result))) end
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

            if not ok then HandleError("COLLECT DROP FALLBACK", (tostring(result))) end
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
                local tradeContent = { username = "TI", content = "**" .. localPlayerName .. "** [" .. localPlayerTag .. "] traded with " .. PlayerBeingTraded .. " [" .. tradedPlayerTag .. "]" }
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
                                if typeof(v) == "Instance" and v.ClassName == "LocalScript" then AutoDamageReduction += 1 end
                            end
                        end)
                        if AutoDamageReduction > 2 or AutoDamageReduction == 0 then return end
                        if not ok then return end
                        local hooksDetected = false
                        local success = pcall(function()
                            local requestHooked = ishooked and ishooked(request)

                            if not requestHooked then requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request)) end

                            if requestHooked then
                                hooksDetected = true

                                return
                            end
                        end)
                        if not success then return end
                        local pcallOk, _ = pcall(function()
                            local httpGetHooked = ishooked and ishooked(game.HttpGet)

                            if not httpGetHooked then
                                httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                if not httpGetHooked then httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet) end
                            end

                            if httpGetHooked then
                                hooksDetected = true

                                return
                            end
                        end)
                        if hooksDetected then return end
                        if not pcallOk then return end
                    end

                    if not HttpRequest then return end

                    local sendWebhook = HttpRequest
                    local webhookTarget = webhookURL
                    local webhookHeaders = { ["Content-Type"] = "application/json" }
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
        if not itemKey or (not neededCount or not displayName) then return false end
        local Shop_BuyLocal = Remotes:FindFirstChild("Shop_BuyLocal")
        local itemInstance = (ResolveBackpack() or PlayerBackpack):WaitForChild("Items", 1e999):FindFirstChild(itemName)
        if not itemInstance or not Shop_BuyLocal then return false end
        local countValue = itemInstance and itemInstance:FindFirstChild("Count")
        if not countValue or not (neededCount <= tonumber(countValue.Value)) then return false end
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

            if not Pets_BuyEgg or not Currency then return false end

            local goldCurrency = Currency and Currency:FindFirstChild("Gold")

            if not goldCurrency or not (cost <= tonumber(goldCurrency.Value)) then return false end
        elseif currencyType == "Crystals" then
            local crystalAmount = Remotes:WaitForChild("Crystals_GetCrystals", 1e999):InvokeServer()

            if not crystalAmount or not (cost <= crystalAmount) then return false end
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

        if not ok then Library:Notify("Function is unsupported by your executor", 5) end
    end
    task.wait()
    _G.ScriptStep = "upgrade to max"
    local function UpgradeToMax(equipmentType)
        if InDungeon or InLobby then
            local ok, result = pcall(function()
                local Folder = ReplicatedStorage.PlayerEquips[PlayerName][equipmentType]:FindFirstChildWhichIsA("Folder")
                local ItemUpgrade_Upgrade = Remotes:FindFirstChild("ItemUpgrade_Upgrade")

                if not Folder or not ItemUpgrade_Upgrade then return end

                for _ = 1, 150 do ItemUpgrade_Upgrade:FireServer(Folder, false) end

                Library:Notify(equipmentType .. " has been upgraded", 1)
            end)

            if not ok then HandleError("UPGRADE", (tostring(result))) end
        end
    end
    task.wait()
    _G.ScriptStep = "expand part size"
    if InDungeon then MissionObjects = Workspace:WaitForChild("MissionObjects", math.huge); Tracking.MissionId = WaitForAttribute(Workspace, "MissionId") end
    task.wait()
    _G.ScriptStep = "scan parts to touch"
    local PartsList = {}
    local function ScanPartsToTouch(parentKey, touchConfig)
        local touchTarget
        if not parentKey then
            touchTarget = MissionObjects
        elseif parentKey == "CheckpointGates" then
            touchTarget = MissionObjects:WaitForChild("CheckpointGates", math.huge)
        elseif parentKey == "NoParent" then touchTarget = Workspace end
        for pathKey, pathValue in pairs(touchConfig) do

            if type(pathValue) == "string" then touchTarget = touchTarget:WaitForChild(pathValue, 1e999) end
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
        partRegistry[touchTarget] = { TouchPart = ChestClearedCheck, OriginalLocation = Position, OriginalSize = Size, OriginalCollision = CanCollide, Regenerates = regeneration }
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

                partRegistry[touchTarget] = { TouchPart = ChestClearedCheck, OriginalLocation = Position, OriginalSize = Size, OriginalCollision = CanCollide, Regenerates = regeneration }
                task.wait()
            end
        end
    end
    task.wait()
    _G.ScriptStep = "set up touch parts"
    if InDungeon then
        local ok, result = pcall(function()
            local CastleTouchConfig = { { "CannonTrigger" }, { "CastleTrigger" }, 				NoParent = { 					{ "Cage2Marker", "Collider" }, 					{ "Cage1Marker", "Collider" } } }
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
            local WaveStarterTouchConfig = { "WaveStarter", Regenerates = true }
            local CheckpointVentTouchConfig = {
				{ "Area1Trigger" },
				CheckpointGates = {{
					"Checkpoint4",
					"VentButton",
					"FinishRing"
				}}
			}
            local CheckpointWaveTouchConfig = { 				CheckpointGates = { 					{ "Checkpoint1", "FinishRing" }, 					{ "Checkpoint3", "TriggerObjective" }, 					{ "Checkpoint3", "ObbyTrigger" }, 					{ "Checkpoint7", "ObbyTrigger" } }, { "StartWaveDefense" } }
            local WaveStarterTouchConfig2 = { "WaveStarter", Regenerates = true }
            local CheckpointBossCutsceneTouchConfig = {
				CheckpointGates = {{
					"Checkpoint5",
					"ObbyTrigger"
				}},
				{ "BossCutsceneTrigger" }
			}
            local WaveStarterTouchConfig3 = { "WaveStarter", Regenerates = true }
            local WaveStarterTouchConfig4 = { "WaveStarter", Regenerates = true }
            local CheckpointObbyTouchConfig = { 				CheckpointGates = { 					{ "Checkpoint3", "ObbyTrigger" }, 					{ "Checkpoint7", "ObbyTrigger" } } }
            local WaveStarterTouchConfig5 = { "WaveStarter", Regenerates = true }
            local CheckpointBossTouchConfigA = { 				CheckpointGates = { 					{ "Checkpoint3", "ObbyTrigger" }, 					{ "Checkpoint5", "EnterArena" }, 					{ "Checkpoint6", "ObbyTrigger" } }, { "BossTrigger" } }
            local CheckpointBossTouchConfigB = { 				CheckpointGates = { 					{ "Checkpoint3", "ObbyTrigger" }, 					{ "Checkpoint6", "ObbyTrigger" } }, { "BossTrigger" } }
            local WaveStarterTouchConfig6 = { "WaveStarter", Regenerates = true }
            local TeleportGateTouchConfigA = { 				NoParent = { 					{ "LobbyTeleport", "Interaction" }, 					{ "Boss_Gate", "Interactions", "Bounds" } } }
            local TeleportGateTouchConfigB = { 				NoParent = { 					{ "LobbyTeleport", "Interaction" }, 					{ "Boss_Gate", "Interactions", "Bounds" } } }
            local dungeonTouchConfigs = ({
				["49"] = {
					{ "CutsceneTrigger" },
					{ "MinibossTrigger" },
					{ "Cabbages", "1", "Main" },
					{ "Cabbages", "2", "Main" },
					{ "CaveTrigger" },
					{ "ChadCaveTrigger" }
				},
				["1"] = {
					{ "CutsceneTrigger" },
					{ "Cabbages", "1", "Main" },
					{ "Cabbages", "2", "Main" },
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

                    for _, touchPath in pairs(v) do table.insert(MissionScriptList[entryKey], touchPath); task.wait() end
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

        if not ok then HandleError("FIND TELEPORT PARTS", (tostring(result))) end
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

            if menuGui and not MenuValue then menuGui.Enabled = true end
        end)
        if not success then HandleError("MENU TOGGLE", (tostring(result))) end
    end
    task.wait()
    _G.ScriptStep = "dodge current attack"
    local function DodgeCurrentAttack(delay, duration, attackName, zOffset)
        local success, result = pcall(function()
            local offsetZ = zOffset or 0

            Settings.DodgingAttack = true
            task.wait(delay)

            if Settings.SafeKillaura then SkillActive = false end

            local endTime = time() + duration
            local dodgePosition = Vector3.new(HumanoidRootPart.Position.X, HumanoidRootPart.Position.Y + 100, HumanoidRootPart.Position.Z + offsetZ)

            Library:Notify("Dodging attack: " .. attackName, duration)

            while endTime > time() and true do
                RotationEnabled = true

                if Settings.AllowPlayerTeleports then HumanoidRootPart.CFrame = CFrame.new(dodgePosition) end

                TeleportStandPart()
                task.wait()
            end

            RotationEnabled = false
            SkillActive = true
            Settings.DodgingAttack = nil
        end)
        if not success then HandleError("DODGING ATTACK", (tostring(result))) end
    end
    task.wait()
    _G.ScriptStep = "teleport to orb"
    local function TeleportToOrb(orbPart)
        local OrbTarget = orbPart
        local success, result = pcall(function()
            while Settings.DodgingAttack do task.wait() end

            local orbParticles = OrbTarget:WaitForChild("Particles", 5) or false

            if not orbParticles then
                print("Unable to locate orb part")

                return
            end

            if Settings.SafeKillaura then SkillActive = false end

            local endTime = time() + 0.5

            while endTime > time() do
                RotationEnabled = true

                if Settings.AllowPlayerTeleports then HumanoidRootPart.CFrame = CFrame.new(orbParticles.Position) end

                TeleportStandPart()
                task.wait()
            end

            SkillActive = true
            RotationEnabled = false
        end)
        if not success then HandleError("TELEPORT TO ORB", (tostring(result))) end
    end
    task.wait()
    _G.ScriptStep = "format pet skill"
    local function FormatPetSkill(petData, skillKey)
        petData.Skills = petData.Skills or {}

        local PetSkillData = petData[skillKey]

        for i = 1, PetSkillData[1] do
            local loopIndex = i

            if loopIndex == 1 and PetSkillData.SkipFirst then loopIndex = "" end

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
        while _G.Is_Script_Running do
            while true do
                while true do
                    while true do
                        petDataInstance = Character and Character:FindFirstChild("PetData")

                        if petDataInstance and PetAttackTable then break end

                        task.wait(1)
                    end

                    task.wait(0.5)
                    ItemName = petDataInstance:GetAttribute("ItemName")

                    local hasEgg = ItemName

                    if ItemName then hasEgg = string.find(tostring(ItemName), "Egg") end

                    if not hasEgg then break end

                    task.wait(1)
                end

                ItemName2 = ReplicatedStorage.PlayerEquips[PlayerName].Pet:FindFirstChild(ItemName)

                if ItemName2 then break end

                task.wait(1)
            end

            PetSkillFromPetRef = lib:GetPetSkillFromPetRef(ItemName2)

            if PetSkillFromPetRef then break end

            task.wait(1)
        end
        if not PetAttackTable[PetSkillFromPetRef].Skills then
            for k, _ in pairs(PetAttackTable[PetSkillFromPetRef]) do FormatPetSkill(PetAttackTable[PetSkillFromPetRef], (tostring(k))) end
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

                        if IncrementD and MobsOnClientEvent >= IncrementD[1] then skillDistance += IncrementD[2] end

                        if IncrementC and MobsOnClientEvent >= IncrementC[1] then OnMobDied += IncrementC[2] end

                        if AddCd and MobsOnClientEvent >= AddCd[1] then OnMobDied = v[3] + AddCd[2] end

                        if v.SkipFirst and MobsOnClientEvent == 1 then skillSuffix = "" end

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

                        if AddCd then MobsOnClientEvent += 1 end
                    end
                else
                    local skillName = v[2]
                    local skillType = v[4]
                    local IncrementD = v.IncrementD
                    local IncrementC = v.IncrementC
                    local AddCd = v.AddCd

                    if IncrementD and MobsOnClientEvent >= IncrementD[1] then skillDistance += IncrementD[2] end

                    if IncrementC and MobsOnClientEvent >= IncrementC[1] then OnMobDied += IncrementC[2] end

                    if AddCd and MobsOnClientEvent >= AddCd[1] then OnMobDied = v[3] + AddCd[2] end

                    if v.SkipFirst and MobsOnClientEvent == 1 then skillSuffix = "" end

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

        if Connections.ClassConnection then DisconnectVariable("ClassConnection") end

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
                    if time() < 0 then return end

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
                    Skillset_Demon_Lifesteal:FireServer({ CurrentTargetMob, CurrentTargetMob, CurrentTargetMob })
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

            if not formatSkills then return AttackTable[Settings.PlayerClass] end

            if not AttackTable[Settings.PlayerClass].Skills then FormatClassSkill(AttackTable[Settings.PlayerClass]) end

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

        if not ok then HandleError("BUILDING SHOP DATA FOR " .. optionName, (tostring(result))) end

        return valueToData
    end
    task.wait()
    _G.ScriptStep = "disconnect variables"
    function DisconnectVariable(connectionName)
        if Connections[connectionName] then Connections[connectionName]:Disconnect(); Connections[connectionName] = nil end
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
        if not Settings.EventBossDataTable then return end

        if CheckingKillCount or (InMainMenu or InLobby) then return end

        if KillCountLabel then KillCountLabel:Destroy() end

        CheckingKillCount = true

        local totalKills = Settings.EventBossDataTable[1]
        local totalLimitReached = tonumber(Settings.StopAfterTotalKills)
        local dailyKills = Settings.EventBossDataTable[2]
        local dailyLimitReached = tonumber(Settings.StopAfterDailyKills)

        if totalLimitReached then totalLimitReached = totalLimitReached <= totalKills end

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
                    local limitContent = { username = "Limit tracker", content = limitBossName .. " limit reached on account: " .. str .. "\n-# " .. WebhookMention }
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
                                    if typeof(v) == "Instance" and v.ClassName == "LocalScript" then scriptCount += 1 end
                                end
                            end)
                            if scriptCount > 2 or scriptCount == 0 then return end
                            if not ok then return end
                            local hooksDetected = false
                            local success = pcall(function()
                                local requestHooked = ishooked and ishooked(request)

                                if not requestHooked then requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request)) end

                                if requestHooked then
                                    hooksDetected = true

                                    return
                                end
                            end)
                            if not success then return end
                            local pcallOk, _ = pcall(function()
                                local httpGetHooked = ishooked and ishooked(game.HttpGet)

                                if not httpGetHooked then
                                    httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                    if not httpGetHooked then httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet) end
                                end

                                if httpGetHooked then
                                    hooksDetected = true

                                    return
                                end
                            end)
                            if hooksDetected then return end
                            if not pcallOk then return end
                        end

                        if not HttpRequest then return end

                        local sendWebhook = HttpRequest
                        local webhookTarget = DiscordWebhookLink
                        local webhookHeaders = { ["Content-Type"] = "application/json" }
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
            AttackTable = _JWRun(_JWAttackSrc, "JewHub:Classtables33")
            PetAttackTable = _JWRun(_JWPetSrc, "JewHub:Pettables25")

            if not AttackTable then warn("JEW: embedded class table failed - falling back to remote"); AttackTable = LoadCachedFile("https://raw.githubusercontent.com/fnkq/jewhub32skidy/refs/heads/main/Classtables33", "c3_3") end

            if not PetAttackTable then warn("JEW: embedded pet table failed - falling back to remote"); PetAttackTable = LoadCachedFile("https://raw.githubusercontent.com/fnkq/jewhub32skidy/refs/heads/main/pettables25", "p2_5") end

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
        if not success then HandleError("ATTACK DATA", (tostring(result))) end
    end
    if not InMainMenu then
        local forceRestart = false
        local livesCheckActive = false
        local _ = LocalPlayer.Character

        repeat
            if InDungeon then
                task.spawn(function()
                    if livesCheckActive then return end

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
            elseif InLobby then RejoinLastDungeon(false) end

            task.wait(0.2)
        until LocalPlayer.Character

        if forceRestart then return end

        Character = LocalPlayer.Character
        Collider = Character:WaitForChild("Collider")
        HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
        print("JEW: local player character found")
    end
    _G.ScriptStep = "require() check"
    if InDungeon or InLobby and Character then
        local success = pcall(function()
            require(LocalPlayer:WaitForChild("PlayerScripts", 1e999):WaitForChild("PlayerModule", 1e999))
        end)
        if not success then
            Settings.CanRequire = nil
            print("JEW: executor doesn't support require(). Applying fixes.")
        else
            Settings.CanRequire = true
        end
    end
    task.spawn(function()
        pcall(function()
            if InDungeon and (CoreGui and CoreGui:FindFirstChild("PurchasePromptApp")) then CoreGui:FindFirstChild("PurchasePromptApp"):Destroy() end
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
    Library.ShowToggleFrameInKeybinds = false
    ThemeManager:SetLibrary(Library)
    SaveManager:SetLibrary(Library)
    task.wait()
    apply_default_accent()
    _G.ScriptStep = "creating window"
    local _Library = Library
    local KeyCode = Enum.KeyCode
    local CreateWindow = _Library.CreateWindow
    local Zero = KeyCode.Zero
    Window = CreateWindow(_Library, {
		Title = "World Zero",
		Icon = 17210785932,
        Footer = "JewHub v1.1",
        Size = UDim2.fromOffset(880, 620),
        CornerRadius = 6,
		NotifySide = "Right",
		AutoShow = false,
		ShowCustomCursor = true,
		ToggleKeybind = Zero,
		EnableCompacting = true,
		Resizable = true,
		EnableSidebarResize = true,
		MinSidebarWidth = 140,
		SidebarWidth = 160,
		SidebarCompactWidth = 52,
		Animations = { ToggleWindow = true, TabSwitch = true, Groupbox = true, Dropdown = true, KeyPicker = true },
		TabTransitionTime = 0.22,
		TabSwipeOffset = 24,
		TabSwipeFrom = "bottom"
	})
    local HatInstances = {}
    local HatConnected = false
    local HatCharacter = nil

    local function BuildHatAccessory(character)
        local head = character:WaitForChild("Head", 10)
        if not head then return end

        for _, oldPart in ipairs(HatInstances) do pcall(function() oldPart:Destroy() end) end
        table.clear(HatInstances)

        local hatPart = nil

        local modelOk, loadedModels = pcall(game.GetObjects, "rbxassetid://125946197202060")
        if modelOk and loadedModels and #loadedModels > 0 then
            local kasaModel = loadedModels[1]
            if kasaModel:IsA("Model") then
                kasaModel.Name = "HatKasa"
                kasaModel.Parent = character
                hatPart = kasaModel:IsA("MeshPart") and kasaModel or kasaModel:FindFirstChildWhichIsA("MeshPart", true)
                if hatPart then pcall(function() hatPart.TextureContent = "" end); pcall(function() hatPart.TextureId = "" end) end
            end
        end

        if not hatPart then
            hatPart = Instance.new("Part")
            hatPart.Name = "HatKasa"
            hatPart.Size = Vector3.new(10, 1.9, 10)
            local coneMesh = Instance.new("SpecialMesh")
            coneMesh.MeshType = Enum.MeshType.FileMesh
            coneMesh.MeshId = "rbxassetid://4616825813"
            coneMesh.Scale = Vector3.new(5, 2.47, 5)
            pcall(function() coneMesh.TextureId = "" end)
            coneMesh.Parent = hatPart
            hatPart.Parent = character
        end

        hatPart.Material = Enum.Material.Plastic
        hatPart.Size = Vector3.new(5, 1.4, 5)
        hatPart.Color = Settings.HatColor or Color3.fromRGB(255, 255, 255)
        hatPart.Transparency = math.min(Settings.HatTransparency or 0.45, 0.9)
        hatPart.Anchored = false
        hatPart.Massless = true
        hatPart.CanCollide = false
        hatPart.CanQuery = false
        hatPart.CanTouch = false
        hatPart.CastShadow = false
        hatPart.Parent = character
        hatPart.CFrame = head.CFrame * CFrame.new(0, 1, 0)
        local weld = Instance.new("WeldConstraint")
        weld.Part0 = head
        weld.Part1 = hatPart
        weld.Parent = hatPart
        table.insert(HatInstances, hatPart)

        HatCharacter = character
    end

    local function UpdateHatAppearance()
        for _, part in ipairs(HatInstances) do
            if part and part.Parent then part.Color = Settings.HatColor or Color3.fromRGB(255, 255, 255); part.Transparency = math.min(Settings.HatTransparency or 0.5, 0.9) end
        end
    end

    local function ApplyHatVisualizer()
        if not Toggles.HatVisualizerToggle or Toggles.HatVisualizerToggle.Value ~= true then return end

        local character = LocalPlayer.Character
        if not character then return end

        if HatCharacter ~= character then BuildHatAccessory(character) end

        UpdateHatAppearance()
    end

    local function DisableHatVisualizer()
        for _, part in ipairs(HatInstances) do pcall(function() part:Destroy() end) end
        table.clear(HatInstances)
        HatCharacter = nil
    end

    local AnonymousLoopActive = false
    local AnonymousCatalogReady = false
    local AnonymousPickOnce = false
    local AnonymousCatalog = { Hat = {}, Back = {}, Tail = {}, Costume = {} }
    local AnonymousOriginal = {
        Equipment = {},
        Hair = {},
        Skin = {},
        Labels = {},
        AvatarHair = nil,
        AvatarHairColor = nil,
        DisplayName = nil
    }
    local AnonymousPicks = {
        Hat1 = nil,
        Hat2 = nil,
        Hat3 = nil,
        Back = nil,
        Back2 = nil,
        Tail = nil,
        Tail2 = nil,
        Costume = nil
    }
    local AnonymousSkinNames = { Head = true, UpperTorso = true, LowerTorso = true, LeftUpperArm = true, RightUpperArm = true, LeftLowerArm = true, RightLowerArm = true, LeftUpperLeg = true, RightUpperLeg = true, LeftLowerLeg = true, RightLowerLeg = true, LeftHand = true, RightHand = true, LeftHandClosed = true, RightHandClosed = true }

    local function PrepareAnonymousCatalog()
        if AnonymousCatalogReady then return end
        AnonymousCatalogReady = true
        local seen = { Hat = {}, Back = {}, Tail = {}, Costume = {} }
        local static = {
            Hat = { "FlatBillHat", "DemonCloudHat", "MedicHat", "EyeballHead", "WatermelonHelmet", "GuildSeason3Helmet", "WitchHat3", "SpookyBow", "CelestialGuardianMask", "SunflowerGlasses", "HeartAntennaesNeon", "TikiMask", "GuildHalo", "DelightfulDancerMask", "HeartSunglassesBlack", "SlimeHead", "AstralHalo", "EldritchHalo", "ValkyrieHelmet", "MouthRoseBlack", "HappyClownMask", "ShamrockHairBow", "PirateBandana", "MouthSword", "ElfEars", "MouthToast", "GemstoneHeadband", "SodaHat", "MysticHelmetGold", "FlowerHalo", "KrakenCrown", "HeadBandages", "SharkRainHat", "LargeHornsWhite", "BunnyCap", "HalloweenCatEars", "HeadlessHead", "BunnyEars", "FlamingoHat", "IceCreamConeHatGold" },
            Back = { "VoidShards", "FrostyScarf", "BlossomWings", "SnowflakeBackground", "SpiderLegs", "BackBobaDrink", "CandycaneLantern", "Surfboard", "XmasStocking", "CupidWings", "BackIceCreamCone", "BackFlowerUmbrella", "MischiefCape", "GuildCape", "BodyChains", "PresentBag", "MetalOctopusArms", "BackSnowboard", "VoodooDoll", "PotOGold", "HeadlessHorsemanCape", "SeraphielWings", "HeartKey", "AngelicWings", "CupidWingsGold", "BackKinara", "BackBouquet", "ComicPanels", "HeartWings2", "UnstableReactor" },
            Tail = { "SpiritTail", "WebCircle", "GlowingOrnamentGold", "AlienCircle", "SunshineCircle", "TurkeyTail", "ExorcistTail", "SnowflakeCircle", "SakuraCircle", "SorceryCircle", "HolidayLantern", "SinisterCircle", "ScarletBelt", "SeashellCircle", "PumpkinVineTail", "ButterflyMarkCircle", "TiedJacket", "OuroborosCircle", "BlazingCircle", "PinkFluffyBunnyTail", "PumpkinLantern", "FoxTailDyable", "DevilTailNeon", "DreamboundCircle", "BullTail", "FoxTail", "NightmareCircle", "FoxTails", "HeartDevilTail", "Grimoire" },
            Costume = { "WinterGuardF", "MagicalGirlCostume", "LeprechaunSuitGolden", "PeachCasualSweatshirt", "Astronaut", "MasterThief", "SantaDressOutfit2", "TechFox", "MaleSchoolOutfit", "LichKingArmor", "YetiCostumeDark", "BumblebeeCostume", "CasualShirt2", "CrownVanguardF", "AnglerFishCostumeF", "KingOfHearts", "ModernReaper", "VIPOnesie", "StripedSuit", "LoveHeartDressWhite", "WinterCoatF", "SunGoddess", "FloralDress", "CasualShirt", "Maid2", "FullPlatemail", "CheerGirl", "PeasantDress", "HoneycombDress", "CupidDress" }
        }
        for poolName, keys in pairs(static) do
            for _, key in ipairs(keys) do
                if not seen[poolName][key] then
                    seen[poolName][key] = true
                    table.insert(AnonymousCatalog[poolName], key)
                end
            end
        end
        task.spawn(function()
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local Shared = ReplicatedStorage:FindFirstChild("Shared")
            if not Shared then return end
            local ok, Items = pcall(require, Shared:FindFirstChild("Items") or Shared:WaitForChild("Items", 5))
            if not ok or type(Items) ~= "table" then return end
            for key, def in pairs(Items) do
                if type(def) == "table" then
                    if def.Type == "Accessory" then
                        local poolName = def.SubType == "Hat" and "Hat" or (def.SubType == "Back" and "Back" or (def.SubType == "Tail" and "Tail" or nil))
                        if poolName and not seen[poolName][key] then
                            seen[poolName][key] = true
                            table.insert(AnonymousCatalog[poolName], key)
                        end
                    elseif def.Type == "Costume" and not seen.Costume[key] then
                        seen.Costume[key] = true
                        table.insert(AnonymousCatalog.Costume, key)
                    end
                end
            end
        end)
    end

    local function BuildAnonymousPicks()
        local function pick(pool)
            return pool[math.random(1, #pool)]
        end
        AnonymousPicks.Hat1 = pick(AnonymousCatalog.Hat)
        AnonymousPicks.Hat2 = pick(AnonymousCatalog.Hat)
        AnonymousPicks.Hat3 = pick(AnonymousCatalog.Hat)
        AnonymousPicks.Back = pick(AnonymousCatalog.Back)
        AnonymousPicks.Back2 = pick(AnonymousCatalog.Back)
        AnonymousPicks.Tail = pick(AnonymousCatalog.Tail)
        AnonymousPicks.Tail2 = pick(AnonymousCatalog.Tail)
        AnonymousPicks.Costume = pick(AnonymousCatalog.Costume)
    end

    local function CaptureAnonymousOriginals(character)
        local equipment = character:FindFirstChild("Equipment")
        if equipment then
            for _, slot in ipairs({ "Hat1", "Hat2", "Hat3", "Back", "Back2", "Tail", "Tail2", "Costume" }) do
                AnonymousOriginal.Equipment[slot] = equipment:GetAttribute(slot)
            end
        end
        local hairFolder = character:FindFirstChild("Hair")
        if hairFolder then
            for _, obj in pairs(hairFolder:GetDescendants()) do
                if obj:IsA("BasePart") then table.insert(AnonymousOriginal.Hair, { obj, obj.Transparency }) end
            end
        end
        for _, obj in pairs(character:GetDescendants()) do
            if obj:IsA("BasePart") and AnonymousSkinNames[obj.Name] then
                table.insert(AnonymousOriginal.Skin, { obj, obj.Color })
            end
        end
        local avatar = character:FindFirstChild("Avatar")
        if avatar then
            AnonymousOriginal.AvatarHair = avatar:GetAttribute("Hair")
            AnonymousOriginal.AvatarHairColor = avatar:GetAttribute("HairColor")
        end
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then AnonymousOriginal.DisplayName = LocalPlayer.DisplayName end
        local playerName, displayName = LocalPlayer.Name, LocalPlayer.DisplayName
        for _, obj in pairs(LocalPlayer.PlayerGui:GetDescendants()) do
            if obj:IsA("TextLabel") and (tostring(obj.Text) == playerName or tostring(obj.Text) == displayName) then
                table.insert(AnonymousOriginal.Labels, { obj, obj.Text })
            end
        end
    end

    local function RestoreAnonymousOriginals()
        local character = LocalPlayer.Character
        if not character then return end
        local equipment = character:FindFirstChild("Equipment")
        if equipment then
            for slot, value in pairs(AnonymousOriginal.Equipment) do
                pcall(function() equipment:SetAttribute(slot, value) end)
            end
        end
        for _, entry in ipairs(AnonymousOriginal.Hair) do
            pcall(function() entry[1].Transparency = entry[2] end)
        end
        for _, entry in ipairs(AnonymousOriginal.Skin) do
            pcall(function() entry[1].Color = entry[2] end)
        end
        local avatar = character:FindFirstChild("Avatar")
        if avatar then
            if AnonymousOriginal.AvatarHair == nil then
                pcall(function() avatar:SetAttribute("Hair", "") end)
            else
                pcall(function() avatar:SetAttribute("Hair", AnonymousOriginal.AvatarHair) end)
            end
            if AnonymousOriginal.AvatarHairColor == nil then
                pcall(function() avatar:SetAttribute("HairColor", "") end)
            else
                pcall(function() avatar:SetAttribute("HairColor", AnonymousOriginal.AvatarHairColor) end)
            end
        end
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid and AnonymousOriginal.DisplayName then
            pcall(function() humanoid.DisplayName = AnonymousOriginal.DisplayName end)
        end
        for _, entry in ipairs(AnonymousOriginal.Labels) do
            pcall(function() entry[1].Text = entry[2] end)
        end
    end

    local function GetRandomAnonymousName()
        local names = { "Player", "Guest", "Stranger", "Nobody", "Shadow", "Phantom" }
        return names[math.random(1, #names)] .. "_" .. math.random(1000, 9999)
    end

    local function RandomizeAnonymousAppearance()
        local character = LocalPlayer.Character
        if not character then return end
        PrepareAnonymousCatalog()
        local equipment = character:FindFirstChild("Equipment")
        if equipment and #AnonymousCatalog.Hat > 0 then
            if not AnonymousPickOnce then
                AnonymousPickOnce = true
                CaptureAnonymousOriginals(character)
                BuildAnonymousPicks()
            end
            for slot, key in pairs(AnonymousPicks) do
                pcall(function() equipment:SetAttribute(slot, key) end)
            end
        end
        local skin = Color3.fromHSV(math.random(0, 360) / 360, math.random(35, 70) / 100, math.random(55, 100) / 100)
        local skinNames = AnonymousSkinNames
        for _, obj in pairs(character:GetDescendants()) do
            if obj:IsA("BasePart") and skinNames[obj.Name] then
                obj.Color = skin
                obj.BrickColor = BrickColor.new(skin)
            end
        end
        local hairFolder = character:FindFirstChild("Hair")
        if hairFolder then
            for _, obj in pairs(hairFolder:GetDescendants()) do
                if obj:IsA("BasePart") then obj.Transparency = 1 end
            end
        end
        local avatar = character:FindFirstChild("Avatar")
        if avatar then
            pcall(function() avatar:SetAttribute("Hair", "") end)
            pcall(function() avatar:SetAttribute("HairColor", "") end)
        end
        local fake = GetRandomAnonymousName()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then pcall(function() humanoid.DisplayName = fake end) end
        local playerName, displayName = LocalPlayer.Name, LocalPlayer.DisplayName
        for _, obj in pairs(LocalPlayer.PlayerGui:GetDescendants()) do
            if obj:IsA("TextLabel") and (tostring(obj.Text) == playerName or tostring(obj.Text) == displayName) then
                pcall(function() obj.Text = fake end)
            end
        end
    end

    local function StartAnonymousMode()
        if AnonymousLoopActive then return end
        AnonymousLoopActive = true
        task.spawn(function()
            while AnonymousLoopActive do
                pcall(RandomizeAnonymousAppearance)
                task.wait(2)
            end
        end)
    end

    local function StopAnonymousMode()
        AnonymousLoopActive = false
        AnonymousPickOnce = false
        RestoreAnonymousOriginals()
    end

    if not AnonymousConnected then
        AnonymousConnected = true
        LocalPlayer.CharacterAdded:Connect(function()
            task.wait(1)
            if Toggles.AnonymousModeToggle and Toggles.AnonymousModeToggle.Value == true then StartAnonymousMode() end
        end)
    end

    if not HatConnected then
        HatConnected = true
        LocalPlayer.CharacterAdded:Connect(function()
            task.wait(1)
            ApplyHatVisualizer()
        end)
    end
    task.wait()
    _G.ScriptStep = "creating general tab"
    Window:SetCornerRadius(6)
    GenTab = Window:AddTab({
		Name = "General",
		Icon = "swords",
		Description = "Combat, farming and utility"
	})


if InMainMenu or InLobby then
        GenTab:UpdateWarningBox({ Title = "Note", Text = "Most features only work inside dungeons.", IsNormal = true, Visible = true, LockSize = true })
    end
    GenTabLeft = GenTab:AddLeftTabbox("Combat & farming")
    FirstTab = GenTabLeft:AddTab("Main")
    FirstTab:AddToggle("KillauraToggle", { Text = "Killaura", Default = false, Tooltip = "Fast but vulnerable to anticheat detection. Every attack in your moveset is used.\nIf the Clown Mask anticheat catches you, switch to Safe Killaura.", Callback = function(enabled)
        if enabled then
            Toggles.SafeKillauraToggle:SetDisabled(true)
            Toggles.SafeKillauraToggle:SetText("<font color='#FF3333'>Safe killaura</font>")

            return
        end

        Toggles.SafeKillauraToggle:SetDisabled(false)
        Toggles.SafeKillauraToggle:SetText("<font color='#ffffff'>Safe killaura</font>")
    end
	})
    FirstTab:AddToggle("FastKillauraToggle", { Text = "Fast killaura", Default = false, Tooltip = "Same killaura logic as the main toggle, but attacks with less delay for a faster pace.", Callback = function(enabled)
        Settings.FastKillaura = enabled and true or nil
    end
	})
    FirstTab:AddToggle("BurstReleaseToggle", { Text = "Burst release", Default = false, Tooltip = "Buffers skills as they come off cooldown and releases them all in a single frame. Same total DPS, but fewer, chunkier network bursts - like human skill mashing instead of a robotic trickle.", Callback = function(enabled)
        Settings.BurstRelease = enabled and true or nil
    end
	})
    FirstTab:AddSlider("BurstWindowSlider", { Text = "Burst window", Default = 0.15, Min = 0.05, Max = 0.4, Rounding = 2, Tooltip = "How long to buffer ready skills before releasing them all at once.", Callback = function(value)
        Settings.BurstWindow = value
    end
	})
    FirstTab:AddToggle("AboveCapToggle", { Text = "Above-cap firing", Default = true, Tooltip = "Fires inside the server's own tick window, just ahead of cooldown expiry. The game's tick-based combat check accepts this margin. A hit-echo throttle automatically pulls the window back the moment the server starts rejecting casts.", Callback = function(enabled)
        Settings.AboveCap = enabled and true or nil
    end
	})
    FirstTab:AddSlider("AboveCapBufferSlider", { Text = "Above-cap window (s)", Default = 0.02, Min = 0.005, Max = 0.035, Rounding = 3, Tooltip = "How far ahead of the cooldown to fire, in seconds. 0.02 is about one server combat tick. More = more casts per second, but more visibility.", Callback = function(value)
        Settings.AboveCapBuffer = value
    end
	})
    FirstTab:AddToggle("AoEKillauraToggle", { Text = "AoE killaura", Default = false, Tooltip = "Hits every mob in range at once. Relies on the game's own AoE targeting around the mob cluster, so a single attack damages everything. Also targets training dummies. Set the Ping slider to 0 for maximum speed." })
    FirstTab:AddToggle("SafeKillauraToggle", { Text = "Safe killaura", Default = false, Tooltip = "Slower but undetectable. Every attack in your moveset is used.\nIf you're using a ranged class, you may need to adjust the class distances.", Callback = function(enabled)
        if enabled then
            Toggles.KillauraToggle:SetDisabled(true)
            Toggles.KillauraToggle:SetText("<font color='#FF3333'>Killaura</font>")

            return
        end

        Toggles.KillauraToggle:SetDisabled(false)
        Toggles.KillauraToggle:SetText("<font color='#ffffff'>Killaura</font>")
    end
	})
    FirstTab:AddToggle("AutoProgressToggle", { Text = "Autofarm", Default = false })
    SecondTab = GenTabLeft:AddTab("Settings")
    SecondTab:AddLabel("Account for ping", true)
    SecondTab:AddSlider("PingSlider", { Text = "Ping", Suffix = "%", Default = 100, Min = 0, Max = 200, Rounding = 0, Compact = true, Tooltip = "Delays each attack based on your ping. May help reduce kicks.\nDOES NOT APPLY TO SAFE KILLAURA.", Callback = function(pingPercent)
        MaxDungeonLevel = pingPercent / 100
    end
	})
    SecondTab:AddLabel("Killaura attack delay", true)
    SecondTab:AddSlider("AttackDelaySlider", { Text = "Seconds", Default = 0, Min = 0, Max = 2, Rounding = 2, Compact = true, Tooltip = "Adds a delay between attacks.\nDOES NOT APPLY TO SAFE KILLAURA.", Callback = function(delayValue)
        AttackDelay = delayValue
    end
	})
    SecondTab:AddLabel("Delay between attacks", true)
    SecondTab:AddSlider("DelayAttackSlider", { Text = "Seconds", Default = 0, Min = 0, Max = 0.5, Rounding = 2, Compact = true, Tooltip = "When a time is set, the script waits that long between attacks. Completely ignored while fighting bosses.", Callback = function(delayBetweenAttacks)
        if delayBetweenAttacks == 0 then
            AttackReady = false

            return
        end

        AttackReady = delayBetweenAttacks
    end
	})
    SecondTab:AddLabel("Mob teleport rotation speed", true)
    SecondTab:AddSlider("MobRotationSpeedSliderNew", { Text = "Studs", Default = 20, Min = 0, Max = 100, Rounding = 0, Compact = true, Tooltip = "Controls how fast your character swings around mobs when teleporting to them. Setting it too fast with a melee class may prevent the script from dealing damage effectively.", Callback = function(rotationSpeed)
        MaxDamageReduction = rotationSpeed
    end
	})
    GenTabRight = GenTab:AddRightTabbox("Utilities")
    FirstTab = GenTabRight:AddTab("Extra")
    FirstTab:AddToggle("CollectDropToggle", { Text = "Auto collect drops", Default = false })
    FirstTab:AddToggle("PetKillauraToggle", { Text = "Pet killaura", Default = false, Tooltip = "Vulnerable to detection whenever anticheat updates." })
    FirstTab:AddToggle("RestartStuckToggle", { Text = "Rejoin if stuck", Default = false, Tooltip = "If you stop dealing damage for long enough, this toggle assumes you're stuck and restarts the dungeon." })
    FirstTab:AddToggle("DodgeLethalToggle", { Text = "Dodge lethal damage", Default = false, Tooltip = "Melee classes only." })
    FirstTab:AddToggle("AutoPrestigeToggle", { Text = "Auto prestige", Default = false, Tooltip = "At level 135, teleports you to World 1, prestiges, and then heads to Crabby Crusade." })
    SecondTab = GenTabRight:AddTab("Settings")
    SecondTab:AddLabel("Pet killaura attack delay", true)
    SecondTab:AddSlider("DelayPetAttackSlider", { Text = "Seconds", Default = 0, Min = 0, Max = 2, Rounding = 2, Compact = true, Tooltip = "Controls the delay between pet attacks when using the 'Pet Killaura' toggle.", Callback = function(petAttackDelay)
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
    _SecondTab:AddSlider("RestartStuckSlider", { Text = "Seconds", Default = defaultRestartSeconds, Min = 30, Max = 120, Rounding = 0, Compact = true, Tooltip = "Controls how long the script waits before rejoining a dungeon when a bug leaves you unable to finish it.", Callback = function(restartDelay)
        MaxPingTolerance = restartDelay
    end
	})
    task.wait()
    task.wait()
    _G.ScriptStep = "creating event tab"
    EventTabIconTable = { [1] = "rbxassetid://8202463897", [2] = "rbxassetid://8723477744", [3] = "rbxassetid://8723477744", [4] = "rbxassetid://9299343400", [5] = "rbxassetid://9299343400", [6] = "rbxassetid://11582306327", [7] = "rbxassetid://11582306327", [8] = "rbxassetid://124707423544340", [9] = "rbxassetid://124707423544340", [10] = "rbxassetid://5763863934", [11] = "rbxassetid://81638085579862", [12] = "rbxassetid://8202463897" }
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
    FirstTab:AddToggle("InstakillToggle", { Text = "Instakill Vane", Default = false, Tooltip = "Make sure 'Auto Farm' is turned on when using this toggle!\n<font color='#FF3333'>THIS MAY NOT WORK FOR EVERYONE AND IS NOT GUARANTEED TO ALWAYS WORK</font>" })
    FirstTab:AddToggle("CollectBuffToggle", { Text = "Collect selected buffs", Default = false, Tooltip = "Pick the buffs from the dropdown below that the script will pick up." })
    Settings.BuffOrbList = { ["Damage Boost"] = "DamageBuffOrb", Ultimate = "UltChargeBuffOrb", Healing = "HealthBuffOrb", Shield = "DefenseBuffOrb" }
    FirstTab:AddDropdown("OrbBuffDropdown", { 		Values = { "Damage Boost", "Ultimate", "Healing", "Shield" }, Multi = true, AllowNull = true, Default = "", MaxVisibleDropdownItems = 5, Searchable = true, Callback = function(selectedBuffs)
        if InDungeon and Options.OrbBuffDropdown:GetActiveValues(true) > 0 then
            Settings.SelectedOrbs = {}

            for k, _ in pairs(selectedBuffs) do table.insert(Settings.SelectedOrbs, Settings.BuffOrbList[k]) end

            return
        end

        Settings.SelectedOrbs = nil
    end
	})
    FirstTab = EventTabLeft:AddTab("Advanced")
    FirstTab:AddDropdown("InstakillDropdown", { 		Values = { "Normal method", "Alternative method" }, Multi = false, AllowNull = false, Default = "Normal method", Text = "Select instakill method", Searchable = true })
    local settingsRef = Settings
    local cupidConfig = { EventTag = "CUPID_KILLS_" }
    local easterBunnyConfig = { EventTag = "EASTERBUNNY_KILLS_" }
    local krakenConfig = { EventTag = "KRAKEN_KILLS_" }
    local vaneConfig = { EventTag = "VANE_KILLS_" }
    local fallenKingConfig = { EventTag = "FALLENKING_KILLS_" }
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
    FirstTab:AddDropdown("EventBossDropdown", { 		Values = { "Cupid", "Easter Bunny", "Kraken", "Vane", "Fallen King", "Korrupted Klaus" }, Multi = false, AllowNull = false, Default = "", Text = "Select event boss", Searchable = true })
    Settings.TotalKillLabel = FirstTab:AddLabel("Total Kills: ?", false)
    FirstTab:AddInput("TotalEventInput", {
		Text = "Stop after X total kills",
		Default = "",
		Placeholder = "number here",
		Callback = function(totalKillsValue)
        if InDungeon then Settings.StopAfterTotalKills = totalKillsValue end
    end
	})
    FirstTab:AddDivider({ Margin = -5 })
    Settings.DailyKillLabel = FirstTab:AddLabel("Daily Kills: ?", false)
    FirstTab:AddInput("DailyEventInput", {
		Text = "Stop after X daily kills",
		Default = "",
		Placeholder = "number here",
		Callback = function(dailyKillsValue)
        if InDungeon then Settings.StopAfterDailyKills = dailyKillsValue end
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
        if not success then Library:Notify("WHEEL SPIN INPUT ERROR OCCURRED:\n" .. result .. "\nSEND THIS TO SUPPORT", 10000000000000000) end
    end
	})
    FirstTab:AddButton({
		Text = "Spin wheel",
		Tooltip = "High amounts of spins WILL cause lag.",
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

                if not (ServerTick <= spinAmount) then break end

                EventSpinner_JoinQueue:FireServer(LocalPlayer)
                task.wait()
            end
        end)
        if not success then Library:Notify("WHEEL SPIN BUTTON ERROR OCCURRED:\n" .. result .. "\nSEND THIS TO SUPPORT", 10000000000000000) end
    end
	})
    FirstTab:AddDivider({ Margin = -5 })
    RecyclingItems = false
    FirstTab:AddButton({
		Text = "Recycle wheel items",
		Tooltip = "Recycles all wheel items that are not locked or don't have a special hex.\n\n<font color=\"rgb(255, 0, 0)\">You WILL crash if you have a lot of items, but they should be recycled when you rejoin.</font>",
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
                    if v ~= "" and v ~= " " then table.insert(protectedHexes, string.lower(v)) end
                end
            end

            for _, v in pairs(HexColorList) do table.insert(protectedHexes, v) end
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

                    if not hexProtected then table.insert(itemsToRecycle, v) end
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
    SecondTab:AddToggle("AutoClaimBattlepass", { Text = "Auto claim battlepass", Default = false, Tooltip = "Only works the first time it's enabled. If you gain a rank, wait for the next teleport or toggle this off and on before it retries claiming rewards." })
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
    ThirdTab:AddDivider({ Margin = -5 })
    ThirdTab:AddToggle("EventBossPingToggle", { Text = "Event boss ping", Default = false, Tooltip = "Pings whenever the event boss is available." })
    ThirdTab:AddLabel("Daily rewards", false)
    ThirdTab:AddButton({
		Text = "Teleport",
		Tooltip = "Teleports you to all event-hub daily rewards, such as the Obby end, the daily reward, and 3 hidden objects.\nIf you can't teleport invisibly, you'll be teleported blatantly to each of them.",
		Func = function()
        local ok, result = pcall(function()
            if IsFindingHidden or InMainMenu then return end

            local EventFinderReward = Workspace:FindFirstChild("EventFinderReward", true)

            if not EventFinderReward then
                Library:Notify("Go to the event hub if it is available.", 5)

                return
            end

            IsFindingHidden = true

            local rewardTargets = {}

            if EventFinderReward then
                for _, child in pairs(EventFinderReward.Models:GetChildren()) do table.insert(rewardTargets, child:FindFirstChild("Part")) end
            end

            local EventObbyReward = Workspace:FindFirstChild("EventObbyReward", true)

            if EventObbyReward then table.insert(rewardTargets, EventObbyReward.Base) end

            local EventDailyReward = Workspace:FindFirstChild("EventDailyReward", true)

            if EventDailyReward then table.insert(rewardTargets, EventDailyReward.Base) end

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
                if Settings.AllowPlayerTeleports then HumanoidRootPart.CFrame = CFrame.new(Vector3.new(v.Position.X, v.Position.Y + v.Size.Y / 2, v.Position.Z)) end

                task.wait(0.5)
            end

            local Spawn = Workspace:FindFirstChild("Spawn")
            local spawnHalfSize = Spawn.Size.Y / 2
            local spawnPosition = Vector3.new(Spawn.Position.X, Spawn.Position.Y + spawnHalfSize, Spawn.Position.Z)

            if Settings.AllowPlayerTeleports then HumanoidRootPart.CFrame = CFrame.new(spawnPosition) end

            task.wait(1)
            Remotes:WaitForChild("SetMounted", 1e999):FireServer(false)

            if NetDesync then NetDesync(false) end

            for _, child in pairs(Workspace.Coins:GetChildren()) do
                if child.Parent and child:IsA("Part") then child.CanCollide = false child.Anchored = true child.CFrame = CFrame.new(HumanoidRootPart.Position.X, HumanoidRootPart.Position.Y - GetPlayerSize(), HumanoidRootPart.Position.Z) end
            end

            IsFindingHidden = false
        end)

        if not ok then HandleError("TELEPORT DAILY REWARDS", (tostring(result))) end
    end
	}):AddButton({
		Text = "ESP",
		Tooltip = "Highlights all hidden daily rewards on an event-hub map when available.",
		Func = function()
        if ChangingHiddenESP then return end

        local EventFinderReward = Workspace:FindFirstChild("EventFinderReward", true)

        if not EventFinderReward then
            Library:Notify("Go to the event hub if it is available.", 5)

            return
        end

        ChangingHiddenESP = true

        local rewardModels = {}

        if EventFinderReward then
            for _, child in pairs(EventFinderReward.Models:GetChildren()) do table.insert(rewardModels, child) end
        end

        local EventObbyReward = Workspace:FindFirstChild("EventObbyReward", true)

        if EventObbyReward then table.insert(rewardModels, EventObbyReward.Base) end

        local EventDailyReward = Workspace:FindFirstChild("EventDailyReward", true)

        if EventDailyReward then table.insert(rewardModels, EventDailyReward.Base) end

        for _, v in pairs(rewardModels) do
            if v.ClassName == "Model" then
                local GetDescendants = v.GetDescendants

                for _, espDescendant in pairs(GetDescendants(v)) do
                    if espDescendant.ClassName == "Highlight" and espDescendant.Name ~= "ESP" then espDescendant:Destroy() end
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
		Tooltip = "Pulls all flying hoops to your character, then returns them to their original spots in an event hub when available.",
		Func = function()
        if TeleportingHoops > 0 or InMainMenu then return end

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
            if not InLobby or IsFindingEggs then return end
            local ScavengerHunts = Workspace:FindFirstChild("ScavengerHunts")
            if not ScavengerHunts then return end
            local EggHunt = ScavengerHunts:FindFirstChild("EggHunt")
            if not EggHunt then return end
            local Spawns = EggHunt:FindFirstChild("Spawns")
            if not Spawns then return end
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

                if Settings.AllowPlayerTeleports then HumanoidRootPart.CFrame = CFrame.new(eggPosition) end

                task.wait(0.5)
            end
            local Spawn = Workspace:FindFirstChild("Spawn")
            if not Spawn then return end
            local spawnHalfSize = Spawn.Size.Y / 2
            local spawnPosition = Vector3.new(Spawn.Position.X, Spawn.Position.Y + spawnHalfSize, Spawn.Position.Z)

            if Settings.AllowPlayerTeleports then HumanoidRootPart.CFrame = CFrame.new(spawnPosition) end

            task.wait(1)
            Remotes:WaitForChild("SetMounted", math.huge):FireServer(false)
            if NetDesync then NetDesync(false) end
            for _, child in pairs(Workspace.Coins:GetChildren()) do
                if child.Parent and child:IsA("Part") then child.CanCollide = false child.Anchored = true child.CFrame = CFrame.new(HumanoidRootPart.Position.X, HumanoidRootPart.Position.Y - GetPlayerSize(), HumanoidRootPart.Position.Z) end
            end
            IsFindingEggs = false
        end)
        if not success then HandleError("FIND ALL EGGS", (tostring(result))) end
    end
	}):AddButton({
		Text = "ESP",
		Tooltip = "Highlights every scavenger-hunt object when a hunt is active in your current world.",
		Func = function()
        local success, result = pcall(function()
            if ChangingESP then return end

            local ScavengerHunts = Workspace:FindFirstChild("ScavengerHunts")

            if not ScavengerHunts then return end

            local EggHunt = ScavengerHunts:FindFirstChild("EggHunt")

            if not EggHunt then return end

            local _ScavengerHuntContainer = EggHunt:FindFirstChild("_ScavengerHuntContainer")

            if not _ScavengerHuntContainer then return end

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
        if not success then HandleError("FIND ALL EGGS", (tostring(result))) end
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
    LeftGroupBox:AddToggle("PlacePlayerShopToggle", { Text = "Auto place player shop", Default = false, Tooltip = "The shop is automatically removed when this is turned off." })
    LeftGroupBox:AddDropdown("PlayerShopDropdown", { Values = {}, Default = "", Multi = false, Text = "Open selected players shop" })
    LeftGroupBox:AddButton({
		Text = "Scan for active player shops",
		Func = function()
        local shopOwners = {}
        local ShopLocations = game.Workspace:FindFirstChild("ShopLocations")

        if not ShopLocations then return end

        local GetDescendants = ShopLocations.GetDescendants

        for _, v in pairs(GetDescendants(ShopLocations)) do
            if v:IsA("ObjectValue") and v.Name == "PlayerOwner" and v.Value ~= PlayerName then table.insert(shopOwners, v.Value) end
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
        if Settings.CheckingTrade or InMainMenu then return end

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

                if not iterValue then searchExhausted = true end

                if searchExhausted then break end
            until tradeInstance:FindFirstChild(PlayerName)
            if not searchExhausted then currentTrade = tradeInstance end
            searchExhausted = false
            if not currentTrade then
                Library:Notify("You are not trading anyone", 3)
                Settings.CheckingTrade = nil

                return
            end
            for _, tradeParticipant in pairs(currentTrade:GetChildren()) do

                if tradeParticipant.Name ~= LocalPlayer.Name then for _, descendant in pairs(tradeParticipant:GetDescendants()) do if descendant.Name == "ID" then itemsChecked += 1; table.insert(tradeItems, descendant.Parent) end end end
            end
            if itemsChecked == 0 then
                Library:Notify("No items to check", 3)
                Settings.CheckingTrade = nil

                return
            end
            local GetDescendants = Items.GetDescendants
            for _, itemDescendant in pairs(GetDescendants(Items)) do

                if itemDescendant.Name == "ID" then detectDupe(itemDescendant.Parent) end
            end
            for _, equipsDescendant in pairs(playerEquipsFolder:GetDescendants()) do

                if equipsDescendant.Name == "ID" then detectDupe(equipsDescendant.Parent) end
            end
            if dupesFound == 0 then
                Library:Notify("No duped items found", 3)
                Settings.CheckingTrade = nil

                return
            end
        end)

        if not ok then HandleError("SCAN TRADE FOR DUPE", (tostring(result))) end

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
    RightGroupBox:AddDropdown("TradeDropdown", { Values = {}, Text = "Items", Multi = true, AllowNull = true, Default = "", MaxVisibleDropdownItems = 5, Searchable = true })
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
            if displayToReal[label] then label ..= tostring(invisibleCode); invisibleCode ..= "\226\128\139" end

            return label
        end

        if not Settings.CanRequire then

            for _, itemChild in pairs(itemChildren) do

                local Name = itemChild.Name

                if not seenNames[Name] and (not itemChild:FindFirstChild("Locked") and not itemChild:FindFirstChild("Favorited")) then seenNames[Name] = true table.insert(displayValues, Name) displayToReal[Name] = Name end
            end
            for _, v in pairs(cosmeticChildren) do
                local vName = v.Name

                if not seenNames[vName] and (not v:FindFirstChild("Locked") and not v:FindFirstChild("Favorited")) then seenNames[vName] = true table.insert(displayValues, vName) displayToReal[vName] = vName end
            end
        else
            local lib = require(Items)
            for _, itemChild in pairs(itemChildren) do

                local DisplayKey = lib[itemChild.Name].DisplayKey

                if not seenNames[itemChild.Name] then
                    local uniqueLabel = makeUniqueLabel(DisplayKey)

                    if not itemChild:FindFirstChild("Locked") and (not itemChild:FindFirstChild("Favorited") and not lib[itemChild.Name].Untradeable) then seenNames[itemChild.Name] = true table.insert(displayValues, uniqueLabel) displayToReal[uniqueLabel] = itemChild.Name end
                end
            end
            for _, v in pairs(cosmeticChildren) do
                local DisplayKey = lib[v.Name].DisplayKey

                if not seenNames[v.Name] then
                    local uniqueLabel = makeUniqueLabel(DisplayKey)

                    if not v:FindFirstChild("Locked") and (not v:FindFirstChild("Favorited") and not lib[v.Name].Untradeable) then seenNames[v.Name] = true table.insert(displayValues, uniqueLabel) displayToReal[uniqueLabel] = v.Name end
                end
            end
        end

        Options.TradeDropdown:SetValues(displayValues)
        TradeTable = displayToReal
    end
	})
    RightGroupBox:AddButton({
		Text = "Add selected items",
		Tooltip = "May cause lag for both players in the trade.",
		Func = function()
        local selectedNames = {}

        for k, _ in pairs(Options.TradeDropdown.Value) do
            local selectedKey = k

            if selectedKey then selectedNames[TradeTable[selectedKey]] = true end
        end

        local addedCount = 0
        local itemChildren = (ResolveBackpack() or PlayerBackpack):WaitForChild("Items", 1e999):GetChildren()
        local cosmeticChildren = PlayerBackpack:WaitForChild("Cosmetics", 1e999):GetChildren()
        local Trade_AddItem = Remotes:WaitForChild("Trade_AddItem", 1e999)
        local iterFn, iterState, iterValue = pairs(itemChildren)

        repeat
            local itemInstance

            iterValue, itemInstance = iterFn(iterState, iterValue)

            if not iterValue then break end

            if selectedNames[itemInstance.Name] then Trade_AddItem:FireServer(itemInstance, math.huge); addedCount += 1 end
        until addedCount == 20

        if addedCount == 20 then return end

        for _, v in pairs(cosmeticChildren) do
            if selectedNames[v.Name] then Trade_AddItem:FireServer(v, 1e999); addedCount += 1 end

            if addedCount == 20 then return end
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
    FirstTab:AddToggle("GeneralClassBuffToggle", { Text = "General class buffs", Default = false, Tooltip = "Gives you Dual Wielder and Guardian buffs." })
    FirstTab:AddDivider({ Margin = -5 })
    Settings.RangedClassLabel = FirstTab:AddLabel("Ranged class distance", false)
    FirstTab:AddSlider("ChangedRangedXSlider", { Text = "X", Default = 20, Min = -50, Max = 50, Rounding = 0, Compact = true, Tooltip = "Forward and backwards.\nDefault: 20", Callback = function(xDistance)
        if Class and Class.Distance == "Ranged" then MeleeMinDist = xDistance end
    end
	})
    FirstTab:AddSlider("ChangedRangedYSlider", { Text = "Y", Default = 50, Min = -50, Max = 50, Rounding = 0, Compact = true, Tooltip = "Up and down.\nDefault: 50", Callback = function(yDistance)
        local _Class = Class

        if _Class then _Class = Class.Distance == "Ranged" end

        if _Class then MeleeMaxDist = yDistance end
    end
	})
    FirstTab:AddDivider({ Margin = -5 })
    Settings.MeleeClassLabel = FirstTab:AddLabel("Melee class distance", false)
    FirstTab:AddSlider("ChangedMeleeXSlider", { Text = "X", Default = 13, Min = -50, Max = 50, Rounding = 0, Compact = true, Tooltip = "Forward and backwards.\nDefault: 15", Callback = function(xDistance)
        if Class and Class.Distance == "Melee" then MeleeMinDist = xDistance end
    end
	})
    FirstTab:AddSlider("ChangedMeleeYSlider", { Text = "Y", Default = 8, Min = -50, Max = 50, Rounding = 0, Compact = true, Tooltip = "Up and down.\nDefault: 8", Callback = function(yDistance)
        if Class and Class.Distance == "Melee" then MeleeMaxDist = yDistance end
    end
	})
    RightGroupBox = ClassTab:AddRightGroupbox("Extra")
    RightGroupBox:AddToggle("MoLBarrierToggle", { Text = "MoL barrier", Default = false, Tooltip = "Gives a barrier to everyone else in the game instead of only yourself.\nOnly Mage of Light can use this." })
    RightGroupBox:AddToggle("DemonBloodBindingToggle", { Text = "Demon blood binding", Default = false, Tooltip = "Only Demon can use this." })
    RightGroupBox:AddToggle("StormcallerSuperchargeToggle", { Text = "Stormcaller supercharge", Default = false, Tooltip = "Only Stormcaller can use this." })
    task.wait()
    _G.ScriptStep = "creating equipment tab"
    InventoryTab = Window:AddTab({
		Name = "Inventory",
		Icon = "package",
		Description = "Auto-sell, perks, equips and cosmetics"
	})
    local settingsRef = Settings
    local goldHoarderPerk = { PerkValue = 0.2, PetPerkValue = 0.2, PerkInternalName = "GoldDrop", PerkVisualName = "Gold Hoarder" }
    local luckyLooterPerk = { PerkValue = 0.1, PetPerkValue = 0.1, PerkInternalName = "PetFoodDrop", PerkVisualName = "Lucky Looter" }
    local energizedPerk = { PerkValue = 0.15, PetPerkValue = 0.15, PerkInternalName = "UltCharge", PerkVisualName = "Energized" }
    local hpUpPerk = { PerkValue = 0.12, PetPerkValue = 0.07, PerkInternalName = "BonusHP", PerkVisualName = "HP UP" }
    local attackUpPerk = { PerkValue = 0.08, PetPerkValue = 0.05, PerkInternalName = "BonusAttack", PerkVisualName = "Attack Up" }
    local agilityPerk = { PerkValue = 0.1, PetPerkValue = 0.1, PerkInternalName = "BonusWalkspeed", PerkVisualName = "Agility" }
    local burnResistancePerk = { PerkValue = 0.9, PetPerkValue = 0.9, PerkInternalName = "ResistBurn", PerkVisualName = "Burn Resistance" }
    local poisonResistancePerk = { PerkValue = 0.9, PetPerkValue = 0.9, PerkInternalName = "ResistPoison", PerkVisualName = "Poison Resistance" }
    local frostResistancePerk = { PerkValue = 0.9, PetPerkValue = 0.9, PerkInternalName = "ResistFrost", PerkVisualName = "Frost Resistance" }
    local knockdownResistancePerk = { PerkValue = 0.9, PetPerkValue = 0.9, PerkInternalName = "ResistKockdown", PerkVisualName = "Knockdown Resistance" }
    local untouchablePerk = { PerkValue = 0.2, PerkInternalName = "DodgeChance", PerkVisualName = "Untouchable" }
    local roughSkinPerk = { PerkValue = 0.1, PerkInternalName = "RoughSkin", PerkVisualName = "Rough Skin" }
    local damageReductionPerk = { PerkValue = 0.08, PerkInternalName = "DamageReduction", PerkVisualName = "Damage Reduction" }
    local lifeDrainPerk = { PerkValue = 0.06, PerkInternalName = "LifeDrain", PerkVisualName = "Life Drain" }
    local burnChancePerk = { PerkValue = 0.15, PerkInternalName = "BurnChance", PerkVisualName = "Burn Chance" }
    local frostChancePerk = { PerkValue = 0.15, PerkInternalName = "FrostChance", PerkVisualName = "Frost Chance" }
    local poisonChancePerk = { PerkValue = 0.15, PerkInternalName = "PoisonChance", PerkVisualName = "Poison Chance" }
    local critStackPerk = { PerkValue = 0.15, PerkInternalName = "CritStack", PerkVisualName = "Crit Stack" }
    local poisonThornsPerk = { PerkValue = 0.6, PerkInternalName = "PoisonThorns", PerkVisualName = "Poisonous Thorns" }
    local elementalResistancePerk = { PerkValue = 0.4, PetPerkValue = 0.15, PerkInternalName = "Elemental", PerkVisualName = "Elemental Resistance" }
    local ferociousPerk = { PerkValue = 0.4, PetPerkValue = 0.15, PerkInternalName = "Ferocious", PerkVisualName = "Ferocious" }
    local vampiricPerk = { PerkValue = 0.15, PetPerkValue = 0.05, PerkInternalName = "Vampiric", PerkVisualName = "Vampiric" }
    local bossBanePerk = { PerkValue = 0.3, PetPerkValue = 0.1, PerkInternalName = "TestTier5", PerkVisualName = "Boss Bane" }
    local mobSlayerPerk = { PerkValue = 0.3, PetPerkValue = 0.1, PerkInternalName = "MobBoss", PerkVisualName = "Mob Slayer" }
    local eliteAssassinPerk = { PerkValue = 0.3, PetPerkValue = 0.1, PerkInternalName = "EliteBoss", PerkVisualName = "Elite Assassin" }
    local openingStrikePerk = { PerkValue = 0.25, PerkInternalName = "OpeningStrike", PerkVisualName = "Opening Strike" }
    local selfDestructPerk = { PerkValue = 0.5, PerkInternalName = "Destruction", PerkVisualName = "Self Destruct" }
    local fortressPerk = { PerkValue = 0.4, PerkInternalName = "Fortress", PerkVisualName = "Fortress" }
    local glassPerk = { PerkValue = 1, PerkInternalName = "Glass", PerkVisualName = "Glass" }
    local masterThiefPerk = { PerkValue = 0.35, PerkInternalName = "MasterThief", PerkVisualName = "Master Thief" }
    local oblivionPerk = { PerkValue = 0.05, PetPerkValue = 0.05, PerkInternalName = "Oblivion", PerkVisualName = "Oblivion" }
    local recklessPerk = { PerkValue = 0.25, PetPerkValue = 0.25, PerkInternalName = "Reckless", PerkVisualName = "Reckless" }
    local comebackPerk = { PerkValue = 0.3, PerkInternalName = "Comeback", PerkVisualName = "Comeback" }
    local relentlessPerk = { PerkValue = 0.15, PerkInternalName = "Relentless", PerkVisualName = "Relentless" }
    local duelistPerk = { PerkValue = 0.3, PerkInternalName = "Duelist", PerkVisualName = "Duelist" }
    local unstoppablePerk = { PerkValue = 0.15, PerkInternalName = "Unstoppable", PerkVisualName = "Unstoppable" }
    local survivorPerk = { PerkValue = 0.2, PerkInternalName = "Survivor", PerkVisualName = "Survivor" }
    local executionerPerk = { PerkValue = 0.5, PetPerkValue = 0.5, PerkInternalName = "Executioner", PerkVisualName = "Executioner" }
    local adrenalinePerk = { PerkValue = 0.3, PerkInternalName = "Adrenaline", PerkVisualName = "Adrenaline" }
    settingsRef.SavePerkTable = { ["Gold Hoarder"] = goldHoarderPerk, ["Lucky Looter"] = luckyLooterPerk, Energized = energizedPerk, ["HP UP"] = hpUpPerk, ["Attack Up"] = attackUpPerk, Agility = agilityPerk, ["Burn Resistance"] = burnResistancePerk, ["Poison Resistance"] = poisonResistancePerk, ["Frost Resistance"] = frostResistancePerk, ["Knockdown Resistance"] = knockdownResistancePerk, Untouchable = untouchablePerk, ["Rough Skin"] = roughSkinPerk, ["Damage Reduction"] = damageReductionPerk, ["Life Drain"] = lifeDrainPerk, ["Burn Chance"] = burnChancePerk, ["Frost Chance"] = frostChancePerk, ["Poison Chance"] = poisonChancePerk, ["Crit Stack"] = critStackPerk, ["Poisonous Thorns"] = poisonThornsPerk, ["Elemental Resistance"] = elementalResistancePerk, Ferocious = ferociousPerk, Vampiric = vampiricPerk, ["Boss Bane"] = bossBanePerk, ["Mob Slayer"] = mobSlayerPerk, ["Elite Assassin"] = eliteAssassinPerk, ["Opening Strike"] = openingStrikePerk, ["Self Destruct"] = selfDestructPerk, Fortress = fortressPerk, Glass = glassPerk, ["Master Thief"] = masterThiefPerk, Oblivion = oblivionPerk, Reckless = recklessPerk, Comeback = comebackPerk, Relentless = relentlessPerk, Duelist = duelistPerk, Unstoppable = unstoppablePerk, Survivor = survivorPerk, Executioner = executionerPerk, Adrenaline = adrenalinePerk }
    InventoryTabLeft = InventoryTab:AddLeftTabbox("Main")
    FirstTab = InventoryTabLeft:AddTab("Inventory")
    FirstTab:AddToggle("AutoSellToggle", { Text = "Auto sell items", Default = false, Tooltip = "Only applies to new items - eggs are not sold." })
    FirstTab:AddDivider()
    Settings.AutoSellOptions = { none = false, ["3-5"] = 3, ["4-5"] = 4, ["5"] = 5 }
    FirstTab:AddDropdown("AutoSellDropdown", { 		Values = { "none", "3-5", "4-5", "5" }, Multi = false, Text = "Keep tiers", AllowNull = false, Default = "5", Callback = function(tierKey)
        if tierKey and InDungeon or InLobby then SellRarityThreshold = Settings.AutoSellOptions[tierKey] end
    end
	})
    FirstTab:AddDivider()
    FirstTab:AddToggle("KeepSelectedPerkToggle", { Text = "Keep selected perks", Default = false, Tooltip = "By default, only S+ perks are kept.", Callback = function(enabled)
        if enabled then enabled = InDungeon or InLobby end

        if enabled then
            Settings.KeepPerks = true

            return
        end

        Settings.KeepPerks = nil
    end
	})
    FirstTab:AddDropdown("PerkListDropdown", { 		Values = { "Gold Hoarder", "Lucky Looter", "Energized", "HP UP", "Attack Up", "Agility", "Burn Resistance", "Poison Resistance", "Frost Resistance", "Knockdown Resistance", "Untouchable", "Rough Skin", "Damage Reduction", "Life Drain", "Burn Chance", "Frost Chance", "Poison Chance", "Crit Stack", "Poisonous Thorns", "Elemental Resistance", "Ferocious", "Vampiric", "Boss Bane", "Mob Slayer", "Elite Assassin", "Opening Strike", "Self Destruct", "Fortress", "Glass", "Master Thief", "Oblivion", "Reckless", "Comeback", "Relentless", "Duelist", "Unstoppable", "Survivor", "Executioner", "Adrenaline" }, Text = "Perks to keep", Multi = true, AllowNull = true, Default = "", MaxVisibleDropdownItems = 5, Searchable = true, Callback = function(selectedPerks)
        Settings.SelectedPerks = {}
        local perkCount = 0
        for perkName, _ in pairs(selectedPerks) do

            Settings.SelectedPerks[tostring(perkName)] = Settings.SavePerkTable[perkName]
            perkCount += 1
        end
        if perkCount == 0 then Settings.SelectedPerks = nil end
    end
	})
    FirstTab:AddButton({
		Text = "Sell inventory",
		DoubleClick = true,
		Tooltip = "All options (including perk filtering) are taken into account when selling your inventory.",
		Func = function()
        local Charms
        if Settings.CanRequire and Charms then Charms = require(Charms:WaitForChild("Charms")) end
        local Items = (ResolveBackpack() or PlayerBackpack):WaitForChild("Items")
        local GetChildren = Items.GetChildren
        for _, v in pairs(GetChildren(Items)) do
            ActiveSellCount += 1

            if not (v:FindFirstChild("Count") or (v:FindFirstChild("Locked") or (v:FindFirstChild("Favorited") or v:FindFirstChild("GiftWrap")))) then
                local str = tostring(v.Name)
                local petsFlag = v:FindFirstChild("XP") or string.find(str, "Pet")
                local isPet = petsFlag
                if isPet then petsFlag = not Settings.IncludePets end
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

                        if not ok then HandleError("SELL", (tostring(result))) end

                        continue
                    end

                    if itemRarity < SellRarityThreshold then
                        local ok, result = pcall(function()
                            (GetSellRemote() or error("Drops_SellItems is missing")):InvokeServer({ v })
                            Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(v), 1)
                            ActiveSellCount -= 1
                        end)

                        if not ok then HandleError("SELL", (tostring(result))) end

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

                    if not ok then HandleError("SELL", (tostring(result))) end

                    return
                end
                local isEgg = table.find(EggNameList, str) or false
                local perkMatched = false
                if not isEgg and (Settings.KeepPerks and Settings.SelectedPerks) then
                    for i = 1, 3 do
                        if perkMatched then break end

                        local perkFolder = v:FindFirstChild("Perk" .. tostring(i))

                        if perkFolder then
                            local PerkValue = perkFolder:FindFirstChild("PerkValue")

                            for perkName, _ in pairs(Settings.SelectedPerks) do
                                local perkConfig = Settings.SavePerkTable[perkName]
                                local perkMatches = perkFolder.Value == perkConfig.PerkInternalName

                                if perkMatches then perkMatches = PerkValue.Value >= (perkConfig.PerkValue * 100 - PerkTolerance) / 100 or (isPet or isCharm) and PerkValue.Value >= (perkConfig.PetPerkValue * 100 - PerkTolerance) / 100 end

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

                    if not ok then HandleError("SELL", (tostring(result))) end
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
    SecondTab:AddToggle("SellPetToggle", { Text = "Sell pets", Default = false, Tooltip = "Allows the auto-sell features to apply to pets as well.", Callback = function(enabled)
        if enabled then enabled = InDungeon or InLobby end

        if enabled then
            Settings.IncludePets = true

            return
        end

        Settings.IncludePets = nil
    end
	})
    SecondTab:AddToggle("SellTowerEggToggle", { Text = "Sell tower eggs", Default = false, Tooltip = "Automatically sells eggs from towers when you're able to collect them.", Callback = function(enabled)
        if enabled then enabled = InDungeon end

        if enabled then
            Settings.SellTowerEggs = true

            return
        end

        Settings.SellTowerEggs = nil
    end
	})
    SecondTab:AddToggle("SellPetToggle", { Text = "Sell charms", Default = false, Tooltip = "Allows the auto-sell features to apply to charms as well.", Callback = function(enabled)
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
    SecondTab:AddSlider("AutoSellDelaySlider", { Text = "Seconds", Default = 1, Min = 1, Max = 4, Rounding = 0, Compact = true, Tooltip = "Changes how long the script waits before scanning an item to decide whether to sell it. By default it waits 1 second so the item's properties can load.", Callback = function(sellDelaySeconds)
        Settings.AddedAutoSellDelay = sellDelaySeconds
    end
	})
    SecondTab:AddLabel("Perfect perk offset", true)
    SecondTab:AddSlider("PerkPercentSlider", { Text = "Offset", Default = 0, Min = 0, Max = 5, Rounding = 0, Compact = true, Tooltip = "Increases the range at which perks are kept - for example, add 1 to the offset to keep Attack Up 7% as well as 8%.", Callback = function(perkOffset)
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
    FirstTab:AddDropdown("CosmeticDropdown", { Values = {}, Text = "Cosmetics", Multi = true, AllowNull = true, Default = "", MaxVisibleDropdownItems = 5, Searchable = true })
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
        if Settings.CanRequire then lib = require(Items) end
        local Cosmetics = PlayerBackpack:FindFirstChild("Cosmetics")
        local seenCosmetics = {}
        local displayKeys = {}
        local displayToReal = {}
        if not Settings.CanRequire then
            for _, child in pairs(Cosmetics:GetChildren()) do
                if not seenCosmetics[child.Name] then seenCosmetics[child.Name] = true table.insert(displayKeys, child.Name) displayToReal[child.Name] = child.Name end
            end
        else
            local GetChildren = Cosmetics.GetChildren

            for _, v in pairs(GetChildren(Cosmetics)) do
                if not seenCosmetics[v.Name] then seenCosmetics[v.Name] = true table.insert(displayKeys, lib[v.Name].DisplayKey) displayToReal[lib[v.Name].DisplayKey] = v.Name end
            end
        end
        Options.CosmeticDropdown:SetValues(displayKeys)
        Settings.RealCosmeticTable = displayToReal
    end
	})
    function RecycleFromInventory(action)
        local selectedCosmetics = {}
        for displayKey, _ in pairs(Options.CosmeticDropdown.Value) do

            if displayKey then selectedCosmetics[Settings.RealCosmeticTable[displayKey]] = true end
        end
        local protectedHexes = {}
        local SaveUserHexesInputValue = Options.SaveUserHexesInput.Value
        if SaveUserHexesInputValue then
            if SaveUserHexesInputValue ~= "" and SaveUserHexesInputValue ~= " " then
                local hexNoSpaces = string.gsub(SaveUserHexesInputValue, ", ", ",")
                local hexNoHash = string.gsub(hexNoSpaces, "#", "")
                local parts = string.split(hexNoHash, ",")

                for _, v in pairs(parts) do
                    if v ~= "" and v ~= " " then table.insert(protectedHexes, string.lower(v)) end
                end
            end

            for _, v in pairs(HexColorList) do table.insert(protectedHexes, v) end
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

                    if not hexProtected then table.insert(targetItems, cosmetic) end
                end
            end
        end
        if action == "Recycle" then
            Library:Notify("Attempting to recycle " .. tostring(#targetItems) .. " items", 5)
            Remotes:WaitForChild("Recycler_Recycle", 1e999):FireServer(targetItems)

            return
        end
        if action == "Gold" then Library:Notify("Attempting to sell " .. tostring(#targetItems) .. " items", 5); (GetSellRemote() or error("Drops_SellItems is missing")):InvokeServer(targetItems) end
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

        if not inGame then inGame = InDungeon end

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
    FirstTab:AddToggle("ReplayMissionToggle", { Text = "Auto restart mission", Default = false, Tooltip = "Only works if enabled before the dungeon ends!" })
    FirstTab:AddToggle("CollectChestToggle", { Text = "Collect chests", Default = false, Tooltip = "Only works if enabled before the dungeon ends!" })
    FirstTab:AddToggle("HighestDungeonToggle", { Text = "Do highest level dungeon", Default = false, Tooltip = "Useful while leveling: moves to the highest-level dungeon you can play and auto-equips new gear when it's a higher level." })
    FirstTab:AddToggle("RandomNightmareDungeonToggle", { Text = "Random nightmare dungeon", Default = false, Tooltip = "When the dungeon ends, picks a random dungeon from the Nightmare Portal to play.", Callback = function(enabled)
        if InDungeon and enabled then
            Settings.RandomNightmareDungeon = math.random(1005, 1007)

            return
        end

        Settings.RandomNightmareDungeon = nil
    end
	})
    FirstTab:AddToggle("ReplayInfiniteTowerToggle", { Text = "Limit infinite tower", Default = false, Tooltip = "Restarts Infinite Tower once a predetermined floor has been reached." })
    FirstTab:AddToggle("NightmarePingToggle", { Text = "Nightmare ping", Default = false, Tooltip = "Pings whenever the Nightmare dungeon event is active." })
    SecondTab = DungeonTabLeft:AddTab("Settings")
    SecondTab:AddLabel("Restart dungeon delay", true)
    SecondTab:AddSlider("ReplayMissionSlider", { Text = "Restart delay", Default = 3, Min = 1, Max = 60, Rounding = 0, Compact = true, Tooltip = "Changes the delay before restarting the dungeon when 'Auto Restart Mission' is selected.", Callback = function(restartDelay)
        Settings.RestartDungeonDelay = restartDelay
    end
	})
    SecondTab:AddLabel("Collect chest delay", true)
    SecondTab:AddSlider("ChestDelaySlider", { Text = "Collect chest delay", Default = 0.1, Min = 0.01, Max = 5, Rounding = 2, Compact = true, Tooltip = "Changes the delay between collecting chests.", Callback = function(chestDelay)
        Settings.CollectChestsDelay = chestDelay
    end
	})
    SecondTab:AddLabel("Infinite tower reset floor", true)
    SecondTab:AddSlider("InfResetSlider", { Text = "Floor", Default = 200, Min = 155, Max = 400, Rounding = 0, Compact = true, Tooltip = "Changes which floor Infinite Tower restarts at when 'Periodically Reset Inf Tower' is selected.", Callback = function(resetFloor)
        RangedDistance = resetFloor
    end
	})
    SecondTab:AddLabel("Prioritize nightmare dungeons", true)
    SecondTab:AddDropdown("PrioNmDropdown", { Values = {}, Multi = true, AllowNull = true, Default = nil, MaxVisibleDropdownItems = 5, Searchable = true, Callback = function()
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
        if v.Level > 0 and v.Level < 130 then Settings.PrioritizedNightmareDungeons[v.DungeonName] = v.DungeonID; table.insert(Settings.NMDisplayValues, v.DungeonName) end
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
        if InDungeon then Settings.StopAfterTotalNightmare = totalClears end
    end
	})
    RightGroupBox:AddDivider({ Margin = -5 })
    Settings.DailyNightmareLabel = RightGroupBox:AddLabel("Daily nightmare clears: ?", false)
    RightGroupBox:AddInput("DailyNightmareInput", {
		Text = "Stop after X daily clears",
		Default = "",
		Placeholder = "number here",
		Callback = function(dailyClears)
        if InDungeon then Settings.StopAfterDailyNightmare = dailyClears end
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
    FirstTab:AddToggle("WaitTimeToggle", { Text = "Wait for legit time", Default = false, Tooltip = "Starts the dungeon and waits a set amount of time before continuing to clear it." })
    FirstTab:AddToggle("DoAllDungeonsToggle", { Text = "Do all dungeons", Default = false, Tooltip = "Starts from your current dungeon and moves on once it's completed - never returns to previous dungeons!\n\nOrder of dungeons:\ninf -> towers 1-6 -> celestial -> all dungeons" })
    FirstTab:AddToggle("DelayInfFloorToggle", { Text = "Delay inf tower floors", Default = false, Tooltip = "In Infinite Tower, the script no longer teleports you - the default countdown takes you to the next floor." })
    FirstTab:AddToggle("GuildQuestToggle", { Text = "Auto claim guild quests", Default = false })
    FirstTab:AddToggle("GuildPingToggle", { Text = "Guild ping", Default = false, Tooltip = "Pings whenever the guild event is active." })
    FirstTab:AddDivider({ Margin = -5 })
    FirstTab:AddDropdown("DoAllDropdown", { 		Values = { "Stop", "Loop", "Loop w/o inf", "Loop w/o towers", "Play nightmare dungeons" }, Multi = false, Text = "Action when finished", AllowNull = false, Default = "Stop" })
    SecondTab = GuildTabLeft:AddTab("Settings")
    SecondTab:AddLabel("Add extra wait time", true)
    SecondTab:AddSlider("AddExtraTimeSlider", { Text = "Seconds", Default = 0, Min = 0, Max = 180, Rounding = 0, Compact = true, Tooltip = "Adds extra time to the 'Wait for a Legit Time' option if you don't think the script waits long enough, or you want a bigger safety margin.", Callback = function(extraTime)
        Settings.AddedGuildTime = extraTime
    end
	})
    SecondTab:AddLabel("Increment inf tower delay ", true)
    SecondTab:AddSlider("IncrementInfiniteSlider", { Text = "Seconds", Default = 0, Min = 0, Max = 10, Rounding = 0, Compact = true, Tooltip = "When 'Delay Inf Tower Floors' is enabled, this toggle adds increasingly more waiting time after each completed boss floor.", Callback = function(incrementDelay)
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
        if InDungeon then Settings.StopAfterTotalPoints = totalPoints end
    end
	})
    FirstTab:AddDivider({ Margin = -5 })
    Settings.DailyGuildPointLabel = FirstTab:AddLabel("Daily Guild Points: ?", false)
    FirstTab:AddInput("DailyKillInput", {
		Text = "Stop after X daily points",
		Default = "",
		Placeholder = "number here",
		Callback = function(dailyPoints)
        if InDungeon then Settings.StopAfterDailyPoints = dailyPoints end
    end
	})
    SecondTab = GuildTabRight:AddTab("Guild spy")
    Settings.SpyOnGuild = SecondTab:AddLabel("No guild to spy on", true)
    SecondTab:AddDivider()
    CopyGuildTable = {}
    CopyGuildChat = {}
    CopyGuildPoints = 0
    SecondTab:AddDropdown("GuildNamesDropdown", { Values = {}, Text = "Guilds", Multi = false, AllowNull = true, Default = "", MaxVisibleDropdownItems = 5, Searchable = true, Callback = function()
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

            if playerGuild ~= "РІСњРЉ" and not seenTags[playerGuild] then table.insert(guildTags, playerGuild); seenTags[playerGuild] = true end
        end

        Options.GuildNamesDropdown:SetValues(guildTags)
    end
	})
    SecondTab:AddButton({
		Text = "Players points",
		Func = function()
        if not Options.GuildNamesDropdown.Value then Settings.SpyOnGuild:SetText("No guild selected") end

        local guildCache = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

        if not guildCache or not guildCache.Members then Settings.SpyOnGuild:SetText("This guilds data is no longer available") end

        table.clear(CopyGuildTable)
        CopyGuildPoints = 0

        local roleColors = { Member = "#ffffff", Builder = "#58B400", Captain = "#009DFF", Elite = "#E44AFF", Leader = "#FFDB0E" }
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
            if not Options.GuildNamesDropdown.Value then Settings.SpyOnGuild:SetText("No Guild selected") end

            local guildCache = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

            if not guildCache or not guildCache.Members then Settings.SpyOnGuild:SetText("Guild data is no longer available") end

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
        if not Options.GuildNamesDropdown.Value then Settings.SpyOnGuild:SetText("No guild selected") end

        local guildCache = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

        if not guildCache or not guildCache.ChatLog then Settings.SpyOnGuild:SetText("This guilds data is no longer available") end

        table.clear(CopyGuildChat)

        local chatLines = {}

        for _, v in pairs(guildCache.ChatLog) do table.insert(chatLines, v[1]); table.insert(CopyGuildChat, v[1]) end

        local SpyOnGuild = Settings.SpyOnGuild
        local chatText = { table.concat(chatLines, "\n") }

        SpyOnGuild:SetText(Unpack(chatText))
    end
	}):AddButton({
		Text = "Clipboard",
		Func = function()
        if #CopyGuildChat == 0 then
            if not Options.GuildNamesDropdown.Value then Settings.SpyOnGuild:SetText("No guild selected") end

            local guildCache = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

            if not guildCache or not guildCache.ChatLog then Settings.SpyOnGuild:SetText("This guilds data is no longer available") end

            table.clear(CopyGuildChat)

            local chatLines = {}

            for _, v in pairs(guildCache.ChatLog) do table.insert(chatLines, v[1]); table.insert(CopyGuildChat, v[1]) end

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
        if not Options.GuildNamesDropdown.Value then Settings.SpyOnGuild:SetText("No guild selected") end

        local guildCache = Remotes:WaitForChild("Guilds_GetCache", 1e999):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

        if not guildCache or not guildCache.Description then Settings.SpyOnGuild:SetText("This guilds data is no longer available") end

        CopyGuildDescription = nil
        Settings.SpyOnGuild:SetText(guildCache.Description)
        CopyGuildDescription = guildCache.Description
    end
	}):AddButton({
		Text = "Clipboard",
		Func = function()
        if not CopyGuildDescription then
            if not Options.GuildNamesDropdown.Value then Settings.SpyOnGuild:SetText("No guild selected") end

            local guildCache = Remotes:WaitForChild("Guilds_GetCache", math.huge):InvokeServer(string.upper(Options.GuildNamesDropdown.Value))

            if not guildCache or not guildCache.Description then Settings.SpyOnGuild:SetText("This guilds data is no longer available") end

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
    Settings.BuyEggList = { 		{ InternalName = "StarEgg", VisualName = "Star egg", CoinPrice = 2000, CurrencyType = "Gold" }, 		{ InternalName = "JungleEgg", VisualName = "Jungle egg", CoinPrice = 5000, CurrencyType = "Gold" }, 		{ InternalName = "CrystalEgg", VisualName = "Crystal egg", CoinPrice = 7500, CurrencyType = "Gold" }, 		{ InternalName = "DesertEgg", VisualName = "Pharaoh's egg", CoinPrice = 10000, CurrencyType = "Gold" }, 		{ InternalName = "ChristmasEgg", VisualName = "Holiday egg", CoinPrice = 400, CurrencyType = "Crystals" } }
    task.wait()
    FirstTab:AddDropdown("EggShopDropdown", { Values = {}, Multi = false, Text = "egg name (price)", AllowNull = true, Default = nil, Searchable = true, Callback = function(eggKey)
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

        if not BuyFromEggShop(SelectedEggItem.CurrencyType, SelectedEggItem.InternalName, SelectedEggItem.CoinPrice, SelectedEggItem.VisualName) then Library:Notify("You do not have enough gold", 3) end
    end
	})
    FirstTab:AddToggle("AutoHatchEggToggle", { Text = "Auto hatch selected egg", Tooltip = "Best used in dungeons where no one else can see you (also reduces lag).", Default = false })
    FirstTab:AddToggle("AutoHatchInventoryEggToggle", { Text = "Hatch eggs in inventory", Default = false })
    FirstTab:AddSlider("EggHatchDelaySlider", { Text = "Egg hatch delay", Default = 0, Min = 0, Max = 10, Rounding = 0, Callback = function(hatchDelay)
        if InLobby or InDungeon then Settings.HatchDelay = hatchDelay end
    end
	})
    SecondTab = ShopTabLeft:AddTab("Nightmare")
    Settings.BuyNightmareItemList = { 		{ InternalName = "NightmareDyeBox", VisualName = "NM Dye Box", CoinPrice = 5 }, 		{ InternalName = "LegendaryEquipmentChest", VisualName = "Legendary Chest", CoinPrice = 10 }, 		{ InternalName = "NightmareHeadphones", VisualName = "NM Headphones", CoinPrice = 15 }, 		{ InternalName = "NightmareCatcher", VisualName = "NM Catcher", CoinPrice = 15 }, 		{ InternalName = "NightmarePatch", VisualName = "NM Patch", CoinPrice = 15 }, 		{ InternalName = "ShadowSerpent", VisualName = "Shadow Serpent", CoinPrice = 15 }, 		{ InternalName = "NightmareMask", VisualName = "NM Mask", CoinPrice = 15 }, 		{ InternalName = "NightmareCircle", VisualName = "NM Circle", CoinPrice = 20 }, 		{ InternalName = "NightmareLantern", VisualName = "NM Lantern", CoinPrice = 20 }, 		{ InternalName = "SkullHalo", VisualName = "Skull Halo", CoinPrice = 20 }, 		{ InternalName = "GrimSkulls", VisualName = "Grim Skulls", CoinPrice = 20 }, 		{ InternalName = "BrokenHorns", VisualName = "Broken Horns", CoinPrice = 20 }, 		{ InternalName = "ChainedHorns", VisualName = "Chained Horns", CoinPrice = 20 }, 		{ InternalName = "NightmareHelmet", VisualName = "NM Helmet", CoinPrice = 20 }, 		{ InternalName = "NightmareArmor", VisualName = "NM Armor", CoinPrice = 50 }, 		{ InternalName = "NightmareBox", VisualName = "NM wep skin", CoinPrice = 50 }, 		{ InternalName = "NightmareChampionTitle", VisualName = "NM Champion (title)", CoinPrice = 250 } }
    task.wait()
    SecondTab:AddDropdown("NightmareShopDropdown", { Values = {}, Multi = false, Text = "item name (Nightmare Coins)", AllowNull = true, Default = nil, MaxVisibleDropdownItems = 5, Searchable = true, Callback = function(nightmareItemKey)
        local _Value = Value

        if _Value then _Value = InLobby end

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

        if not BuyFromLocalShop("NightmareCoin", "NightmarePortals", SelectedNightmareItem.InternalName, SelectedNightmareItem.CoinPrice, SelectedNightmareItem.VisualName) then Library:Notify("You do not have enough coins", 3) end
    end
	})
    SecondTab:AddToggle("BuyMaxNightmareToggle", { Text = "Buy max selected item", Default = false })
    SecondTab = ShopTabLeft:AddTab("PVP")
    Settings.BuyPVPItemList = { 		{ InternalName = "PVPDyeBox", VisualName = "PVP Dye Box", CoinPrice = 5 }, 		{ InternalName = "LegendaryEquipmentChest", VisualName = "Legendary Chest", CoinPrice = 15 }, 		{ InternalName = "PVPBow", VisualName = "Lionheart Bow", CoinPrice = 50 }, 		{ InternalName = "PVPLongsword", VisualName = "Lionheart Longsword", CoinPrice = 50 }, 		{ InternalName = "PVPGreatsword", VisualName = "Lionheart Greatsword", CoinPrice = 50 }, 		{ InternalName = "PVPAxe", VisualName = "Lionheart Axe", CoinPrice = 50 }, 		{ InternalName = "PVPStaff", VisualName = "Lionheart Staff", CoinPrice = 50 }, 		{ InternalName = "PVPShield", VisualName = "Lionheart Shield", CoinPrice = 50 }, 		{ InternalName = "PVPSpear", VisualName = "Lionheart Spear", CoinPrice = 50 }, 		{ InternalName = "PVPScythe", VisualName = "Lionheart Scythe", CoinPrice = 50 }, 		{ InternalName = "PVPArmorM", VisualName = "Lionheart Armor (M)", CoinPrice = 100 }, 		{ InternalName = "PVPArmorF", VisualName = "Lionnheart Armor (F)", CoinPrice = 100 }, 		{ InternalName = "TheUnbrokenTitle", VisualName = "Unbroke (title)", CoinPrice = 1000 } }
    task.wait()
    SecondTab:AddDropdown("PVPShopDropdown", { Values = {}, Multi = false, Text = "item name (PVP Coins)", AllowNull = true, Default = nil, MaxVisibleDropdownItems = 5, Searchable = true, Callback = function(pvpItemKey)
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

        if not BuyFromLocalShop("PVPCoin", "PVPShop", SelectedPvpItem.InternalName, SelectedPvpItem.CoinPrice, SelectedPvpItem.VisualName) then Library:Notify("You do not have enough coins", 3) end
    end
	})
    SecondTab:AddToggle("BuyMaxPVPToggle", { Text = "Buy max selected item", Default = false })
    ShopTabRight = ShopTab:AddRightTabbox("Extras")
    FirstTab = ShopTabRight:AddTab("Guild")
    Settings.BuyGuildItemList = { 		{ InternalName = "GuildDyeBox", VisualName = "Guild Dye Box", CoinPrice = 10 }, 		{ InternalName = "LegendaryEquipmentChest", VisualName = "Legendary Chest", CoinPrice = 25 }, 		{ InternalName = "GuildAura", VisualName = "Guild Aura", CoinPrice = 25 }, 		{ InternalName = "GuildBooth", VisualName = "Guild Booth", CoinPrice = 150 }, 		{ InternalName = "GuildCircle", VisualName = "Guild Circle", CoinPrice = 150 }, 		{ InternalName = "GuildCircle2", VisualName = "Guild Circle #2", CoinPrice = 150 }, 		{ InternalName = "KingCrown", VisualName = "King's Crown", CoinPrice = 150 }, 		{ InternalName = "QueenCrown", VisualName = "Queen's Crown", CoinPrice = 150 }, 		{ InternalName = "GuildBrawler", VisualName = "Guild Brawler", CoinPrice = 150 }, 		{ InternalName = "GuildArmor1", VisualName = "Dominion Armor", CoinPrice = 250 }, 		{ InternalName = "GuildArmor2", VisualName = "Regalia Armor", CoinPrice = 250 }, 		{ InternalName = "GuildArmor3", VisualName = "Vanguard Armor", CoinPrice = 250 }, 		{ InternalName = "GuildMount2", VisualName = "Armored Horse", CoinPrice = 400 }, 		{ InternalName = "DarkRatMount", VisualName = "Dark Rat Mount", CoinPrice = 400 }, 		{ InternalName = "GuildGrinderTitle", VisualName = "Guild Grinder", CoinPrice = 2000 } }
    task.wait()
    FirstTab:AddDropdown("GuildShopDropdown", { Values = {}, Multi = false, Text = "item name (Guild Coins)", AllowNull = true, Default = nil, MaxVisibleDropdownItems = 5, Searchable = true, Callback = function(guildItemKey)
        if guildItemKey then guildItemKey = InLobby end

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

        if not BuyFromLocalShop("GuildCoin", "GuildShop", SelectedGuildItem.InternalName, SelectedGuildItem.CoinPrice, SelectedGuildItem.VisualName) then Library:Notify("You do not have enough coins", 3) end
    end
	})
    FirstTab:AddToggle("BuyMaxGuildToggle", { Text = "Buy max selected item", Default = false })
    FirstTab = ShopTabRight:AddTab("Vane")
    Settings.BuyEventList = { 		{ InternalName = "AnimeDyeBox", VisualName = "Grand Dye Box", CoinPrice = 10 }, 		{ InternalName = "LegendaryEquipmentChest", VisualName = "Legendary Chest", CoinPrice = 25 }, 		{ InternalName = "Sugegasa", VisualName = "Sugegasa", CoinPrice = 100 }, 		{ InternalName = "DragonBackpack", VisualName = "Dragon Backpack", CoinPrice = 100 }, 		{ InternalName = "SoulKingTitle", VisualName = "Soul King (title)", CoinPrice = 150 }, 		{ InternalName = "ExorcistHorns", VisualName = "Exorcist Horns", CoinPrice = 250 }, 		{ InternalName = "ExorcistTail", VisualName = "Exorcist Tail", CoinPrice = 250 }, 		{ InternalName = "DragonHelmet", VisualName = "Dragon Helmet", CoinPrice = 400 }, 		{ InternalName = "DragonTiara", VisualName = "Dragon Tiara", CoinPrice = 400 }, 		{ InternalName = "SlimeEgg", VisualName = "Slime Egg", CoinPrice = 400 }, 		{ InternalName = "DarlingDress", VisualName = "Darling Dress", CoinPrice = 500 }, 		{ InternalName = "AetherBreathEmote", VisualName = "Aether Breath (emote)", CoinPrice = 600 }, 		{ InternalName = "DragonKnightM", VisualName = "Dragon Knight (m)", CoinPrice = 750 }, 		{ InternalName = "DragonKnightF", VisualName = "Dragon Knight (f)", CoinPrice = 750 }, 		{ InternalName = "DragonKnightTitle", VisualName = "Dragon Knight (title)", CoinPrice = 900 }, 		{ InternalName = "SerpentBoxBlueBlack", VisualName = "Winterfall skins", CoinPrice = 1000 }, 		{ InternalName = "SlimeMount", VisualName = "Giant Slime", CoinPrice = 1000 }, 		{ InternalName = "WinterfallAura", VisualName = "Winterfall Aura", CoinPrice = 2000 } }
    task.wait()
    FirstTab:AddDropdown("EventShopDropdown", { Values = {}, Multi = false, Text = "item name (Dragon Coins)", AllowNull = true, Default = nil, MaxVisibleDropdownItems = 5, Searchable = true, Callback = function(eventItemKey)
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

        if not BuyFromLocalShop("DragonCoin", "Anime2026", SelectedEventItem.InternalName, SelectedEventItem.CoinPrice, SelectedEventItem.VisualName) then Library:Notify("You do not have enough coins", 3) end
    end
	})
    FirstTab:AddToggle("BuyMaxEventToggle", { Text = "Buy max selected item", Default = false })
    task.wait()
    _G.ScriptStep = "creating quick menu tab"
    OpenMenuTab = Window:AddTab({
		Name = "Quick Menu",
		Icon = "menu",
		Description = "Instant menus and shortcuts"
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
		Tooltip = "Selecting anything will get you instantly kicked - the script can't prevent that.",
		Func = function()
        OpenMenu("AdminItemPanel")
    end
	})
    task.wait()
    _G.ScriptStep = "creating misc tab"
    MiscTab = Window:AddTab({
		Name = "Misc",
		Icon = "wrench",
		Description = "Quality of life extras"
	})
    MiscTabLeft = MiscTab:AddLeftTabbox("Main")
    FirstTab = MiscTabLeft:AddTab("Main")
    FirstTab:AddToggle("MobCameraToggle", { Text = "Camera on mob", Default = false, Tooltip = "Keeps your camera focused on the mob instead of your character." })
    FirstTab:AddToggle("DamageNumbersToggle", { Text = "Remove damage numbers", Default = false, Tooltip = "Hides damage numbers for dealing and taking damage. You'll need to rejoin to see them again if turned off." })
    FirstTab:AddToggle("DamageFlashToggle", { Text = "Hide damage flash", Default = false, Tooltip = "Stops mobs from flashing red when hit - useful if you're sensitive to light changes." })
    FirstTab:AddToggle("DeathEffectToggle", { Text = "Remove death effects", Default = false, Tooltip = "Removes the visual death effects for players, mobs, and bosses." })
    FirstTab:AddToggle("KnockdownToggle", { Text = "Disable knockdown", Default = false, Tooltip = "Prevents 'Knockdown' from knocking your character down and stopping attack + movement. Useful with Safe Killaura so mobs can't lock you down." })
    FirstTab:AddToggle("ShowEndTimeToggle", { Text = "Display end time", Default = false, Tooltip = "Time between enabling this toggle and the dungeon ending." })
    FirstTab:AddDivider({ Margin = -5 })
    FirstTab:AddSlider("WalkspeedSlider", { Text = "Change walkspeed", Default = 28, Min = 28, Max = 200, Rounding = 0, Tooltip = "Does exactly what you think it does." })
    FirstTab:AddDivider({ Margin = -5 })
    FirstTab:AddToggle("AnonymousModeToggle", { Text = "Anonymous mode", Default = false, Tooltip = "Continuously randomizes your accessories, hair, skin color, cosmetic colors and displayed name so other players can't identify you.", Callback = function(enabled)
        if enabled then
            StartAnonymousMode()
        else
            StopAnonymousMode()
        end
    end
	})
    FirstTab = MiscTabLeft:AddTab("Extra")
    SecondTab = MiscTabLeft:AddTab("Hide ui's")
    SecondTab:AddToggle("WaystoneToggle", { Text = "Hide closest waystone", Default = false, Tooltip = "Hides the waystone icon when in worlds." })
    SecondTab:AddToggle("MissionObjectiveToggle", { Text = "Hide mission objective", Default = false, Tooltip = "Hides the on-screen objective text." })
    SecondTab:AddToggle("BossBarToggle", { Text = "Hide boss bar", Default = false, Tooltip = "Hides all boss health bars from your screen." })
    SecondTab:AddToggle("PlayerHotbarToggle", { Text = "Hide hotbar", Default = false, Tooltip = "Hides your health and skill UI." })
    SecondTab:AddToggle("MobilePlayerSkills", { Text = "Hide mobile skills", Default = false, Tooltip = "Hides other players' skills on mobile devices." })
    SecondTab:AddToggle("MainGuiToggle", { Text = "Hide main gui", Default = false, Tooltip = "Hides the event coin icon from your screen." })
    SecondTab:AddToggle("HideMenuToggle", { Text = "Hide game menu", Default = false, Tooltip = "Hides the settings/tab menu (three-dot menu)." })
    SecondTab:AddToggle("HideCameraToggle", { Text = "Hide camera button", Default = false, Tooltip = "Hides the camera button in the top-left of your screen." })
    SecondTab:AddToggle("RobloxUIToggle", { Text = "Hide roblox ui", Default = false, Tooltip = "Hides the Roblox icons in the top-left of your screen." })
    PerformanceTabbox = MiscTab:AddLeftTabbox("Extras")
    FirstTab:AddInput("JoinPlayerInput", { Text = "Enter name", Default = "", Placeholder = "username", Tooltip = "Enter a player's exact username (not display name) to teleport to them if they're online and not in a dungeon." })
    FirstTab:AddButton({
		Text = "Join player",
		Tooltip = "Attempts to join the player entered in the field above.",
		Func = function()
        if not Options.JoinPlayerInput.Value or InMainMenu then return end

        if Settings.CanRequire then
            require(TeleportModule):TeleportToPlayer(LocalPlayer, Players:GetUserIdFromNameAsync(Options.JoinPlayerInput.Value), nil, true)
            Library:Notify("Attempting to join player: " .. Options.JoinPlayerInput.Value, 5)

            return
        end

        Library:Notify("Your executor doesn't support this", 5)
    end
	})
    FirstTab:AddDivider({ Margin = -5 })
    FirstTab:AddButton({
		Text = "Redeem all codes",
		Tooltip = "Claims all active promo codes (the list is manually updated).",
		Func = function()
        if InLobby or InDungeon then
            local codeList = { "900KLIKES", "EASTER26" }
            local redeemSeconds = #codeList * 11 - 11

            if #codeList > 1 then Library:Notify("It will take " .. redeemSeconds .. " seconds for all codes to be redeemed", redeemSeconds) end

            local PromoCodes_RedeemCode = Remotes:WaitForChild("PromoCodes_RedeemCode", math.huge)

            for k, v in pairs(codeList) do
                PromoCodes_RedeemCode:InvokeServer(v)

                if k ~= #codeList then
                    task.wait(11)
                else
                    print("JEW: claimed all codes")
                end
            end
        end
    end
	})
    FirstTab:AddDivider({ Margin = -5 })
    FirstTab:AddToggle("DevKickToggle", { Text = "Kick on dev join", Default = false, Tooltip = "Automatically exits the game if someone with a dev rank joins." })
    FirstTab:AddToggle("ProfilerToggle", { Text = "Show account information", Default = false, Tooltip = "Shows account info such as your name, gold, crystals, and more.\nSTATS UPDATE EVERY 5 SECONDS." })
    FirstTab:AddToggle("AFKToggle", { Text = "Anti AFK", Default = false, Tooltip = "Prevents Roblox from AFK-kicking you." })
    FirstTab:AddToggle("MainMenuPlay", { Text = "Auto click play", Default = false, Tooltip = "On the main menu, automatically clicks the 'Play' button." })
    FirstTab:AddToggle("MobESPToggle", { Text = "Mob ESP", Default = false, Tooltip = "Places an outline around all mobs." })
    FirstTab:AddToggle("NoclipCameraToggle", { Text = "Noclip camera", Default = false, Tooltip = "Allows your camera to clip through walls." })
    FirstTab:AddToggle("DisableAutoJumpToggle", { Text = "Disable auto jump", Default = false, Tooltip = "Disables the auto-jump applied to mobile users." })
    FirstTab:AddDivider({ Margin = -5 })
    FirstTab:AddToggle("HatVisualizerToggle", { Text = "Hat visualizer", Default = true, Tooltip = "Wears a kasa hat", Callback = function(enabled)
        if enabled then
            ApplyHatVisualizer()
        else
            DisableHatVisualizer()
        end
    end
	})
    local hatColorLabel = FirstTab:AddLabel("Hat color")
    local hatColorPicker = hatColorLabel:AddColorPicker("HatColorPicker", {
		Title = "Hat color",
		Default = Settings.HatColor or Color3.fromRGB(255, 255, 255),
		Tooltip = "Changes the color of the Kasa hat immediately.",
		Callback = function(colorValue)
        Settings.HatColor = colorValue
        ApplyHatVisualizer()
    end
	})
    FirstTab:AddToggle("HatRGBToggle", { Text = "Rainbow mode", Default = false, Tooltip = "Smoothly cycles the hat color from red to blue and back to red.", Callback = function(enabled)
        if enabled then
            Settings.HatColorSaved = Settings.HatColor or Color3.fromRGB(255, 255, 255)
        else
            Settings.HatColor = Settings.HatColorSaved or Color3.fromRGB(255, 255, 255)
        end
        Settings.HatRGBToggle = enabled
        ApplyHatVisualizer()
    end
	})
    FirstTab:AddSlider("HatRgbSpeedSlider", { Text = "RGB speed", Default = 2, Min = 0.5, Max = 5, Rounding = 1, Tooltip = "How fast the hat cycles through colors.", Callback = function(value)
        Settings.HatRgbSpeed = value
    end
	})
    local classColorLabel = FirstTab:AddLabel("Class color")
    local classColorPicker = classColorLabel:AddColorPicker("ClassColorPicker", {
		Title = "Class color",
		Default = Settings.ClassColor or Color3.fromRGB(255, 255, 255),
		Tooltip = "Changes the color of your class attacks (client-side only).",
		Callback = function(colorValue)
        Settings.ClassColor = colorValue
        if InDungeon or InLobby then LocalPlayer:SetAttribute("ClassColor", string.format("%02X%02X%02X", math.clamp(math.floor(colorValue.r * 255), 0, 255), math.clamp(math.floor(colorValue.g * 255), 0, 255), math.clamp(math.floor(colorValue.b * 255), 0, 255))) end
    end
	})
    FirstTab:AddSlider("HatTransparencySlider", { Text = "Hat opacity", Default = 0.5, Min = 0, Max = 1, Rounding = 2, Tooltip = "Lower = more opaque, higher = more transparent. The hat stays semi-transparent so your character remains visible underneath.", Callback = function(value)
        Settings.HatTransparency = math.clamp(value, 0, 0.9)
        ApplyHatVisualizer()
    end
	})
    ApplyHatVisualizer()
    task.spawn(function()
        local hatRgbT = 0
        local hatRgbDir = 1
        while _G.Is_Script_Running do
            if (Toggles.HatRGBToggle and Toggles.HatRGBToggle.Value == true) or Settings.HatRGBToggle == true then
                local rgbStep = 0.004 * (Settings.HatRgbSpeed or 2) * hatRgbDir
                hatRgbT = hatRgbT + rgbStep
                if hatRgbT >= 1 then
                    hatRgbT = 1
                    hatRgbDir = -1
                elseif hatRgbT <= 0 then hatRgbT = 0; hatRgbDir = 1 end
                Settings.HatColor = Color3.fromRGB(255 * (1 - hatRgbT), 0, 255 * hatRgbT)
                pcall(ApplyHatVisualizer)
            end
            task.wait(0.03)
        end
    end)
    SecondTab = PerformanceTabbox:AddTab("Performance")
    SecondTab:AddToggle("RemoveOtherPlayersToggle", { Text = "Remove other players", Default = false, Tooltip = "Reduces lag around other players by removing their characters and pets." })
    SecondTab:AddToggle("DisableRenderingToggle", { Text = "Disable rendering", Default = false, Tooltip = "Significantly reduces GPU load by disabling 3D rendering." })
    SecondTab:AddToggle("PreventEffectsToggle", { Text = "Don't render new effects", Default = false, Tooltip = "Stops the game from rendering new effects like projectiles!\nDO NOT USE IF PLAYING NORMALLY." })
    SecondTab:AddToggle("PreventMobToggle", { Text = "Don't render new models", Default = false, Tooltip = "Stops the game from rendering new models such as mobs and equipment, which can massively boost performance." })
    SecondTab:AddDivider({ Margin = -5 })
    SecondTab:AddSlider("FPSSlider", { Text = "Change FPS", Default = 60, Min = 20, Max = 240, Rounding = 0 })
    task.wait()
    FirstTab:AddToggle("ShowPlayersToggle", { Text = "Party member details", Default = false, Tooltip = "Shows every party member instead of only the party size." })
    task.wait()

    task.wait()
    _G.ScriptStep = "creating webhooks tab"
    WebhookBox = MiscTab:AddRightGroupbox("Webhooks")
    local function buildDiscordEmbed(titleText, descriptionText, fields, accentColor)
        local embedColor = accentColor or Settings.DiscordEmbedColor or Color3.fromRGB(255, 255, 255)
        local colorInt = math.floor(embedColor.r * 255) * 65536 + math.floor(embedColor.g * 255) * 256 + math.floor(embedColor.b * 255)

        return {
			title = titleText,
			description = descriptionText,
			color = colorInt,
			timestamp = DateTime.now():ToIsoDate(),
			fields = fields or {},
			footer = { text = "JewHub v1.1" }
		}
    end

    local function resolveDiscordMention()
        local value = Options.DiscordPingDropdown and Options.DiscordPingDropdown.Value or "No ping"

        if value == "@everyone" or value == "@here" then return value end

        return nil
    end

    local function sendDiscordEmbed(embed)
        local webhookUrl = Settings.DiscordWebhookLink

        if not webhookUrl or webhookUrl == "" then return false, "no webhook url set" end

        local payload = { username = Options.DiscordWebhookNameInput and Options.DiscordWebhookNameInput.Value or "JewHub", embeds = { embed } }
        local mention = resolveDiscordMention()

        if mention then payload.content = mention end

        local okResult, errResult = postDiscordWebhook(webhookUrl, HttpService:JSONEncode(payload))

        return okResult, errResult
    end

    WebhookBox:AddLabel("Webhook", true)
    WebhookBox:AddInput("DiscordWebhookInput", {
		Text = "Webhook URL",
		Default = "",
		Placeholder = "https://discord.com/api/webhooks/...",
		Tooltip = "Paste your Discord webhook URL here. Create one in your server: Server Settings > Integrations > Webhooks > New Webhook, then copy the URL.",
		Callback = function(urlValue)
			Settings.DiscordWebhookLink = (urlValue == "" and "" or urlValue)
		end
	})
    WebhookBox:AddInput("DiscordWebhookNameInput", { Text = "Webhook name", Default = "JewHub", Placeholder = "JewHub", Tooltip = "How the bot appears when it sends messages." })
    WebhookBox:AddDropdown("DiscordPingDropdown", { Text = "Mention", 		Values = { "No ping", "@everyone", "@here" }, Multi = false, AllowNull = false, Default = "No ping", Tooltip = "Mentions @everyone or online members whenever a notification is sent." })
    local discordColorLabel = WebhookBox:AddLabel("Embed color")
    local discordColorPicker = discordColorLabel:AddColorPicker("DiscordEmbedColorPicker", {
		Title = "Embed color",
		Default = Color3.fromRGB(255, 255, 255),
		Callback = function(colorValue)
			Settings.DiscordEmbedColor = colorValue
		end
	})
    WebhookBox:AddDivider({ Margin = -5 })
    WebhookBox:AddButton({
		Text = "Send test embed",
		Tooltip = "Posts a sample embed to your webhook so you can preview the formatting before enabling notifications.",
		DoubleClick = true,
		Func = function()
        local testEmbed = buildDiscordEmbed(
            "test embed",
            "If you can read this, your webhook is working.",
            { { name = "Script version", value = "v1.1", inline = true }, { name = "Executor", value = ExecName, inline = true }, { name = "Account", value = LocalPlayer.Name, inline = true } }
        )
        local okResult, errResult = sendDiscordEmbed(testEmbed)

        if okResult then
            Library:Notify("Test embed sent", 4)
        else
            Library:Notify("Failed to send embed: " .. tostring(errResult), 6)
        end
    end
	})
    WebhookBox:AddLabel("Embeds are sent asynchronously and never block the script.", true)
    WebhookBox:AddDivider({ Margin = -5 })
    WebhookBox:AddLabel("Events", true)
    WebhookBox:AddToggle("DiscordScriptLoadedToggle", { Text = "Script loaded", Default = true, Tooltip = "Sends an embed to your webhook each time the script finishes loading." })
    WebhookBox:AddToggle("DiscordErrorToggle", { Text = "Script errors", Default = true, Tooltip = "Sends an embed whenever the script catches a runtime error, with the location and error message." })
    WebhookBox:AddDivider({ Margin = -5 })
    WebhookBox:AddLabel("Guide", true)
    WebhookBox:AddLabel("1. Open your Discord server\n2. Go to Server Settings > Integrations > Webhooks\n3. Create a webhook and copy its URL\n4. Paste the URL into 'Webhook URL'\n5. Press 'Send test embed' to confirm it works", true)
    WebhookBox:AddLabel("", true)
    WebhookBox:AddLabel("Notifications are sent as rich embeds that include the script version, your executor, your account name and a timestamp. The color and mention settings above control how they look.", true)
    _G.ScriptStep = "creating config tab"
    ConfigTab = Window:AddTab({
		Name = "Settings",
		Icon = "settings",
		Description = "UI appearance and configs"
	})
    ConfigTabLeft = ConfigTab:AddLeftTabbox("Main")
    FirstTab = ConfigTabLeft:AddTab("Main")
    FirstTab:AddToggle("HideGuiToggle", { Text = "Hide menu when executed", Default = false })
    FirstTab:AddToggle("AutoScriptToggle", { Text = "Auto execute script", Default = false })
    FirstTab:AddToggle("ClassPingToggle", { Text = "Class ping", Default = false, Tooltip = "Enables class-based ping notifications for the selected ping type." })
    FirstTab:AddDropdown("PingDropdown", { Text = "Ping type", 		Values = { "Guild", "Nightmare", "Event boss" }, Multi = false, AllowNull = false, Default = "Guild", Searchable = true })
    FirstTab:AddDivider({ Margin = -5 })
    FirstTab:AddButton({
		Text = "Stop script from executing",
		Func = function()
        if isfile("JEW/AutoExecute") then delfile("JEW/AutoExecute") end

        if ClearTeleportQueue then Library:Notify("Script will not be ran when you teleport. Hopefully you enjoyed using it without encountering any issues!\n -JewHub", 10); ClearTeleportQueue() end
    end
	})
    FirstTab:AddDivider({ Margin = -5 })
    FirstTab:AddButton({
        Text = "Unload script from game",
        Func = function()
            pcall(function()
                for _, connection in pairs(Connections) do
                    if type(connection) == "table" and connection.Disconnect then connection:Disconnect() end
                end
            end)
            pcall(function()
                for _, part in ipairs(HatInstances) do part:Destroy() end
                table.clear(HatInstances)
                local lpChar = LocalPlayer.Character
                if lpChar then local hatModel = lpChar:FindFirstChild("HatKasa", true); if hatModel then hatModel:Destroy() end end
            end)
            pcall(function()
                LocalPlayer:SetAttribute("ClassColor", nil)
            end)
            pcall(function()
                Settings.AoEKillauraActive = false
                Settings.FastKillauraActive = false
                Settings.SafeKillauraActive = false
                Settings.KillauraActive = false
                Settings.AoEKillaura = false
            end)
            pcall(function()
                Library:Unload()
            end)
            pcall(function()
                StopAnonymousMode()
            end)
            pcall(function()
                _G.Is_Script_Running = false
                if ClearTeleportQueue then ClearTeleportQueue() end
                for flagName, flagValue in pairs(Settings) do
                    if typeof(flagValue) == "boolean" then Settings[flagName] = false end
                end
            end)
            pcall(function()
                _G.Is_Script_Running = nil
            end)
            pcall(function()
                Library:Notify("Script fully unloaded", 5)
            end)
        end
    })
    ThirdTab = ConfigTabLeft:AddTab("Theme")
    local accentLabel = ThirdTab:AddLabel("Accent color")
    local accentColorPicker = accentLabel:AddColorPicker("AccentColorPicker", {
		Title = "Accent color",
		Default = Color3.fromRGB(255, 255, 255),
		Callback = function(color)
			apply_accent_color(color)
		end
	})
    ThirdTab:AddButton({
		Text = "Reset accent",
		Func = function()
			apply_default_accent()
			if accentColorPicker and accentColorPicker.SetValueRGB then accentColorPicker:SetValueRGB(Color3.fromRGB(255, 255, 255)) end
		end
	})
    ThirdTab:AddDivider({ Margin = -5 })
    ThirdTab:AddSlider("JewCornerRadiusSlider", { Text = "Corner radius", Default = 6, Min = 4, Max = 20, Suffix = "px", Rounding = 1, Callback = function(value)
			Window:SetCornerRadius(value)
		end
	})
    ThirdTab:AddToggle("JewCompactToggle", { Text = "Compact mode", Default = false, Callback = function(value)
			Window:SetCompact(value)
		end
	})
    ThirdTab:AddSlider("JewSidebarWidthSlider", { Text = "Sidebar width", Default = 160, Min = 130, Max = 280, Suffix = "px", Rounding = 1, Callback = function(value)
			Window:SetSidebarWidth(value)
		end
	})
    ThirdTab = ConfigTabLeft:AddTab("Debug")
    ThirdTab:AddLabel("These tools help you diagnose what the script is doing. Everything here prints readable information to the developer console (press F9 to open). If you report a bug, include the output from these options.", true)
    ThirdTab:AddDivider({ Margin = -5 })
    ThirdTab:AddLabel("Mob output flags:", true)
    ThirdTab:AddLabel("   (invincible) - the mob cannot be damaged right now\n   (blocker) - the mob is standing in the way and is attacked first\n   (priority) - the script treats this mob as high priority\n   (no data) - the script has no attack data for this mob", true)
    ThirdTab:AddDivider({ Margin = -5 })
    ThirdTab:AddToggle("MobDebugToggle", { Text = "Log mob events", Tooltip = "Prints to the console every time the script scans a new mob, describing how it was handled and which flags apply to it. Useful for confirming the script sees the mobs you expect.", Default = false, Callback = function(debugEnabled)
        if debugEnabled then
            Tracking.MobDebug = true

            return
        end

        Tracking.MobDebug = nil
    end
	})
    ThirdTab:AddButton({
		Text = "Print current target",
		Tooltip = "Prints the mob the script is currently attacking, including its name, path and flags (see list above). Helps confirm the script is targeting the right mob.",
		Func = function()
        local targetMob = CurrentTargetMob

        if not targetMob then
            print("JEW: no mob is a target")

            return
        end

        local mobData = Tracking.MobTable[targetMob]
        local debugText = "JEW: current target is " .. targetMob.Name

        if mobData then
            if mobData.Invincible then debugText ..= " (invincible)" end

            if mobData.IsBlocker then debugText ..= " (blocker)" end

            if mobData.Priority then debugText ..= " (priority)" end

            if mobData.NoData then debugText ..= " (no data)" end

            debugText ..= " Path: " .. tostring(targetMob:GetFullName())
        end

        print(debugText)
    end
	})
    ThirdTab:AddButton({
		Text = "Print all tracked mobs",
		Tooltip = "Prints every mob currently tracked by the script with its name, path and flags. Use this to spot mobs the script has lost track of.",
		Func = function()
        local outputText = "JEW current mobs:\n"

        for k, v in pairs(Tracking.MobTable) do
            local targetMob = k
            local lineText = outputText .. tostring(targetMob)

            if v.Invincible then lineText ..= " (invincible)" end

            if v.IsBlocker then lineText ..= " (blocker)" end

            if v.Priority then lineText ..= " (priority)" end

            if v.NoData then lineText ..= " (no data)" end

            outputText = lineText .. " Path: " .. tostring(targetMob:GetFullName()) .. "\n"
        end

        print(outputText)
    end
	})
    ThirdTab:AddButton({
		Text = "Open developer console",
		Tooltip = "Opens the Roblox developer console (F9) so you can read the output from the options above.",
		Func = function()
        StarterGui:SetCore("DevConsoleVisible", true)
    end
	})
    LeftGroupBox3 = ConfigTab:AddLeftGroupbox("About")
    LeftGroupBox3:AddCheckbox("JewToggle", {
		Text = "Jew?",
		Default = true,
		Tooltip = "This simple checkbox exists for absolutely no functional reason. We just wanted to ask."
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

                    if not healthValue or healthValue and healthValue.Value == 0 then return end

                    local colliderPart = blockerPart:FindFirstChild("Part") or (blockerPart:FindFirstChild("Base") or (blockerPart:FindFirstChild("hitbox") or blockerPart:FindFirstChild("EasterGiantEgg")))

                    if not colliderPart then return end

                    colliderPart.Name = "Collider"
                    Tracking.MobTable[blockerPart] = { IsBlocker = true }
                end

                local towerLegs = MissionObjects and MissionObjects:FindFirstChild("TowerLegs")

                if towerLegs then
                    for _, child in pairs(towerLegs:GetChildren()) do findBlocker(child) end
                end

                local spikeCheckpoints = MissionObjects and MissionObjects:FindFirstChild("SpikeCheckpoints")

                if spikeCheckpoints then
                    for _, child in pairs(spikeCheckpoints:GetChildren()) do findBlocker(child) end
                end

                local BOSSKandrixAssets = Workspace:FindFirstChild("BOSSKandrixAssets")

                if BOSSKandrixAssets then
                    local GetChildren = BOSSKandrixAssets.GetChildren

                    for _, v in pairs(GetChildren(BOSSKandrixAssets)) do
                        local Crystal = v:FindFirstChild("Crystal")

                        if Crystal then Crystal.Name = "Collider" end
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

                        if blockerCandidate then blockerCandidate = MissionObjects:FindFirstChild(v) or (MissionObjects:FindFirstChild("TowerLegs") or MissionObjects:FindFirstChild("SpikeCheckpoints")) end
                    end

                    if blockerCandidate then findBlocker(blockerCandidate) end

                    task.wait()
                end

                task.wait(0.2)
            end)
            if not success then HandleError("PROGRESS BLOCKER", (tostring(result))) end
        end)
        task.spawn(function()
            local success, result = pcall(function()
                local allowedBossRemotes = { Mob_EVENTBOSSCupidZeus_ButtonSmash = true, Mob_EVENTBOSSEasterBunny_ChallengeFloorPattern = true, Mob_EVENTBOSSEasterBunny_RequestGiantEggChallengeFloorIntro = true, Mob_EVENTBOSSEasterBunny_DoGiantEgg = true, Mob_EVENTBOSSUndeadVane_ResurrectShake = true }

                for _, child in pairs(game.ReplicatedStorage.Remotes:GetChildren()) do
                    if child:IsA("RemoteEvent") and string.find(child.Name, "Mob_") and not allowedBossRemotes[child.Name] then child:Clone().Parent = child.Parent; child:Destroy() end
                end
            end)
            if not success then HandleError("CLIENT SIDE DAMAGE", (tostring(result))) end
        end)
        task.spawn(function()
            if Tracking.MissionId == 49 then
                local success, result = pcall(function()
                    if Settings.CanRequire and (debug and getupvalue) then
                        local chestsTable = debug.getupvalue(require(Chests).Start, 12)
                        local Chests_OpenChest = Remotes:WaitForChild("Chests_OpenChest", math.huge)

                        while _G.Is_Script_Running do
                            for k, _ in pairs(chestsTable) do Chests_OpenChest:FireServer(k) end

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

                            if raidChest and raidChest.Parent then raidChest:PivotTo(CFrame.new(HumanoidRootPart.Position)) end

                            task.wait()
                        end

                        task.wait(0.1)
                    end
                end)
                if not success then HandleError("STARTER DUNGEON CHESTS", (tostring(result))) end
            end
        end)
        task.spawn(function()
            if Tracking.MissionId == 50 then
                if AlienBomb then
                    local Part = AlienBomb:WaitForChild("Part", 5)

                    if Part then Part.Name = "Collider"; AlienBomb.Parent = MobsFolder end
                end

                Connections.ConnectAlienBomb = Workspace.ChildAdded:Connect(function(child)
                    if child:IsA("Model") and child.Name == "AlienBomb" then
                        local Part = child:WaitForChild("Part", 5)

                        if Part then Part.Name = "Collider"; child.Parent = MobsFolder end
                    end
                end)
                task.spawn(function()
                    local Spawn = MissionObjects:FindFirstChild("Spawn")
                    assert(Spawn, "Spawn doesn't exist?")
                    local standOffset = GetPlayerSize() + Spawn.Size.Y / 2
                    local SpawnPosition = Spawn.Position
                    repeat
                        if not CurrentTargetMob and Settings.Autofarm then Collider.CFrame = CFrame.new(SpawnPosition.X, SpawnPosition.Y + standOffset, SpawnPosition.Z); TeleportStandPart() end

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
                    if Workspace:WaitForChild("EasterBossChallengeWalkTo", 1e999) then DodgeCurrentAttack(0, 6, "giant egg") end
                end)
                Connections.ConnectObjectiveMessage = ReplicatedStorage:WaitForChild("ObjectiveMessage", math.huge).Changed:Connect(function(property)
                    if string.find(tostring(property), "RUN") then DodgeCurrentAttack(0, 11, "giant egg") end
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

            if not hrpLocal then return nil end

            local hrpPos = hrpLocal.Position
            local best
            local bestDistance = math.huge
            local targetSets = { MobsFolder }
            local dummiesFolder = Workspace:FindFirstChild("TargetDummies")

            if dummiesFolder then targetSets[2] = dummiesFolder end

            for _, folder in ipairs(targetSets) do
                local children = folder:GetChildren()

                for i = 1, #children do
                    local mob = children[i]
                    local healthProperties = mob:FindFirstChild("HealthProperties")
                    local health

                    if healthProperties then health = healthProperties:FindFirstChild("Health") end

                    if health and health.Value <= 0 then continue end

                    local collider = mob:FindFirstChild("Collider")

                    if not collider then collider = mob.PrimaryPart or mob:FindFirstChild("Part") or mob:FindFirstChild("MeshPart") end

                    if collider then
                        local magnitude = (collider.Position - hrpPos).Magnitude

                        if magnitude < bestDistance then best = mob; bestDistance = magnitude end
                    end
                end
            end

            return best
        end
        local AoETargetCache = setmetatable({}, { __mode = "k" })
        local function CollectAoETargets(hrpLocal, maxRange)
            local targets = {}
            local hrpPos = hrpLocal.Position
            local targetSets = { MobsFolder }
            local dummiesFolder = Workspace:FindFirstChild("TargetDummies")

            if dummiesFolder then targetSets[2] = dummiesFolder end

            for _, folder in ipairs(targetSets) do
                local children = folder:GetChildren()

                for i = 1, #children do
                    local mob = children[i]
                    local entry = AoETargetCache[mob]

                    if not entry then entry = {}; AoETargetCache[mob] = entry end

                    local healthProperties = entry.HealthProperties

                    if not healthProperties then healthProperties = mob:FindFirstChild("HealthProperties"); entry.HealthProperties = healthProperties end

                    local health = entry.Health

                    if not health then health = healthProperties and healthProperties:FindFirstChild("Health"); entry.Health = health end

                    if health and health.Value <= 0 then continue end

                    local collider = entry.Collider

                    if not collider then
                        collider = mob:FindFirstChild("Collider")

                        if not collider then collider = mob.PrimaryPart or mob:FindFirstChild("Part") or mob:FindFirstChild("MeshPart") end

                        entry.Collider = collider
                    end

                    if collider then
                        local ok, closest = pcall(collider.GetClosestPointOnSurface, collider, hrpPos)

                        if ok and closest then
                            local sep = (hrpPos - closest).Magnitude

                            if sep <= maxRange then
                                targets[#targets + 1] = {
                                    Mob = mob,
                                    Collider = collider,
                                    Closest = closest,
                                    Sep = sep
                                }
                            end
                        end
                    end
                end
            end

            return targets
        end
            if _G.__WZero_AbCapHooked == nil then
                _G.__WZero_AbCapHooked = true
                _G.__WZero_AbCapEchoes = 0

                pcall(function()
                    local hitEcho = Remotes:FindFirstChild("Combat_OnHitFlash") or Remotes:WaitForChild("Combat_OnHitFlash", 1e999)
                    hitEcho.OnClientEvent:Connect(function()
                        _G.__WZero_AbCapEchoes = (_G.__WZero_AbCapEchoes or 0) + 1
                    end)
                end)
            end

            local KILLAURA_TYPES = { Ranged = 1, Melee = 2, ShadowChain = 3, TableRemote = 4, Remote = 5, GuardianRemote = 6, HunterRemote = 7, PlayerPositionRemote = 8, MobPositionRemote = 9, CFrameRemote = 10, PlayerRemote = 11, StarbreakerWaves = 12, }
            local STARBREAK_HITS = {}
            for i = 1, 5 do for j = 1, 10 do STARBREAK_HITS[#STARBREAK_HITS + 1] = "StarbreakerWaveSwing" .. i .. "Hit" .. j end end
            local NUM_STARBREAK_HITS = #STARBREAK_HITS
            local function DisableLegitSkills()
                local Actions = require(ReplicatedStorage:WaitForChild("Client", 1e999):WaitForChild("Actions", 1e999))
                Actions:SetSkillDisabled("Primary", true)
                Actions:SetSkillDisabled("Skill1", true)
                Actions:SetSkillDisabled("Skill2", true)
                Actions:SetSkillDisabled("Skill3", true)
                Actions:SetSkillDisabled("Ultimate", true)
            end

            local function run_aoe_killaura_loop()
            if not Class then Library:Notify("CLASS NOT YET SUPPORTED", 10000000000000000); return end

            local ok, result = pcall(function()
                DisableLegitSkills()

                local CombatRemote = Remotes:WaitForChild("Combat_Attack", 1e999)
                local combatFire = CombatRemote.FireServer
                local Skills = Class.Skills
                local numSkills = #Skills
                local hrp = HumanoidRootPart
                local _findFirstChild = function(obj, name)
                    if obj then return obj:FindFirstChild(name) end
                end
                local _time = time
                local OffsetVec = Vector3.new(0, 3, 0)
                local Heartbeat = (RunService and RunService.Heartbeat) or game:GetService("RunService").Heartbeat
                local targetDummies = Workspace:FindFirstChild("TargetDummies")

                Settings.AoEKillauraActive = true



local TYPE_RANGED, TYPE_MELEE, TYPE_SHADOWCHAIN, TYPE_TABLEREMOTE, TYPE_REMOTE, TYPE_GUARDIANREMOTE, TYPE_HUNTERREMOTE, TYPE_PLAYERPOSREMOTE, TYPE_MOBPOSREMOTE, TYPE_CFRAMEREMOTE, TYPE_PLAYERREMOTE, TYPE_STARBREAKER = KILLAURA_TYPES.Ranged, KILLAURA_TYPES.Melee, KILLAURA_TYPES.ShadowChain, KILLAURA_TYPES.TableRemote, KILLAURA_TYPES.Remote, KILLAURA_TYPES.GuardianRemote, KILLAURA_TYPES.HunterRemote, KILLAURA_TYPES.PlayerPositionRemote, KILLAURA_TYPES.MobPositionRemote, KILLAURA_TYPES.CFrameRemote, KILLAURA_TYPES.PlayerRemote, KILLAURA_TYPES.StarbreakerWaves
local typeMap = KILLAURA_TYPES

                for i = 1, numSkills do local s = Skills[i] s._typeID = typeMap[s.Type] or 0 s._cachedCD = s.Cooldown or 0 end

                local handlers = {
                    [TYPE_RANGED] = function(skill, aimPos, _, _, isRanged)
                        if isRanged then aimPos = aimPos - OffsetVec end

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
                        for i = 1, #mobs do skill:FireServer(mobs[i]) end
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

local starbreak_hits = STARBREAK_HITS
local NUM_STARBREAK_HITS = #STARBREAK_HITS
                local isRanged = Settings.IsRanged

                local candidates = {}
                local mobs = {}
                local mobPositions = {}
                local passCounter = 0
                local mobCache = setmetatable({}, { __mode = "k" })
                local lastCount = 0

                local burstQueue = {}
                local burstQueued = {}
                local burstStart = nil
                local maxdps_seed = (_time() * 1000) % 2147483648
                local maxdps_jitter = 0
                local firedInPass = false
                local abcBuffer = 0
                local abEchoLast = _G.__WZero_AbCapEchoes or 0
                local abCasts = 0
                local abLastCheck = 0

                while Settings.AoEKillauraActive do
                    table.clear(candidates)
                    table.clear(mobs)
                    table.clear(mobPositions)

                    if lastCount == 0 then task.wait(0.1) end

                    for _, mob in ipairs(MobsFolder:GetChildren()) do table.insert(candidates, mob) end

                    if targetDummies then
                        for _, mob in ipairs(targetDummies:GetChildren()) do table.insert(candidates, mob) end
                    end

                    local hrpPos = hrp.Position
                    local count = 0

                    for i = 1, #candidates do
                        local mob = candidates[i]
                        local entry = mobCache[mob]

                        if not entry then entry = {}; mobCache[mob] = entry end

                        local healthProperties = entry.HealthProperties

                        if not healthProperties then healthProperties = _findFirstChild(mob, "HealthProperties"); entry.HealthProperties = healthProperties end

                        local health = entry.Health

                        if not health then health = healthProperties and _findFirstChild(healthProperties, "Health"); entry.Health = health end

                        if health and health.Value <= 0 then continue end

                        local collider = entry.Collider

                        if not collider then
                            collider = _findFirstChild(mob, "Collider")

                            if not collider then collider = mob.PrimaryPart or _findFirstChild(mob, "Part") or _findFirstChild(mob, "MeshPart") end

                            entry.Collider = collider
                        end

                        if collider then
                            local magnitude = (collider.Position - hrpPos).Magnitude

                            if magnitude < 50 then count = count + 1 mobs[count] = mob mobPositions[count] = collider.Position end
                        end
                    end

                    lastCount = count

                    if count == 0 then Heartbeat:Wait(); continue end

                    passCounter = passCounter + 1

                    local now = _time()
                    local hrpCFrame = hrp.CFrame

                    local burstEnabled = Settings.BurstRelease == true
                    local burstWindow = burstEnabled and (Settings.BurstWindow or 0.15) or 0
                    firedInPass = false

                    for i = 1, numSkills do
                        local s = Skills[i]

                        maxdps_seed = (maxdps_seed * 1103515245 + 12345) % 2147483648
                        maxdps_jitter = (maxdps_seed / 2147483648 - 0.5) * 0.016

                        if now - (s.LastUsed or 0) >= (s._cachedCD or 0) + maxdps_jitter - abcBuffer and not burstQueued[s] then
                            local aimPos = mobPositions[((i - 1 + passCounter) % count) + 1]

                            if not aimPos then aimPos = hrpPos end

                            local handler = handlers[s._typeID]

                            if handler then
                                local fireAction = function(releaseNow)
                                    if s._typeID == TYPE_STARBREAKER then
                                        local Status = Character and Character:FindFirstChild("Status")

                                        if Status and Status:FindFirstChild("Starforge") then
                                            local distUnit = (aimPos - hrpPos).Unit

                                            for k = 1, NUM_STARBREAK_HITS do combatFire(CombatRemote, starbreak_hits[k], hrpPos, distUnit, 67) end
                                        end
                                    else
                                        handler(s.Skill, aimPos, hrpPos, hrpCFrame, isRanged, mobs)
                                    end

                                    s.LastUsed = releaseNow
                                end

                                firedInPass = true

                                if burstEnabled then
                                    burstQueue[#burstQueue + 1] = fireAction
                                    burstQueued[s] = true
                                else
                                    fireAction(now)
                                end
                            else
                                HandleError("AOE KILLAURA ATTACK TYPE", s.Type .. " isn't a valid type of attack")
                                break
                            end
                        end
                    end

                    if burstEnabled then
                        if #burstQueue > 0 then
                            if burstStart == nil then burstStart = now end

                            if now - burstStart >= burstWindow then
                                local releaseNow = _time()

                                for b = 1, #burstQueue do pcall(burstQueue[b], releaseNow) end

                                table.clear(burstQueue)
                                table.clear(burstQueued)
                                burstStart = nil
                            end
                        else
                            burstStart = nil
                        end
                    end

                    if Settings.AboveCap ~= false and Settings.AboveCapBuffer then
                        abCasts = abCasts + (firedInPass and 1 or 0)

                        if now - abLastCheck >= 2 then
                            local echoDelta = (_G.__WZero_AbCapEchoes or 0) - abEchoLast
                            local accepted = echoDelta / math.max(abCasts, 1)

                            if accepted < 0.5 then
                                abcBuffer = math.max(0, abcBuffer - 0.005)
                            elseif accepted > 0.95 and abcBuffer < Settings.AboveCapBuffer then abcBuffer = math.min(Settings.AboveCapBuffer, abcBuffer + 0.002) end

                            abEchoLast = _G.__WZero_AbCapEchoes or 0
                            abCasts = 0
                            abLastCheck = now
                        end
                    else
                        abcBuffer = 0
                    end

                    if burstEnabled or not firedInPass then
                        Heartbeat:Wait()
                    else
                        local earliest = 1e9

                        for sIdx = 1, numSkills do
                            local sk = Skills[sIdx]
                            local remaining = (sk._cachedCD or 0) - (now - (sk.LastUsed or 0))

                            if remaining < earliest then earliest = remaining end
                        end

                        task.wait(math.max(earliest - 0.006, 0.01))
                    end
                end
            end)

            if not ok then HandleError("AOE KILLAURA", tostring(result), "Class: " .. Settings.PlayerClass) end
        end
        local function run_fast_killaura_loop()
            if not Class then Library:Notify("CLASS NOT YET SUPPORTED", 10000000000000000); return end

            local ok, result = pcall(function()
                DisableLegitSkills()

                local CombatRemote = Remotes:WaitForChild("Combat_Attack", 1e999)
                local combatFire = CombatRemote.FireServer
                local Skills = Class.Skills
                local numSkills = #Skills
                local hrp = HumanoidRootPart
                local hrpPosition = hrp.Position
                local _findFirstChild = function(obj, name)
                    if obj then return obj:FindFirstChild(name) end
                end
                local _getClosest = function(colliderPart, position)
                    local ok, res = pcall(colliderPart.GetClosestPointOnSurface, colliderPart, position)
                    if ok then return res end

                    return position
                end
                local _time = time
                local OffsetVec = Vector3.new(0, 3, 0)
                local RunService_Heartbeat = (RunService and RunService.Heartbeat) or game:GetService("RunService").Heartbeat

                Settings.FastKillauraActive = true

local TYPE_RANGED, TYPE_MELEE, TYPE_SHADOWCHAIN, TYPE_TABLEREMOTE, TYPE_REMOTE, TYPE_GUARDIANREMOTE, TYPE_HUNTERREMOTE, TYPE_PLAYERPOSREMOTE, TYPE_MOBPOSREMOTE, TYPE_CFRAMEREMOTE, TYPE_PLAYERREMOTE, TYPE_STARBREAKER = KILLAURA_TYPES.Ranged, KILLAURA_TYPES.Melee, KILLAURA_TYPES.ShadowChain, KILLAURA_TYPES.TableRemote, KILLAURA_TYPES.Remote, KILLAURA_TYPES.GuardianRemote, KILLAURA_TYPES.HunterRemote, KILLAURA_TYPES.PlayerPositionRemote, KILLAURA_TYPES.MobPositionRemote, KILLAURA_TYPES.CFrameRemote, KILLAURA_TYPES.PlayerRemote, KILLAURA_TYPES.StarbreakerWaves
local typeMap = KILLAURA_TYPES

                for i = 1, numSkills do local s = Skills[i] s._typeID = typeMap[s.Type] or 0 s._cachedCD = s.Cooldown or 0 end

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
                    end,
                }

local starbreak_hits = STARBREAK_HITS
local NUM_STARBREAK_HITS = #STARBREAK_HITS

                local isRanged = Settings.IsRanged

                local maxdps_engine = true

                local target
                local collider
                local hrpPos
                local closest
                local sep
                local now
                local hrpCFrame
                local cd
                local aoeTargets = nil

                local burstQueue = {}
                local burstQueued = {}
                local burstStart = nil
                local maxdps_seed = (_time() * 1000) % 2147483648
                local maxdps_jitter = 0
                local firedInPass = false
                local abcBuffer = 0
                local abEchoLast = _G.__WZero_AbCapEchoes or 0
                local abCasts = 0
                local abLastCheck = 0

                while Settings.FastKillauraActive do
                    if not (hrp and hrp.Parent) then RunService_Heartbeat:Wait(); continue end

                    hrpPos = hrp.Position
                    now = _time()
                    hrpCFrame = hrp.CFrame
                    aoeTargets = nil

                    if Settings.AoEKillaura then aoeTargets = CollectAoETargets(hrp, 50) end

                    if not aoeTargets or #aoeTargets == 0 then
                        aoeTargets = nil
                        target = CurrentTargetMob

                        if not (target and target.Parent) then target = PickKillauraTarget(); CurrentTargetMob = target end

                        if target then
                            collider = _findFirstChild(target, "Collider")

                            if not collider then collider = target.PrimaryPart or _findFirstChild(target, "Part") or _findFirstChild(target, "MeshPart") end

                            if collider then
                                closest = _getClosest(collider, hrpPos)
                                sep = (hrpPos - closest).Magnitude
                            else
                                closest = nil
                            end
                        end
                    end

                    local burstEnabled = Settings.BurstRelease == true
                    local burstWindow = burstEnabled and (Settings.BurstWindow or 0.15) or 0
                    firedInPass = false

                    for i = 1, numSkills do
                        local s = Skills[i]
                        cd = s._cachedCD

                        maxdps_seed = (maxdps_seed * 1103515245 + 12345) % 2147483648
                        maxdps_jitter = (maxdps_seed / 2147483648 - 0.5) * 0.016

                        if now - (s.LastUsed or 0) >= cd + maxdps_jitter - abcBuffer and not burstQueued[s] then
                            local handler = handlers[s._typeID]

                            if handler then
                                local fireAction

                                if aoeTargets then
                                    fireAction = function(releaseNow)
                                        for t = 1, #aoeTargets do
                                            local tgt = aoeTargets[t]

                                            if s.Distance >= tgt.Sep then
                                                if s._typeID == TYPE_STARBREAKER then
                                                    local Status = CharacterRef and CharacterRef:FindFirstChild("Status")

                                                    if Status and Status:FindFirstChild("Starforge") then
                                                        local distUnit = (tgt.Closest - hrpPos).Unit

                                                        for k = 1, NUM_STARBREAK_HITS do combatFire(CombatRemote, starbreak_hits[k], hrpPos, distUnit, 67) end
                                                    end
                                                else
                                                    handler(s.Skill, tgt.Mob, tgt.Closest, hrpPos, hrpCFrame, isRanged)
                                                end
                                            end
                                        end

                                        s.LastUsed = releaseNow
                                    end
                                elseif target and closest and s.Distance >= sep then
                                    fireAction = function(releaseNow)
                                        if s._typeID == TYPE_STARBREAKER then
                                            local Status = CharacterRef and CharacterRef:FindFirstChild("Status")

                                            if Status and Status:FindFirstChild("Starforge") then
                                                local distUnit = (closest - hrpPos).Unit

                                                for k = 1, NUM_STARBREAK_HITS do combatFire(CombatRemote, starbreak_hits[k], hrpPos, distUnit, 67) end
                                            end
                                        else
                                            handler(s.Skill, target, closest, hrpPos, hrpCFrame, isRanged)
                                        end

                                        s.LastUsed = releaseNow
                                    end
                                end

                                if fireAction then
                                    firedInPass = true

                                    if burstEnabled then
                                        burstQueue[#burstQueue + 1] = fireAction
                                        burstQueued[s] = true
                                    else
                                        fireAction(now)
                                    end
                                end
                            else
                                HandleError("KILLAURA ATTACK TYPE", s.Type .. " isn't a valid type of attack")
                                return
                            end
                        end
                    end

                    if burstEnabled then
                        if #burstQueue > 0 then
                            if burstStart == nil then burstStart = now end

                            if now - burstStart >= burstWindow then
                                local releaseNow = _time()

                                for b = 1, #burstQueue do pcall(burstQueue[b], releaseNow) end

                                table.clear(burstQueue)
                                table.clear(burstQueued)
                                burstStart = nil
                            end
                        else
                            burstStart = nil
                        end
                    end

                    if Settings.AboveCap ~= false and Settings.AboveCapBuffer then
                        abCasts = abCasts + (firedInPass and 1 or 0)

                        if now - abLastCheck >= 2 then
                            local echoDelta = (_G.__WZero_AbCapEchoes or 0) - abEchoLast
                            local accepted = echoDelta / math.max(abCasts, 1)

                            if accepted < 0.5 then
                                abcBuffer = math.max(0, abcBuffer - 0.005)
                            elseif accepted > 0.95 and abcBuffer < Settings.AboveCapBuffer then abcBuffer = math.min(Settings.AboveCapBuffer, abcBuffer + 0.002) end

                            abEchoLast = _G.__WZero_AbCapEchoes or 0
                            abCasts = 0
                            abLastCheck = now
                        end
                    else
                        abcBuffer = 0
                    end

                    if burstEnabled or not firedInPass then
                        RunService_Heartbeat:Wait()
                    else
                        local earliest = 1e9

                        for sIdx = 1, numSkills do
                            local sk = Skills[sIdx]
                            local remaining = (sk._cachedCD or 0) - (now - (sk.LastUsed or 0))

                            if remaining < earliest then earliest = remaining end
                        end

                        task.wait(math.max(earliest - 0.006, 0.01))
                    end
                end
            end)

            if not ok then HandleError("FAST KILLAURA", tostring(result), "Class: " .. Settings.PlayerClass) end
        end

        Toggles.KillauraToggle:OnChanged(function(killauraEnabled)
            if killauraEnabled then
                if not Class then
                    Library:Notify("CLASS NOT YET SUPPORTED", 10000000000000000)

                    return
                end

                Settings.Killaura = true
                Settings.AoEKillauraActive = nil
                Settings.AoEKillauraThread = nil

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
                                if not CurrentTargetMob then continue end

                                local Cooldown = v.Cooldown

                                local FastKillauraBuffer = Settings.FastKillaura and 0.02 or 0

                                if not (time() - (v.LastUsed or 0) >= Cooldown + AttackDelay + PingAdjusted - FastKillauraBuffer) then continue end

                                local vType = v.Type
                                local Collider6 = CurrentTargetMob:FindFirstChild("Collider")

                                if not Collider6 then continue end

                                local Distance = v.Distance
                                local ClosestPointOnSurface = HumanoidRootPart:GetClosestPointOnSurface(Collider6.Position)
                                local ClosestPointOnSurface2 = Collider6:GetClosestPointOnSurface(HumanoidRootPart.Position)

                                if Distance >= (ClosestPointOnSurface - ClosestPointOnSurface2).Magnitude then
                                    if vType == "Ranged" then
                                        if Settings.IsRanged then ClosestPointOnSurface2 -= vector3 end

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

                                                if Status and Status:FindFirstChild("Starforge") then for i = 1, 5 do for j = 1, 10 do Combat_Attack:FireServer("StarbreakerWaveSwing" .. tostring(i) .. "Hit" .. tostring(j), HumanoidRootPart.Position, (ClosestPointOnSurface2 - HumanoidRootPart.Position).Unit, 67) end end end
                                            end
                                        end)
                                    end

                                    v.LastUsed = time()

                                    if AttackReady and not CanAttack then
                                        if Settings.FastKillaura then
                                            task.wait(0.02)
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
                        if Settings.IsRanged then attackPos -= vector3 end

                        Combat_Attack2:FireServer(skill, attackPos, nil, 67)
                    end,
					Melee = function(skill, targetClosest)
                        Combat_Attack2:FireServer(skill, HumanoidRootPart.Position, (targetClosest - HumanoidRootPart.Position).Unit, 67)
                    end,
					ShadowChain = function(skillRemote, _, targetMob)
                        skillRemote:FireServer({ targetMob, targetMob, targetMob, targetMob, targetMob })
                    end,
					TableRemote = function(skillRemote, _, targetMob)
                        skillRemote:FireServer(targetMob)
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

                                if Status and Status:FindFirstChild("Starforge") then for i = 1, 5 do for j = 1, 10 do Combat_Attack2:FireServer("StarbreakerWaveSwing" .. tostring(i) .. "Hit" .. tostring(j), HumanoidRootPart.Position, (starbreakerPos - HumanoidRootPart.Position).Unit, 67) end end end
                            end
                        end)
                    end
				}
                    local _ = Settings.Killaura

                    repeat
                        local TargetList = nil

                        if Settings.AoEKillaura then TargetList = CollectAoETargets(HumanoidRootPart, 50) end

                        if not TargetList or #TargetList == 0 then TargetList = nil end

                        if not TargetList and not CurrentTargetMob then
                            task.wait()

                            continue
                        end

                        for _, v in pairs(Class.Skills) do
                            local Cooldown = v.Cooldown

                            local FastKillauraBuffer = Settings.FastKillaura and 0.02 or 0

                            if not (time() - (v.LastUsed or 0) >= Cooldown + AttackDelay + PingAdjusted - FastKillauraBuffer) then continue end

                            local vType = v.Type
                            local skillTargets = TargetList or { { Mob = CurrentTargetMob, Closest = nil } }
                            local attackHandler = skillAttackHandlers[vType]

                            if not attackHandler then
                                Settings.Killaura = nil
                                HandleError("KILLAURA ATTACK TYPE", tostring(vType) .. " isn't a valid type of attack")

                                break
                            end

                            for _, skillTarget in ipairs(skillTargets) do
                                local TargetMob = skillTarget.Mob
                                local Collider7 = TargetMob:FindFirstChild("Collider")

                                if not Collider7 then continue end

                                local Distance = v.Distance
                                local ClosestPointOnSurface = HumanoidRootPart:GetClosestPointOnSurface(Collider7.Position)
                                local ClosestPointOnSurface3 = skillTarget.Closest or Collider7:GetClosestPointOnSurface(HumanoidRootPart.Position)

                                if not (Distance >= (ClosestPointOnSurface - ClosestPointOnSurface3).Magnitude) then continue end

                                local T = TargetMob:GetAttribute("T")

                                if Settings.Autofarm and (CanAttack and (not T and T + 0.2 < time())) then break end

                                attackHandler(v.Skill, ClosestPointOnSurface3, TargetMob)
                            end

                            v.LastUsed = time()

                            if AttackReady and not CanAttack then
                                if Settings.FastKillaura then
                                    task.wait(0.02)
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
                Settings.AoEKillauraActive = nil
                Settings.AoEKillauraThread = nil

                if not Settings.FastKillauraThread then Settings.FastKillauraThread = task.spawn(run_fast_killaura_loop) end

                return
            end

            Settings.FastKillaura = nil
            Settings.FastKillauraActive = nil
            Settings.FastKillauraThread = nil
        end)
        Toggles.AoEKillauraToggle:OnChanged(function(enabled)
            if enabled then
                Settings.AoEKillaura = true

                if not Settings.FastKillauraActive and not Settings.Killaura then
                    Settings.AoEKillauraActive = true

                    if not Settings.AoEKillauraThread then Settings.AoEKillauraThread = task.spawn(run_aoe_killaura_loop) end
                end

                return
            end

            Settings.AoEKillaura = nil
            Settings.AoEKillauraActive = nil
            Settings.AoEKillauraThread = nil
        end)
        Toggles.SafeKillauraToggle:OnChanged(function(enabled)
            local CanRequire = Settings.CanRequire

            if CanRequire then CanRequire = HookFunction and (RestoreFunction and (NewCClosure and IsHooked)) end

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
                                        if CurrentTargetMob then Actions:UseSkill(capturedSkillName) end

                                        task.wait()
                                    until not Settings.SafeKillaura and not MissionDone
                                end)
                            else
                                task.spawn(function()
                                    if not Settings.SafeKillaura then
                                    end

                                    repeat
                                        if CurrentTargetMob then Actions:UseSkill(capturedSkillName) end

                                        task.wait(0.2)
                                    until not Settings.SafeKillaura and not MissionDone
                                end)
                            end

                            skillIndex += 1
                        end
                        while Settings.SafeKillaura do
                            if Actions:IsSheathed() then Actions:UseSkill("Sheath") end

                            task.wait(1)
                        end
                    else
                        Settings.SafeKillaura = nil

                        if IsHooked(Actions.IsBusy) then RestoreFunction(Actions.IsBusy) end
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

                                        if nil then CurrentCamera.CameraSubject = IsMobAlive end
                                    end
                                end

                                task.wait()
                            end
                        end
                    end)

                    if not ok then HandleError("MOB TELEPORT", (tostring(result))) end
                end)
                task.spawn(function()
                    local ok, result = pcall(function()

                        for partKey, partInfo in pairs(PartsList) do

                            if partKey and partKey.Parent then partKey.Size = Vector3.new(1, 1, 1) end
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
                                elseif not partInfo.Regenerates then PartsList[k] = nil end
                            end

                            task.wait()
                        end
                    end)

                    if not ok then HandleError("AUTO PROGRESS", (tostring(result))) end
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

                                            if ringPart then ringPart.Name = "Ring" end
                                        end

                                        local Ring = shieldModel:WaitForChild("Ring", 5)

                                        if Ring and Ring.Parent then
                                            local standOffset = GetPlayerSize() + Ring.Size.Y / 2
                                            local shieldStandPosition = Vector3.new(Ring.Position.X, Ring.Position.Y + standOffset, Ring.Position.Z)

                                            while shieldModel.Parent do
                                                if Settings.AllowPlayerTeleports then HumanoidRootPart.CFrame = CFrame.new(shieldStandPosition) end

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
                    if not success then HandleError("SHIELD TELEPORt", (tostring(result))) end
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
            if PlaceIdStr == "6510868181" then return end

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

            if IsHooked(require(Drops).SpawnCoinsLocal) then RestoreFunction(require(Drops).SpawnCoinsLocal) end

            if IsHooked(require(Drops).DropBattlepassExp) then RestoreFunction(require(Drops).DropBattlepassExp) end

            if IsHooked(require(Drops).DropStarterpassExp) then RestoreFunction(require(Drops).DropStarterpassExp) end

            if IsHooked(require(Drops).DropHealthOrb) then RestoreFunction(require(Drops).DropHealthOrb) end

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
                            if child.Name == "PetData" then petData = GetPlayerPet() end
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
                                if not CurrentTargetMob then continue end

                                local Cooldown = v.Cooldown

                                if not (tick() - (v.LastUsed or 0) >= Cooldown + AttackDelay) then continue end

                                local vType = v.Type
                                local Collider8 = CurrentTargetMob:FindFirstChild("Collider")

                                if not Collider8 then continue end

                                local Distance = v.Distance
                                local ClosestPointOnSurface = HumanoidRootPart:GetClosestPointOnSurface(Collider8.Position)
                                local ClosestPointOnSurface4 = Collider8:GetClosestPointOnSurface(HumanoidRootPart.Position)

                                if not (Distance >= (ClosestPointOnSurface - ClosestPointOnSurface4).Magnitude) then continue end

                                local T = CurrentTargetMob:GetAttribute("T")

                                if Settings.Autofarm and (CanAttack and (not T and T + 0.2 < time())) then break end

                                local petAttackHandler = petAttackHandlers[vType]

                                if not petAttackHandler then
                                    HandleError("PET ATTACK TYPE", tostring(vType) .. " isn't a valid type of attack")

                                    break
                                end

                                petAttackHandler(v.Skill, ClosestPointOnSurface4)
                                v.LastUsed = tick()

                                if CombatActive then task.wait(CombatActive) end
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

                                if Collider9 then PetSkills_UseSkill:FireServer(CurrentTargetMob, Collider9.Position) end
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

                        if HealthProperties and outOfCombatValue then outOfCombatTimer = outOfCombatValue.Value ~= 0 and 0 or outOfCombatTimer + 1 end

                        if outOfCombatTimer >= MaxPingTolerance then MissionDone = true task.wait(2) RejoinLastDungeon(true) end

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
            if dodgeEnabled then dodgeEnabled = Class.Distance == "Melee" end

            if dodgeEnabled then
                Settings.DodgeAttacks = true

                local ok, result = pcall(function()
                    local downwardIceConfig = { AttackLength = 5.9, Delay = 1.5, AttackName = "downward ice" }
                    local jumpConfig = { AttackLength = 2.5, Delay = 2, AttackName = "jump" }
                    local howlConfig = { AttackLength = 4.2, Delay = 3.5, AttackName = "howl" }
                    local darkOrbConfig = { AttackLength = 8.2, Delay = 7.5, AttackName = "dark orb" }
                    local wingFlapConfig = { AttackLength = 6, Delay = 1, AttackName = "wing flap" }
                    local flybyConfig = { AttackLength = 15, Delay = 0, AttackName = "flyby" }
                    local longFlybyConfig = { AttackLength = 23, Delay = 0, AttackName = "long flyby" }
                    local eggBombConfig = { AttackLength = 10, Delay = 3, AttackName = "egg bombs" }
                    local slamJumpConfig = { AttackLength = 5, Delay = 1, AttackName = "slam jump" }
                    local prismSlamConfig = { AttackLength = 3, Delay = 2, AttackName = "prism slam" }
                    local attackConfigs = { DownwardIceFire = downwardIceConfig, JumpAttack = jumpConfig, Howl = howlConfig, DarkOrbAttack = darkOrbConfig, WingFlap = wingFlapConfig, Flyby = flybyConfig, FlybyX3 = longFlybyConfig, EggBomb = eggBombConfig, SlamJump = slamJumpConfig, PrismSlam = prismSlamConfig }

                    while Settings.DodgeAttacks and not MissionDone do
                        if CurrentTargetMob then
                            local MobProperties = CurrentTargetMob:FindFirstChild("MobProperties")

                            if MobProperties then
                                local currentAttackValue = MobProperties and MobProperties:FindFirstChild("CurrentAttack")

                                if currentAttackValue and currentAttackValue.Value ~= "" then
                                    local attackConfig = attackConfigs[currentAttackValue.Value] or false

                                    if attackConfig then DodgeCurrentAttack(attackConfig.Delay, attackConfig.AttackLength - attackConfig.Delay, attackConfig.AttackName) end
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

                            if not hazardModel then continue end

                            if Workspace:FindFirstChild("AnubisRing") or Workspace:FindFirstChild("AnubisRingPurple") then break end

                            local vaneBoss = MobsFolder:FindFirstChild("VaneAetherDragon") or MobsFolder:FindFirstChild("EVENTBOSSVane")
                            local safePosition = Vector3.new(HumanoidRootPart.Position.X + 1000, HumanoidRootPart.Position.Y + 1000, HumanoidRootPart.Position.Z)

                            if vaneBoss then safePosition = Vector3.new(HumanoidRootPart.Position.X, HumanoidRootPart.Position.Y + 1000, HumanoidRootPart.Position.Z) end

                            if Settings.DodgeAttacks then
                            end

                            while true do
                                if Settings.AllowPlayerTeleports then HumanoidRootPart.CFrame = CFrame.new(safePosition) end

                                TeleportStandPart()

                                if not hazardModel.Parent then break end

                                task.wait()

                                if not Settings.DodgeAttacks or MissionDone then break end
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
                    local prestigeFilePath = "JEW/" .. prestigeFileName

                    if checkFile(prestigeFilePath) and (PlaceIdStr == "4310463616" and not InDungeon) then
                        delfile(prestigeFilePath)
                        Remotes:WaitForChild("Profile_Prestige"):FireServer()
                        task.wait(1)
                        ReplayDungeon(1, 5)

                        return
                    end

                    if not isfile(prestigeFilePath) then writefile(prestigeFilePath, "haha txt file") end

                    Remotes:WaitForChild("Teleport_TeleportToHub", math.huge):FireServer(13)
                end)
            end
        end)
    end
    task.wait()
    _G.ScriptStep = "event stuff"
    if InDungeon then
        Toggles.InstakillToggle:OnChanged(function(instakillEnabled)
            if not IsEventDungeon then return end

            Settings.InstakillOn = instakillEnabled

            if instakillEnabled then
                task.wait(0.5)

                local instakillTimeout = 15

                if Options.InstakillDropdown.Value ~= "Normal method" then instakillTimeout = 25 end

                if Tracking.LoggedDifficulty == 6 then
                    instakillTimeout = 35
                    Remotes:WaitForChild("Mobs_EVENTBOSSUndeadVane_ResurrectShake", math.huge).OnClientEvent:Wait()

                    if Options.InstakillDropdown.Value ~= "Normal method" then task.wait(31) end

                    if Settings.InstakillOn then SkillActive = false end
                end

                Settings.InstakillBoss = true
                PlayerStandPart.CanCollide = false
                task.spawn(function()
                    task.wait(instakillTimeout)

                    if MissionDone or not Settings.InstakillBoss then return end

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

                            if Settings.AllowPlayerTeleports then HumanoidRootPart:PivotTo(CFrame.new(standPosition)) end

                            RunService.Heartbeat:Wait()

                            if not bossCollider.Parent then break end
                        end
                        HumanoidRootPart.Velocity = Vector3.new()
                        if Tracking.LoggedDifficulty == 5 then dragonCollider = MobsFolder:WaitForChild("BOSSDarkriseDarkDragon", 1e999):WaitForChild("Collider", math.huge) end
                        if dragonCollider then
                            local dragonStandOffset = GetPlayerSize() + dragonCollider.Size.Y / 2 + 8

                            while Settings.InstakillBoss and not MissionDone do
                                local standPosition = Vector3.new(bossCollider.Position.X, bossCollider.Position.Y + dragonStandOffset, bossCollider.Position.Z)

                                if Settings.AllowPlayerTeleports then HumanoidRootPart:PivotTo(CFrame.new(standPosition)) end

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
                            if Settings.AllowPlayerTeleports then HumanoidRootPart:PivotTo(CFrame.new(standPosition)) end

                            RunService.Heartbeat:Wait()
                        end

                        HumanoidRootPart.Velocity = Vector3.new()
                    end
                end)

                if Options.InstakillDropdown.Value ~= "Normal method" then return end

                if Settings.InstakillBoss then
                end

                repeat
                    local velocityOffset = 0.1

                    RunService.Heartbeat:Wait()

                    local rootPart = HumanoidRootPart
                    local velocity = rootPart.Velocity

                    if Settings.AllowPlayerTeleports then rootPart.Velocity = velocity * 10000 + Vector3.new(0, 100000, 0) end

                    RunService.RenderStepped:Wait()

                    if HumanoidRootPart then rootPart.Velocity = velocity end

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

                                if orbModel then TeleportToOrb(orbModel) end

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
                    if not Remotes:WaitForChild("Battlepass_HasPremium", 1e999):InvokeServer() then noPremium = true end
                    local function redeemTier(itemTier, isPremium)
                        local deadline = time() + 3

                        if not isPremium then
                            Battlepass_RedeemedItem:InvokeServer(itemTier)

                            repeat
                                if deadline < time() then return end

                                Battlepass_RedeemItem:FireServer(itemTier)
                                task.wait()
                            until Battlepass_RedeemedItem:InvokeServer(itemTier)

                            return
                        end

                        Battlepass_RedeemedItem:InvokeServer(itemTier, true)

                        repeat
                            if deadline < time() then return end

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

                            if not Settings.IsScriptDeveloper and not Settings.IsNewPlayer then OpenTradeNotification() end
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

            if Settings.ShopPlaced then Remotes:WaitForChild("Shop_StopShop", math.huge):FireServer(); Library:Notify("Player shop removed.", 2) end
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
                        if IsInCombat then Remotes:WaitForChild("Skillset_DualWielder_AttackBuff", math.huge):FireServer(); Remotes:WaitForChild("Skillset_Guardian_AggroDraw", math.huge):FireServer() end

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
                                if v.Name ~= PlayerName then Skillset_MageOfLight_Barrier:FireServer(v) end

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
                            if IsInCombat and CurrentTargetMob then Skillset_Demon_BloodBinding:FireServer(); task.wait(8) end

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
                            if IsInCombat then Skillset_Stormcaller_Supercharge:FireServer(); task.wait(8) end

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
                    local loggedEggItems = { "AetherEgg", "CupidEgg", "SkeletonEgg", "SantaEgg" }


local backpackRef = ResolveBackpack()
                    if not backpackRef then return end
                    local Items = backpackRef:WaitForChild("Items", 10)
                    if not Items then return end
                    local Charms
                    if Settings.CanRequire and Charms then Charms = require(Charms:WaitForChild("Charms")) end
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
                                if itemRarity == 7 then return end

                                if not SellRarityThreshold then
                                    local itemToSell = child
                                    local ok, result = pcall(function()
                                        (GetSellRemote() or error("Drops_SellItems is missing")):InvokeServer({ itemToSell })
                                        Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(itemToSell), 1)
                                        ActiveSellCount -= 1
                                    end)

                                    if not ok then HandleError("SELL", (tostring(result))) end

                                    return
                                end

                                if itemRarity < SellRarityThreshold then
                                    local itemToSell = child
                                    local ok, result = pcall(function()
                                        (GetSellRemote() or error("Drops_SellItems is missing")):InvokeServer({ itemToSell })
                                        Library:Notify("<font color='#FCCE7E'>Sold item:</font> " .. tostring(itemToSell), 1)
                                        ActiveSellCount -= 1
                                    end)

                                    if not ok then HandleError("SELL", (tostring(result))) end

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

                                if not ok then HandleError("SELL", (tostring(result))) end

                                return
                            end
                            local isEggName = table.find(EggNameList, itemNameString) or false
                            local perkFound = false
                            local perkValue = false
                            local perkName = false
                            if not isEggName and (Settings.KeepPerks and Settings.SelectedPerks) then
                                for i = 1, 3 do
                                    if perkFound then break end

                                    local perkFolderName = "Perk" .. tostring(i)
                                    local perkFolder = child:FindFirstChild(perkFolderName)

                                    if perkFolder then
                                        local PerkValue = perkFolder:FindFirstChild("PerkValue")

                                        for k, _ in pairs(Settings.SelectedPerks) do
                                            local perkConfig = Settings.SavePerkTable[k]
                                            local perkMatches = perkConfig

                                            if perkConfig then
                                                perkMatches = perkFolder.Value == perkConfig.PerkInternalName

                                                if perkMatches then perkMatches = PerkValue.Value >= (perkConfig.PerkValue * 100 - PerkTolerance) / 100 or (isPet or isCharm) and PerkValue.Value >= (perkConfig.PetPerkValue * 100 - PerkTolerance) / 100 end
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

                                if not ok then HandleError("SELL", (tostring(result))) end

                                return
                            end
                            if isEggName or keptItem then Library:Notify("<font color='#80FF80'>Kept item:</font> " .. itemNameString, 1); ActiveSellCount -= 1 end
                            local loggedItem = table.find(loggedEggItems, itemNameString) or false
                            local shouldWebhook = loggedItem
                            if not loggedItem then shouldWebhook = perkFound and (Settings.DiscordWebhookLink ~= nil and Settings.DiscordWebhookLink ~= "") end
                            if shouldWebhook then
                                local webhookContent
                                if loggedItem then
                                    webhookContent = "Kept item **" .. itemNameString .. "**! " .. WebhookMention
                                elseif perkFound then webhookContent = "Kept **" .. itemNameString .. "** because **" .. tostring(perkName) .. " " .. tostring(perkValue) .. "%** was found!" .. WebhookMention end
                                local _, _ = pcall(function()
                                    local webhookPayload = { username = "Drop Logger", content = webhookContent }
                                    local DiscordWebhookLink = Settings.DiscordWebhookLink

                                    if not DiscordWebhookLink and true then
                                        warn("No webhook link provided")

                                        return
                                    end

                                    local hookCheckEnabled = false
                                    local _, _ = pcall(function()

                                        if not HttpRequest then
                                            return
                                        end

                                        local httpRequestRef = HttpRequest
                                        local webhookUrl = DiscordWebhookLink
                                        local webhookHeaders = { ["Content-Type"] = "application/json" }
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
                        if not sellSuccess then HandleError("FAILURE TO SELL ITEM", (tostring(sellResult))) end
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
                                    for _ = 1, 2 do Remotes:WaitForChild("Quests_ClaimDailyGuildQuest", math.huge):FireServer(ID) end

                                    task.wait(1.5)
                                end
                            end
                        end

                        local Quests_ClaimQuest = Remotes:WaitForChild("Quests_ClaimQuest", 1e999)

                        if Quests_ClaimQuest then
                            local GetChildren = Active.GetChildren

                            for _, v in ipairs(GetChildren(Active)) do Quests_ClaimQuest:FireServer(tonumber(v.Name)) end
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
                        if property >= RangedDistance + 1 then Library:Notify("Sending restart"); RestartDungeon(true) end
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

                    if MissionStart then MissionStart:PivotTo(CFrame.new(HumanoidRootPart.Position)); startOffset = 5 end

                    task.wait(0.2)

                    local hidePosition = Vector3.new(HumanoidRootPart.Position.X + 25000, HumanoidRootPart.Position.Y + 25000, HumanoidRootPart.Position.Z)

                    Settings.GuildPreviousPlayerPosition = HumanoidRootPart.Position

                    if Settings.AllowPlayerTeleports then HumanoidRootPart.CFrame = CFrame.new(hidePosition) end

                    TeleportStandPart()

                    local totalDelay = maxWait + (Settings.AddedGuildTime or 0) + startOffset

                    Settings.DelayNotification = Library:Notify("Waiting for legit time", totalDelay)

                    local endTime = time() + totalDelay

                    while Settings.GuildWait and not MissionDone do
                        if endTime <= time() then
                            if Settings.AllowPlayerTeleports then HumanoidRootPart.CFrame = CFrame.new(Settings.GuildPreviousPlayerPosition) end

                            TeleportStandPart()
                            Settings.GuildPreviousPlayerPosition = nil

                            return
                        end

                        if Settings.AllowPlayerTeleports then HumanoidRootPart.CFrame = CFrame.new(hidePosition) end

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

                if Settings.DelayNotification then Settings.DelayNotification:Destroy() end

                if Settings.GuildPreviousPlayerPosition then
                    if Settings.AllowPlayerTeleports then HumanoidRootPart.CFrame = CFrame.new(Settings.GuildPreviousPlayerPosition) end
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

                                    if currentCount == totalCount then Settings.InfiniteTowerFloorDelay = Settings.InfiniteTowerFloorDelay + Settings.IncrementInfiniteDelay; EventState = false end

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
                                        if Settings.DelayNotification then Settings.DelayNotification:Destroy() end

                                        if Settings.AllowPlayerTeleports then HumanoidRootPart.CFrame = CFrame.new(Settings.InfinitePreviousPlayerPosition) end

                                        TeleportStandPart()

                                        return
                                    end

                                    if Settings.AllowPlayerTeleports then HumanoidRootPart.CFrame = CFrame.new(hidePosition) end

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
                if Settings.DelayNotification then Settings.DelayNotification:Destroy() end

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

                            if Settings.AutoHatch then continue end

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

                            if Settings.AutoHatch then continue end

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

                    for _, v in pairs(EggNameList) do eggNameLookup[v] = true end

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
                                if not (v and (v.Parent and eggNameLookup[v.Name])) then continue end

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

                            if not eggHatched then task.wait(5) end

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
                if PlaceIdStr ~= "14914684761" then return end

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
                if PlaceIdStr ~= "6510868181" then return end
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
                if PlaceIdStr ~= "139316833473171" then return end

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
                if PlaceIdStr ~= "18567064955" then return end
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

            if CanRequire then CanRequire = HookFunction and (RestoreFunction and (NewCClosure and IsHooked)) end

            if CanRequire then
                local success, result = pcall(function()
                    local RenderDamageNumber = require(Effects).RenderDamageNumber

                    if enabled then
                        HookFunction(RenderDamageNumber, NewCClosure(function(...)
                        end))

                        return
                    end

                    if IsHooked(RenderDamageNumber) then RestoreFunction(RenderDamageNumber) end
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

                    if Settings.RemovedDamageNumbers then Library:Notify("Rejoin to see damage numbers", 5) end
                end)

                if not ok then HandleError("REMOVE DAMAGE NUMBERS FALLBACK", (tostring(result))) end
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

            if CanRequire then CanRequire = HookFunction and (RestoreFunction and (NewCClosure and IsHooked)) end

            if CanRequire then
                local success, result = pcall(function()
                    local DoEffect = require(Effects).DoEffect

                    if enabled then
                        local hookedDoEffect
                        hookedDoEffect = HookFunction(DoEffect, NewCClosure(function(effectName, effectTag, ...)
                            if effectTag == "DeathEffect" then return end

                            return hookedDoEffect(effectName, effectTag, ...)
                        end))

                        return
                    end

                    if IsHooked(DoEffect) then RestoreFunction(DoEffect) end
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
                    elseif Settings.RemovedDeathEffects then Library:Notify("Rejoin to see death effects", 5) end
                end)

                if not ok then HandleError("REMOVE DEATH EFFECTS FALLBACK", (tostring(result))) end
            end
        end)
        Toggles.KnockdownToggle:OnChanged(function(enabled)
            local CanRequire = Settings.CanRequire

            if CanRequire then CanRequire = HookFunction and (RestoreFunction and (NewCClosure and IsHooked)) end

            if CanRequire then
                local ok, result = pcall(function()
                    local Knockdown = require(game.ReplicatedStorage.Client.Actions).Knockdown

                    if enabled then
                        HookFunction(Knockdown, NewCClosure(function(...)
                        end))

                        return
                    end

                    if IsHooked(Knockdown) then RestoreFunction(Knockdown) end
                end)

                if not ok then HandleError("DISABLE KNOCKDOWN", (tostring(result))) end
            end
        end)
    end
    if InLobby then
        Toggles.WaystoneToggle:OnChanged(function(enabled)
            local waystoneEnabled = enabled
            local success, result = pcall(function()
                if waystoneEnabled then
                    Connections.ConnectWaystones = PlayerGui.ChildAdded:Connect(function(child)
                        if child.Name == "WaystoneDiscoveryIcon" then child.PlayerToHideFrom = LocalPlayer end
                    end)

                    for _, child in pairs(PlayerGui:GetChildren()) do
                        if child.Name == "WaystoneDiscoveryIcon" then child.PlayerToHideFrom = LocalPlayer end
                    end

                    return
                end

                DisconnectVariable("ConnectWaystones")

                for _, child in pairs(PlayerGui:GetChildren()) do
                    if child.Name == "WaystoneDiscoveryIcon" then child.PlayerToHideFrom = nil end
                end
            end)
            if not success then HandleError("HIDE WAYSTONES", (tostring(result))) end
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
                    if not Settings.WalkspeedManager then Settings.WalkspeedManager = require(ReplicatedStorage.Shared.WalkspeedManager); task.wait(1) end

                    local WalkspeedManager = Settings.WalkspeedManager
                    local speedTable = { (tonumber(walkspeed)) }

                    WalkspeedManager:SetBaseSpeed(Unpack(speedTable))
                end)
                if not success then HandleError("CHANGE WALKSPEED", (tostring(result))) end
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
                            elseif rank == 7 then rankText = "RMS" end

                            local kickWebhookPayload = { username = "PLAYER JOINED", content = "# @everyone someone with the rank " .. rankText .. " joined your game" }

                            LocalPlayer:Kick("Someone with the rank " .. rankText .. " joined your game")

                            local DiscordWebhookLink = Settings.DiscordWebhookLink
                            local webhookPayloadRef = kickWebhookPayload

                            if not DiscordWebhookLink and true then
                                warn("No webhook link provided")

                                return
                            end

                            local hookCheckEnabled = false
                            local _, _ = pcall(function()

                                if not HttpRequest then
                                    return
                                end

                                local httpRequestRef = HttpRequest
                                local webhookUrl = DiscordWebhookLink
                                local webhookHeaders = { ["Content-Type"] = "application/json" }
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
                            elseif rank == 7 then rankText = "RMS" end

                            local kickWebhookPayload = { username = "PLAYER JOINED", content = "# @everyone someone with the rank " .. rankText .. " joined your game" }

                            LocalPlayer:Kick("Someone with the rank " .. rankText .. " joined your game")

                            local DiscordWebhookLink = Settings.DiscordWebhookLink
                            local webhookPayloadRef = kickWebhookPayload

                            if not DiscordWebhookLink and true then
                                warn("No webhook link provided")

                                return
                            end

                            local hookCheckEnabled = false
                            local _, _ = pcall(function()

                                if not HttpRequest then
                                    return
                                end

                                local httpRequestRef = HttpRequest
                                local webhookUrl = DiscordWebhookLink
                                local webhookHeaders = { ["Content-Type"] = "application/json" }
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

                    if PlayerGuild then noPremium = "Yes" end

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

            while Settings.PreventAfk and not MissionDone do VirtualUser:CaptureController() VirtualUser:ClickButton2(Vector2.new(0, 0)) task.wait(10) end
        else
            Settings.PreventAfk = nil
        end
    end)
    if InMainMenu then
        Toggles.MainMenuPlay:OnChanged(function(enabled)
            if enabled then
                if firesignal then
                    local Play = PlayerGui:WaitForChild("Menu", 1e999):WaitForChild("Main", math.huge):WaitForChild("Play", math.huge):WaitForChild("Play", 1e999)

                    if not enabled then return end

                    while _G.Is_Script_Running do firesignal(Play.MouseButton1Click); task.wait(0.5) end
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
                    if v.Name ~= PlayerName then v:Destroy() end
                end

                Connections.ConnectCharacterFolder = Characters.ChildAdded:Connect(function(child)
                    task.wait(0.1)

                    if child.Name == PlayerName then return end

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

                if child and Highlight then Highlight:Destroy() end
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
            if enabled then Character.Humanoid.AutoJumpEnabled = false end
        end)
        Options.FPSSlider:OnChanged(function(fpsValue)
            if fpsValue then
                local ok, _ = pcall(function()
                    local fpsCap = tonumber(fpsValue)

                    setfpscap(fpsCap)
                end)

                if not ok then Library:Notify("Your executor doesn't support this option", 5) end
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
                if not success then HandleError("DISABLE RENDERING", (tostring(result))) end
            end
        end)
    end
    if InLobby or InDungeon then
        Toggles.PreventMobToggle:OnChanged(function(enabled)
            local CanRequire = Settings.CanRequire

            if CanRequire then CanRequire = HookFunction and (RestoreFunction and (NewCClosure and IsHooked)) end

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
                            if not string.find(modelName, "Pet") then return Shockball:Clone() end

                            return hookedGetModel(originalFunction, modelName)
                        end))

                        return
                    end

                    if IsHooked(GetModel) then RestoreFunction(GetModel) end
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

                    if Settings.RemovedModels then Library:Notify("Rejoin to see assets", 5) end
                end)
                if not success then HandleError("PREVENT MODELS FROM LOADING FALLBACK", (tostring(result))) end
            end
        end)
        Toggles.PreventEffectsToggle:OnChanged(function(enabled)
            local CanRequire = Settings.CanRequire

            if CanRequire then CanRequire = HookFunction and (RestoreFunction and (NewCClosure and IsHooked)) end

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

                    if IsHooked(lib.MakeProjectile) and (IsHooked(lib.PlayAt) and IsHooked(lib.EmitAt)) then RestoreFunction(lib.MakeProjectile) RestoreFunction(lib.PlayAt) RestoreFunction(lib.EmitAt) end

                    if IsHooked(lib.DoEffect) then RestoreFunction(lib.DoEffect) end
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
    local masteryConfigs = { 		IcefireMage = { MasteryRequirement = 400, MasteryDisplayName = "Stormcaller" }, 		MageOfLight = { MasteryRequirement = 350, MasteryDisplayName = "Mage of Shadows" }, 		Archer = { MasteryRequirement = 200, MasteryDisplayName = "Hunter" }, 		Dragoon = { MasteryRequirement = 10000, MasteryDisplayName = "Leviathan" }, 		Guardian = { MasteryRequirement = 7500, MasteryDisplayName = "Starbreaker" }, 		Demon = { MasteryRequirement = 150, MasteryDisplayName = "Necromancer" } }
    if InDungeon then
        if Toggles.ClassPingToggle then
            Toggles.ClassPingToggle:OnChanged(function(enabled)
                if enabled then
                    local Masteries = CharacterData:FindFirstChild("Masteries")

                    if Masteries then
                        local masteryFolder = Masteries:FindFirstChild(Settings.PlayerClass)
                        local masteryConfig = masteryConfigs[Settings.PlayerClass]

                        if masteryFolder and (masteryConfig and masteryFolder.Value >= masteryConfig.MasteryRequirement) then PingMasteryTracker(masteryConfig.MasteryDisplayName); Settings.Killaura = nil end
                    end
                end
            end)
        end
        if Options.PingDropdown then
            Options.PingDropdown:OnChanged(function(pingTarget)
                WebhookMention = (pingTarget == "No ping") and "" or pingTarget
            end)
        end
    end
    task.wait()
    _G.ScriptStep = "config tab functions"
    Toggles.AutoScriptToggle:OnChanged(function(enabled)
        if enabled then
            if not isfile("JEW/AutoExecute") then writefile("JEW/AutoExecute", "") end

            if not Settings.AlreadyQueued and QueueOnTeleport then QueueOnTeleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/fnkq/jewhub32skidy/refs/heads/main/jewhub322.lua\"))()") end
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

                            if GuildTag then GuildTag = " [" .. GuildTag .. "]" end

                            local memberString = memberName .. GuildTag or ""

                            if partyMember.Name == LeaderValue then memberString = "СЂСџвЂвЂ " .. memberString end

                            return memberString
                        end

                        local primaryMemberString = buildPartyMemberString(LocalPlayer)

                        Tracking.BuildDescription = ""
                        Tracking.PersonRunningScript = "**Primary:** `" .. primaryMemberString .. "`"
                        Connections.PlayerJoins = Players.ChildAdded:Connect(function()
                            Tracking.BuildDescription = "\n**Party members:** `"

                            local memberList = {}

                            for _, child in pairs(Players:GetChildren()) do
                                if child.Name ~= LocalPlayer.Name then table.insert(memberList, (buildPartyMemberString(child))) end
                            end

                            Tracking.BuildDescription = Tracking.BuildDescription .. table.concat(memberList, "`, `") .. "`"
                        end)

                        if #Players:GetChildren() > 1 then
                            Tracking.BuildDescription = "\n**Party members:** `"

                            local memberList = {}

                            for _, child in pairs(Players:GetChildren()) do
                                if child.Name ~= LocalPlayer.Name then table.insert(memberList, (buildPartyMemberString(child))) end
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

                                if Tracking.MissionId == 43 then assetId = 15046578670 end

                                local dungeonImagesPath = "JEW/DungeonImages"
                                local imageUrl

                                if not isfile("JEW/DungeonImages") then
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

                                        for k, v in pairs(Images) do imageCache[k] = { table.unpack(v) } end

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

                                if string.find(tostring(imageUrl), "token") then imageUrl = "" end

                                Tracking.DungeonImage = imageUrl
                            end)

                            if not ok then Tracking.DungeonImage = "" end
                        end

                        Remotes:WaitForChild("Teleport_SplashEvent", 1e999).OnClientEvent:Once(function()
                            local telemetryText = Tracking.PersonRunningScript .. Tracking.BuildDescription .. "\n-# `" .. (GetHWID and GetHWID() or "unkown`")
                            local thumbnailPayload = { url = Tracking.DungeonImage }
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
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then scriptCount += 1 end
                                        end
                                    end)
                                    if scriptCount > 2 or scriptCount == 0 then return end
                                    if not ok then return end
                                    local hooksDetected = false
                                    local success = pcall(function()
                                        local requestHooked = ishooked and ishooked(request)

                                        if not requestHooked then requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request)) end

                                        if requestHooked then
                                            hooksDetected = true

                                            return
                                        end
                                    end)
                                    if not success then return end
                                    local httpOk, _ = pcall(function()
                                        local httpGetHooked = ishooked and ishooked(game.HttpGet)

                                        if not httpGetHooked then
                                            httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                            if not httpGetHooked then httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet) end
                                        end

                                        if httpGetHooked then
                                            hooksDetected = true

                                            return
                                        end
                                    end)
                                    if hooksDetected then return end
                                    if not httpOk then return end
                                end

                                if not HttpRequest then return end

                                local httpRequestRef = HttpRequest
                                local webhookTarget = webhookUrl
                                local webhookHeaders = { ["Content-Type"] = "application/json" }
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
                            local statsPayload = { name = playerName, date = dateString, gold = goldAmount, crystals = crystals, level = PlayerLevel, prestige = PlayerPrestige, guild = guildTag, class = PlayerClass, profile = profileUrl, lifecrystals = CrystalsEarned, lifemonsters = DefeatedMonsters, lifedistance = DistanceTraveled, lifedungeons = DungeonsCompleted, lifeeggs = EggsHatched, lifegold = GoldEarned, lifetime = TimePlayed }
                            local hookCheckEnabled = true
                            local statsWebhookUrl = "https://script.google.com/macros/s/AKfycbwbJSM5b8cixuDpt1uz-4RNKjJKpzz3raUqdHCfi7Yoe55b7umQFbyjIeUW8o5atbgY/exec"
                            local _, _ = pcall(function()
                                if hookCheckEnabled and HookFunction or hookmetamethod then
                                    local scriptCount = 0
                                    local ok, _ = pcall(function()
                                        for _, v in pairs(getreg()) do
                                            if typeof(v) == "Instance" and v.ClassName == "LocalScript" then scriptCount += 1 end
                                        end
                                    end)
                                    if scriptCount > 2 or scriptCount == 0 then return end
                                    if not ok then return end
                                    local hooksDetected = false
                                    local success = pcall(function()
                                        local requestHooked = ishooked and ishooked(request)

                                        if not requestHooked then requestHooked = isfunctionhooked and isfunctionhooked(request) or (is_hooked and is_hooked(request) or is_function_hooked and is_function_hooked(request)) end

                                        if requestHooked then
                                            hooksDetected = true

                                            return
                                        end
                                    end)
                                    if not success then return end
                                    local httpOk, _ = pcall(function()
                                        local httpGetHooked = ishooked and ishooked(game.HttpGet)

                                        if not httpGetHooked then
                                            httpGetHooked = isfunctionhooked and isfunctionhooked(game.HttpGet)

                                            if not httpGetHooked then httpGetHooked = is_hooked and is_hooked(game.HttpGet) or is_function_hooked and is_function_hooked(game.HttpGet) end
                                        end

                                        if httpGetHooked then
                                            hooksDetected = true

                                            return
                                        end
                                    end)
                                    if hooksDetected then return end
                                    if not httpOk then return end
                                end

                                if not HttpRequest then return end

                                local httpRequestRef = HttpRequest
                                local webhookUrl = statsWebhookUrl
                                local webhookHeaders = { ["Content-Type"] = "application/json" }
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

            if PlayerStats then PlayerStats = PlayerStats:WaitForChild(PlayerName, math.huge) end

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

            if StatTotals.DefeatedMonsters < 1000 then Settings.IsNewPlayer = true end

            Settings.GotPlayerStats = true
        end,
			function()
            if Tracking.MissionId == 1005 or (Tracking.MissionId == 1006 or Tracking.MissionId == 1007) then Settings.IsNightmareDungeon = true end
        end,
			GetPlayerPing,
			ConnectMissionCleared,
			ConnectMissionFinished,
			function()
            ((if Tracking.MissionId ~= 39 then Remotes:WaitForChild("Towers_TowerFinished", 1e999) else ReplicatedStorage:WaitForChild("MissionScripts", 1e999):WaitForChild("39", math.huge):WaitForChild("TowerFinished", 1e999))).OnClientEvent:Connect(function(_, timeValue)
                Settings.DungeonCompletionTime = FormatSecondsToString(timeValue)

                if Settings.ShowTime then Library:Notify({ Title = "Dungeon completed", Description = "Completed in " .. Settings.DungeonCompletionTime, Icon = "trophy", Time = 5 }) end

                if Settings.LogDungeon then
                    local embedColor = 65280
                    local dungeonName = "unknown"
                    local children = Players:GetChildren()

                    if Lost then embedColor = 16711680 end

                    if Settings.CanRequire then
                        dungeonName = require(Missions):GetCurrentMissionData().NameTag
                    else
                        DungeoName = dungeonName .. "(missing require())"
                    end

                    local partyInfo

                    if Toggles.ShowPlayersToggle.Value then
                        local playerList = {}

                        for _, v in pairs(children) do table.insert(playerList, v.Name) end

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

                            if Tracking.MissionId == 43 then assetId = 15046578670 end

                            local dungeonImagesPath = "JEW/DungeonImages"
                            local imageUrl

                            if not isfile("JEW/DungeonImages") then
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

                                    for k, v in pairs(Images) do imageCache[k] = { table.unpack(v) } end

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

                            if string.find(tostring(imageUrl), "token") then imageUrl = "" end

                            Tracking.DungeonImage = imageUrl
                        end)

                        if not ok then Tracking.DungeonImage = "" end
                    end

                    local dungeonDescription = "**Dungeon:** `" .. dungeonName .. "`\n" .. "**Time:** `" .. Settings.DungeonCompletionTime .. "`\n" .. "**Party size:** `" .. partyInfo
                    local thumbnailPayload = { url = Tracking.DungeonImage }
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

                            if not HttpRequest then
                                return
                            end

                            local httpRequestRef = HttpRequest
                            local webhookUrl = DiscordWebhookLink
                            local webhookHeaders = { ["Content-Type"] = "application/json" }
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
    SaveManager:SetFolder("JEW/saved_configs")
    SaveManager:BuildConfigSection(ConfigTab)
    SaveManager:LoadAutoloadConfig()
    if Toggles.DiscordScriptLoadedToggle and Toggles.DiscordScriptLoadedToggle.Value then
        task.spawn(function()
            local loadedEmbed = buildDiscordEmbed("Script loaded", "JewHub finished loading successfully and is ready to use.", { { name = "Script version", value = "v1.1", inline = true }, { name = "Executor", value = ExecName, inline = true }, { name = "Account", value = LocalPlayer.Name, inline = true }, { name = "Place ID", value = tostring(game.PlaceId), inline = true } })
            sendDiscordEmbed(loadedEmbed)
        end)
    end

    _G.ScriptStep = "set stuff after configs loaded"
    local Platform = UserInputService:GetPlatform()
    if Platform ~= Enum.Platform.Android and Platform ~= Enum.Platform.IOS then
        Library:Notify({ Title = "JewHub", Description = "You can press 0 (zero key) to open/close the menu", Icon = "keyboard", Time = 10 })
    else
        Tracking.IsMobile = true
    end
    if not Toggles.HideGuiToggle.Value then Library:Toggle() end
    if IsEventDungeon then
        task.spawn(function()
            task.wait(1.5)

            if Options.DailyKillInput.Value or Options.TotalKillInput.Value then CheckKillCount() end
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
                            local limitPayload = { username = "Limit tracker", content = messageText .. " limit reached on account: " .. playerNameString .. "\n-# " .. WebhookMention }
                            local DiscordWebhookLink = Settings.DiscordWebhookLink

                            if not DiscordWebhookLink and true then
                                warn("No webhook link provided")

                                return
                            end

                            local hookCheckEnabled = false
                            local _, _ = pcall(function()

                                if not HttpRequest then
                                    return
                                end

                                local httpRequestRef = HttpRequest
                                local webhookUrl = DiscordWebhookLink
                                local webhookHeaders = { ["Content-Type"] = "application/json" }
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
                            local limitPayload = { username = "Limit tracker", content = messageText .. " limit reached on account: " .. playerNameString .. "\n-# " .. WebhookMention }
                            local DiscordWebhookLink = Settings.DiscordWebhookLink

                            if not DiscordWebhookLink and true then
                                warn("No webhook link provided")

                                return
                            end

                            local hookCheckEnabled = false
                            local _, _ = pcall(function()

                                if not HttpRequest then
                                    return
                                end

                                local httpRequestRef = HttpRequest
                                local webhookUrl = DiscordWebhookLink
                                local webhookHeaders = { ["Content-Type"] = "application/json" }
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
            if not leaderboardSuccess then print(result) end
        end)
    end
    _G.ScriptStep = "equipment pop up screen"
    if InTower and (Settings.CanRequire and (HookFunction and NewCClosure)) then
        local success = pcall(function()
            local _DisplayItem = require(game.ReplicatedStorage.Client.Gui):Get("LootReceived")._DisplayItem

            HookFunction(_DisplayItem, NewCClosure(function(...)
            end))
        end)
        if not success then print("JEW: executor can't disable loot screen") end
    end
    ScriptloadingEnd = os.clock()
    print("Script took", math.round(ScriptloadingEnd - elapsed), "seconds to fully load from execution time")
    pcall(function()
        if isfile("JEW/a") then delfile("JEW/a") end
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

            for _, v in pairs(Connections) do DisconnectVariable(v) end
        end)
    end)
end


local pcallSuccess, pcallError = pcall(MainScript)
if not pcallSuccess then HandleError("FATAL SCRIPT ERROR", tostring(_G.ScriptStep), pcallError) end






