--21371892472308428326587256987346
--a:sob ULTIMATE v3.0|PART 1/5|BASE+MAIN+TARGET
task.spawn(function()
task.wait(2)
game:GetService("StarterGui"):SetCore("SendNotification",{
Title="Hello!",
Text="👋 Welcome, "..game.Players.LocalPlayer.DisplayName.."!",
Duration=15
})
end)
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
--КРАСИВАЯ ЗАГРУЗКА
task.spawn(function()
local sg=Instance.new("ScreenGui")
sg.Name="UltimateLoader"
sg.ResetOnSpawn=false
sg.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
sg.DisplayOrder=999999
sg.IgnoreGuiInset=true
sg.Parent=CG

local bg=Instance.new("Frame")
bg.Name="Background"
bg.Size=UDim2.new(1,0,1,0)
bg.Position=UDim2.new(0,0,0,0)
bg.BackgroundColor3=Color3.fromRGB(0,0,0)
bg.BorderSizePixel=0
bg.ZIndex=999999
bg.Parent=sg

local particles=Instance.new("Frame")
particles.Name="Particles"
particles.Size=UDim2.new(1,0,1,0)
particles.BackgroundTransparency=1
particles.ZIndex=999999
particles.Parent=bg

for i=1,50 do
local dot=Instance.new("Frame")
dot.Size=UDim2.new(0,math.random(2,6),0,math.random(2,6))
dot.Position=UDim2.new(math.random(0,100)/100,0,math.random(0,100)/100,0)
dot.BackgroundColor3=Color3.fromRGB(255,255,255)
dot.BackgroundTransparency=math.random(50,90)/100
dot.BorderSizePixel=0
dot.ZIndex=999999
dot.Parent=particles
Instance.new("UICorner",dot).CornerRadius=UDim.new(1,0)
task.spawn(function()
while dot.Parent do
TS:Create(dot,TweenInfo.new(math.random(20,40)/10,Enum.EasingStyle.Linear),{BackgroundTransparency=1}):Play()
task.wait(math.random(20,40)/10)
TS:Create(dot,TweenInfo.new(math.random(20,40)/10,Enum.EasingStyle.Linear),{BackgroundTransparency=math.random(50,90)/100}):Play()
task.wait(math.random(20,40)/10)
end
end)
end

local logo=Instance.new("TextLabel")
logo.Name="Logo"
logo.Size=UDim2.new(0,0,0,0)
logo.Position=UDim2.new(0.5,0,0.35,0)
logo.AnchorPoint=Vector2.new(0.5,0.5)
logo.BackgroundTransparency=1
logo.Text="VUHUT"
logo.TextColor3=Color3.fromRGB(255,255,255)
logo.Font=Enum.Font.GothamBold
logo.TextSize=0
logo.TextTransparency=1
logo.ZIndex=999999
logo.Parent=bg

local stroke=Instance.new("UIStroke")
stroke.Color=Color3.fromRGB(255,255,255)
stroke.Thickness=0
stroke.Transparency=1
stroke.Parent=logo

TS:Create(logo,TweenInfo.new(1,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Size=UDim2.new(0,500,0,120),TextSize=72,TextTransparency=0}):Play()
TS:Create(stroke,TweenInfo.new(1,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Thickness=3,Transparency=0}):Play()

task.wait(1.2)

local subtitle=Instance.new("TextLabel")
subtitle.Name="Subtitle"
subtitle.Size=UDim2.new(0,600,0,40)
subtitle.Position=UDim2.new(0.5,0,0.5,0)
subtitle.AnchorPoint=Vector2.new(0.5,0.5)
subtitle.BackgroundTransparency=1
subtitle.Text="Ultimate Edition"
subtitle.TextColor3=Color3.fromRGB(200,200,200)
subtitle.Font=Enum.Font.Gotham
subtitle.TextSize=24
subtitle.TextTransparency=1
subtitle.ZIndex=999999
subtitle.Parent=bg

TS:Create(subtitle,TweenInfo.new(0.8,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0}):Play()

task.wait(1)

local progressBG=Instance.new("Frame")
progressBG.Name="ProgressBG"
progressBG.Size=UDim2.new(0,400,0,4)
progressBG.Position=UDim2.new(0.5,-200,0.65,0)
progressBG.BackgroundColor3=Color3.fromRGB(40,40,40)
progressBG.BorderSizePixel=0
progressBG.ZIndex=999999
progressBG.Parent=bg
Instance.new("UICorner",progressBG).CornerRadius=UDim.new(1,0)

local progressBar=Instance.new("Frame")
progressBar.Name="Bar"
progressBar.Size=UDim2.new(0,0,1,0)
progressBar.BackgroundColor3=Color3.fromRGB(255,255,255)
progressBar.BorderSizePixel=0
progressBar.ZIndex=999999
progressBar.Parent=progressBG
Instance.new("UICorner",progressBar).CornerRadius=UDim.new(1,0)

local statusText=Instance.new("TextLabel")
statusText.Name="Status"
statusText.Size=UDim2.new(0,400,0,30)
statusText.Position=UDim2.new(0.5,-200,0.72,0)
statusText.BackgroundTransparency=1
statusText.Text="Initializing..."
statusText.TextColor3=Color3.fromRGB(180,180,180)
statusText.Font=Enum.Font.GothamMedium
statusText.TextSize=16
statusText.ZIndex=999999
statusText.Parent=bg

local steps={
{t="Loading services...",w=0.5},
{t="Connecting to server...",w=0.6},
{t="Injecting hooks...",w=0.4},
{t="Loading UI library...",w=0.7},
{t="Building interface...",w=0.5},
{t="Finalizing...",w=0.3},
}

for i,step in ipairs(steps)do
statusText.Text=step.t
TS:Create(progressBar,TweenInfo.new(step.w,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Size=UDim2.new(i/#steps,0,1,0)}):Play()
task.wait(step.w)
end

statusText.Text="Ready!"
task.wait(0.5)

TS:Create(logo,TweenInfo.new(0.8,Enum.EasingStyle.Back,Enum.EasingDirection.In),{TextTransparency=1,Size=UDim2.new(0,0,0,0)}):Play()
TS:Create(subtitle,TweenInfo.new(0.8,Enum.EasingStyle.Quad),{TextTransparency=1}):Play()
TS:Create(statusText,TweenInfo.new(0.8,Enum.EasingStyle.Quad),{TextTransparency=1}):Play()
TS:Create(progressBG,TweenInfo.new(0.8,Enum.EasingStyle.Quad),{BackgroundTransparency=1}):Play()
TS:Create(progressBar,TweenInfo.new(0.8,Enum.EasingStyle.Quad),{BackgroundTransparency=1}):Play()
TS:Create(stroke,TweenInfo.new(0.8,Enum.EasingStyle.Quad),{Transparency=1}):Play()
TS:Create(bg,TweenInfo.new(1.2,Enum.EasingStyle.Quad),{BackgroundTransparency=1}):Play()

task.wait(1.3)
sg:Destroy()
end)
local PS=game:GetService("Players")local P=PS.LocalPlayer local CG=game:GetService("CoreGui")local UIS=game:GetService("UserInputService")local RS=game:GetService("ReplicatedStorage")local R=game:GetService("RunService")local WS=workspace local Cam=WS.CurrentCamera local Deb=game:GetService("Debris")
local repo="https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local Lib=loadstring(game:HttpGet(repo.."Library.lua"))()
local TM=loadstring(game:HttpGet(repo.."addons/ThemeManager.lua"))()
local SM=loadstring(game:HttpGet(repo.."addons/SaveManager.lua"))()

-- Hook library notifications to play a sound (Obsidian notify)
do
local originalNotify = Lib.Notify
Lib.Notify = function(self, props)
-- play sound (safe)
pcall(function()
local sound = Instance.new("Sound")
sound.Name = "GGOG_NotifySound"
sound.SoundId = "rbxassetid://83479662888430"
sound.Volume = 1
sound.PlayOnRemove = false
sound.Parent = CG or game:GetService("CoreGui")
sound:Play()
if Deb and Deb.AddItem then
Deb:AddItem(sound, 4)
else
task.delay(4, function() pcall(function() sound:Destroy() end) end)
end
end)



    if type(originalNotify) == "function" then
        return originalNotify(self, props)
    end
end
end
Lib.ForceCheckbox=true
local Opt,Tog=Lib.Options,Lib.Toggles local ntf=function(t,d,tm)Lib:Notify({Title=t,Description=d or"",Time=tm or 5})end
local W=Lib:CreateWindow({Title="GGOG Script",Icon="9013498676",Footer="GGOG Script || 0.1.2||Keys added!",NotifySide="Right",ShowCustomCursor=false})
W:SetCornerRadius(12)
TM:SetLibrary(Lib)
-- Apply default theme safely
if TM and type(TM.SetDefaultTheme) == "function" then
pcall(function()
TM:SetDefaultTheme({
BackgroundColor = Color3.fromRGB(0, 0, 0),
MainColor = Color3.fromRGB(25, 25, 25),
AccentColor = Color3.fromRGB(255, 255, 255),
OutlineColor = Color3.fromRGB(0, 0, 0),
FontColor = Color3.fromRGB(255, 255, 255),
FontFace = "Arcade",
})
end)
end

-- ═══════════════════════════════════════════════════════════
-- ОФИЦИАЛЬНЫЙ PING & FPS DISPLAY (из Error Script)
-- ═══════════════════════════════════════════════════════════
do
    local currentPing = "--"
    local currentFps = "--"

    -- Создаём draggable лейбл через Obsidian
    local statsLabel = nil
    pcall(function()
        statsLabel = Lib:AddDraggableLabel("🌙 Ping: -- ms | FPS: --")
        if statsLabel and statsLabel.SetVisible then
            statsLabel:SetVisible(true)
        end
    end)

    -- Если Obsidian не поддерживает AddDraggableLabel — фолбек на ScreenGui
    if not statsLabel then
        local fpsGui = CG:FindFirstChild("GGOGFPSWindow2")
        if not fpsGui then
            fpsGui = Instance.new("ScreenGui")
            fpsGui.Name = "GGOGFPSWindow2"
            fpsGui.ResetOnSpawn = false
            fpsGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            fpsGui.Parent = CG
        end

        local fpsFrame = fpsGui:FindFirstChild("FPSFrame2")
        if not fpsFrame then
            fpsFrame = Instance.new("Frame")
            fpsFrame.Name = "FPSFrame2"
            fpsFrame.Size = UDim2.new(0, 220, 0, 40)
            fpsFrame.Position = UDim2.new(0.5, -110, 0.3, -20)
            fpsFrame.BackgroundColor3 = Color3.new(0.06, 0.06, 0.06)
            fpsFrame.BorderSizePixel = 0
            fpsFrame.ZIndex = 1000000
            fpsFrame.Active = true
            fpsFrame.Parent = fpsGui
            Instance.new("UICorner", fpsFrame).CornerRadius = UDim.new(0, 20)

            local stroke = Instance.new("UIStroke")
            stroke.Parent = fpsFrame
            stroke.Color = Color3.new(1, 1, 1)
            stroke.Transparency = 0.8
            stroke.Thickness = 1
        end

        local fpsValue = fpsFrame:FindFirstChild("FPSValue2")
        if not fpsValue then
            fpsValue = Instance.new("TextLabel")
            fpsValue.Name = "FPSValue2"
            fpsValue.Size = UDim2.new(1, -16, 1, -14)
            fpsValue.Position = UDim2.new(0, 8, 0, 7)
            fpsValue.BackgroundTransparency = 1
            fpsValue.Font = Enum.Font.GothamBold
            fpsValue.TextSize = 14
            fpsValue.TextColor3 = Color3.new(1, 1, 1)
            fpsValue.Text = "🌙 Ping: -- ms | FPS: --"
            fpsValue.TextXAlignment = Enum.TextXAlignment.Left
            fpsValue.TextYAlignment = Enum.TextYAlignment.Center
            fpsValue.Parent = fpsFrame
        end

        -- Dragging для фолбека
        local fpsDragging = false
        local fpsDragStart = Vector2.new(0, 0)
        local fpsStartPos = nil
        local fpsMouseOver = false

        fpsFrame.MouseEnter:Connect(function() fpsMouseOver = true end)
        fpsFrame.MouseLeave:Connect(function() fpsMouseOver = false end)

        UIS.InputBegan:Connect(function(input)
            if fpsMouseOver then
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    fpsDragging = true
                    fpsDragStart = UIS:GetMouseLocation()
                    fpsStartPos = fpsFrame.Position
                end
            end
        end)

        UIS.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                fpsDragging = false
            end
        end)

        UIS.InputChanged:Connect(function(input)
            if fpsDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                local delta = UIS:GetMouseLocation() - fpsDragStart
                fpsFrame.Position = UDim2.new(
                    fpsStartPos.X.Scale,
                    fpsStartPos.X.Offset + delta.X,
                    fpsStartPos.Y.Scale,
                    fpsStartPos.Y.Offset + delta.Y
                )
            end
        end)

        -- Создаём фейковый объект чтобы код дальше работал одинаково
        statsLabel = {
            SetText = function(self, text)
                if fpsValue and fpsValue.Parent then
                    fpsValue.Text = text
                end
            end,
            SetVisible = function(self, val)
                if fpsFrame then
                    fpsFrame.Visible = val
                end
            end
        }
    end

    -- ═══════════════════════════
    -- FPS MEASUREMENT
    -- ═══════════════════════════
    local frameCount = 0
    R.RenderStepped:Connect(function()
        frameCount = frameCount + 1
    end)

    task.spawn(function()
        local lastTime = tick()
        while true do
            local now = tick()
            local dt = now - lastTime
            local fps = 0
            if dt > 0 then
                fps = math.floor(frameCount / dt + 0.5)
            end
            lastTime = now
            frameCount = 0
            currentFps = tostring(fps)
            pcall(function()
                if statsLabel then
                    statsLabel:SetText("🌙 Ping: " .. tostring(currentPing) .. " ms | FPS: " .. tostring(currentFps))
                end
            end)
            task.wait(1)
        end
    end)

    -- ═══════════════════════════
    -- PING MEASUREMENT (3 метода)
    -- ═══════════════════════════
    task.spawn(function()
        while true do
            local pingVal = nil

            -- Метод 1: GetNetworkPing
            pcall(function()
                if P and P.GetNetworkPing then
                    local ok, v = pcall(P.GetNetworkPing, P)
                    if ok and type(v) == "number" then
                        pingVal = math.floor(v * 1000)
                    end
                end
            end)

            -- Метод 2: Stats Service
            if not pingVal then
                pcall(function()
                    local stats = game:GetService("Stats")
                    if stats and stats.Network then
                        local serverStats = stats.Network:FindFirstChild("ServerStatsItem")
                            or stats.Network:FindFirstChild("ServerStats")
                        if serverStats then
                            local pingItem = serverStats:FindFirstChild("Data Ping")
                                or serverStats:FindFirstChild("Data ping")
                                or serverStats:FindFirstChild("Ping")
                            if pingItem and type(pingItem.Value) == "number" then
                                pingVal = math.floor(pingItem.Value)
                            end
                        end
                    end
                end)
            end

            -- Метод 3: Heartbeat fallback
            if not pingVal then
                local a = tick()
                R.Heartbeat:Wait()
                local b = tick()
                pingVal = math.floor((b - a) * 1000)
            end

            currentPing = tostring(pingVal or "--")
            pcall(function()
                if statsLabel then
                    statsLabel:SetText("🌙 Ping: " .. tostring(currentPing) .. " ms | FPS: " .. tostring(currentFps))
                end
            end)
            task.wait(1)
        end
    end)
end
-- ═══════════════════════════════════════════════════════════
-- END PING & FPS DISPLAY
-- ═══════════════════════════════════════════════════════════

local Tabs={Home=W:AddTab("Home","chess-queen"),Main=W:AddTab("Main","house"),LocalPlayer=W:AddTab("LocalPlayer","user"),Visual=W:AddTab("Visual","palette"),Target=W:AddTab("Target","crosshair"),AnimCreator=W:AddTab("Anim Creator","person-standing"),Server=W:AddTab("Server","server"),Keybinds=W:AddTab("Keybinds","keyboard"),Teleport=W:AddTab("Teleport","zap"),Misc=W:AddTab("Misc","layers"),Whitelist=W:AddTab("Whitelist","book-open"),Code=W:AddTab("Code","code"),CMD=W:AddTab("CMD","terminal"),AutoClicker=W:AddTab("Auto Clicker","mouse-pointer-click"),Developers=W:AddTab("Developers","pickaxe"),VUHUT=W:AddTab("VUHUT","info"),UI=W:AddTab("UI Settings","settings")}
local CE=RS:WaitForChild("CharacterEvents",10)
local GE=RS:WaitForChild("GrabEvents",10)
local SNO=GE:WaitForChild("SetNetworkOwner")
local CGL=GE:WaitForChild("CreateGrabLine")
local DGL=GE:WaitForChild("DestroyGrabLine")
local RR=CE:FindFirstChild("RagdollRemote")
local function Vel(p,v)if not p or not p.Parent then return end local b=Instance.new("BodyVelocity")b.MaxForce=Vector3.new(1e8,1e8,1e8)b.Velocity=v b.Parent=p Deb:AddItem(b,1)end
local function MvTo(p,cf)if not p or not p.Parent then return end local b=Instance.new("BodyPosition")b.MaxForce=Vector3.new(1e8,1e8,1e8)b.Position=cf.Position b.P=2e4 b.D=5e3 b.Parent=p Deb:AddItem(b,1)end
local selKP=nil
local function gPL()local l={}for _,p in ipairs(PS:GetPlayers())do if p~=P then table.insert(l,p.DisplayName.." ("..p.Name..")")end end return l end
local function gPFS(s)if not s then return nil end local u=s:match("%((.-)%)")return u and PS:FindFirstChild(u)end
local function getBP()local c=P.Character local hm=c and c:FindFirstChild("Humanoid")local se=hm and hm.SeatPart if not se or not se.Parent or se.Parent.Name~="CreatureBlobman"then return nil end local bl=se.Parent local br=bl:FindFirstChild("HumanoidRootPart")or bl.PrimaryPart local so=bl:FindFirstChild("BlobmanSeatAndOwnerScript")if not so then return nil end local cg=so:FindFirstChild("CreatureGrab")local cd=so:FindFirstChild("CreatureDrop")local rd=bl:FindFirstChild("RightDetector")local ld=bl:FindFirstChild("LeftDetector")local rw=rd and(rd:FindFirstChild("RightWeld")or rd:FindFirstChildWhichIsA("Weld"))local lw=ld and(ld:FindFirstChild("LeftWeld")or ld:FindFirstChildWhichIsA("Weld"))if not(cg and cd and rd and rw and br)then return nil end return{bl=bl,br=br,cg=cg,cd=cd,rd=rd,ld=ld,rw=rw,lw=lw,sp=br.CFrame}end
local function autoSitBlob()local c=P.Character or P.CharacterAdded:Wait()local hm=c:WaitForChild("Humanoid",5)local h=c:WaitForChild("HumanoidRootPart",5)if not hm or not h then return false end if hm.SeatPart and hm.SeatPart.Parent and hm.SeatPart.Parent.Name=="CreatureBlobman"then return true end local fn=P.Name.."SpawnedInToys"local f=WS:FindFirstChild(fn)local bl=f and f:FindFirstChild("CreatureBlobman")if not bl then pcall(function()RS.MenuToys.SpawnToyRemoteFunction:InvokeServer("CreatureBlobman",h.CFrame,Vector3.zero)end)task.wait(0.5)f=WS:WaitForChild(fn,5)if f then bl=f:WaitForChild("CreatureBlobman",5)end end if not bl then return false end local se=bl:FindFirstChildWhichIsA("VehicleSeat",true)if not se then return false end local t=tick()repeat h.CFrame=se.CFrame+Vector3.new(0,1,0)h.Velocity=Vector3.zero se:Sit(hm)R.Heartbeat:Wait()until hm.SeatPart==se or tick()-t>3 return hm.SeatPart==se end
local function monitorSit(flagFn)task.spawn(function()while flagFn()do local hm=P.Character and P.Character:FindFirstChild("Humanoid")if hm and not hm.SeatPart then autoSitBlob()end task.wait(0.3)end end)end
local kLE=false
local activeKickFunctions,kickMonitorConn=0,nil
local SAFE_POS=CFrame.new(-145.5,-29.9,574.8)
local function startKickMonitor()activeKickFunctions=activeKickFunctions+1 if kickMonitorConn then return end kickMonitorConn=R.Heartbeat:Connect(function()if activeKickFunctions>0 and selKP and selKP.Parent then end end)end
local function stopKickMonitor()activeKickFunctions=math.max(0,activeKickFunctions-1)if activeKickFunctions==0 and kickMonitorConn then kickMonitorConn:Disconnect()kickMonitorConn=nil end end
local function waitTR(tg,timeout,flag)if not tg or not tg.Parent then return nil,nil end local ws=tick()local tc,tr,th repeat task.wait(0.2)tc=tg.Character tr=tc and tc:FindFirstChild("HumanoidRootPart")th=tc and tc:FindFirstChild("Humanoid")until(tr and th and th.Health>0)or tick()-ws>(timeout or 15)or(flag and not flag())if tr and th and th.Health>0 then return tr,th end return nil,nil end

-- Недостающие функции
local function GetPlayerRoot()
local character = P.Character
if character then
return character:FindFirstChild("HumanoidRootPart")
end
return nil
end

local function lookAt(from, to)
local direction = (to - from).Unit
return CFrame.new(from, from + direction)
end

local function setBananaModelProperties(part)
-- Упрощенная версия для ragdoll
if part and part.Parent then
local humanoid = part.Parent:FindFirstChildOfClass("Humanoid")
if humanoid then
humanoid.PlatformStand = true
task.wait(0.1)
humanoid.PlatformStand = false
end
end
end

--HOME TAB
local HL=Tabs.Home:AddLeftGroupbox("Profile","user")
local HR=Tabs.Home:AddRightGroupbox("Information","info")

local sessionStartTime = tick()
local sessionTimeLabel = nil

-- ═══════════════════════════════════════════════════════════
-- АВАТАР ЧЕРЕЗ LABEL + IMAGEBUTTON (ВНУТРИ БИБЛИОТЕКИ)
-- ═══════════════════════════════════════════════════════════

-- Создаем аватар внутри левой колонки через AddImage (если есть)
-- или через кастомный элемент

-- Находим фрейм левой группы и вставляем туда аватар
task.spawn(function()
    task.wait(0.5) -- Ждём пока UI построится
    
    -- Ищем контейнер левой группы "Profile"
    local profileGroup = nil
    local libGui = Lib.GUI or CG
    
    -- Ищем в GUI библиотеки
    for _, desc in pairs(libGui:GetDescendants()) do
        if desc:IsA("TextLabel") and desc.Text == "Profile" then
            -- Нашли заголовок группы, берём родительский контейнер
            profileGroup = desc.Parent
            break
        end
    end
    
    if not profileGroup then
        -- Фолбек: ищем по другому
        for _, desc in pairs(libGui:GetDescendants()) do
            if desc:IsA("Frame") and desc.Name and desc.Name:lower():find("group") then
                profileGroup = desc
                break
            end
        end
    end
    
    -- Создаём аватар контейнер
    local avatarContainer = Instance.new("Frame")
    avatarContainer.Name = "AvatarContainer"
    avatarContainer.Size = UDim2.new(1, -20, 0, 200)
    avatarContainer.BackgroundTransparency = 1
    avatarContainer.BorderSizePixel = 0
    avatarContainer.LayoutOrder = -999 -- Первый элемент
    
    -- Если нашли группу - вставляем туда
    if profileGroup then
        avatarContainer.Parent = profileGroup
    else
        -- Создаём свой фрейм поверх левой колонки
        avatarContainer.Size = UDim2.new(0, 200, 0, 220)
        avatarContainer.Position = UDim2.new(0, 10, 0, 50)
        avatarContainer.BackgroundTransparency = 1
        avatarContainer.Parent = libGui
    end
    
    -- Фон аватара
    local avatarBG = Instance.new("Frame")
    avatarBG.Name = "AvatarBG"
    avatarBG.Size = UDim2.new(0, 120, 0, 120)
    avatarBG.Position = UDim2.new(0.5, -60, 0, 10)
    avatarBG.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    avatarBG.BorderSizePixel = 0
    avatarBG.ZIndex = 10
    avatarBG.Parent = avatarContainer
    
    local bgCorner = Instance.new("UICorner")
    bgCorner.CornerRadius = UDim.new(1, 0) -- Круглый
    bgCorner.Parent = avatarBG
    
    -- Обводка
    local bgStroke = Instance.new("UIStroke")
    bgStroke.Color = Color3.fromRGB(255, 255, 255)
    bgStroke.Thickness = 3
    bgStroke.Transparency = 0.3
    bgStroke.Parent = avatarBG
    
    -- Само изображение аватара
    local avatarImg = Instance.new("ImageLabel")
    avatarImg.Name = "AvatarImage"
    avatarImg.Size = UDim2.new(1, -6, 1, -6)
    avatarImg.Position = UDim2.new(0, 3, 0, 3)
    avatarImg.BackgroundTransparency = 1
    avatarImg.Image = ""
    avatarImg.ScaleType = Enum.ScaleType.Crop
    avatarImg.ZIndex = 11
    avatarImg.Parent = avatarBG
    
    local imgCorner = Instance.new("UICorner")
    imgCorner.CornerRadius = UDim.new(1, 0)
    imgCorner.Parent = avatarImg
    
    -- Загрузка аватара
    task.spawn(function()
        local ok, url = pcall(function()
            return PS:GetUserThumbnailAsync(
                P.UserId,
                Enum.ThumbnailType.AvatarBust,
                Enum.ThumbnailSize.Size420x420
            )
        end)
        if ok and url then
            avatarImg.Image = url
        end
    end)
    
    -- Username лейбл
    local userLabel = Instance.new("TextLabel")
    userLabel.Name = "UserLabel"
    userLabel.Size = UDim2.new(1, 0, 0, 25)
    userLabel.Position = UDim2.new(0, 0, 0, 138)
    userLabel.BackgroundTransparency = 1
    userLabel.Text = P.Name
    userLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    userLabel.Font = Enum.Font.GothamBold
    userLabel.TextSize = 15
    userLabel.TextXAlignment = Enum.TextXAlignment.Center
    userLabel.ZIndex = 10
    userLabel.Parent = avatarContainer
    
    -- DisplayName лейбл
    local dispLabel = Instance.new("TextLabel")
    dispLabel.Name = "DispLabel"
    dispLabel.Size = UDim2.new(1, 0, 0, 20)
    dispLabel.Position = UDim2.new(0, 0, 0, 163)
    dispLabel.BackgroundTransparency = 1
    dispLabel.Text = "@" .. P.DisplayName
    dispLabel.TextColor3 = Color3.fromRGB(160, 160, 160)
    dispLabel.Font = Enum.Font.Gotham
    dispLabel.TextSize = 12
    dispLabel.TextXAlignment = Enum.TextXAlignment.Center
    dispLabel.ZIndex = 10
    dispLabel.Parent = avatarContainer
    
    -- Онлайн статус точка
    local statusDot = Instance.new("Frame")
    statusDot.Name = "StatusDot"
    statusDot.Size = UDim2.new(0, 18, 0, 18)
    statusDot.Position = UDim2.new(0.5, 38, 0, 88) -- Снизу справа от аватара
    statusDot.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
    statusDot.BorderSizePixel = 0
    statusDot.ZIndex = 12
    statusDot.Parent = avatarContainer
    
    local dotCorner = Instance.new("UICorner")
    dotCorner.CornerRadius = UDim.new(1, 0)
    dotCorner.Parent = statusDot
    
    local dotStroke = Instance.new("UIStroke")
    dotStroke.Color = Color3.fromRGB(20, 20, 20)
    dotStroke.Thickness = 3
    dotStroke.Parent = statusDot
    
    -- ═══════════════════════════
    -- АНИМАЦИИ
    -- ═══════════════════════════
    local TS2 = game:GetService("TweenService")
    
    -- Анимация появления аватара
    avatarBG.Size = UDim2.new(0, 0, 0, 0)
    avatarBG.Position = UDim2.new(0.5, 0, 0, 60)
    
    TS2:Create(avatarBG, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 120, 0, 120),
        Position = UDim2.new(0.5, -60, 0, 10)
    }):Play()
    
    -- Пульсация обводки
    task.spawn(function()
        while avatarBG.Parent do
            TS2:Create(bgStroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                Transparency = 0,
                Color = Color3.fromRGB(255, 255, 255)
            }):Play()
            task.wait(1.5)
            TS2:Create(bgStroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                Transparency = 0.6,
                Color = Color3.fromRGB(200, 200, 255)
            }):Play()
            task.wait(1.5)
        end
    end)
    
    -- Пульсация статус точки
    task.spawn(function()
        while statusDot.Parent do
            TS2:Create(statusDot, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                BackgroundColor3 = Color3.fromRGB(0, 255, 100)
            }):Play()
            task.wait(1)
            TS2:Create(statusDot, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                BackgroundColor3 = Color3.fromRGB(0, 200, 70)
            }):Play()
            task.wait(1)
        end
    end)
    
    -- Premium корона (если Premium)
    if P.MembershipType == Enum.MembershipType.Premium then
        local crownLabel = Instance.new("TextLabel")
        crownLabel.Size = UDim2.new(0, 25, 0, 25)
        crownLabel.Position = UDim2.new(0.5, -70, 0, 88)
        crownLabel.BackgroundTransparency = 1
        crownLabel.Text = "👑"
        crownLabel.TextSize = 18
        crownLabel.ZIndex = 12
        crownLabel.Parent = avatarContainer
        
        -- Анимация короны
        task.spawn(function()
            while crownLabel.Parent do
                TS2:Create(crownLabel, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                    Position = UDim2.new(0.5, -70, 0, 83)
                }):Play()
                task.wait(1)
                TS2:Create(crownLabel, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                    Position = UDim2.new(0.5, -70, 0, 88)
                }):Play()
                task.wait(1)
            end
        end)
    end
end)

-- ═══════════════════════════════════════════════════════════
-- PROFILE INFO
-- ═══════════════════════════════════════════════════════════

HL:AddLabel("") -- Отступ для аватара
HL:AddLabel("")
HL:AddLabel("")
HL:AddLabel("")
HL:AddLabel("")
HL:AddLabel("")
HL:AddLabel("")
HL:AddLabel("")
HL:AddLabel("")

HL:AddLabel("━━━━━━━━━━━━━━━━")
HL:AddLabel("👤 " .. P.Name)
HL:AddLabel("🏷️ " .. P.DisplayName)
HL:AddLabel("🆔 " .. P.UserId)
HL:AddLabel("📅 " .. P.AccountAge .. " days")

local isPremium = P.MembershipType == Enum.MembershipType.Premium
HL:AddLabel("💎 Premium: " .. (isPremium and "✅ Yes" or "❌ No"))

HL:AddLabel("━━━━━━━━━━━━━━━━")

-- Health & Speed (live update)
local charHealthLabel = HL:AddLabel("❤️ Health: --")
local charSpeedLabel = HL:AddLabel("🏃 Speed: --")

task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            local c = P.Character
            local hm = c and c:FindFirstChildOfClass("Humanoid")
            if hm then
                charHealthLabel:SetText("❤️ Health: " .. math.floor(hm.Health) .. "/" .. math.floor(hm.MaxHealth))
                charSpeedLabel:SetText("🏃 Speed: " .. math.floor(hm.WalkSpeed))
            end
        end)
    end
end)

HL:AddLabel("━━━━━━━━━━━━━━━━")
local execName = "Unknown"
pcall(function() execName = identifyexecutor() end)
HL:AddLabel("⚙️ " .. execName)
HL:AddLabel("📜 a:sob ULTIMATE v3.0")
HL:AddLabel("👨‍💻 magfun_legend")
HL:AddLabel("━━━━━━━━━━━━━━━━")

HL:AddButton({Text="📋 Copy Username", Func=function()
    setclipboard(P.Name)
    ntf("Profile", "Username copied!", 2)
end})

HL:AddButton({Text="🔢 Copy User ID", Func=function()
    setclipboard(tostring(P.UserId))
    ntf("Profile", "User ID copied!", 2)
end})

HL:AddButton({Text="🔗 Copy Profile URL", Func=function()
    setclipboard("https://www.roblox.com/users/" .. P.UserId .. "/profile")
    ntf("Profile", "Profile URL copied!", 3)
end})

HL:AddButton({Text="🔄 Refresh Avatar", Func=function()
    task.spawn(function()
        -- Ищем аватар и обновляем
        local libGui = Lib.GUI or CG
        local avatarImg = libGui:FindFirstChild("AvatarImage", true)
        if avatarImg then
            local ok, url = pcall(function()
                return PS:GetUserThumbnailAsync(
                    P.UserId,
                    Enum.ThumbnailType.AvatarBust,
                    Enum.ThumbnailSize.Size420x420
                )
            end)
            if ok and url then
                avatarImg.Image = url
                ntf("Profile", "Avatar refreshed!", 2)
            end
        else
            ntf("Profile", "Avatar not found!", 3)
        end
    end)
end})

-- ═══════════════════════════════════════════════════════════
-- INFORMATION (RIGHT COLUMN)
-- ═══════════════════════════════════════════════════════════

HR:AddLabel("━━━━━━━━━━━━━━━━")
HR:AddLabel("⏱️ SESSION")
HR:AddLabel("━━━━━━━━━━━━━━━━")

sessionTimeLabel = HR:AddLabel("🕐 Time: 00:00:00")

HR:AddLabel("")
HR:AddLabel("━━━━━━━━━━━━━━━━")
HR:AddLabel("🖥️ SERVER")
HR:AddLabel("━━━━━━━━━━━━━━━━")

HR:AddLabel("🔑 " .. game.JobId:sub(1,12) .. "...")
HR:AddLabel("🎮 Place: " .. game.PlaceId)
HR:AddLabel("👥 Players: " .. #PS:GetPlayers() .. "/" .. PS.MaxPlayers)

local pingLabel = HR:AddLabel("📶 Ping: -- ms")

-- Обновление пинга
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            local pingVal = nil
            -- Метод 1
            if P.GetNetworkPing then
                local ok, v = pcall(P.GetNetworkPing, P)
                if ok and type(v) == "number" then
                    pingVal = math.floor(v * 1000)
                end
            end
            -- Метод 2
            if not pingVal then
                local stats = game:GetService("Stats")
                if stats and stats.Network then
                    local si = stats.Network:FindFirstChild("ServerStatsItem")
                    if si then
                        local pi = si:FindFirstChild("Data Ping")
                        if pi then pingVal = math.floor(pi.Value) end
                    end
                end
            end
            if pingLabel then
                pingLabel:SetText("📶 Ping: " .. (pingVal or "--") .. " ms")
            end
        end)
    end
end)

HR:AddLabel("")
HR:AddLabel("━━━━━━━━━━━━━━━━")
HR:AddLabel("🎯 FLING STATS")
HR:AddLabel("━━━━━━━━━━━━━━━━")

_G.FlingStats = _G.FlingStats or { things = 0, people = 0 }

local flingThingsLabel = HR:AddLabel("📦 Things: 0")
local flingPeopleLabel = HR:AddLabel("👤 People: 0")

task.spawn(function()
    while task.wait(1) do
        if flingThingsLabel then
            flingThingsLabel:SetText("📦 Things: " .. _G.FlingStats.things)
        end
        if flingPeopleLabel then
            flingPeopleLabel:SetText("👤 People: " .. _G.FlingStats.people)
        end
    end
end)

HR:AddButton({Text="🗑️ Reset Stats", Func=function()
    _G.FlingStats.things = 0
    _G.FlingStats.people = 0
    ntf("Statistics", "Reset!", 2)
end})

HR:AddLabel("")
HR:AddLabel("━━━━━━━━━━━━━━━━")
HR:AddLabel("🔧 ACTIONS")
HR:AddLabel("━━━━━━━━━━━━━━━━")

HR:AddButton({Text="📋 Copy Job ID", Func=function()
    setclipboard(game.JobId)
    ntf("Server", "Job ID copied!", 2)
end})

HR:AddButton({Text="🔄 Rejoin", Func=function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, P)
end})

HR:AddButton({Text="🌐 Server Hop", Func=function()
    local ts = game:GetService("TeleportService")
    local ok, servers = pcall(function()
        return game:GetService("HttpService"):JSONDecode(
            game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")
        )
    end)
    if ok and servers and servers.data then
        for _, server in ipairs(servers.data) do
            if server.id ~= game.JobId and server.playing < server.maxPlayers then
                ts:TeleportToPlaceInstance(game.PlaceId, server.id, P)
                return
            end
        end
    end
    ntf("Server Hop", "No servers found!", 3)
end})

-- ═══════════════════════════
-- SESSION TIMER
-- ═══════════════════════════
task.spawn(function()
    while task.wait(1) do
        local elapsed = tick() - sessionStartTime
        local hours = math.floor(elapsed / 3600)
        local minutes = math.floor((elapsed % 3600) / 60)
        local seconds = math.floor(elapsed % 60)
        if sessionTimeLabel then
            sessionTimeLabel:SetText(string.format("🕐 Time: %02d:%02d:%02d", hours, minutes, seconds))
        end
    end
end)

-- Track Fling Stats
local originalVel = Vel
Vel = function(p, v)
    if p and p.Parent then
        if p.Parent:FindFirstChildOfClass("Humanoid") then
            _G.FlingStats.people = (_G.FlingStats.people or 0) + 1
        else
            _G.FlingStats.things = (_G.FlingStats.things or 0) + 1
        end
    end
    return originalVel(p, v)
end
--MAIN TAB
local ML=Tabs.Main:AddLeftGroupbox("Combat","sword")
local MR=Tabs.Main:AddRightGroupbox("Settings","settings")

_G.str=750
MR:AddSlider("Strength",{Text="Strength",Min=0,Max=40000,Default=300,Rounding=0,Callback=function(v)_G.str=v end})
local strC
ML:AddToggle("SuperStrength",{Text="Super Strength",Default=false,Callback=function(on)if on then strC=WS.ChildAdded:Connect(function(m)if m.Name=="GrabParts"then local pt=m.GrabPart.WeldConstraint.Part1 if pt then local vo=Instance.new("BodyVelocity",pt)m:GetPropertyChangedSignal("Parent"):Connect(function()if not m.Parent then if UIS:GetLastInputType()==Enum.UserInputType.MouseButton2 then vo.MaxForce=Vector3.new(1e8,1e8,1e8)vo.Velocity=Cam.CFrame.LookVector*_G.str Deb:AddItem(vo,1)else vo:Destroy()end end end)end end end)elseif strC then strC:Disconnect()strC=nil end end})
local killGE=false
WS.ChildAdded:Connect(function(v)if v:IsA("Model")and v.Name=="GrabParts"and killGE then task.wait(0.05)local gp=v:FindFirstChild("GrabPart")if gp and gp:FindFirstChild("WeldConstraint")then local p1=gp.WeldConstraint.Part1 if p1 and p1.Parent and p1.Parent~=P.Character then pcall(function()p1.Parent:FindFirstChildOfClass("Humanoid").Health=0 p1.Parent:BreakJoints()end)end end end end)
WS.ChildAdded:Connect(function(v)
if v:IsA("Model")and v.Name=="GrabParts"then
local GP=v:FindFirstChild("GrabPart")
if not GP then return end
local WC=GP:FindFirstChild("WeldConstraint")
if not WC or not WC.Part1 then return end
local tgt=WC.Part1
task.spawn(function()
task.wait(0.05)
if killGE then
if tgt and tgt.Parent and tgt.Parent~=P.Character then
pcall(function()
tgt.Parent:FindFirstChildOfClass("Humanoid").Health=0
tgt.Parent:BreakJoints()
end)
end
end
if _G.eAncG then
SNO:FireServer(tgt)
local pos2=tgt.CFrame
for _=1,2 do
SNO:FireServer(tgt)
local bp2=Instance.new("BodyPosition")
bp2.Position=pos2.Position
bp2.MaxForce=Vector3.new(1e8,1e8,1e8)
bp2.Parent=tgt
local bg2=Instance.new("BodyGyro")
bg2.CFrame=pos2
bg2.MaxTorque=Vector3.new(1e8,1e8,1e8)
bg2.Parent=tgt
task.wait(0.5)
end
end
end)
end
end)
ML:AddToggle("KillGrab",{Text="Kill Grab",Default=false,Callback=function(V)killGE=V end})
ML:AddToggle("MasslessGrab",{Text="Massless Grab",Default=false,Callback=function(V)_G.MLG=V if not V then if _G.MLC then _G.MLC:Disconnect()_G.MLC=nil end return end if _G.MLC then _G.MLC:Disconnect()end _G.MLC=R.Heartbeat:Connect(function()if not _G.MLG then return end local gp=WS:FindFirstChild("GrabParts")if not gp then return end local dp=gp:FindFirstChild("DragPart")if not dp then return end local ap=dp:FindFirstChild("AlignPosition")if ap then ap.Responsiveness=200 ap.MaxForce=1e8 ap.MaxVelocity=1e8 end local ao=dp:FindFirstChild("AlignOrientation")if ao then ao.Responsiveness=200 ao.MaxTorque=1e8 end end)end})
ML:AddToggle("SpinGrab",{Text="Spin Grab",Default=false,Callback=function(on)
_G.SpinGrab = on
if on then
task.spawn(function()
while _G.SpinGrab do
local grabbedParts = WS:FindFirstChild("GrabParts")
if grabbedParts and grabbedParts:FindFirstChild("GrabPart") then
local grabbedPart = grabbedParts.GrabPart.WeldConstraint.Part1
if grabbedPart and grabbedPart.Parent and grabbedPart.Parent:FindFirstChildOfClass("Humanoid") then
local humanoidRootPart = grabbedPart.Parent:FindFirstChild("HumanoidRootPart")
if humanoidRootPart then
-- Создаем спин эффект
local spinVelocity = Instance.new("BodyAngularVelocity", humanoidRootPart)
spinVelocity.Name = "SpinGrabVelocity"
spinVelocity.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
spinVelocity.AngularVelocity = Vector3.new(0, 50, 0) -- Быстрое вращение вокруг Y оси
spinVelocity.P = 3000
Deb:AddItem(spinVelocity, 0.5)



                        task.wait(0.1)
                    end
                end
            end
            task.wait(0.1)
        end
    end)
end
end})
ML:AddToggle("RagdollGrab",{Text="Ragdoll Grab",Default=false,Callback=function(on)
_G.RagdollGrab = on
if on then
task.spawn(function()
while _G.RagdollGrab do
local grabbedParts = WS:FindFirstChild("GrabParts")
if grabbedParts and grabbedParts:FindFirstChild("GrabPart") then
local grabbedPart = grabbedParts.GrabPart.WeldConstraint.Part1
if grabbedPart and grabbedPart.Parent and grabbedPart.Parent:FindFirstChildOfClass("Humanoid") then
local character = grabbedPart.Parent
local humanoid = character:FindFirstChildOfClass("Humanoid")
local ragdolledValue = humanoid:FindFirstChild("Ragdolled")



                    if ragdolledValue and not ragdolledValue.Value then
                        -- Активируем ragdoll через banana
                        setBananaModelProperties(grabbedPart)
                        task.wait(0.015)
                    end
                end
            end
            task.wait(0.1)
        end
    end)
end
end})
ML:AddToggle("FlingGrab",{Text="Fling Grab",Default=false,Callback=function(on)
_G.FlingGrab = on
if on then
task.spawn(function()
while _G.FlingGrab do
local grabbedParts = WS:FindFirstChild("GrabParts")
if grabbedParts and grabbedParts:FindFirstChild("GrabPart") then
local grabbedPart = grabbedParts.GrabPart.WeldConstraint.Part1
if grabbedPart and grabbedPart.Parent and grabbedPart.Parent:FindFirstChildOfClass("Humanoid") then
local humanoidRootPart = grabbedPart.Parent:FindFirstChild("HumanoidRootPart")
if humanoidRootPart then
-- Создаем fling эффект
local playerRoot = GetPlayerRoot()
if playerRoot then
local lookAtCFrame = lookAt(playerRoot.Position, humanoidRootPart.Position)
local flingVelocity = Instance.new("BodyVelocity", humanoidRootPart)
flingVelocity.Name = "FlingGrabVelocity"
flingVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
flingVelocity.Velocity = Vector3.new(lookAtCFrame.lookVector.X, 0.5, lookAtCFrame.lookVector.Z) * 300
Deb:AddItem(flingVelocity, 0.5)



                            task.wait(0.1)
                        end
                    end
                end
            end
            task.wait(0.1)
        end
    end)
end
end})
-- Auras (ported from blizt.luau, adapted to this script's globals)
ML:AddLabel("Auras")

-- poison/death/burn/fling/kick auras rely on a few helper vars and funcs from blizt; adapt names to this file
local bigHolePoisonPart, smallHolePoisonPart, factoryIslandPoisonPart
pcall(function()
bigHolePoisonPart = WS.Map.Hole.PoisonBigHole.PoisonHurtPart
smallHolePoisonPart = WS.Map.Hole.PoisonSmallHole.PoisonHurtPart
factoryIslandPoisonPart = WS.Map.FactoryIsland.PoisonContainer.PoisonHurtPart
if factoryIslandPoisonPart then factoryIslandPoisonPart.Size = Vector3.new(2,2,2) end
if smallHolePoisonPart then smallHolePoisonPart.Size = Vector3.new(2,2,2) end
if bigHolePoisonPart then bigHolePoisonPart.Size = Vector3.new(2,2,2) end
end)

local function CheckPlayer(p)
if typeof(p) ~= "Instance" or not p.Character then return false end
if p == P then return false end
local hrp = p.Character:FindFirstChild("HumanoidRootPart")
local hum = p.Character and p.Character:FindFirstChildOfClass("Humanoid")
if not hrp or not hum or hum.Health <= 0 then return false end
return true
end

local function CheckPlayerAuras(p)
-- minimal check used for auras
return CheckPlayer(p)
end

local function SNOWshipPlayer(otherPlayer)
if not (P and P.Character and P.Character:FindFirstChild("HumanoidRootPart")) then return false end
if typeof(otherPlayer) ~= "Instance" or not otherPlayer.Character then return false end
local otherHRP = otherPlayer.Character:FindFirstChild("HumanoidRootPart")
if not otherHRP then return false end
local dist = (otherHRP.Position - P.Character.HumanoidRootPart.Position).Magnitude
if dist <= 30 then
pcall(function()
SNO:FireServer(otherHRP, lookAt(P.Character.HumanoidRootPart.Position, otherHRP.Position))
end)
return true
end
return false
end

local function CreateSkyVelocity(part)
if not part or not part.Parent then return end
if not part:FindFirstChild("SkyVelocity") then
local bv = Instance.new("BodyVelocity", part)
bv.Name = "SkyVelocity"
bv.Velocity = Vector3.new(0, 1000000000, 0)
bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
end
end

-- Poison Aura
ML:AddToggle("PoisonAura",{Text="Poison Aura",Default=false,Callback=function(enabled)
_G.Poison_Aura = enabled
if enabled then
task.spawn(function()
while _G.Poison_Aura do
for _,pl in ipairs(PS:GetPlayers()) do
if CheckPlayerAuras(pl) and pl.Character then
local head = pl.Character:FindFirstChild("Head")
if head and SNOWshipPlayer(pl) then
if bigHolePoisonPart and smallHolePoisonPart and factoryIslandPoisonPart then
bigHolePoisonPart.CFrame = head.CFrame
smallHolePoisonPart.CFrame = head.CFrame
factoryIslandPoisonPart.CFrame = head.CFrame
task.wait()
factoryIslandPoisonPart.Position = Vector3.new(0,-50,0)
smallHolePoisonPart.Position = Vector3.new(0,-50,0)
bigHolePoisonPart.Position = Vector3.new(0,-50,0)
end
end
end
end
task.wait()
end
end)
end
end})

-- Kill Aura
ML:AddToggle("DeathAura",{Text="Kill Aura",Default=false,Callback=function(enabled)
_G.DeathAura = enabled
if enabled then
task.spawn(function()
while _G.DeathAura do
for _,pl in ipairs(PS:GetPlayers()) do
if CheckPlayerAuras(pl) and pl.Character then
local hrp = pl.Character:FindFirstChild("HumanoidRootPart")
local hum = pl.Character:FindFirstChildOfClass("Humanoid")
if hrp and hum and SNOWshipPlayer(pl) then
pcall(function()
DGL:FireServer(hrp)
CreateSkyVelocity(hrp)
hum.BreakJointsOnDeath = false
hum:ChangeState(Enum.HumanoidStateType.Dead)
hum.Jump = true
hum.Sit = false
if hum:GetStateEnabled(Enum.HumanoidStateType.Dead) then
DGL:FireServer(hrp)
end
end)
end
end
end
task.wait()
end
end)
end
end})

-- Radioactive Aura (optional, only if map part exists)
if bigHolePoisonPart then
ML:AddToggle("RadioactiveAura",{Text="Radioactive Aura",Default=false,Callback=function(enabled)
_G.RadioactiveAura = enabled
if enabled then
task.spawn(function()
while _G.RadioactiveAura do
for _,pl in ipairs(PS:GetPlayers()) do
if CheckPlayerAuras(pl) and pl.Character then
local hrp = pl.Character:FindFirstChild("HumanoidRootPart")
if hrp and SNOWshipPlayer(pl) then
bigHolePoisonPart.Position = hrp.Position
task.wait()
bigHolePoisonPart.Position = Vector3.new(0,-50,0)
end
end
end
task.wait()
end
end)
end
end})
end

-- Burn Aura (uses simple kill fallback if campfire helper not available)
ML:AddToggle("BurnAura",{Text="Burn Aura",Default=false,Callback=function(enabled)
_G.BurnAura = enabled
if enabled then
task.spawn(function()
while _G.BurnAura do
for _,pl in ipairs(PS:GetPlayers()) do
if pl ~= P and pl.Character and CheckPlayerAuras(pl) then
local hrp = pl.Character:FindFirstChild("HumanoidRootPart")
local hum = pl.Character:FindFirstChildOfClass("Humanoid")
if hrp and hum and hum.Health > 0 then
local dist = (hrp.Position - (P.Character and P.Character:FindFirstChild("HumanoidRootPart") and P.Character.HumanoidRootPart.Position or Vector3.new())):Magnitude()
if dist < 30 then
-- fallback: kill
pcall(function() hum.Health = 0 pl.Character:BreakJoints() end)
end
end
end
end
task.wait()
end
end)
end
end})

-- Fling Aura (adapted)
ML:AddToggle("FlingAura2",{Text="Fling Aura",Default=false,Callback=function(on)
_G.FlingAura = on
if on then
task.spawn(function()
while _G.FlingAura do
if _G.FlingTarget == 2 or _G.FlingTarget == 3 then
-- simple: fling nearby objects/players
local h = P.Character and P.Character:FindFirstChild("HumanoidRootPart")
if h then
for _,pl in ipairs(PS:GetPlayers()) do
if pl ~= P and pl.Character then
local tr = pl.Character:FindFirstChild("HumanoidRootPart")
if tr and (tr.Position - h.Position).Magnitude <= 20 then
local bv = Instance.new("BodyVelocity")
bv.MaxForce = Vector3.new(1e8,1e8,1e8)
bv.Velocity = (tr.Position - h.Position).Unit * 300
bv.Parent = tr
Deb:AddItem(bv,0.5)
end
end
end
end
end
task.wait(0.5)
end
end)
end
end})

-- Kick Aura (blobman) preserved from original but left intact
local kickAuraBlobmanEnabled=false
local kickAuraCoroutine=nil
local kickAuraRange=25
local kickAuraInterval=0.05
local kickAuraReleaseDelay=0.05
local kickAuraSide=1

local function blobGrabReleaseTwice(player,blobman)
if not player or not player.Character or not blobman then return end
local targetHRP=player.Character:FindFirstChild("HumanoidRootPart")
if not targetHRP then return end
local grabEvent=blobman.BlobmanSeatAndOwnerScript and blobman.BlobmanSeatAndOwnerScript:FindFirstChild("CreatureGrab")
if not grabEvent then return end
local tossEvent=RS.CharacterEvents and RS.CharacterEvents:FindFirstChild("CreatureToss")
local endGrabEvent=RS.GrabEvents and RS.GrabEvents:FindFirstChild("EndGrabEarly")
for i=1,2 do
local side=kickAuraSide
kickAuraSide=kickAuraSide==1 and 2 or 1
local grabPartName=side==1 and "LeftDetector" or "RightDetector"
local weldPartName=side==1 and "LeftWeld" or "RightWeld"
local grabPart=blobman:FindFirstChild(grabPartName)
local weldPart=grabPart and grabPart:FindFirstChild(weldPartName)
if grabPart and weldPart then
pcall(function()grabEvent:FireServer(grabPart,targetHRP,weldPart)end)
task.wait(kickAuraReleaseDelay)
if tossEvent then pcall(function()tossEvent:FireServer()end)end
if endGrabEvent then pcall(function()endGrabEvent:FireServer()end)end
task.wait(kickAuraReleaseDelay)
end
end
end

local function findActiveBlobman()
for _,v in pairs(WS:GetDescendants())do
if v.Name=="CreatureBlobman" and v:FindFirstChild("VehicleSeat")and v.VehicleSeat:FindFirstChild("SeatWeld")then
local char=P.Character
if char then
local sw=v.VehicleSeat.SeatWeld
local p1=sw.Part1
local desc=p1
while desc and desc~=char and desc.Parent do desc=desc.Parent end
if desc==char then return v end
end
end
end
return nil
end

ML:AddToggle("KickAuraBlobman",{Text="Kick Aura(Blobman) [Alpha]",Default=false,Callback=function(on)
kickAuraBlobmanEnabled=on
if on then
if not autoSitBlob()then
ntf("Kick Aura","Cant sit on Blobman!",3)
Tog.KickAuraBlobman:SetValue(false)
return
end
monitorSit(function()return kickAuraBlobmanEnabled end)
ntf("Kick Aura(Blobman)","Started! Range: "..kickAuraRange,3)
kickAuraCoroutine=task.spawn(function()
while kickAuraBlobmanEnabled do
local currentBlobman=findActiveBlobman()
if not currentBlobman then task.wait(0.5)continue end
local HRP=P.Character and P.Character:FindFirstChild("HumanoidRootPart")
if HRP then
local targets={}
for _,player in ipairs(PS:GetPlayers())do
if player~=P and player.Character then
local tHRP=player.Character:FindFirstChild("HumanoidRootPart")
if tHRP and(tHRP.Position-HRP.Position).Magnitude<kickAuraRange then
table.insert(targets,player)
end
end
end
for _,player in ipairs(targets)do
if not kickAuraBlobmanEnabled then break end
if player.Character then
local tHRP=player.Character:FindFirstChild("HumanoidRootPart")
if tHRP and(tHRP.Position-HRP.Position).Magnitude<kickAuraRange then
blobGrabReleaseTwice(player,currentBlobman)
end
end
end
end
task.wait(kickAuraInterval)
end
end)
else
if kickAuraCoroutine then task.cancel(kickAuraCoroutine)kickAuraCoroutine=nil end
ntf("Kick Aura(Blobman)","Stopped!",2)
end
end})

ML:AddLabel("aeae")

ML:AddToggle("SilentAimToggle",{Text="Enable Silent Aim",Default=false,Callback=function(V)
if not _G.SAConfig then
_G.SAConfig = {Enabled = false,Distance = 28,TargetMode = "cursor"}
local targetPosition = nil
local function updateTarget()
if not _G.SAConfig.Enabled then targetPosition = nil return end
local referencePos
if _G.SAConfig.TargetMode == "cursor" then referencePos = UIS:GetMouseLocation()
else referencePos = Vector2.new(Cam.ViewportSize.X/2, Cam.ViewportSize.Y/2)end
if not referencePos then return end
local closestPart = nil
local minScreenDist = math.huge
for _, player in ipairs(PS:GetPlayers()) do
if player ~= P then
local char = player.Character
if char then
local humanoid = char:FindFirstChildOfClass("Humanoid")
if humanoid and humanoid.Health > 0 then
local targetPart = char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso")
if targetPart then
local worldDist = (targetPart.Position - Cam.CFrame.Position).Magnitude
if worldDist <= _G.SAConfig.Distance then
local screenPos, onScreen = Cam:WorldToViewportPoint(targetPart.Position)
if onScreen then
local screenVec = Vector2.new(screenPos.X, screenPos.Y)
local screenDist = (screenVec - referencePos).Magnitude
if screenDist < minScreenDist then
minScreenDist = screenDist
closestPart = targetPart
end
end
end
end
end
end
end
end
if closestPart then targetPosition = closestPart.Position else targetPosition = nil end
end
if not _G.SAHooked then
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
local method = getnamecallmethod()
if _G.SAConfig.Enabled and targetPosition and self == WS and method == "Raycast" then
local args = {...}
if typeof(args[1]) == "Vector3" then
local origin = args[1]
local newDir = (targetPosition - origin).Unit * _G.SAConfig.Distance
args[2] = newDir
return oldNamecall(self, unpack(args))
end
end
return oldNamecall(self, ...)
end))
_G.SAHooked=true
end
R.RenderStepped:Connect(updateTarget)
end
_G.SAConfig.Enabled=V
ntf("Silent Aim",V and"ON"or"OFF",2)
end})

MR:AddSlider("SADistance",{Text="Silent Aim Distance",Min=5,Max=100,Default=28,Rounding=0,Callback=function(V)if _G.SAConfig then _G.SAConfig.Distance=V end end})
MR:AddDropdown("SAMode",{Text="SA Target Mode",Values={"cursor","center"},Default=1,Callback=function(V)if _G.SAConfig then _G.SAConfig.TargetMode=V end end})
MR:AddSlider("SpinSpeed",{Text="Spin Speed",Min=0,Max=1000,Default=500,Rounding=0})
-- 🌀 JERK (Slow Bang + Скорость анимации)
_G.JerkAnimSpeed = 1
_G.JerkAnimId = "rbxassetid://507770677" -- ⬅️ Можно заменить на любой другой ID

MR:AddSlider("JerkAnimSpeed",{Text="Jerk Speed",Min=0.1,Max=5,Default=1,Rounding=1,Callback=function(v) _G.JerkAnimSpeed = v end})

local jerkAnimTrack = nil
local function playJerkAnim()
local char = P.Character
if not char then return end
local hum = char:FindFirstChildOfClass("Humanoid")
if not hum then return end
local animator = hum:FindFirstChildOfClass("Animator") or Instance.new("Animator", hum)
if jerkAnimTrack then jerkAnimTrack:Stop() end
local anim = Instance.new("Animation")
anim.AnimationId = _G.JerkAnimId
jerkAnimTrack = animator:LoadAnimation(anim)
jerkAnimTrack.Priority = Enum.AnimationPriority.Action
jerkAnimTrack:Play()
jerkAnimTrack:AdjustSpeed(_G.JerkAnimSpeed)
end

MR:AddLabel("Jerk Bind"):AddKeyPicker("JerkBind",{Default="Q",NoUI=true,Text="Jerk Bind",Callback=function()
playJerkAnim()
end})
MR:AddSlider("FlingAuraStrength",{Text="Fling Aura Strength",Min=0,Max=40000,Default=300,Rounding=0})
MR:AddSlider("ToysAuraRadius",{Text="Toys Aura Radius",Min=0,Max=1000,Default=10,Rounding=0})
MR:AddSlider("ToysAuraHeight",{Text="Toys Aura Height",Min=0,Max=100,Default=0,Rounding=0})
MR:AddSlider("ToysAuraSpeed",{Text="Toys Aura Speed",Min=0,Max=1000,Default=10,Rounding=0})
MR:AddDropdown("FlingAuraMode",{Text="Fling Aura Mode",Values={"All"},Default=1})
MR:AddDropdown("ToysAuraMode",{Text="Toys Aura Mode",Values={"All"},Default=1})

--TARGET TAB
local TL=Tabs.Target:AddLeftGroupbox("Target","crosshair")
-- Make Blobman Methods the top-most right groupbox (create first)
local TR2=Tabs.Target:AddRightGroupbox("Blobman Methods","layers")
local TR=Tabs.Target:AddRightGroupbox("Settings","settings")
-- Trace to Target
local traceEnabled = false
local traceBeam = nil
local traceConnection = nil
local traceColor = Color3.fromRGB(255, 0, 0)

local function StartTrace(targetName)
if traceConnection then
traceConnection:Disconnect()
traceConnection = nil
end



if traceBeam then
    traceBeam:Destroy()
    traceBeam = nil
end

local target = PS:FindFirstChild(targetName)
if not target then
    traceEnabled = false
    return
end

local att0 = Instance.new("Attachment")
local att1 = Instance.new("Attachment")

traceBeam = Instance.new("Beam")
traceBeam.Color = ColorSequence.new(traceColor)
traceBeam.Width0 = 0.5
traceBeam.Width1 = 0.5
traceBeam.FaceCamera = true
traceBeam.Attachment0 = att0
traceBeam.Attachment1 = att1
traceBeam.Parent = WS.Terrain

traceConnection = R.Heartbeat:Connect(function()
    if not traceEnabled then return end
    
    local myChar = P.Character
    local targetChar = target and target.Character
    
    if myChar and targetChar then
        local myHRP = myChar:FindFirstChild("HumanoidRootPart")
        local targetHRP = targetChar:FindFirstChild("HumanoidRootPart")
        
        if myHRP and targetHRP then
            att0.Parent = myHRP
            att1.Parent = targetHRP
        end
    end
end)
end

TR:AddToggle("TraceToggle", {
Text = "Trace to Target",
Default = false,
Callback = function(Value)
traceEnabled = Value
if Value then
local targetName = selKP and selKP.Name
if targetName then
StartTrace(targetName)
else
traceEnabled = false
end
else
if traceConnection then
traceConnection:Disconnect()
traceConnection = nil
end
if traceBeam then
traceBeam:Destroy()
traceBeam = nil
end
end
end
})



    -- Packet detection removed per user request
TR:AddLabel("Trace Color"):AddColorPicker("TraceColorPicker", {
Default = Color3.fromRGB(255, 0, 0),
Title = "Trace Color",
Callback = function(Value)
traceColor = Value
if traceBeam then
traceBeam.Color = ColorSequence.new(traceColor)
end
end
})

-- Destroy Gucci
local destroyGucciActive = false
local destroyGucciTask = nil

local function StartDestroyGucciLoop()
while destroyGucciActive do
local targetName = selKP and selKP.Name
if not targetName then
task.wait(1)
continue
end



    local toysFolder = WS:FindFirstChild(targetName .. "SpawnedInToys")
    if toysFolder then
        for _, toy in pairs(toysFolder:GetChildren()) do
            if toy.Name == "InstrumentGuitarGucci" then
                pcall(function()
                    RS.MenuToys.DestroyToy:FireServer(toy)
                end)
            end
        end
    end
    task.wait(0.5)
end
end

TR:AddToggle("DestroyGucciToggle", {
Text = "Destroy Gucci",
Default = false,
Callback = function(Value)
destroyGucciActive = Value
if Value then
destroyGucciTask = task.spawn(StartDestroyGucciLoop)
else
if destroyGucciTask then
task.cancel(destroyGucciTask)
destroyGucciTask = nil
end
end
end
})

-- Remove All Anti Input
local antiAntiLagEnabled = false
local antiAntiLagTask = nil

local function RemoveAllAntiInputFunction()
while antiAntiLagEnabled do
for _, player in ipairs(PS:GetPlayers()) do
if player ~= P then
local folder = WS:FindFirstChild(player.Name .. "SpawnedInToys")
if folder then
for _, toy in pairs(folder:GetChildren()) do
if toy:IsA("Model") then
pcall(function()
RS.MenuToys.DestroyToy:FireServer(toy)
end)
end
end
end
end
end
task.wait(0.5)
end
end

TR:AddToggle("RemoveAllAntiInputToggle", {
Text = "Remove All Anti Input",
Default = false,
Callback = function(Value)
antiAntiLagEnabled = Value
if Value then
antiAntiLagTask = task.spawn(RemoveAllAntiInputFunction)
else
if antiAntiLagTask then
task.cancel(antiAntiLagTask)
antiAntiLagTask = nil
end
end
end
})

-- Target Notify
local targetNotifyConnections = {}
TR:AddToggle("TargetNotifyToggle", {
Text = "Leave/Join Target Notify",
Default = false,
Callback = function(Value)
if Value then
local targetName = selKP and selKP.Name
if not targetName then
return
end



        local target = PS:FindFirstChild(targetName)
        if target then
            ntf("Target Notify", target.DisplayName .. " (" .. target.Name .. ") is in game", 3)
        end
        
        targetNotifyConnections["Added"] = PS.PlayerAdded:Connect(function(player)
            if selKP and player.Name == selKP.Name then
                ntf("Target Notify", player.DisplayName .. " (" .. player.Name .. ") Joined", 3)
            end
        end)
        
        targetNotifyConnections["Removing"] = PS.PlayerRemoving:Connect(function(player)
            if selKP and player.Name == selKP.Name then
                ntf("Target Notify", player.DisplayName .. " (" .. player.Name .. ") Left", 3)
            end
        end)
    else
        for _, conn in pairs(targetNotifyConnections) do
            if conn then conn:Disconnect() end
        end
        targetNotifyConnections = {}
    end
end
})

local TL2=Tabs.Target:AddLeftGroupbox("Advanced Kick","zap")
TL:AddDropdown("TargetPlayer",{Values=gPL(),Default=1,Multi=false,Text="Target",Callback=function(V)selKP=gPFS(V)end})
TL:AddButton({Text="Refresh",Func=function()Opt.TargetPlayer:SetValues(gPL())Opt.TargetPlayer:SetValue(nil)selKP=nil end})

PS.PlayerAdded:Connect(function()task.wait(1)pcall(function()Opt.TargetPlayer:SetValues(gPL())end)end)
PS.PlayerRemoving:Connect(function()task.wait(0.5)pcall(function()Opt.TargetPlayer:SetValues(gPL())end)end)

-- LoopGrab (KICK) — вставлено из Текстовый документ (2).txt (адаптировано)
TL:AddToggle("LoopGrabKickFromFile", {
Text = "LoopGrab (KICK)",
Default = false,
Callback = function(Value)
bool.LoopGrabKick = Value
if not bool.LoopGrabKick then return end
task.spawn(function()
-- ensure commonly used locals from this file are available
local hrp = P.Character and P.Character:FindFirstChild("HumanoidRootPart")
local inv = WS:FindFirstChild(P.Name .. "SpawnedInToys")


        while bool.LoopGrabKick and R.RenderStepped:Wait() do
            local target = selKP
            if not target or not target.Parent then continue end
            local targetChar = target.Character
            local targetRoot = targetChar and targetChar:FindFirstChild("HumanoidRootPart")
            local targetHum = targetChar and targetChar:FindFirstChild("Humanoid")
            if not targetRoot or not targetHum or targetHum.Health == 0 then continue end
-- attempt to stop velocities and set up grab
                targetRoot.AssemblyAngularVelocity = Vector3.zero
                targetRoot.AssemblyLinearVelocity = Vector3.zero
                targetRoot.Velocity = Vector3.zero
                pcall(function()
                    targetHum.PlatformStand = true
                    targetHum.Sit = true
                    if RS:FindFirstChild("GrabEvents") then
                        local GE = RS.GrabEvents
                        if GE:FindFirstChild("SetNetworkOwner") then
                            GE.SetNetworkOwner:FireServer(targetRoot, hrp and hrp.CFrame or CFrame.new())
                        end
                        if GE:FindFirstChild("CreateGrabLine") then
                            GE.CreateGrabLine:FireServer(targetRoot, Vector3.zero, targetRoot.Position, false)
                        end
                    end
                end)
            end
        end)
    end,
})

-- Ragdoll Snowball
do
    TL:AddToggle("RagalicRagdollSnowball",{Text="Ragdoll Snowball",Default=false,Callback=function(on)
        _G.RagalicRagdollSnowball = on
        task.spawn(function()
            while _G.RagalicRagdollSnowball do
                local target = selKP
                if not target or not target.Parent then R.Heartbeat:Wait() continue end
                local tChar = target.Character
                local torso = tChar and (tChar:FindFirstChild("UpperTorso") or tChar:FindFirstChild("Torso"))
                if not torso then R.Heartbeat:Wait() continue end
                pcall(function()
                    local offset = Vector3.new(math.random(-30,30)/100, math.random(-30,30)/100, math.random(-30,30)/100)
                    local spawnCFrame = torso.CFrame * CFrame.new(offset)
                    RS.MenuToys.SpawnToyRemoteFunction:InvokeServer("BallSnowball", spawnCFrame, Vector3.zero)
                end)
                local folder = WS:FindFirstChild(P.Name.."SpawnedInToys")
                if folder then
                    for _, snowball in pairs(folder:GetChildren()) do
                        if snowball.Name == "BallSnowball" and snowball.Parent then
                            local part = snowball.PrimaryPart or snowball:FindFirstChildWhichIsA("BasePart")
                            if part then
                                local offset = Vector3.new(math.random(-30,30)/100, math.random(-30,30)/100, math.random(-30,30)/100)
                                part.CFrame = torso.CFrame * CFrame.new(offset)
                                part.AssemblyLinearVelocity = Vector3.zero
                                part.AssemblyAngularVelocity = Vector3.zero
                            end
                        end
                    end
                end
                R.Heartbeat:Wait()
            end
        end)
    end})
end

-- Grab Troll (spam grab)
do
    local grabTrollActive = false
    TL:AddToggle("GrabTrollSpam",{Text="Grab Troll (spam grab)",Default=false,Callback=function(on)
        grabTrollActive = on
        if not on then return end
        task.spawn(function()
            local GE = RS:WaitForChild("GrabEvents")
            local savedPos = nil
            while grabTrollActive do
                local target = selKP
                if not target or not target.Parent then break end
                local myChar = P.Character
                local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
                if not myRoot then break end
                if not savedPos then savedPos = myRoot.CFrame end
                local tChar = target.Character
                local tRoot = tChar and tChar:FindFirstChild("HumanoidRootPart")
                local tHum = tChar and tChar:FindFirstChild("Humanoid")
                if tRoot and tHum and tHum.Health > 0 then
                    tRoot.AssemblyLinearVelocity = Vector3.zero
                    tRoot.AssemblyAngularVelocity = Vector3.zero
                    tRoot.Velocity = Vector3.zero
                    pcall(function()
                        tHum.PlatformStand = true
                        tHum.Sit = true
                        -- move the target above the player so we grab from above
                        local aboveCFrame = myRoot.CFrame * CFrame.new(0, 10, 0)
                        -- try to teleport target root above us before setting network owner
                        pcall(function() tRoot.CFrame = aboveCFrame end)
                        if GE and GE.SetNetworkOwner then
                            GE.SetNetworkOwner:FireServer(tRoot, aboveCFrame)
                        else
                            RS.GrabEvents.SetNetworkOwner:FireServer(tRoot, aboveCFrame)
                        end
                        if GE and GE.CreateGrabLine then
                            GE.CreateGrabLine:FireServer(tRoot, Vector3.zero, tRoot.Position, false)
                        else
                            RS.GrabEvents.CreateGrabLine:FireServer(tRoot, Vector3.zero, tRoot.Position, false)
                        end
                    end)
                end
                R.Heartbeat:Wait()
            end
            if savedPos and P.Character and P.Character:FindFirstChild("HumanoidRootPart") then
                P.Character.HumanoidRootPart.CFrame = savedPos
            end
            if Tog and Tog.GrabTrollSpam then Tog.GrabTrollSpam:SetValue(false) end
        end)
    end})
end

-- Loop Kick (grab + blob)
do
    local loopKickEnabled = false
    TL:AddToggle("LoopKickBlob",{Text="Loop Kick (grab + blob)",Default=false,Callback=function(on)
        loopKickEnabled = on
        if not on then loopKickEnabled = false return end
        task.spawn(function()
            local blobRoot = nil
            local savedBlobCFrame = nil
            while loopKickEnabled do
                local target = selKP
                if not target or not target.Parent then break end
                local char = P.Character
                local hum = char and char:FindFirstChild("Humanoid")
                local seat = hum and hum.SeatPart
                if not seat or seat.Parent.Name ~= "CreatureBlobman" then
                    R.Heartbeat:Wait()
                    continue
                end
                local blob = seat.Parent
                blobRoot = blob:FindFirstChild("HumanoidRootPart") or blob.PrimaryPart
                savedBlobCFrame = savedBlobCFrame or (blobRoot and blobRoot.CFrame)
                local tChar = target.Character
                local tRoot = tChar and tChar:FindFirstChild("HumanoidRootPart")
                if tRoot and blobRoot then
                    local bringStart = tick()
                    while tick() - bringStart < 0.35 do
                        if not loopKickEnabled then break end
                        blobRoot.CFrame = tRoot.CFrame
                        blobRoot.Velocity = Vector3.zero
                        pcall(function()
                            local scriptObj = blob:FindFirstChild("BlobmanSeatAndOwnerScript")
                            local CG = scriptObj and scriptObj:FindFirstChild("CreatureGrab")
                            local R_Det = blob:FindFirstChild("RightDetector")
                            local R_Weld = R_Det and (R_Det:FindFirstChild("RightWeld") or R_Det:FindFirstChildWhichIsA("Weld"))
                            if CG and R_Det then
                                CG:FireServer(R_Det, tRoot, R_Weld)
                            end
                        end)
                        R.Heartbeat:Wait()
                    end
                    if savedBlobCFrame and blobRoot then
                        blobRoot.CFrame = savedBlobCFrame
                        blobRoot.Velocity = Vector3.zero
                    end
                end
                R.Heartbeat:Wait()
            end
            loopKickEnabled = false
            if Tog and Tog.LoopKickBlob then Tog.LoopKickBlob:SetValue(false) end
        end)
    end})
end

-- Dual Loop Kick (Loop Kick)
do
    local dualLoopActive = false
    TL:AddToggle("LoopKickDual",{Text="Loop Kick",Default=false,Callback=function(on)
        dualLoopActive = on
        if not on then dualLoopActive = false return end
        task.spawn(function()
            while dualLoopActive do
                local target = selKP
                if not target or not target.Parent then R.Heartbeat:Wait() continue end
                local char = P.Character
                local hum = char and char:FindFirstChild("Humanoid")
                local seat = hum and hum.SeatPart
                if not seat then R.Heartbeat:Wait() continue end
                local seatParent = seat.Parent
                local grab = seatParent:FindFirstChild("BlobmanSeatAndOwnerScript") and seatParent.BlobmanSeatAndOwnerScript:FindFirstChild("CreatureGrab")
                local drop = seatParent:FindFirstChild("BlobmanSeatAndOwnerScript") and seatParent.BlobmanSeatAndOwnerScript:FindFirstChild("CreatureDrop")
                if not grab or not drop then R.Heartbeat:Wait() continue end
                local leftDet = seatParent:FindFirstChild("LeftDetector")
                local rightDet = seatParent:FindFirstChild("RightDetector")
                local leftWeld = leftDet and leftDet:FindFirstChild("LeftWeld")
                local rightWeld = rightDet and rightDet:FindFirstChild("RightWeld")
                local hrp = char:FindFirstChild("HumanoidRootPart")
                local targetChar = target.Character
                local targetHRP = targetChar and targetChar:FindFirstChild("HumanoidRootPart")
                local targetHum = targetChar and targetChar:FindFirstChild("Humanoid")
                if targetHRP and targetHum and targetHum.Health > 0 then
                    -- spam grab sequence
                    grab:FireServer(leftDet, targetHRP, leftWeld)
                    task.wait(0.1)
                    drop:FireServer(leftWeld, targetHRP)
                    task.wait(0.1)
                    grab:FireServer(rightDet, targetHRP, rightWeld)
                    task.wait(0.1)
                    drop:FireServer(rightWeld, targetHRP)
                    task.wait(0.1)
                else
                    task.wait(0.1)
                end
            end
            dualLoopActive = false
            if Tog and Tog.LoopKickDual then Tog.LoopKickDual:SetValue(false) end
        end)
    end})
end

-- Fling
do
    local playerFlingActive = false
    TL:AddToggle("PlayerFling",{Text="Fling",Default=false,Callback=function(on)
        playerFlingActive = on
        if not on then playerFlingActive = false return end
        task.spawn(function()
            local flingBAV = nil
            local originalPos = nil
            if P.Character and P.Character:FindFirstChild("HumanoidRootPart") then
                originalPos = P.Character.HumanoidRootPart.CFrame
            end
            ntf("Fling","Fling Mode Activated.",3)
            while playerFlingActive do
                local target = selKP
                if not target or not target.Parent then playerFlingActive = false break end
                local char = P.Character
                local hrp = char and char:FindFirstChild("HumanoidRootPart")
                local hum = char and char:FindFirstChild("Humanoid")
                if not hrp or not hum then task.wait(0.5) continue end
                local tChar = target.Character
                local tRoot = tChar and tChar:FindFirstChild("HumanoidRootPart")
                local tHum = tChar and tChar:FindFirstChild("Humanoid")
                if tRoot and tHum and tHum.Health > 0 then
                    if not flingBAV or flingBAV.Parent ~= hrp then
                        if flingBAV then flingBAV:Destroy() end
                        flingBAV = Instance.new("BodyAngularVelocity")
                        flingBAV.Name = "GGOGSpin"
                        flingBAV.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                        flingBAV.AngularVelocity = Vector3.new(0, 10000, 0)
                        flingBAV.P = 10000
                        flingBAV.Parent = hrp
                    end
                    for _, part in pairs(char:GetDescendants()) do
                        if part:IsA("BasePart") then part.CanCollide = false end
                    end
                    local loopConn
                    loopConn = R.Heartbeat:Connect(function()
                        if not playerFlingActive or not tRoot or not tRoot.Parent then return end
                        hrp.CFrame = tRoot.CFrame
                        hrp.Velocity = Vector3.zero
                    end)
                    local startTime = tick()
                    while tick() - startTime < 1.5 do
                        if not playerFlingActive or not tRoot.Parent then break end
                        task.wait(0.1)
                    end
                    if loopConn then loopConn:Disconnect() end
                else
                    task.wait(0.2)
                end
                task.wait(0.1)
            end
            if flingBAV then flingBAV:Destroy() flingBAV = nil end
            if P.Character then
                for _, part in pairs(P.Character:GetDescendants()) do if part:IsA("BasePart") then part.CanCollide = true end end
                local hrp = P.Character:FindFirstChild("HumanoidRootPart")
                if hrp then hrp.RotVelocity = Vector3.zero hrp.Velocity = Vector3.zero if originalPos then hrp.CFrame = originalPos end end
            end
        end)
    end})
end

-- Destroy Gucci (sit)
do
    TL:AddToggle("DestroyTargetGucci",{Text="Destroy Gucci (sit)",Default=false,Callback=function(Value)
        local DestroyTargetGucciActive = Value
        if Value then
            if not selKP then ntf("Error","Select target first",3) Tog.DestroyTargetGucci:SetValue(false) return end
            task.spawn(function()
                local SafeSpot = P.Character and P.Character:FindFirstChild("HumanoidRootPart") and P.Character.HumanoidRootPart.CFrame
                while DestroyTargetGucciActive do
                    if not selKP or not selKP.Parent then DestroyTargetGucciActive = false Tog.DestroyTargetGucci:SetValue(false) break end
                    local toysFolder = WS:FindFirstChild(selKP.Name.."SpawnedInToys")
                    if toysFolder then
                        for _, obj in ipairs(toysFolder:GetChildren()) do
                            if obj.Name == "CreatureBlobman" then
                                local seat = obj:FindFirstChild("VehicleSeat") or obj:FindFirstChildWhichIsA("VehicleSeat", true)
                                if seat then
                                    local myChar = P.Character
                                    local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
                                    local myHum = myChar and myChar:FindFirstChild("Humanoid")
                                    if myRoot and myHum then
                                        if myHum.SeatPart ~= seat then
                                            local magnet
                                            magnet = R.Stepped:Connect(function()
                                                if myRoot and seat then myRoot.CFrame = seat.CFrame myRoot.Velocity = Vector3.zero if obj.PrimaryPart then obj.PrimaryPart.Velocity = Vector3.zero obj.PrimaryPart.RotVelocity = Vector3.zero end end
                                            end)
                                            local sitStart = tick()
                                            while tick() - sitStart < 1 do
                                                if myHum.SeatPart == seat then break end
                                                seat:Sit(myHum)
                                                task.wait()
                                            end
                                            if magnet then magnet:Disconnect() end
                                            if myHum.SeatPart == seat then
                                                task.wait(0.3)
                                                myHum.Sit = false
                                                myHum.Jump = true
                                                task.wait(0.05)
                                                if SafeSpot and P.Character and P.Character:FindFirstChild("HumanoidRootPart") then
                                                    P.Character.HumanoidRootPart.CFrame = SafeSpot
                                                    P.Character.HumanoidRootPart.Velocity = Vector3.zero
                                                end
                                                ntf("Success","gucci has removed",1)
                                                task.wait(0.5)
                                            else
                                                if SafeSpot and P.Character and P.Character:FindFirstChild("HumanoidRootPart") then
                                                    P.Character.HumanoidRootPart.CFrame = SafeSpot
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    task.wait(1)
                end
            end)
        else
            ntf("System","remove Gucci off",2)
        end
    end})
end

-- Bring button
do
    TL:AddButton({Text = "Bring", Func = function()
        if not selKP then return end
        local char = P.Character
        local hum = char and char:FindFirstChild("Humanoid")
        local seat = hum and hum.SeatPart
        if not seat or seat.Parent.Name ~= "CreatureBlobman" then return end
        local blob = seat.Parent
        local blobRoot = blob:FindFirstChild("HumanoidRootPart")
        local scriptObj = blob:FindFirstChild("BlobmanSeatAndOwnerScript")
        if not blobRoot or not scriptObj then return end
        local CG = scriptObj:FindFirstChild("CreatureGrab")
        local CD = scriptObj:FindFirstChild("CreatureDrop")
        local R_Det = blob:FindFirstChild("RightDetector")
        local R_Weld = R_Det and R_Det:FindFirstChild("RightWeld")
        local tChar = selKP.Character
        local tRoot = tChar and tChar:FindFirstChild("HumanoidRootPart")
        if not tRoot then return end
        local home = blobRoot.CFrame
        blobRoot.CFrame = tRoot.CFrame
        blobRoot.Velocity = Vector3.new()
        blobRoot.RotVelocity = Vector3.new()
        task.wait(0.3)
        pcall(function() if CG then CG:FireServer(R_Det, tRoot, R_Weld) end end)
        task.wait(0.5)
        blobRoot.CFrame = home
        blobRoot.Velocity = Vector3.new()
        blobRoot.RotVelocity = Vector3.new()
    end})
end

-- Remove Anti Input Lag
do
    local antiAntiLagEnabled = false
    TL:AddToggle("RemoveAntiInputLag",{Text = "Remove Anti Input Lag", Default = false, Callback = function(on)
        antiAntiLagEnabled = on
        if not on then antiAntiLagEnabled = false return end
        task.spawn(function()
            local plr = P
            local char = plr.Character
            local hrp = char and char:FindFirstChild("HumanoidRootPart")
            if not hrp then return end
            local burgers = {}
            local AllowedItems = {
                FoodHamburger = true, FoodCoconut = true, FoodPizzaCheese = true, FoodPizzaPepperoni = true,
                FoodHotdog = true, FoodMushroomPoison = true, FoodBread = true, FoodDippyEgg = true,
                FoodMayonnaise = true, FoodFrenchFries = true, FoodMeatStick = true, FoodDonut = true,
                FoodCakePink = true,
                InstrumentGuitarBanjo = true, InstrumentGuitarViolin = true, InstrumentGuitarUkulele = true,
                InstrumentWoodwindSaxophone = true, InstrumentWoodwindOcarina = true, InstrumentBrassVuvuzelaQwizik = true,
                InstrumentBrassTrumpet = true, InstrumentDrumBongos = true, InstrumentDrumSnare = true,
                InstrumentPianoMelodica = true, InstrumentVoiceMicrophone = true,
                CupMugWhite = true, CupMugBrown = true, PoopPile = true, PoopPileSparkle = true
            }
            workspace.DescendantAdded:Connect(function(obj)
                if AllowedItems[obj.Name] and obj:IsA("Model") then
                    task.spawn(function()
                        local hp = obj:WaitForChild("HoldPart", 3)
                        if hp then table.insert(burgers, obj) end
                    end)
                end
            end)
            for _, v in ipairs(workspace:GetDescendants()) do
                if AllowedItems[v.Name] and v:IsA("Model") and v:FindFirstChild("HoldPart") then burgers[#burgers+1] = v end
            end
            while antiAntiLagEnabled do
                for i = #burgers, 1, -1 do
                    local b = burgers[i]
                    if not b or not b.Parent or not b:FindFirstChild("HoldPart") then table.remove(burgers, i) else
                        local hp = b.HoldPart
                        pcall(function() hp.HoldItemRemoteFunction:InvokeServer(b, char) end)
                        task.wait()
                        pcall(function() hp.DropItemRemoteFunction:InvokeServer(b, CFrame.new(hrp.Position + Vector3.new(0, -2000, 0)), Vector3.new(0,0,0)) end)
                    end
                end
                task.wait()
            end
        end)
    end})
end

-- Remove Anti Kick (destroy AntiKick in toys)
do
    local antiAntiKickActive = false
    TL:AddToggle("RemoveAntiKick",{Text = "Remove Anti Kick", Default = false, Callback = function(on)
        antiAntiKickActive = on
        if not on then antiAntiKickActive = false return end
        task.spawn(function()
            while antiAntiKickActive do
                local target = selKP
                if not target or not target.Parent then task.wait(0.5) continue end
                local folderName = target.Name .. "SpawnedInToys"
                local toysFolder = workspace:FindFirstChild(folderName)
                if toysFolder then
                    for _, spawned in ipairs(toysFolder:GetChildren()) do
                        if spawned and spawned:FindFirstChild("AntiKick") then
                            pcall(function() spawned.AntiKick:Destroy() end)
                        end
                    end
                end
                task.wait(1)
            end
        end)
    end})
end

-- No Clip Blobmen: делает части блобмена бесколлизионными, когда вы сидите на нём
local noClipBlobEnabled = false
local noClipBlobTask = nil
local modifiedBlobParts = {}

local function restoreModifiedParts()
    for part,orig in pairs(modifiedBlobParts) do
        if part and part.Parent and part:IsA("BasePart") then
            pcall(function() part.CanCollide = orig end)
        end
    end
    modifiedBlobParts = {}
end

local function NoClipBlobLoop()
    while noClipBlobEnabled do
        local bp = getBP()
        if bp and bp.bl and bp.bl.Parent then
            for _,desc in ipairs(bp.bl:GetDescendants()) do
                if desc:IsA("BasePart") and desc.Parent and desc.Parent ~= P.Character then
                    -- сохраняем оригинальное состояние при первом изменении
                    if modifiedBlobParts[desc] == nil then
                        modifiedBlobParts[desc] = desc.CanCollide
                    end
                    pcall(function()
                        desc.CanCollide = false
                    end)
                end
            end
        else
            -- если не сидим на блобмене, пытаемся сесть автоматически
            if not autoSitBlob() then
                -- ничего
            end
        end
        task.wait(0.25)
    end
    -- при отключении восстанавливаем состояния
    restoreModifiedParts()
end

TL:AddToggle("NoClipBlobmen",{Text="No Clip Blobmen",Default=false,Callback=function(on)
    noClipBlobEnabled = on
    if on then
        if noClipBlobTask then task.cancel(noClipBlobTask) end
        noClipBlobTask = task.spawn(NoClipBlobLoop)
        ntf("No Clip Blobmen","Enabled",2)
    else
        if noClipBlobTask then task.cancel(noClipBlobTask) noClipBlobTask = nil end
        restoreModifiedParts()
        ntf("No Clip Blobmen","Disabled",2)
    end
end})


-- KICK SPIN [MERCURY] - FINAL CORRECT VERSION
local kSpin=false
local kSpinRadius=12
local kSpinSpeed=8
local SPIN_SAFE=CFrame.new(0,30,0)

TL2:AddToggle("KickSpinMercury",{Text="Kick Spin [Mercury]",Default=false,Callback=function(on)
    kSpin=on
    if not on then stopKickMonitor()return end
    startKickMonitor()
    
   
    
    task.spawn(function()
        if not autoSitBlob()then
            kSpin=false
            Tog.KickSpinMercury:SetValue(false)
            stopKickMonitor()
            ntf("Error","Can't sit on blobman!",3)
            return
        end
        
        monitorSit(function()return kSpin end)
        local kickStart=tick()
        ntf("Kick Spin","Kicking "..selKP.DisplayName.."...",3)
        
        local bp=getBP()
        if not bp then 
            kSpin=false
            Tog.KickSpinMercury:SetValue(false)
            stopKickMonitor()
            return
        end
        
        while kSpin do
            bp=getBP()
            if not bp then
                task.wait(0.075)
                if kSpin then autoSitBlob()end
                continue
            end
            
            local tg=selKP
            if not tg or not tg.Parent then
                ntf("Kick Spin","Kicked! "..string.format("%.1f",tick()-kickStart).."s",8)
                break
            end
            
            local tc=tg.Character
            local tr=tc and tc:FindFirstChild("HumanoidRootPart")
            local th=tc and tc:FindFirstChild("Humanoid")
            
            if not tr or not th or th.Health<=0 then
                tr,th=waitTR(tg,10,function()return kSpin end)
                if not tr then
                    if not(tg and tg.Parent)then
                        ntf("Kick Spin","Kicked! "..string.format("%.1f",tick()-kickStart).."s",8)
                    end
                    continue
                end
            end
            
            -- ХВАТАНИЕ (КАК В KICK FINAL)
            bp.br.CFrame=tr.CFrame
            for _=1,16 do
                if not kSpin then break end
                pcall(function()
                    bp.cg:FireServer(bp.rd,tr,bp.rw)
                    if bp.ld and bp.lw then bp.cg:FireServer(bp.ld,tr,bp.lw)end
                    SNO:FireServer(tr,bp.br.CFrame)
                end)
                task.wait(0)
            end
            
            -- TP НА 911
            bp.br.CFrame=SPIN_SAFE
            
            -- ВРАЩЕНИЕ ВОКРУГ ЦЕЛИ
            local angle=0
            local spinTime=tick()
            
            while kSpin and tick()-spinTime<10 do -- 10 секунд вращения
                tc=tg.Character
                tr=tc and tc:FindFirstChild("HumanoidRootPart")
                th=tc and tc:FindFirstChild("Humanoid")
                
                if not tr or not th or th.Health<=0 then
                    bp.br.CFrame=SPIN_SAFE
                    break
                end
                
                -- ЦЕЛЬ В ЦЕНТРЕ (ЗААНЧОРЕНА)
                local targetHeight=SPIN_SAFE.Y+28
                local targetCenter=CFrame.new(SPIN_SAFE.X,targetHeight,SPIN_SAFE.Z)
                tr.CFrame=targetCenter
                tr.Velocity=Vector3.zero
                tr.RotVelocity=Vector3.zero
                
                -- ВРАЩЕНИЕ ПО КРУГУ
                angle=angle+(kSpinSpeed*0.02)
                if angle>=360 then angle=0 end
                
                local rad=math.rad(angle)
                local offsetX=math.cos(rad)*kSpinRadius
                local offsetZ=math.sin(rad)*kSpinRadius
                
                -- ПОЗИЦИЯ БЛОБМАНА (НА УРОВНЕ ЦЕЛИ)
                local myPos=Vector3.new(
                    SPIN_SAFE.X+offsetX,
                    targetHeight+2, -- чуть выше цели
                    SPIN_SAFE.Z+offsetZ
                )
                
                -- БЛОБМАН СМОТРИТ НА ЦЕЛЬ (ЛИЦОМ)
                local lookAtTarget=CFrame.new(myPos,targetCenter.Position)
                bp.br.CFrame=lookAtTarget
                bp.br.Velocity=Vector3.zero
                bp.br.RotVelocity=Vector3.zero
                
                -- ХВАТАНИЕ (КАК В KICK FINAL)
                pcall(function()
                    th.PlatformStand=true
                    th.Sit=true
                    SNO:FireServer(tr,targetCenter)
                    
                    local wr=bp.rd:FindFirstChild("RightWeld")or bp.rd:FindFirstChildWhichIsA("Weld")
                    if wr then bp.cd:FireServer(wr)end
                    bp.cg:FireServer(bp.rd,tr,bp.rw)
                    
                    if bp.ld and bp.lw then
                        local wl=bp.ld:FindFirstChild("LeftWeld")or bp.ld:FindFirstChildWhichIsA("Weld")
                        if wl then bp.cd:FireServer(wl)end
                        bp.cg:FireServer(bp.ld,tr,bp.lw)
                    end
                    
                    DGL:FireServer(tr)
                    CGL:FireServer(tr,Vector3.zero,tr.Position,false)
                end)
                
                task.wait(0)
            end
        end
        
        kSpin=false
        Tog.KickSpinMercury:SetValue(false)
        stopKickMonitor()
    end)
end})


-- НАСТРОЙКИ
TL2:AddSlider("KickSpinRadius",{Text="Spin Radius",Min=5,Max=25,Default=12,Rounding=0,Callback=function(v)
    kSpinRadius=v
end})

TL2:AddSlider("KickSpinSpeed",{Text="Spin Speed",Min=0,Max=1000,Default=8,Rounding=0,Callback=function(v)
    kSpinSpeed=v
end})

TL2:AddLabel("0 = Stop | 1000 = Max Speed")

-- KICK SPEED [1000] - ULTRA FAST ONE-HAND
local kSpeed=false
TL2:AddToggle("KickSpeedGGOG",{Text="Kick Speed [GGOG]",Default=false,Callback=function(on)
kSpeed=on
if not on then stopKickMonitor()return end
startKickMonitor()
local SAFE_1000=CFrame.new(1000,1000,1000)
P.Character.HumanoidRootPart.CFrame=SAFE_1000
task.spawn(function()
if not autoSitBlob()then
kSpeed=false
Tog.KickSpeed1000:SetValue(false)
stopKickMonitor()
ntf("Error","Can't sit on blobman!",3)
return
end
monitorSit(function()return kSpeed end)
local kickStart=tick()
ntf("Kick Speed","Kicking "..selKP.DisplayName.."...",3)
local bp=getBP()
if not bp then 
kSpeed=false
Tog.KickSpeed1000:SetValue(false)
stopKickMonitor()
return
end
while kSpeed do
bp=getBP()
if not bp then
task.wait(0)
if kSpeed then autoSitBlob()end
continue
end
local tg=selKP
if not tg or not tg.Parent then
ntf("Kick Speed","Target kicked! Time: "..string.format("%.1f",tick()-kickStart).."s",8)
break
end
local tc=tg.Character
local tr=tc and tc:FindFirstChild("HumanoidRootPart")
local th=tc and tc:FindFirstChild("Humanoid")
if not tr or not th or th.Health<=0 then
tr,th=waitTR(tg,10,function()return kSpeed end)
if not tr then
if not(tg and tg.Parent)then
ntf("Kick Speed","Target kicked! Time: "..string.format("%.1f",tick()-kickStart).."s",8)
end
continue
end
end

bp.br.CFrame=tr.CFrame
for _=1,16 do
if not kSpeed then break end
pcall(function()
bp.cg:FireServer(bp.rd,tr,bp.rw)
if bp.ld and bp.lw then bp.cg:FireServer(bp.ld,tr,bp.lw)end
SNO:FireServer(tr,bp.br.CFrame)
end)
task.wait(0)
end
-- TP НА 1000,1000,1000
bp.br.CFrame=SAFE_1000
-- УЛЬТРА БЫСТРОЕ ХВАТАНИЕ (ТОЛЬКО ПРАВАЯ РУКА)
while kSpeed do
tc=tg.Character
tr=tc and tc:FindFirstChild("HumanoidRootPart")
th=tc and tc:FindFirstChild("Humanoid")
if not tr or not th or th.Health<=0 then
bp.br.CFrame=SAFE_1000
break
end
local lp=SAFE_1000*CFrame.new(0,28,0)
tr.CFrame=lp
tr.Velocity=Vector3.zero
tr.RotVelocity=Vector3.zero
bp.br.CFrame=SAFE_1000
pcall(function()
th.PlatformStand=true
th.Sit=true
SNO:FireServer(tr,lp)
-- ТОЛЬКО ПРАВАЯ РУКА (БЕЗ СМЕНЫ)
local wr=bp.rd:FindFirstChild("RightWeld")or bp.rd:FindFirstChildWhichIsA("Weld")
if wr then bp.cd:FireServer(wr)end
bp.cg:FireServer(bp.rd,tr,bp.rw)
DGL:FireServer(tr)
CGL:FireServer(tr,Vector3.zero,tr.Position,false)
end)
task.wait(0) -- МАКСИМАЛЬНАЯ СКОРОСТЬ
end
end
kSpeed=false
Tog.KickSpeed1000:SetValue(false)
stopKickMonitor()
end)
end})
TL2:AddToggle("BlobAntiLoopKill",{Text="Anti Loop Kill (Blob)",Default=false,Callback=function(V)
_G.antiKillActive=V
if _G.antiKillConn then _G.antiKillConn:Disconnect()_G.antiKillConn=nil end
if not V then ntf("Anti Kill","OFF",2)return end
ntf("Anti Kill","MAX GRAB ON!",3)
_G.antiKillConn=R.Heartbeat:Connect(function()
if not _G.antiKillActive then return end
local bp=getBP()if not bp then return end
local hrp=P.Character and P.Character:FindFirstChild("HumanoidRootPart")
if not hrp then return end
for _,pl in pairs(PS:GetPlayers())do
if pl~=P and pl.Character then
local tr=pl.Character:FindFirstChild("HumanoidRootPart")
local th=pl.Character:FindFirstChildOfClass("Humanoid")
if tr and th and th.Health>0 and(tr.Position-hrp.Position).Magnitude<=50 then
pcall(function()
SNO:FireServer(tr,bp.br.CFrame)
bp.cg:FireServer(bp.rd,tr,bp.rw)
if bp.ld and bp.lw then bp.cg:FireServer(bp.ld,tr,bp.lw)end
local wr=bp.rd:FindFirstChild("RightWeld")or bp.rd:FindFirstChildWhichIsA("Weld")
if wr then bp.cd:FireServer(wr)end
if bp.ld and bp.lw then
local wl=bp.ld:FindFirstChild("LeftWeld")or bp.ld:FindFirstChildWhichIsA("Weld")
if wl then bp.cd:FireServer(wl)end
end
bp.cg:FireServer(bp.rd,tr,bp.rw)
if bp.ld and bp.lw then bp.cg:FireServer(bp.ld,tr,bp.lw)end
end)
end
end
end
end)
end})
-- KICK BLOBMEN (REZONANS) - ВСТАВЬ В САМЫЙ НИЗ TL2 (ПЕРЕД --END PART)


local kRezonans=false
local kRezonansGPS=20 -- grabs per second (хватаний в секунду)

TL2:AddToggle("KickRezonans",{Text="Kick Blobmen (Rezonans)",Default=false,Callback=function(on)
kRezonans=on
if not on then stopKickMonitor()return end
startKickMonitor()

-- ЗАПОМИНАЕМ ГДЕ СТОИМ
local SAFE_REZON=P.Character.HumanoidRootPart.CFrame

task.spawn(function()
if not autoSitBlob()then
kRezonans=false
Tog.KickRezonans:SetValue(false)
stopKickMonitor()
ntf("Error","Can't sit on blobman!",3)
return
end

monitorSit(function()return kRezonans end)
local kickStart=tick()
ntf("Kick Rezonans","Kicking "..selKP.DisplayName.."...",3)

local bp=getBP()
if not bp then 
kRezonans=false
Tog.KickRezonans:SetValue(false)
stopKickMonitor()
return
end

while kRezonans do
bp=getBP()
if not bp then
task.wait(0)
if kRezonans then autoSitBlob()end
continue
end

local tg=selKP
if not tg or not tg.Parent then
ntf("Kick Rezonans","Kicked! "..string.format("%.1f",tick()-kickStart).."s",8)
break
end

local tc=tg.Character
local tr=tc and tc:FindFirstChild("HumanoidRootPart")
local th=tc and tc:FindFirstChild("Humanoid")

if not tr or not th or th.Health<=0 then
tr,th=waitTR(tg,10,function()return kRezonans end)
if not tr then
if not(tg and tg.Parent)then
ntf("Kick Rezonans","Kicked!",8)
end
continue
end
end

-- ХВАТАНИЕ У ЦЕЛИ
bp.br.CFrame=tr.CFrame
for _=1,16 do
if not kRezonans then break end
pcall(function()
bp.cg:FireServer(bp.rd,tr,bp.rw)
if bp.ld and bp.lw then bp.cg:FireServer(bp.ld,tr,bp.lw)end
SNO:FireServer(tr,bp.br.CFrame)
end)
task.wait(0)
end

-- TP НА SAFE_REZON
bp.br.CFrame=SAFE_REZON

-- КИКАНИЕ С РЕГУЛИРУЕМОЙ СКОРОСТЬЮ
while kRezonans do
tc=tg.Character
tr=tc and tc:FindFirstChild("HumanoidRootPart")
th=tc and tc:FindFirstChild("Humanoid")

if not tr or not th or th.Health<=0 then
bp.br.CFrame=SAFE_REZON
break
end

-- АНЧОР НА ВЫСОТЕ 16 (НА 1 НИЖЕ ЧЕМ KICK FINAL)
local lp=SAFE_REZON*CFrame.new(0,17,0) -- 17-1=16
tr.CFrame=lp
tr.Velocity=Vector3.zero
tr.RotVelocity=Vector3.zero
bp.br.CFrame=SAFE_REZON

pcall(function()
th.PlatformStand=true
th.Sit=true
SNO:FireServer(tr,lp)
-- GRAB
local wr=bp.rd:FindFirstChild("RightWeld")or bp.rd:FindFirstChildWhichIsA("Weld")
if wr then bp.cd:FireServer(wr)end
bp.cg:FireServer(bp.rd,tr,bp.rw)

if bp.ld and bp.lw then
local wl=bp.ld:FindFirstChild("LeftWeld")or bp.ld:FindFirstChildWhichIsA("Weld")
if wl then bp.cd:FireServer(wl)end
bp.cg:FireServer(bp.ld,tr,bp.lw)
end

DGL:FireServer(tr)
CGL:FireServer(tr,Vector3.zero,tr.Position,false)
end)

-- ЗАДЕРЖКА ОСНОВАНА НА GRABS PER SECOND
local delay=0/kRezonansGPS -- например 20 GPS = 0.05 секунды
task.wait(delay)
end
end

kRezonans=false
Tog.KickRezonans:SetValue(false)
stopKickMonitor()
end)
end})

-- РЕГУЛЯТОР СКОРОСТИ
TL2:AddSlider("RezonansGPS",{
Text="Grabs Per Second",
Min=1,
Max=250,
Default=20,
Rounding=0,
Suffix=" GPS",
Callback=function(v)
kRezonansGPS=v
end
})

TL2:AddLabel("1 GPS = Slow | 100 GPS = Max Speed")

TL:AddToggle("LoopKickGrabToggle2",{Text="Kick (ragdoll grab)",Default=false,Callback=function(on)
    kLE = on
    if not on then stopKickMonitor() return end
    startKickMonitor()
    teleportToSafePos()

    task.spawn(function()
        local GE = RS:WaitForChild("GrabEvents")
        local mr = P.Character and P.Character:FindFirstChild("HumanoidRootPart")
        if not mr then Tog.LoopKickGrabToggle2:SetValue(false) stopKickMonitor() return end
        local sp = mr.CFrame
        local dragging = false
        local grabStart = 0

        while kLE do
            local tg = selKP
            if not tg or not tg.Parent then break end
            local tc = tg.Character
            local tr = tc and tc:FindFirstChild("HumanoidRootPart")
            local th = tc and tc:FindFirstChild("Humanoid")

            if tr and th and th.Health > 0 then
                tr.AssemblyLinearVelocity = Vector3.zero
                tr.AssemblyAngularVelocity = Vector3.zero
                tr.Velocity = Vector3.zero

                if not dragging then
                    mr.CFrame = tr.CFrame
                    pcall(function()
                        th.PlatformStand = true
                        th.Sit = true
                        GE.SetNetworkOwner:FireServer(tr, mr.CFrame)
                        GE.CreateGrabLine:FireServer(tr, Vector3.zero, tr.Position, false)
                    end)

                    if grabStart == 0 then grabStart = tick() end
                    if tick() - grabStart > 0.15 then
                        dragging = true
                        grabStart = 0
                        mr.CFrame = sp
                    end
                else
                    local lockCFrame = CFrame.new(sp.Position + Vector3.new(0, 7, 0)) * CFrame.Angles(
                        math.rad(math.random(-180, 180)),
                        math.rad(math.random(-180, 180)),
                        math.rad(math.random(-180, 180))
                    )
                    tr.CFrame = tr.CFrame:Lerp(lockCFrame, 0.2)
                    tr.Velocity = Vector3.zero
                    tr.RotVelocity = Vector3.zero

                    pcall(function()
                        th.PlatformStand = true
                        th.Sit = false
                        GE.SetNetworkOwner:FireServer(tr, tr.CFrame)
                        GE.DestroyGrabLine:FireServer(tr)
                        GE.CreateGrabLine:FireServer(tr, Vector3.zero, tr.Position, false)
                    end)
                end
            else
                dragging = false
                grabStart = 0
            end

            R.Heartbeat:Wait()
        end

        if mr then
            mr.CFrame = sp
            mr.Velocity = Vector3.zero
        end

        kLE = false
        Tog.LoopKickGrabToggle2:SetValue(false)
        stopKickMonitor()
    end)
end})

-- Loop Kill (migrated from Polarhub)
local loopKillActive = false
local loopKillTask = nil

local function LoopKillFunction(targetName)
    local target = PS:FindFirstChild(targetName)
    if not target then return end
    local GE = RS:WaitForChild("GrabEvents")

    while loopKillActive and target and target.Parent do
        if not target.Character then
            task.wait(0.5)
            continue
        end
        local myChar = P.Character
        local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
        local tChar = target.Character
        local tRoot = tChar and tChar:FindFirstChild("HumanoidRootPart")
        local tHum = tChar and tChar:FindFirstChildOfClass("Humanoid")
        if tRoot and tHum and tHum.Health > 0 and myRoot then
            local currentPos = myRoot.CFrame
            local attackStart = tick()
            while tick() - attackStart < 0.35 and loopKillActive do
                if not tRoot.Parent then break end
                myRoot.CFrame = tRoot.CFrame * CFrame.new(0, 0, 2)
                myRoot.Velocity = Vector3.zero
                pcall(function()
                    GE.SetNetworkOwner:FireServer(tRoot, myRoot.CFrame)
                    tHum:ChangeState(Enum.HumanoidStateType.Dead)
                    tHum.Health = 0
                    GE.CreateGrabLine:FireServer(tRoot, Vector3.zero, tRoot.Position, false)
                    GE.DestroyGrabLine:FireServer(tRoot)
                end)
                R.Heartbeat:Wait()
            end
            if myRoot then
                myRoot.CFrame = currentPos
                myRoot.Velocity = Vector3.zero
            end
            task.wait(1.2)
        else
            task.wait(0.5)
        end
    end
    local char = P.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if root then root.Velocity = Vector3.zero end
end

TR:AddToggle("LoopKillToggle", {
    Text = "Loop Kill",
    Default = false,
    Callback = function(Value)
        loopKillActive = Value
        local targetName = selKP and selKP.Name
        if Value then
            if targetName and targetName ~= "" then
                loopKillTask = task.spawn(function()
                    LoopKillFunction(targetName)
                end)
            else
                loopKillActive = false
            end
        else
            if loopKillTask then
                task.cancel(loopKillTask)
                loopKillTask = nil
            end
        end
    end
})

TL:AddButton({Text="Try to Remove Gucci",Func=function()ntf("Remove Gucci","",3)end})
TR:AddLabel("Change Offset")
TR:AddLabel("Position")
TR:AddSlider("OffsetX",{Text="X",Min=0,Max=20,Default=0,Rounding=0})
TR:AddSlider("OffsetY",{Text="Y",Min=0,Max=20,Default=15,Rounding=0})
TR:AddSlider("OffsetZ",{Text="Z",Min=0,Max=20,Default=0,Rounding=0})
TR:AddToggle("EnableRagdollTarget",{Text="Enable Ragdoll Target",Default=false})

-- Anti-Anti-Kick Variables
local antiAntiKickActive=false
local antiAntiKickTask=nil

-- Remove Anti Kick 
local function RemoveAntiKickFunction(targetName)
    local SetNetOwner=RS:WaitForChild("GrabEvents"):WaitForChild("SetNetworkOwner")
    local LocalPlayer=P
    
    local function invis_touch(part,cf)
        SetNetOwner:FireServer(part,cf)
    end
    
    local function CheckAndYeet(toy)
        local part=toy:FindFirstChild("SoundPart")
        if part then
            invis_touch(part,part.CFrame)
            if part:FindFirstChild("PartOwner")and part.PartOwner.Value==LocalPlayer.Name then
                part.CFrame=CFrame.new(0,1000,0)
            end
        end
    end
    
    while antiAntiKickActive do
        local target=PS:FindFirstChild(targetName)
        if target then
            local spawned=WS:FindFirstChild(target.Name.."SpawnedInToys")
            if spawned then
                if spawned:FindFirstChild("NinjaKunai")then
                    CheckAndYeet(spawned.NinjaKunai)
                end
                if spawned:FindFirstChild("NinjaShuriken")then
                    CheckAndYeet(spawned.NinjaShuriken)
                end
                if spawned:FindFirstChild("AntiKick")then
                    CheckAndYeet(spawned.AntiKick)
                end
            end
        end
        task.wait(0.1)
    end
end

TR:AddToggle("EnableAntiAntiKick",{Text="Enable Anti-Anti-Kick",Default=false,Callback=function(on)
    antiAntiKickActive=on
    if on then
        if selKP then
            antiAntiKickTask=task.spawn(function()
                RemoveAntiKickFunction(selKP.Name)
            end)
            ntf("Anti-Anti-Kick","Started for "..selKP.DisplayName,3)
        else
            Tog.EnableAntiAntiKick:SetValue(false)
            ntf("Error","Select a target first!",3)
        end
    else
        if antiAntiKickTask then
            task.cancel(antiAntiKickTask)
            antiAntiKickTask=nil
        end
        ntf("Anti-Anti-Kick","Stopped",2)
    end
end})
-- CRAZY LINE WITH SPEED CONTROL
TR:AddLabel("━━━━━━━━━━━━━━━━")
TR:AddLabel("Crazy Line")

local crazyLineActive=false
local crazyLineTask=nil
local crazyLineSpeed=0.05 -- скорость обновления линии

TR:AddToggle("CrazyLine",{Text="Crazy Line (Grab All)",Default=false,Callback=function(on)
    crazyLineActive=on
    
    if on then
        ntf("Crazy Line","Grabbing all players!",3)
        
        crazyLineTask=task.spawn(function()
            local myChar=P.Character
            if not myChar then
                crazyLineActive=false
                Tog.CrazyLine:SetValue(false)
                ntf("Error","No character!",3)
                return
            end
            
            local myHRP=myChar:FindFirstChild("HumanoidRootPart")
            if not myHRP then
                crazyLineActive=false
                Tog.CrazyLine:SetValue(false)
                return
            end
            
            local savedPos=myHRP.CFrame
            local grabbedPlayers={}
            
            -- ХВАТАЕМ ВСЕХ ИГРОКОВ
            for _,player in ipairs(PS:GetPlayers())do
                if not crazyLineActive then break end
                
                if player~=P and player.Character then
                    local targetChar=player.Character
                    local targetHead=targetChar:FindFirstChild("Head")
                    local targetHRP=targetChar:FindFirstChild("HumanoidRootPart")
                    local targetHum=targetChar:FindFirstChildOfClass("Humanoid")
                    
                    if targetHead and targetHRP and targetHum and targetHum.Health>0 then
                        -- ХВАТАЕМ ЗА ГОЛОВУ
                        pcall(function()
                            SNO:FireServer(targetHead,myHRP.CFrame)
                            CGL:FireServer(targetHead,Vector3.zero,targetHead.Position,false)
                        end)
                        
                        task.wait(0.1)
                        
                        table.insert(grabbedPlayers,{
                            player=player,
                            head=targetHead,
                            hrp=targetHRP
                        })
                        ntf("Crazy Line","Grabbed: "..player.DisplayName,1)
                    end
                end
            end
            
            task.wait(0.3)
            
            -- ЛИНИЯ ИЗ ВСЕХ СХВАЧЕННЫХ
            if #grabbedPlayers>0 then
                ntf("Crazy Line","Grabbed "..#grabbedPlayers.." players! Speed: "..crazyLineSpeed.."s",3)
                
                local lineSpacing=5
                local startPos=savedPos*CFrame.new(-lineSpacing*(#grabbedPlayers/2),0,0)
                
                while crazyLineActive do
                    for i,data in ipairs(grabbedPlayers)do
                        if data.head and data.head.Parent and data.hrp and data.hrp.Parent then
                            local linePos=startPos*CFrame.new(lineSpacing*i,2,0)
                            
                            pcall(function()
                                SNO:FireServer(data.head,linePos)
                                data.head.CFrame=linePos
                                data.head.Velocity=Vector3.zero
                                data.head.RotVelocity=Vector3.zero
                                data.head.CFrame=CFrame.new(linePos.Position,myHRP.Position)
                            end)
                        end
                    end
                    task.wait(crazyLineSpeed) -- РЕГУЛИРУЕМАЯ СКОРОСТЬ
                end
            else
                ntf("Crazy Line","No players grabbed!",3)
            end
            
            -- ОТПУСКАЕМ ВСЕХ
            for _,data in ipairs(grabbedPlayers)do
                if data.head and data.head.Parent then
                    pcall(function()
                        DGL:FireServer(data.head)
                    end)
                end
            end
            
            ntf("Crazy Line","Released all players!",3)
            crazyLineActive=false
            Tog.CrazyLine:SetValue(false)
        end)
    else
        if crazyLineTask then
            task.cancel(crazyLineTask)
            crazyLineTask=nil
        end
        
        -- ОТПУСКАЕМ ВСЕХ
        for _,player in ipairs(PS:GetPlayers())do
            if player~=P and player.Character then
                local head=player.Character:FindFirstChild("Head")
                if head then
                    pcall(function()
                        DGL:FireServer(head)
                    end)
                end
            end
        end
        
        ntf("Crazy Line","Stopped!",2)
    end
end})

TR:AddSlider("CrazyLineSpeed",{
    Text="Line Update Speed",
    Min=0,
    Max=1,
    Default=0.05,
    Rounding=2,
    Suffix="s",
    Callback=function(v)
        crazyLineSpeed=v
    end
})

TR:AddLabel("0 = Max Speed | 1 = Slow")
local FG=Tabs.Target:AddLeftGroupbox("Figure Grab Settings","hand")
FG:AddDropdown("FG_TargetPart",{Text="Target Part",Values={"Torso","Head","Left Arm","Right Arm","Left Leg","Right Leg"},Default=1})
FG:AddLabel("Rotation")
FG:AddInput("FG_RotX",{Text="X",Default="0"})
FG:AddInput("FG_RotY",{Text="Y",Default="0"})
FG:AddInput("FG_RotZ",{Text="Z",Default="0"})
FG:AddLabel("Position")
FG:AddInput("FG_PosX",{Text="X",Default="0"})
FG:AddInput("FG_PosY",{Text="Y",Default="0"})
FG:AddInput("FG_PosZ",{Text="Z",Default="-4"})
FG:AddLabel("Presets")
FG:AddDropdown("FG_Presets",{Text="Presets",Values={"---"},Default=1})
FG:AddButton({Text="Save Preset",Func=function()end})
FG:AddButton({Text="Load Preset",Func=function()end})
FG:AddButton({Text="Delete Preset",Func=function()end})
-- ═══════════════════════════════════════════════════════════
-- BLOBMAN METHODS (from Polar Hub) - ПОЛНАЯ ЗАМЕНА
-- ═══════════════════════════════════════════════════════════

-- Переменные для методов
local blobMethodVars = {
    autoSitActive = false,
    loopKickBlobActive = false,
    loopAppleActive = false,
    blobLockRunning = false,
    blobLockBlob = nil,
    blobLockTime = 0,
    blobLockStartPos = nil,
    blobLockLastTP = 0
}

-- Auto Sit Loop Function
local function AutoSitLoop()
    while blobMethodVars.autoSitActive do
        local plr = P
        local char = plr.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        local hum = char and char:FindFirstChild("Humanoid")
        if not hrp or not hum then 
            task.wait(1)
            continue 
        end
        if hum.SeatPart then
            task.wait(0.5)
            continue
        end
        local folderName = plr.Name .. "SpawnedInToys"
        local folder = WS:FindFirstChild(folderName)
        local blob = folder and folder:FindFirstChild("CreatureBlobman")
        if not blob then
            task.spawn(function()
                pcall(function()
                    RS.MenuToys.SpawnToyRemoteFunction:InvokeServer("CreatureBlobman", hrp.CFrame, Vector3.zero)
                end)
            end)
            if not folder then
                folder = WS:WaitForChild(folderName, 5)
            end
            if folder then
                blob = folder:WaitForChild("CreatureBlobman", 5)
            end
        end
        if blob then
            local seat = blob:WaitForChild("VehicleSeat", 5)
            if seat then
                local t = tick()
                repeat
                    if not hum.SeatPart then
                        hrp.CFrame = seat.CFrame + Vector3.new(0, 1, 0)
                        hrp.Velocity = Vector3.zero
                        seat:Sit(hum)
                    end
                    R.Heartbeat:Wait()
                until hum.SeatPart == seat or tick() - t > 1.5 or not blobMethodVars.autoSitActive
            end
        end
        task.wait(0.5)
    end
end

-- Blob Methods Functions
local function BlobBring(targetName)
    local NetworkRemote = RS:WaitForChild("GrabEvents"):WaitForChild("SetNetworkOwner")
    local TargetPlayer = PS:FindFirstChild(targetName)
    if not TargetPlayer then return end
    local Character = P.Character or P.CharacterAdded:Wait()
    local Humanoid = Character:WaitForChild("Humanoid")
    local RootPart = Character:WaitForChild("HumanoidRootPart")
    local Seat = Humanoid.SeatPart
    if not Seat or not TargetPlayer or TargetPlayer == P then return end
    local SeatObject = Seat.Parent
    local TargetCharacter = TargetPlayer.Character or TargetPlayer.CharacterAdded:Wait()
    local TargetRoot = TargetCharacter:WaitForChild("HumanoidRootPart")
    local Detector = SeatObject:WaitForChild("LeftDetector")
    local Weld = Detector:WaitForChild("LeftWeld")
    local GrabRemote = SeatObject.BlobmanSeatAndOwnerScript:WaitForChild("CreatureGrab")
    local OriginalPosition = RootPart.CFrame
    RootPart.CFrame = TargetRoot.CFrame * CFrame.new(0, 0, 2.5)
    task.wait()
    GrabRemote:FireServer(Detector, TargetRoot, Weld)
    task.delay(0.1, function()
        GrabRemote:FireServer(Detector, TargetRoot, Weld)
    end)
    task.delay(0.2, function()
        RootPart.CFrame = OriginalPosition
    end)
end

local function BlobKick(targetName)
    local target = PS:FindFirstChild(targetName)
    if not target then return end
    local char = P.Character or P.CharacterAdded:Wait()
    local humanoid = char:WaitForChild("Humanoid")
    local hrp = char:WaitForChild("HumanoidRootPart")
    local seat = humanoid.SeatPart
    if seat and target and target ~= P then
        local seatParent, targetChar = seat.Parent, target.Character or target.CharacterAdded:Wait()
        local targetHRP = targetChar:WaitForChild("HumanoidRootPart")
        local det = seatParent:WaitForChild("LeftDetector")
        local weld = det:WaitForChild("LeftWeld")
        local grab = seatParent.BlobmanSeatAndOwnerScript:WaitForChild("CreatureGrab")
        local drop = seatParent.BlobmanSeatAndOwnerScript:WaitForChild("CreatureDrop")
        local originalCFrame = hrp.CFrame
        hrp.CFrame = targetHRP.CFrame * CFrame.new(0, 0, 3)
        task.wait(0)
        grab:FireServer(det, targetHRP, weld)
        task.wait(0)
        drop:FireServer(weld, targetHRP)
        task.wait(0)
        grab:FireServer(det, targetHRP, weld)
        local bp = Instance.new("BodyPosition")
        bp.Position = Vector3.new(0, 999e5000, 0)
        bp.MaxForce = Vector3.new(0, 99999e990, 0)
        bp.Parent = targetHRP
        task.wait(0)
        grab:FireServer(det, targetHRP, weld)
        bp:Destroy()
        hrp.CFrame = originalCFrame
    end
end

local function BlobLoopKick(targetName)
    local target = PS:FindFirstChild(targetName)
    if not target or target == P then return end
    local char = P.Character or P.CharacterAdded:Wait()
    local humanoid = char:WaitForChild("Humanoid")
    local hrp = char:WaitForChild("HumanoidRootPart")
    local seat = humanoid.SeatPart
    if not seat then return end
    local seatParent = seat.Parent
    local targetChar = target.Character or target.CharacterAdded:Wait()
    local targetHumanoid = targetChar:WaitForChild("Humanoid")
    local targetHRP = targetChar:WaitForChild("HumanoidRootPart")
    local leftDet = seatParent:WaitForChild("LeftDetector")
    local leftWeld = leftDet:WaitForChild("LeftWeld")
    local rightDet = seatParent:WaitForChild("RightDetector")
    local rightWeld = rightDet:WaitForChild("RightWeld")
    local grab = seatParent.BlobmanSeatAndOwnerScript:WaitForChild("CreatureGrab")
    local drop = seatParent.BlobmanSeatAndOwnerScript:WaitForChild("CreatureDrop")
    local originalCFrame = hrp.CFrame
    hrp.CFrame = targetHRP.CFrame * CFrame.new(0, -5, 0)
    task.wait(0.1)
    grab:FireServer(leftDet, targetHRP, leftWeld)
    task.wait(0.5)
    drop:FireServer(leftWeld, targetHRP)
    task.wait(0.2)
    local bp = Instance.new("BodyPosition")
    bp.Position = Vector3.new(0, 999e6, 0)
    bp.MaxForce = Vector3.new(999e6, 999e6, 999e6)
    bp.Parent = targetHRP
    grab:FireServer(leftDet, targetHRP, leftWeld)
    task.wait(0.5)
    drop:FireServer(leftWeld, targetHRP)
    task.wait(0.5)
    while target and target.Parent and targetHumanoid.Health > 0 do
        if targetHumanoid.Health > 0 then
            grab:FireServer(leftDet, targetHRP, leftWeld)
            task.wait()
            drop:FireServer(leftWeld, targetHRP)
            task.wait()
            grab:FireServer(rightDet, targetHRP, rightWeld)
            task.wait()
            drop:FireServer(rightWeld, targetHRP)
            task.wait()
        else
            break
        end
    end
    if bp then bp:Destroy() end
    hrp.CFrame = originalCFrame
end

local function BlobBypass(targetName)
    local target = PS:FindFirstChild(targetName)
    if not target or target == P then return end
    local char = P.Character or P.CharacterAdded:Wait()
    local humanoid = char:WaitForChild("Humanoid")
    local seat = humanoid.SeatPart
    if not seat then return end
    local seatParent = seat.Parent
    local targetChar = target.Character or target.CharacterAdded:Wait()
    local targetHumanoid = targetChar:WaitForChild("Humanoid")
    local targetHRP = targetChar:WaitForChild("HumanoidRootPart")
    local leftDet = seatParent:WaitForChild("LeftDetector")
    local leftWeld = leftDet:WaitForChild("LeftWeld")
    local grab = seatParent.BlobmanSeatAndOwnerScript:WaitForChild("CreatureGrab")
    local drop = seatParent.BlobmanSeatAndOwnerScript:WaitForChild("CreatureDrop")
    task.wait(0.05)
    while target and target.Parent and targetHumanoid.Health > 0 and Tog.LoopAppleMethod.Value do
        for i = 1, 20 do
            grab:FireServer(leftDet, targetHRP, leftWeld)
        end
        drop:FireServer(leftWeld, targetHRP)
        drop:FireServer(leftWeld, targetHRP)
        task.wait(0.01)
        if not Tog.LoopAppleMethod.Value then break end
    end
end

local function BlobKill(targetName)
    local me = P
    local FWC = function(Parent, Name, Time) 
        return Parent:FindFirstChild(Name) or Parent:WaitForChild(Name, Time or 3) 
    end
    local grab = function(prt) 
        RS.GrabEvents.SetNetworkOwner:FireServer(prt, prt.CFrame) 
    end
    local blob_kick = function(blob, hrp, rl, v)
        local detec = blob:FindFirstChild(rl .. "Detector")
        if not detec then return end
        local script = blob.BlobmanSeatAndOwnerScript
        if v == "Default" then
            script.CreatureGrab:FireServer(detec, hrp, detec[rl .. "Weld"])
        elseif v == "Release" then
            script.CreatureRelease:FireServer(detec[rl .. "Weld"], hrp)
        end
    end
    
    local kfmb = true
    local MyBlob
    
    while true do
        local mychar = me.Character or me.CharacterAdded:Wait()
        local myhum = FWC(mychar, "Humanoid")
        if myhum.SeatPart then
            MyBlob = myhum.SeatPart.Parent
            break
        end
        task.wait()
    end
    
    while kfmb and task.wait() do
        local mychar = me.Character or me.CharacterAdded:Wait()
        local myHRP = FWC(mychar, "HumanoidRootPart")
        local myhum = FWC(mychar, "Humanoid")
        
        if not myhum.SeatPart then 
            kfmb = false
            break
        end
        
        local plr = PS:FindFirstChild(targetName)
        if not plr then continue end
        
        local char = plr.Character
        if not char then continue end
        
        local hum = FWC(char, "Humanoid", 2)
        local HRP = FWC(char, "HumanoidRootPart", 2)
        
        if not (hum and HRP) then continue end
        
        if hum.Health == 0 then
            char = plr.CharacterAdded:Wait()
            hum = FWC(char, "Humanoid", 2)
            HRP = FWC(char, "HumanoidRootPart", 2)
            task.wait(0.15)
            if not (hum and HRP) then continue end
        end
        
        local LD = MyBlob:FindFirstChild("LeftDetector")
        local LW = LD and LD:FindFirstChild("LeftWeld")
        
        if LD and LW then
            while LW.Attachment0 ~= HRP.RootAttachment and kfmb do
                local SavedPosition = myHRP.CFrame
                
                for i = 1, 4 do
                    if not myhum.SeatPart then 
                        kfmb = false
                        break
                    end
                    
                    myHRP.CFrame = HRP.CFrame - Vector3.new(0, 10, 0)
                    blob_kick(MyBlob, HRP, "Left", "Default")
                    task.wait(0.05)
                    blob_kick(MyBlob, HRP, "Left", "Release")
                    hum.Health = 0
                    task.wait()
                end
                
                if not kfmb then break end
                myHRP.CFrame = SavedPosition
            end
        end
    end
end

local function BlobHeal(targetName)
    local me = P
    local FWC = function(Parent, Name, Time) 
        return Parent:FindFirstChild(Name) or Parent:WaitForChild(Name, Time or 3) 
    end
    local grab = function(prt) 
        RS.GrabEvents.SetNetworkOwner:FireServer(prt, prt.CFrame) 
    end
    local blob_kick = function(blob, hrp, rl, v)
        local detec = blob:FindFirstChild(rl .. "Detector")
        if not detec then return end
        local script = blob.BlobmanSeatAndOwnerScript
        if v == "Default" then
            script.CreatureGrab:FireServer(detec, hrp, detec[rl .. "Weld"])
        elseif v == "Release" then
            script.CreatureRelease:FireServer(detec[rl .. "Weld"], hrp)
        end
    end
    
    local MyBlob
    while true do
        local mychar = me.Character or me.CharacterAdded:Wait()
        local myhum = FWC(mychar, "Humanoid")
        if myhum.SeatPart then
            MyBlob = myhum.SeatPart.Parent
            break
        end
        task.wait()
    end
    
    local function DoHeal()
        local mychar = me.Character or me.CharacterAdded:Wait()
        local myHRP = FWC(mychar, "HumanoidRootPart")
        local myhum = FWC(mychar, "Humanoid")
        
        if not myhum.SeatPart then return false end
        
        local plr = PS:FindFirstChild(targetName)
        if not plr then return false end
        
        local char = plr.Character
        if not char then return false end
        
        local hum = char:FindFirstChild("Humanoid")
        local HRP = char:FindFirstChild("HumanoidRootPart")
        
        if not (hum and HRP) then return false end
        
        local LD = MyBlob:FindFirstChild("LeftDetector")
        local LW = LD and LD:FindFirstChild("LeftWeld")
        
        if not (LD and LW) then return false end
        
        local SavedPosition = myHRP.CFrame
        
        task.spawn(grab, HRP)
        task.wait(0.1)
        
        for i = 1, 3 do
            if not myhum.SeatPart then return false end
            
            myHRP.CFrame = HRP.CFrame * CFrame.new(0, 0, -2.5)
            blob_kick(MyBlob, HRP, "Left", "Default")
            task.wait(0.08)
            blob_kick(MyBlob, HRP, "Left", "Release")
            hum.Health = hum.MaxHealth
            task.wait(0.08)
        end
        
        myHRP.CFrame = SavedPosition
        return true
    end
    
    local success1 = DoHeal()
    if not success1 then
        task.wait(0.5)
        DoHeal()
    end
end

-- Blob Lock System
local BlobLock = {
    MyBlob = nil,
    Running = false,
    Time = 0,
    StartPos = nil,
    LastTP = 0
}

local function isnetworkowner(part)
    return part and part:IsDescendantOf(WS) and part:GetNetworkOwner() == P
end

function BlobLock:TPToTargetAndBack(targetHRP)
    local mychar = P.Character
    if not mychar then return end
    local myHRP = mychar:FindFirstChild("HumanoidRootPart")
    if not myHRP then return end
    
    self.StartPos = myHRP.CFrame
    myHRP.CFrame = targetHRP.CFrame + Vector3.new(0, 5, 0)
    task.wait(0.05)
    
    for i = 1, 3 do
        RS.GrabEvents.SetNetworkOwner:FireServer(targetHRP, targetHRP.CFrame)
        task.wait()
    end
    
    task.wait(0.1)
    myHRP.CFrame = self.StartPos
    self.LastTP = tick()
end

function BlobLock:Start(targetPlayerName)
    if self.Running then return end
    self.Running = true
    blobMethodVars.blobLockRunning = true
    
    task.spawn(function()
        local targetPlr = PS:FindFirstChild(targetPlayerName)
        if not targetPlr then 
            self:Stop()
            return
        end
        
        local char = targetPlr.Character
        if not char then
            targetPlr.CharacterAdded:Wait()
            task.wait(0.5)
            char = targetPlr.Character
        end
        
        local HRP = char and char:FindFirstChild("HumanoidRootPart")
        if HRP then
            self:TPToTargetAndBack(HRP)
        end
        
        while self.Running do
            task.wait()
            
            local mychar = P.Character
            if not mychar then continue end
            
            local myHRP = mychar:FindFirstChild("HumanoidRootPart")
            local myhum = mychar:FindFirstChild("Humanoid")
            if not myHRP or not myhum then continue end
            
            if not myhum.SeatPart then
                self:Stop()
                break
            end
            
            if myhum.SeatPart then 
                self.MyBlob = myhum.SeatPart.Parent 
            end
            
            targetPlr = PS:FindFirstChild(targetPlayerName)
            if not targetPlr then 
                self:Stop()
                break
            end
            
            char = targetPlr.Character
            if not char then continue end
            
            local hum = char:FindFirstChild("Humanoid")
            local HRP = char:FindFirstChild("HumanoidRootPart")
            if not hum or not HRP then continue end
            
            if hum.Health == 0 then continue end
            
            local dist = (myHRP.Position - HRP.Position).Magnitude
            if dist > 15 and tick() - self.LastTP > 0.5 then
                self:TPToTargetAndBack(HRP)
            end
            
            if self.MyBlob and self.MyBlob.Parent then
                task.defer(function()
                    if isnetworkowner(HRP) then
                        if tick() - self.Time > 0.5 then
                            hum.Sit = true
                            task.wait(0.16)
                            hum.Sit = false
                            self.Time = tick()
                        end  
                        
                        local LD = self.MyBlob:FindFirstChild("LeftDetector")
                        if LD then 
                            HRP.CFrame = LD.CFrame 
                        end
                        
                        for _, v in pairs(char:GetChildren()) do
                            if v:IsA("BasePart") then 
                                v.Velocity = Vector3.new() 
                            end
                        end
                    end
                end)
                
                local blob = self.MyBlob
                local LD = blob:FindFirstChild("LeftDetector")
                if LD then
                    local grab = blob.BlobmanSeatAndOwnerScript.CreatureGrab
                    local rel = blob.BlobmanSeatAndOwnerScript.CreatureRelease
                    grab:FireServer(LD, HRP, LD.LeftWeld)
                    task.wait(0.005)
                    rel:FireServer(LD.LeftWeld, HRP)
                end
            end
        end
    end)
end

function BlobLock:Stop()
    self.Running = false
    self.MyBlob = nil
    blobMethodVars.blobLockRunning = false
end

-- ═══════════════════════════════════════════════════════════
-- ЗАМЕНА ПЛИТКИ "Blobman Methods" в GGOG
-- ═══════════════════════════════════════════════════════════

-- Auto Sit Blobman
TR2:AddToggle("AutoSitBlobmanToggle", {
    Text = "Auto Sit Blobman",
    Default = false,
    Callback = function(Value)
        blobMethodVars.autoSitActive = Value
        if Value then
            task.spawn(AutoSitLoop)
        end
    end
})

TR2:AddDropdown("BM_MethodSelect", {
    Text = "Selected Method",
    Values = {"Bring", "Loop Kick", "Bypass", "Kick", "Loop Kick (Grab+Blob)", "Blob Kill", "Lock"},
    Default = "Bring",
    Callback = function(Value) end
})

-- Apply Method Once 
TR2:AddButton({
    Text = "Apply Method Once",
    Func = function()
        local targetName = selKP and selKP.Name
        local method = Opt.BM_MethodSelect.Value
        if targetName and targetName ~= "" then
            if method == "Bring" then
                BlobBring(targetName)
            elseif method == "Kick" then
                BlobKick(targetName)
            elseif method == "Loop Kick" then
                BlobLoopKick(targetName)
            elseif method == "Bypass" then
                BlobBypass(targetName)
            elseif method == "Loop Kick (Grab+Blob)" then
                blobMethodVars.loopKickBlobActive = true
                -- LoopKickBlobFunction(targetName) -- если есть в оригинале
            elseif method == "Blob Kill" then
                BlobKill(targetName)
            elseif method == "Lock" then
                BlobLock:Start(targetName)
            end
        else
            ntf("Error", "Select target first!", 3)
        end
    end,
    DoubleClick = false
})

-- Destroy Visual
TR2:AddButton({
    Text = "Destroy Visual (Try 2 Times)",
    Func = function()
        local targetName = selKP and selKP.Name
        if targetName and targetName ~= "" then
            BlobHeal(targetName)
        else
            ntf("Error", "Select target first!", 3)
        end
    end,
    DoubleClick = false
})

-- Loop Apple Method 
TR2:AddToggle("LoopAppleMethod", {
    Text = "Loop Apple Method",
    Default = false,
    Callback = function(Value)
        blobMethodVars.loopAppleActive = Value
        if Value then
            local targetName = selKP and selKP.Name
            local method = Opt.BM_MethodSelect.Value
            if targetName and targetName ~= "" then
                task.spawn(function()
                    if method == "Lock" then
                        BlobLock:Start(targetName)
                        while Tog.LoopAppleMethod.Value and BlobLock.Running do
                            task.wait(0.1)
                        end
                        BlobLock:Stop()
                    else
                        while Tog.LoopAppleMethod.Value do
                            if method == "Bring" then BlobBring(targetName)
                            elseif method == "Kick" then BlobKick(targetName)
                            elseif method == "Loop Kick" then BlobLoopKick(targetName)
                            elseif method == "Bypass" then BlobBypass(targetName)
                            elseif method == "Blob Kill" then BlobKill(targetName) end
                            task.wait(1)
                        end
                    end
                end)
            else
                Tog.LoopAppleMethod:SetValue(false)
                ntf("Error", "Select target first!", 3)
            end
        else
            blobMethodVars.loopKickBlobActive = false
            BlobLock:Stop()
        end
    end
})
--END PART 1/5|Пиши "продолжай"
--a:sob ULTIMATE v3.0|PART 2/5|LOCALPLAYER+DEFENCE+VISUAL
-- ═══════════════════════════════════════════════════════════
-- TOXIN LAG SYSTEM (Auto-Enable on Target Functions)
-- ═══════════════════════════════════════════════════════════

local ToxinLag = {
    Active = false,
    Intensity = 50,
    Task = nil,
    MonitorTask = nil,
    TargetToggles = {}
}

-- Функция лага
local function ToxinLagFunction()
    local GE = RS:WaitForChild("GrabEvents")
    local SNO = GE:WaitForChild("SetNetworkOwner")
    
    while ToxinLag.Active do
        local tg = selKP
        if tg and tg.Parent and tg.Character then
            local tr = tg.Character:FindFirstChild("HumanoidRootPart")
            if tr then
                for i = 1, ToxinLag.Intensity do
                    if not ToxinLag.Active then break end
                    pcall(function()
                        SNO:FireServer(tr, tr.CFrame)
                    end)
                end
            end
        end
        task.wait(0.1)
    end
end

-- Проверка: есть ли активные toggles в Target?
local function HasActiveTargetToggles()
    for name, toggle in pairs(ToxinLag.TargetToggles) do
        if Tog[name] and Tog[name].Value then
            return true
        end
    end
    return false
end

-- Автоматическое управление лагом
local function UpdateToxinLag()
    local shouldBeActive = HasActiveTargetToggles()
    
    if shouldBeActive and not ToxinLag.Active then
        -- Включаем лаг
        ToxinLag.Active = true
        ToxinLag.Task = task.spawn(ToxinLagFunction)
        ntf("Toxin Lag", "Auto-enabled! Intensity: " .. ToxinLag.Intensity, 3)
    elseif not shouldBeActive and ToxinLag.Active then
        -- Выключаем лаг
        ToxinLag.Active = false
        if ToxinLag.Task then
            task.cancel(ToxinLag.Task)
            ToxinLag.Task = nil
        end
        ntf("Toxin Lag", "Auto-disabled!", 2)
    end
end

-- Регистрация toggles для мониторинга
local function RegisterTargetToggle(toggleName)
    ToxinLag.TargetToggles[toggleName] = true
    
    -- Хук на изменение значения
    task.spawn(function()
        while true do
            if Tog[toggleName] then
                local oldValue = Tog[toggleName].Value
                
                -- Ждём изменения
                repeat task.wait(0.1) until not Tog[toggleName] or Tog[toggleName].Value ~= oldValue
                
                if Tog[toggleName] then
                    UpdateToxinLag()
                else
                    break
                end
            else
                break
            end
        end
    end)
end

-- ═══════════════════════════════════════════════════════════
-- GUI
-- ═══════════════════════════════════════════════════════════

local ToxinGroup = Tabs.Target:AddRightGroupbox("Toxin Lag","zap")

ToxinGroup:AddToggle("EnableToxinLag", {
    Text = "Enable Lag (Toxin)",
    Default = false,
    Callback = function(Value)
        if Value then
            if not selKP then
                Tog.EnableToxinLag:SetValue(false)
                ntf("Error", "Select target first!", 3)
                return
            end
            ToxinLag.Active = true
            ToxinLag.Task = task.spawn(ToxinLagFunction)
            ntf("Toxin Lag", "Manual ON! Intensity: " .. ToxinLag.Intensity, 3)
        else
            ToxinLag.Active = false
            if ToxinLag.Task then
                task.cancel(ToxinLag.Task)
                ToxinLag.Task = nil
            end
            ntf("Toxin Lag", "Manual OFF!", 2)
        end
    end
})

ToxinGroup:AddSlider("ToxinIntensity", {
    Text = "Lag Intensity",
    Min = 1,
    Max = 150,
    Default = 50,
    Rounding = 0,
    Callback = function(Value)
        ToxinLag.Intensity = Value
    end
})
ToxinGroup:AddLabel("━━━━━━━━━━━━━━━━")
ToxinGroup:AddLabel("Auto-enables when any")
ToxinGroup:AddLabel("Target function is active")

-- ═══════════════════════════════════════════════════════════
-- РЕГИСТРАЦИЯ ВСЕХ TARGET TOGGLES
-- ═══════════════════════════════════════════════════════════

-- Регистрируем все существующие toggles
task.spawn(function()
    task.wait(1) -- Ждём загрузки UI
    
    -- Список всех toggles в Target табе
    local targetToggles = {
        "TraceToggle",
        "DestroyGucciToggle",
        "RemoveAllAntiInputToggle",
        "TargetNotifyToggle",
        "RemoveAntiKickToggle",
        "AutoSitBlobmanToggle",
        "OwnershipKickToggle",
        "LoopKillToggle",
        "SnowballRagdollToggle",
        "PalletRagdollToggle",
        "LoopKickV2",
        "LoopKickV3",
        "LoopKickV4",
        "UnlimitedKick911",
        "KickAuraBlobman"
        -- Новые из Blobman Methods
    "AutoSitBlobmanToggle",
    "LoopAppleMethod",
    }

    for _, toggleName in ipairs(targetToggles) do
        RegisterTargetToggle(toggleName)
    end
    
    print("✅ Toxin Lag: Monitoring " .. #targetToggles .. " Target toggles")
end)

-- ═══════════════════════════════════════════════════════════
-- МОНИТОРИНГ В РЕАЛЬНОМ ВРЕМЕНИ
-- ═══════════════════════════════════════════════════════════

ToxinLag.MonitorTask = task.spawn(function()
    while true do
        task.wait(0.5)
        
        -- Если ручной режим включён - не трогаем
        if Tog.EnableToxinLag and Tog.EnableToxinLag.Value then
            continue
        end
        
        -- Автоматическое управление
        UpdateToxinLag()
    end
end)
--LOCALPLAYER TAB
local LD=Tabs.LocalPlayer:AddLeftGroupbox("Defence","shield")
-- GoToHome
local Tppos = Vector3.new(-514.3 ,12.3 ,-137.0 )
LD:AddToggle("GoToHomeToggle", {
    Text = "Go To Home",
    Default = false,
    Callback = function(Value)
        _G.GoToHome = Value
        if Value then
            task.spawn(function()
                while _G.GoToHome do
                    local char = P.Character
                    if char and not P.InPlot or (P.InPlot and not P.InPlot.Value) then
                        local hrp = char:FindFirstChild("HumanoidRootPart")
                        if hrp then
                            hrp.CFrame = CFrame.new(Tppos)
                            hrp.Anchored = false
                        end
                    end
                    task.wait()
                end
            end)
        end
    end
})

-- Anti Barrier
LD:AddToggle("PlotBarriersToggle", {
    Text = "Anti Barrier",
    Default = false,
    Callback = function(Value)
        local plots = WS:FindFirstChild("Plots")
        if not plots then return end
        for _, plot in ipairs(plots:GetChildren()) do
            local barrierModel = plot:FindFirstChild("Barrier")
            if barrierModel then
                for _, part in ipairs(barrierModel:GetChildren()) do
                    if part:IsA("BasePart") and part.Name == "PlotBarrier" then
                        part.CanCollide = not Value
                    end
                end
            end
        end
    end
})

-- Kill Dodge
local killDodgeActive = false
local killDodgeTask = nil
local function KillDodgeFunction()
    killDodgeTask = task.spawn(function()
        while killDodgeActive do
            local char = P.Character
            if char then
                local hum = char:FindFirstChildOfClass("Humanoid")
                if hum and hum.Health < 10 then
                    hum.Health = 0
                    task.wait(3)
                end
            end
            task.wait(0.1)
        end
    end)
end

LD:AddToggle("KillDodgeToggle", {
    Text = "Kill Dodge",
    Default = false,
    Callback = function(Value)
        killDodgeActive = Value
        if Value then
            KillDodgeFunction()
        else
            if killDodgeTask then
                task.cancel(killDodgeTask)
                killDodgeTask = nil
            end
        end
    end
})

-- Anti Ragdoll on Blob
local antiRagBlobActive = false
local antiRagBlobConnections = {}
local function AntiRagBlobFunction()
    if antiRagBlobActive then
        table.insert(antiRagBlobConnections, WS.DescendantAdded:Connect(function(obj)
            if antiRagBlobActive and obj.Name == "CreatureBlobman" then
                pcall(function()
                    obj.LeftDetector:Destroy()
                    obj.RightDetector:Destroy()
                end)
            end
        end))
    else
        for _, conn in ipairs(antiRagBlobConnections) do
            conn:Disconnect()
        end
        antiRagBlobConnections = {}
    end
end

LD:AddToggle("AntiRagBlobToggle", {
    Text = "Anti Ragdoll on Blob",
    Default = false,
    Callback = function(Value)
        antiRagBlobActive = Value
        AntiRagBlobFunction()
    end
})

-- Telekinesis Shield
local telekinesisShieldActive = false
local telekinesisShieldTask = nil
local function TelekinesisShieldFunction()
    telekinesisShieldTask = task.spawn(function()
        while telekinesisShieldActive do
            local char = P.Character
            if char then
                local hrp = char:FindFirstChild("HumanoidRootPart")
                if hrp then
                    for _, obj in ipairs(WS:GetChildren()) do
                        if obj:IsA("Model") and obj.Name:find("Toy") then
                            local primary = obj.PrimaryPart or obj:FindFirstChildWhichIsA("BasePart")
                            if primary and (primary.Position - hrp.Position).Magnitude <= 20 then
                                pcall(function()
                                    SNO:FireServer(primary, primary.CFrame)
                                    primary.CFrame = hrp.CFrame * CFrame.new(0, 0, -3)
                                end)
                            end
                        end
                    end
                end
            end
            task.wait(0.1)
        end
    end)
end

LD:AddToggle("TelekinesisShieldToggle", {
    Text = "Telekinesis Shield",
    Default = false,
    Callback = function(Value)
        telekinesisShieldActive = Value
        if Value then
            telekinesisShieldTask = task.spawn(TelekinesisShieldFunction)
        else
            if telekinesisShieldTask then
                task.cancel(telekinesisShieldTask)
                telekinesisShieldTask = nil
            end
        end
    end
})

-- Flying Reset
local flyingResetActive = false
local flyingResetConnection = nil
LD:AddToggle("FlyingResetToggle", {
    Text = "Flying Reset",
    Default = false,
    Callback = function(Value)
        flyingResetActive = Value
        if Value then
            local CorrectionEvents = RS:WaitForChild("GameCorrectionEvents")
            local GameNotify = CorrectionEvents:WaitForChild("GameCorrectionsNotify")
            local Struggle = CE:WaitForChild("Struggle")
            
            flyingResetConnection = GameNotify.OnClientEvent:Connect(function(Type)
                if flyingResetActive and Type == "Flying" then
                    Struggle:FireServer(P)
                    local character = P.Character
                    if character then
                        local humanoid = character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            humanoid.Health = 0
                        end
                    end
                end
            end)
        else
            if flyingResetConnection then
                flyingResetConnection:Disconnect()
                flyingResetConnection = nil
            end
        end
    end
})

-- Break PCLD Button
LD:AddButton({
    Text = "Break PCLD",
    Func = function()
        local storedJoints = {}
        local root
        local conn
        
        local function breakPCLD()
            local char = P.Character
            if not char then return end
            root = char:WaitForChild("HumanoidRootPart")
            
            for _, v in ipairs(char:GetDescendants()) do
                if v:IsA("Motor6D") then
                    storedJoints[v] = v.Part0
                    v.Part0 = nil
                end
            end
            
            root.CFrame = CFrame.new(-272.2197265625, -7.350403785705566, 475.0108947753906)
            
            conn = R.RenderStepped:Connect(function()
                root.AssemblyLinearVelocity = Vector3.zero
                root.AssemblyAngularVelocity = Vector3.zero
            end)
        end
        
        local function restore()
            if conn then conn:Disconnect() conn = nil end
            for m, p0 in pairs(storedJoints) do
                if m and m.Parent then
                    m.Part0 = p0
                end
            end
            storedJoints = {}
        end
        
        breakPCLD()
        task.wait(0.12)
        restore()
    end,
    DoubleClick = false
})

-- Platform TP
local platformTPActive = false
local platformTPKey = Enum.KeyCode.X
local platformTPConnection = nil
local platformPart = nil

local function PlatformTPFunction()
    if platformTPConnection then
        platformTPConnection:Disconnect()
        platformTPConnection = nil
    end
    
    platformTPConnection = UIS.InputBegan:Connect(function(input, processed)
        if not processed and input.KeyCode == platformTPKey and platformTPActive then
            local char = P.Character
            if char then
                local hrp = char:FindFirstChild("HumanoidRootPart")
                if hrp then
                    if not platformPart then
                        platformPart = Instance.new("Part")
                        platformPart.Size = Vector3.new(10, 1, 10)
                        platformPart.Anchored = true
                        platformPart.Transparency = 0.5
                        platformPart.Material = Enum.Material.Neon
                        platformPart.BrickColor = BrickColor.new("Bright blue")
                        platformPart.Parent = WS
                    end
                    platformPart.CFrame = hrp.CFrame * CFrame.new(0, -3, 0)
                end
            end
        end
    end)
end

LD:AddToggle("PlatformTPToggle", {
    Text = "Platform TP",
    Default = false,
    Callback = function(Value)
        platformTPActive = Value
        if Value then
            PlatformTPFunction()
        else
            if platformTPConnection then
                platformTPConnection:Disconnect()
                platformTPConnection = nil
            end
            if platformPart then
                platformPart:Destroy()
                platformPart = nil
            end
        end
    end
})

LD:AddLabel("Platform TP Key"):AddKeyPicker("PlatformTPKey", {
    Default = "X",
    Mode = "Press",
    Text = "Platform TP Key",
    NoUI = false,
    ChangedCallback = function(NewKey)
        platformTPKey = NewKey
    end
})
local LC=Tabs.LocalPlayer:AddRightGroupbox("Character","user")
local LS=Tabs.LocalPlayer:AddRightGroupbox("Settings","settings")
local LI=Tabs.LocalPlayer:AddRightGroupbox("Info","info")

local aSC=nil LD:AddToggle("AntiGrab",{Text="Anti-Grab",Default=false,Callback=function(V)local St=CE and CE:FindFirstChild("Struggle")if V then if aSC then aSC:Disconnect()end aSC=R.Heartbeat:Connect(function()local c=P.Character if c and c:FindFirstChild("Head")and c.Head:FindFirstChild("PartOwner")then task.spawn(function()if St then St:FireServer(P)end pcall(function()RS.GameCorrectionEvents.StopAllVelocity:FireServer()end)for _,p in pairs(c:GetChildren())do if p:IsA("BasePart")then p.Anchored=true end end local ih=P:FindFirstChild("IsHeld")while ih and ih.Value do task.wait()end for _,p in pairs(c:GetChildren())do if p:IsA("BasePart")then p.Anchored=false end end end)end end)else if aSC then aSC:Disconnect()aSC=nil end local c=P.Character if c then for _,p in pairs(c:GetChildren())do if p:IsA("BasePart")then p.Anchored=false end end end end end})

local antiBananaSitActive = false
local antiBananaSitTask = nil

local function SafeDestroy(obj)
    if obj and obj.Parent then
        pcall(function()
            obj:Destroy()
        end)
    end
end

local function IsBananaSeat(seat)
    return seat and seat:IsA("Seat") and seat.Parent and seat.Parent.Name == "FoodBanana"
end

local function AntiBananaSitFunction()
    while antiBananaSitActive do
        local char = P.Character
        local hum = char and char:FindFirstChildOfClass("Humanoid")
        if hum then
            local seat = hum.SeatPart
            if IsBananaSeat(seat) then
                pcall(function()
                    hum.Sit = false
                    task.wait(0)
                    SafeDestroy(seat.Parent)
                end)
            end
            for _, obj in ipairs(WS:GetDescendants()) do
                if obj:IsA("Model") and obj.Name == "FoodBanana" then
                    SafeDestroy(obj)
                end
            end
        end
        task.wait(0.2)
    end
end

LD:AddToggle("AntiBananaSitToggle", {
    Text = "Anti Banana Sit",
    Default = false,
    Callback = function(Value)
        antiBananaSitActive = Value
        if Value then
            if antiBananaSitTask then
                task.cancel(antiBananaSitTask)
                antiBananaSitTask = nil
            end
            antiBananaSitTask = task.spawn(AntiBananaSitFunction)
        else
            if antiBananaSitTask then
                task.cancel(antiBananaSitTask)
                antiBananaSitTask = nil
            end
        end
    end
})

-- ANTI RAGDOLL (BETA) - VISIBLE ATTACHMENT (NO CLIPPING)
-- ВСТАВЬ ПОСЛЕ Anti-Grab TOGGLE

local antiRagdollBeta=false
local antiRagdollConnections={}
local savedMotors={}
local attachmentWelds={}

LD:AddToggle("AntiRagdollBeta",{Text="Anti Ragdoll (Beta)",Default=false,Callback=function(on)
    antiRagdollBeta=on
    
    if on then
        local char=P.Character
        if not char then
            Tog.AntiRagdollBeta:SetValue(false)
            ntf("Error","No character!",3)
            return
        end
        
        local hum=char:FindFirstChildOfClass("Humanoid")
        if not hum then
            Tog.AntiRagdollBeta:SetValue(false)
            return
        end
        
        local animator=hum:FindFirstChildOfClass("Animator")
        local isR15 = hum.RigType == Enum.HumanoidRigType.R15
        local mainTorso = char:FindFirstChild("UpperTorso") or char:FindFirstChild("Torso")
        
        if not mainTorso then
            Tog.AntiRagdollBeta:SetValue(false)
            return
        end
        
        -- ════════════════════════════════════════════════════════════
        -- УДАЛЯЕМ СКРИПТЫ АНИМАЦИЙ
        -- ════════════════════════════════════════════════════════════
        pcall(function()
            local animate=char:FindFirstChild("Animate")
            if animate then 
                animate:Destroy()
            end
        end)
        
        -- ОСТАНАВЛИВАЕМ АНИМАЦИИ
        if animator then
            for _,track in pairs(animator:GetPlayingAnimationTracks())do
                pcall(function()track:Stop(0)end)
            end
        end
        
        -- ════════════════════════════════════════════════════════════
        -- СОХРАНЯЕМ И УДАЛЯЕМ MOTOR6D
        -- ════════════════════════════════════════════════════════════
        for _,obj in pairs(char:GetDescendants())do
            if obj:IsA("Motor6D") then
                table.insert(savedMotors, {
                    name=obj.Name,
                    parent=obj.Parent,
                    part0=obj.Part0,
                    part1=obj.Part1,
                    c0=obj.C0,
                    c1=obj.C1
                })
                obj:Destroy()
            end
        end
        
        -- ════════════════════════════════════════════════════════════
        -- СОЗДАЁМ WELD БЕЗ MASSLESS (ВИДНО ВСЕМ)
        -- ════════════════════════════════════════════════════════════
        local function createVisibleWeld(part, offset, keepCollision)
            if not part or part == mainTorso then return end
            
            local weld = Instance.new("Weld")
            weld.Name = "VisibleAttach_" .. part.Name
            weld.Part0 = mainTorso
            weld.Part1 = part
            weld.C0 = offset
            weld.C1 = CFrame.new()
            weld.Parent = mainTorso
            
            table.insert(attachmentWelds, weld)
            
            -- НЕ ТРОГАЕМ ФИЗИКУ (чтобы было видно всем)
            part.Anchored = false
            part.Massless = false -- ОСТАВЛЯЕМ МАССУ
            part.CanCollide = keepCollision or false -- ноги/торс с коллизией
        end
        
        -- ════════════════════════════════════════════════════════════
        -- R6 ОФФСЕТЫ
        -- ════════════════════════════════════════════════════════════
        if not isR15 then
            local parts = {
                {name="Head", offset=CFrame.new(0, 1.5, 0), collision=false},
                {name="Left Arm", offset=CFrame.new(-1.5, 0.5, 0), collision=false},
                {name="Right Arm", offset=CFrame.new(1.5, 0.5, 0), collision=false},
                {name="Left Leg", offset=CFrame.new(-0.5, -1, 0), collision=true}, -- коллизия для ног
                {name="Right Leg", offset=CFrame.new(0.5, -1, 0), collision=true}
            }
            
            for _, data in pairs(parts) do
                local part = char:FindFirstChild(data.name)
                if part then
                    createVisibleWeld(part, data.offset, data.collision)
                end
            end
        else
            -- ════════════════════════════════════════════════════════════
            -- R15 ОФФСЕТЫ
            -- ════════════════════════════════════════════════════════════
            local parts = {
                -- ГОЛОВА
                {name="Head", offset=CFrame.new(0, 1, 0), collision=false},
                
                -- НИЖНИЙ ТОРС
                {name="LowerTorso", offset=CFrame.new(0, -0.75, 0), collision=true},
                
                -- ПРАВАЯ РУКА
                {name="RightUpperArm", offset=CFrame.new(1.25, 0.5, 0), collision=false},
                {name="RightLowerArm", offset=CFrame.new(1.25, 0, 0), collision=false},
                {name="RightHand", offset=CFrame.new(1.25, -0.5, 0), collision=false},
                
                -- ЛЕВАЯ РУКА
                {name="LeftUpperArm", offset=CFrame.new(-1.25, 0.5, 0), collision=false},
                {name="LeftLowerArm", offset=CFrame.new(-1.25, 0, 0), collision=false},
                {name="LeftHand", offset=CFrame.new(-1.25, -0.5, 0), collision=false},
                
                -- ПРАВАЯ НОГА (коллизия на стопе)
                {name="RightUpperLeg", offset=CFrame.new(0.5, -1, 0), collision=false},
                {name="RightLowerLeg", offset=CFrame.new(0.5, -1.5, 0), collision=false},
                {name="RightFoot", offset=CFrame.new(0.5, -2, 0), collision=true},
                
                -- ЛЕВАЯ НОГА (коллизия на стопе)
                {name="LeftUpperLeg", offset=CFrame.new(-0.5, -1, 0), collision=false},
                {name="LeftLowerLeg", offset=CFrame.new(-0.5, -1.5, 0), collision=false},
                {name="LeftFoot", offset=CFrame.new(-0.5, -2, 0), collision=true}
            }
            
            for _, data in pairs(parts) do
                local part = char:FindFirstChild(data.name)
                if part then
                    createVisibleWeld(part, data.offset, data.collision)
                end
            end
        end
        
        -- ════════════════════════════════════════════════════════════
        -- БЛОКИРУЕМ АНИМАЦИИ
        -- ════════════════════════════════════════════════════════════
        if animator then
            animator.LoadAnimation = function(self, anim)
                return {
                    Play=function()end,
                    Stop=function()end,
                    AdjustSpeed=function()end,
                    IsPlaying=false,
                    Destroy=function()end
                }
            end
            
            table.insert(antiRagdollConnections, animator.AnimationPlayed:Connect(function(track)
                if antiRagdollBeta then
                    task.spawn(function()track:Stop(0)end)
                end
            end))
        end
        
        -- ════════════════════════════════════════════════════════════
        -- МОНИТОРИНГ
        -- ════════════════════════════════════════════════════════════
        table.insert(antiRagdollConnections, R.Heartbeat:Connect(function()
            if not antiRagdollBeta then return end
            
            char = P.Character
            if not char then return end
            
            hum = char:FindFirstChildOfClass("Humanoid")
            if not hum then return end
            
            animator = hum:FindFirstChildOfClass("Animator")
            
            -- Останавливаем анимации
            if animator then
                for _, track in pairs(animator:GetPlayingAnimationTracks()) do
                    pcall(function() track:Stop(0) end)
                end
            end
            
            -- Блокируем состояния
            pcall(function()
                local state = hum:GetState()
                if state == Enum.HumanoidStateType.Ragdoll or 
                   state == Enum.HumanoidStateType.FallingDown or
                   state == Enum.HumanoidStateType.Physics then
                    hum:ChangeState(Enum.HumanoidStateType.Running)
                end
                
                hum.PlatformStand = false
                hum.Sit = false
            end)
            
            -- Удаляем новые моторы
            for _, obj in pairs(char:GetDescendants()) do
                if obj:IsA("Motor6D") then
                    obj:Destroy()
                end
            end
        end))
        
        -- ДЕТЕКТОР НОВЫХ ОБЪЕКТОВ
        table.insert(antiRagdollConnections, char.DescendantAdded:Connect(function(obj)
            if not antiRagdollBeta then return end
            
            if obj.Name == "Animate" then
                task.wait()
                obj:Destroy()
            end
            
            if obj:IsA("AnimationTrack") then
                task.wait()
                obj:Stop(0)
            end
            
            if obj:IsA("Motor6D") then
                task.wait()
                obj:Destroy()
            end
        end))
        
        -- ДЕТЕКТОРЫ СВОЙСТВ
        table.insert(antiRagdollConnections, hum:GetPropertyChangedSignal("PlatformStand"):Connect(function()
            if antiRagdollBeta and hum.PlatformStand then
                hum.PlatformStand = false
            end
        end))
        
        table.insert(antiRagdollConnections, hum:GetPropertyChangedSignal("Sit"):Connect(function()
            if antiRagdollBeta and hum.Sit then
                hum.Sit = false
            end
        end))
        
        table.insert(antiRagdollConnections, hum.StateChanged:Connect(function(old, new)
            if not antiRagdollBeta then return end
            
            if new == Enum.HumanoidStateType.Ragdoll or 
               new == Enum.HumanoidStateType.FallingDown or
               new == Enum.HumanoidStateType.Physics then
                hum:ChangeState(Enum.HumanoidStateType.Running)
            end
        end))
        
        ntf("Anti Ragdoll Beta", "VISIBLE MODE! All can see - no clipping", 5)
    else
        -- ВЫКЛЮЧЕНИЕ
        for _, conn in pairs(antiRagdollConnections) do
            pcall(function() conn:Disconnect() end)
        end
        antiRagdollConnections = {}
        
        -- Удаляем welds
        for _, weld in pairs(attachmentWelds) do
            pcall(function() weld:Destroy() end)
        end
        attachmentWelds = {}
        
        local char = P.Character
        if char then
            -- Восстанавливаем моторы
            for _, data in pairs(savedMotors) do
                if data.part0 and data.part0.Parent and data.part1 and data.part1.Parent then
                    local motor = Instance.new("Motor6D")
                    motor.Name = data.name
                    motor.Part0 = data.part0
                    motor.Part1 = data.part1
                    motor.C0 = data.c0
                    motor.C1 = data.c1
                    motor.Parent = data.parent
                end
            end
            savedMotors = {}
            
            -- Восстанавливаем Animate
            pcall(function()
                local success, animate = pcall(function()
                    return game:GetService("Players").LocalPlayer.CharacterAppearanceConfiguration.Animate:Clone()
                end)
                if success and animate then
                    animate.Parent = char
                end
            end)
        end
        
        ntf("Anti Ragdoll Beta", "Restored to normal", 2)
    end
end})
local aRst=false LD:AddToggle("AutoReset",{Text="Auto-Reset",Default=true,Callback=function(on)aRst=on if on then task.spawn(function()while aRst do local hm=P.Character and P.Character:FindFirstChild("Humanoid")if hm and hm.Health>0 then hm.Health=0 end task.wait(0.5)end end)end end})

local ToyListAIL={["Coconut"]="FoodCoconut",["Banana"]="FoodBanana",["Fries"]="FoodFrenchFries",["MeatStick"]="FoodMeatStick",["Poop"]="PoopPile",["Donut"]="FoodDonut",["Cake"]="FoodCakePink",["Burger"]="FoodHamburger",["Pizza"]="FoodPizzaCheese",["Hotdog"]="FoodHotdog",["Mushroom"]="FoodMushroomPoison",["Banjo"]="InstrumentGuitarBanjo",["Violin"]="InstrumentGuitarViolin",["Ukulele"]="InstrumentGuitarUkulele",["Sax"]="InstrumentWoodwindSaxophone",["Vuvuzela"]="InstrumentBrassVuvuzela",["Bongos"]="InstrumentDrumBongos",["Mic"]="InstrumentVoiceMicrophone",["Pepperoni"]="FoodPizzaPepperoni",["Piano"]="InstrumentPianoMelodica",["Bread"]="FoodBread",["Egg"]="FoodDippyEgg",["Mayo"]="FoodMayonnaise",["WhiteMug"]="CupMugWhite",["Ocarina"]="InstrumentWoodwindOcarina",["SparklePoop"]="PoopPileSparkle",["BrownMug"]="CupMugBrown",["Trumpet"]="InstrumentBrassTrumpet",["Snare"]="InstrumentDrumSnare"}
local DVAIL={} for s in pairs(ToyListAIL) do table.insert(DVAIL,s) end table.sort(DVAIL)
local SelToyAIL=ToyListAIL[DVAIL[1]]
LS:AddDropdown("AntiInputType",{Text="Anti-Input Item",Values=DVAIL,Default=1,Callback=function(V)SelToyAIL=ToyListAIL[V]end})
LS:AddSlider("AILHeight",{Text="Input Height",Min=1,Max=1000,Default=10,Rounding=0,Suffix=" studs",Callback=function(V)_G.AILHeight=V end})
LS:AddButton({Text="Destroy Input Item",Func=function()
local folder=WS:FindFirstChild(P.Name.."SpawnedInToys")
if folder then
for _,obj in pairs(folder:GetChildren())do
if obj.Name==SelToyAIL then
pcall(function()RS.MenuToys.DestroyToy:FireServer(obj)end)
end
end
end
ntf("Input","Item destroyed!",2)
end})
-- ANTI-INPUT LAG V2 - 10 THREADS × 30 MILLION SPEED
LD:AddToggle("AntiInputLag",{Text="Anti-Input Lag V2 [10 Threads]",Default=false,Callback=function(V)
_G.AIL=V
if V then
    task.spawn(function()
        local SR=RS.MenuToys.SpawnToyRemoteFunction
        local c=P.Character
        if not c then ntf("Error","No character!",3)_G.AIL=false return end
        local h=c:FindFirstChild("HumanoidRootPart")
        if not h then ntf("Error","No HRP!",3)_G.AIL=false return end
        
        -- СПАВНИМ ИГРУШКУ
        pcall(function()SR:InvokeServer(SelToyAIL,h.CFrame*CFrame.new(0,5,0),Vector3.zero)end)
        task.wait(0.3)
        
        local toyFolder=WS:FindFirstChild(P.Name.."SpawnedInToys")
        local spawnedToy=toyFolder and toyFolder:FindFirstChild(SelToyAIL)
        
        if not spawnedToy then
            ntf("Error","Spawn failed!",3)
            _G.AIL=false
            return
        end
        
        local hp=spawnedToy:FindFirstChild("HoldPart")
        if not hp then _G.AIL=false return end
        
        ntf("Anti-Input V2","10 THREADS STARTED! 30M speed each",5)
        
        -- ═══════════════════════════════════════════════════════════
        -- 10 ПАРАЛЛЕЛЬНЫХ ПОТОКОВ ХВАТАНИЯ
        -- ═══════════════════════════════════════════════════════════
        local threads={}
        
        for threadID=1,10 do
            threads[threadID]=task.spawn(function()
                local isGrabbing=false
                local rate=30000000 -- 30 миллионов операций/сек
                local delay=0 -- МАКСИМАЛЬНАЯ СКОРОСТЬ (task.wait минимум ~0.03)
                local delay=0 -- МАКСИМАЛЬНАЯ СКОРОСТЬ (task.wait минимум ~0.03)
                local delay=0 -- МАКСИМАЛЬНАЯ СКОРОСТЬ (task.wait минимум ~0.03)
                local delay=0 -- МАКСИМАЛЬНАЯ СКОРОСТЬ (task.wait минимум ~0.03)
                local delay=0 -- МАКСИМАЛЬНАЯ СКОРОСТЬ (task.wait минимум ~0.03)
                local delay=0 -- МАКСИМАЛЬНАЯ СКОРОСТЬ (task.wait минимум ~0.03)
                local delay=0 -- МАКСИМАЛЬНАЯ СКОРОСТЬ (task.wait минимум ~0.03)
                local delay=0 -- МАКСИМАЛЬНАЯ СКОРОСТЬ (task.wait минимум ~0.03)
                local delay=0 -- МАКСИМАЛЬНАЯ СКОРОСТЬ (task.wait минимум ~0.03)
                local delay=0 -- МАКСИМАЛЬНАЯ СКОРОСТЬ (task.wait минимум ~0.03)
                local delay=0 -- МАКСИМАЛЬНАЯ СКОРОСТЬ (task.wait минимум ~0.03)
                local delay=0 -- МАКСИМАЛЬНАЯ СКОРОСТЬ (task.wait минимум ~0.03)
                local delay=0 -- МАКСИМАЛЬНАЯ СКОРОСТЬ (task.wait минимум ~0.03)
                
                while _G.AIL do
                    local char=P.Character
                    local hrp=char and char:FindFirstChild("HumanoidRootPart")
                    local height=_G.AILHeight or 10
                    
                    if not hrp or not spawnedToy or not spawnedToy.Parent then 
                        break 
                    end
                    
                    -- GRAB PHASE
                    if not isGrabbing then
                        pcall(function()
                            hp.HoldItemRemoteFunction:InvokeServer(spawnedToy,char)
                        end)
                        isGrabbing=true
                        task.wait(delay) -- 0 = максимальная скорость
                    end
                    
                    -- DROP PHASE
                    if isGrabbing then
                        local dropPos=hrp.CFrame*CFrame.new(0,height,0)
                        pcall(function()
                            hp.DropItemRemoteFunction:InvokeServer(spawnedToy,dropPos,Vector3.zero)
                        end)
                        isGrabbing=false
                        task.wait(delay) -- 0 = максимальная скорость
                    end
                end
                
                print("✅ Thread "..threadID.." stopped")
            end)
        end
        
        -- ОЖИДАНИЕ ОСТАНОВКИ ВСЕХ ПОТОКОВ
        while _G.AIL do
            task.wait(0.5)
        end
        
        -- ОСТАНОВКА ВСЕХ ПОТОКОВ
        for _,thread in pairs(threads)do
            pcall(function()task.cancel(thread)end)
        end
        
        -- УДАЛЕНИЕ ИГРУШКИ
        if spawnedToy and spawnedToy.Parent then
            pcall(function()RS.MenuToys.DestroyToy:FireServer(spawnedToy)end)
        end
        
        ntf("Anti-Input V2","All 10 threads stopped",3)
    end)
else
    -- При выключении все потоки автоматически остановятся
end
end})


local ppB,pC={},{} local function delPaint()for _,o in ipairs(WS:GetDescendants())do if o:IsA("BasePart")and o.Name=="PaintPlayerPart"then local c=o:Clone()c.Archivable=true ppB[o:GetDebugId()]={clone=c,parent=o.Parent}o:Destroy()end end end local function resPaint()for _,d in pairs(ppB)do if d.clone and d.parent then d.clone.Parent=d.parent end end ppB={}end local function watchPaint()table.insert(pC,WS.DescendantAdded:Connect(function(o)if o:IsA("BasePart")and o.Name=="PaintPlayerPart"then task.defer(function()if o and o.Parent then local c=o:Clone()c.Archivable=true ppB[o:GetDebugId()]={clone=c,parent=o.Parent}o:Destroy()end end)end end))end local function unwatchPaint()for _,c in ipairs(pC)do if c.Connected then c:Disconnect()end end pC={}end local function setTQ(s)local ch=WS:FindFirstChild(P.Name)if not ch then return end for _,v in ipairs(ch:GetChildren())do if v:IsA("BasePart")then v.CanTouch=s v.CanQuery=s end end end
LD:AddToggle("AntiPaint",{Text="Anti-Paint",Default=false,Callback=function(s)if s then delPaint()watchPaint()setTQ(false)else resPaint()unwatchPaint()setTQ(true)end end})

-- Blobmen / Gucci (replaced with Ragalic's implementation)
local aGA = false
local grabMonitorConn = nil
local lastGrabTick = 0
local antiGucciConnection = nil
local antiGucciConnectionTrain = nil
local safePosT = nil
local restoreFrames = 0

local function spawnBlobman()
    local args = { [1] = "CreatureBlobman", [2] = CFrame.new(0, 5000000, 0), [3] = Vector3.new(0, 60, 0) }
    pcall(function()
        RS.MenuToys.SpawnToyRemoteFunction:InvokeServer(unpack(args))
    end)
    local folder = WS:WaitForChild(P.Name .. "SpawnedInToys", 5)
    if folder and folder:FindFirstChild("CreatureBlobman") then
        local blob = folder.CreatureBlobman
        if blob:FindFirstChild("Head") then
            blob.Head.CFrame = CFrame.new(0, 50000, 0)
            blob.Head.Anchored = true
        end
        ntf("Success", "Blobman Spawned!", 3)
    end
end

local antiGucciConnectionBlob = nil
local safePositionBlob = nil
local restoreFramesBlob = 0
local function startAntiGucci()
    local character = P.Character or P.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local rootPart = character:WaitForChild("HumanoidRootPart")
    safePositionBlob = rootPart.Position
    local folder = WS:FindFirstChild(P.Name .. "SpawnedInToys")
    local blob = folder and folder:FindFirstChild("CreatureBlobman")
    local seat = blob and blob:FindFirstChild("VehicleSeat")
    if not blob then
        spawnBlobman()
        task.wait(1)
        folder = WS:FindFirstChild(P.Name .. "SpawnedInToys")
        blob = folder and folder:FindFirstChild("CreatureBlobman")
        seat = blob and blob:FindFirstChild("VehicleSeat")
    end
    if seat and seat:IsA("VehicleSeat") then
        rootPart.CFrame = seat.CFrame + Vector3.new(0, 2, 0)
        seat:Sit(humanoid)
    end
    humanoid:GetPropertyChangedSignal("Jump"):Connect(function()
        if humanoid.Jump and humanoid.Sit then
            restoreFramesBlob = 15
            safePositionBlob = rootPart.Position
        end
    end)
    if antiGucciConnectionBlob then
        antiGucciConnectionBlob:Disconnect()
    end
    antiGucciConnectionBlob = R.Heartbeat:Connect(function()
        if not rootPart or not humanoid then return end
        RS.CharacterEvents.RagdollRemote:FireServer(rootPart, 0)
        if restoreFramesBlob > 0 then
            rootPart.CFrame = CFrame.new(safePositionBlob)
            restoreFramesBlob = restoreFramesBlob - 1
        end
    end)
    task.spawn(function()
        while humanoid.Sit do task.wait(1) end
        task.wait(0.5)
        rootPart.CFrame = CFrame.new(safePositionBlob)
    end)
    return true
end

local function stopAntiGucci()
    if antiGucciConnectionBlob then
        antiGucciConnectionBlob:Disconnect()
        antiGucciConnectionBlob = nil
    end
    -- Do not destroy the spawned Blobman; just stop the behavior and leave the toy intact
    -- This avoids unexpected removal/breaking of the Blobman instance
end

local function startAntiGucciTrain()
    local ch = P.Character or P.CharacterAdded:Wait()
    local humanoid = ch:WaitForChild("Humanoid")
    local rp = ch:WaitForChild("HumanoidRootPart")
    safePosT = rp.Position
    local folder = WS.Map and WS.Map.AlwaysHereTweenedObjects
    local train = folder and folder:FindFirstChild("Train")
    local seat = nil
    if train then
        for _, d in ipairs(train:GetDescendants()) do
            if d:IsA("Seat") then seat = d break end
        end
    end
    if seat then
        rp.CFrame = seat.CFrame + Vector3.new(0, 2, 0)
        seat:Sit(humanoid)
    end
    humanoid:GetPropertyChangedSignal("Jump"):Connect(function()
        if humanoid.Jump and humanoid.Sit then
            restoreFrames = 15
            safePosT = rp.Position
        end
    end)
    if antiGucciConnectionTrain then
        antiGucciConnectionTrain:Disconnect()
    end
    antiGucciConnectionTrain = R.Heartbeat:Connect(function()
        if not rp or not humanoid then return end
        RS.CharacterEvents.RagdollRemote:FireServer(rp, 0)
        if restoreFrames > 0 then
            rp.CFrame = CFrame.new(safePosT)
            restoreFrames = restoreFrames - 1
        end
    end)
    task.spawn(function()
        while humanoid.Sit do task.wait(1) end
        task.wait(0.5)
        rp.CFrame = CFrame.new(safePosT)
    end)
    return true
end

local function stopAntiGucciTrain()
    if antiGucciConnectionTrain then
        antiGucciConnectionTrain:Disconnect()
        antiGucciConnectionTrain = nil
    end
    local trainFolder = WS.Map and WS.Map.AlwaysHereTweenedObjects
    if trainFolder and trainFolder:FindFirstChild("Train") then
        -- Do not BreakJoints on the player when stopping train-mode Gucci; leave character intact
    end
end

LD:AddToggle("Gucci",{Text="Gucci",Default=false,Callback=function(V)
    if V then
        if Opt and Opt.GucciType and Opt.GucciType.Value == "Blobman" then
            startAntiGucci()
        else
            startAntiGucciTrain()
        end
    else
        if Opt and Opt.GucciType and Opt.GucciType.Value == "Blobman" then
            stopAntiGucci()
        else
            stopAntiGucciTrain()
        end
    end
end})
LD:AddToggle("AutoGucci",{Text="Auto Gucci",Default=false,Callback=function(V)
    aGA = V
    if V then
        local started = false
        if Opt and Opt.GucciType and Opt.GucciType.Value == "Blobman" then
            started = startAntiGucci()
        else
            started = startAntiGucciTrain()
        end
        if not started then ntf("Error","Cant start Gucci!",3) aGA=false Tog.AutoGucci:SetValue(false) return end
        local deathConn = nil
        local function monitorDeath()
            local ch = P.Character
            local hm = ch and ch:FindFirstChildOfClass("Humanoid")
            if hm then
                if deathConn then deathConn:Disconnect() end
                deathConn = hm.Died:Connect(function()
                    if not aGA then return end
                    ntf("Auto Gucci","Respawning...",2)
                    local newChar = P.CharacterAdded:Wait()
                    task.wait(0.5)
                    if aGA then
                        if Opt and Opt.GucciType and Opt.GucciType.Value == "Blobman" then
                            if startAntiGucci() then ntf("Auto Gucci","Re-seated!",2) monitorDeath() end
                        else
                            if startAntiGucciTrain() then ntf("Auto Gucci","Re-seated!",2) monitorDeath() end
                        end
                    end
                end)
            end
        end
        monitorDeath()
        P.CharacterAdded:Connect(function(newChar)
            if aGA then
                task.wait(0.5)
                if Opt and Opt.GucciType and Opt.GucciType.Value == "Blobman" then
                    if startAntiGucci() then ntf("Auto Gucci","Re-seated!",2) monitorDeath() end
                else
                    if startAntiGucciTrain() then ntf("Auto Gucci","Re-seated!",2) monitorDeath() end
                end
            end
        end)
-- Monitor grabs: when a GrabParts model appears that references our character, reapply Gucci
        if grabMonitorConn then grabMonitorConn:Disconnect() grabMonitorConn = nil end
        grabMonitorConn = WS.ChildAdded:Connect(function(ob)
            if not aGA then return end
            if not ob or not ob.Parent then return end
            if ob:IsA("Model") and ob.Name == "GrabParts" then
                local gp = ob:FindFirstChild("GrabPart")
                if gp then
                    local wc = gp:FindFirstChild("WeldConstraint")
                    local p1 = wc and wc.Part1
                    if p1 and p1.Parent == P.Character then
                        local now = tick()
                        if now - lastGrabTick > 0.5 then
                            lastGrabTick = now
                            if Opt and Opt.GucciType and Opt.GucciType.Value == "Blobman" then
                                startAntiGucci()
                            else
                                startAntiGucciTrain()
                            end
                            ntf("Auto Gucci","Applied (grab)",2)
                        end
                    end
                end
            end
        end)
    else
        aGA = false
        if grabMonitorConn then grabMonitorConn:Disconnect() grabMonitorConn = nil end
        if Opt and Opt.GucciType and Opt.GucciType.Value == "Blobman" then
            stopAntiGucci()
        else
            stopAntiGucciTrain()
        end
    end
end})

local antiLoopKillConn=nil
LD:AddToggle("AntiLoopKill",{Text="Anti-Loop Kill",Default=false,Callback=function(V)
if antiLoopKillConn then antiLoopKillConn:Disconnect()antiLoopKillConn=nil end
if V then
local SAFE_COORD=CFrame.new(614.2,124.3,-106.1)
antiLoopKillConn=P.CharacterAdded:Connect(function(char)
if not Tog.AntiLoopKill.Value then return end
task.wait(0.15)
local hrp=char:WaitForChild("HumanoidRootPart",5)
if hrp then
hrp.CFrame=SAFE_COORD
hrp.AssemblyLinearVelocity=Vector3.zero
hrp.AssemblyAngularVelocity=Vector3.zero
ntf("Anti Loop Kill","Teleported to safe zone!",2)
end
end)
end
end})

LD:AddToggle("AntiKick",{Text="Anti-Kick(flash)",Default=false,Callback=function(V)
_G.SAK=V
local function CK()
local inv=WS:FindFirstChild(P.Name.."SpawnedInToys")
local dr=RS:FindFirstChild("MenuToys")and RS.MenuToys:FindFirstChild("DestroyToy")
if inv and dr then
for _,v in pairs(inv:GetChildren())do
if v.Name=="AntiKick"or v.Name=="NinjaShuriken"then
pcall(function()dr:FireServer(v)end)
end
end
end
end
if V then
task.spawn(function()
local so=RS.GrabEvents.SetNetworkOwner
local se2=RS.PlayerEvents.StickyPartEvent
local sr=RS.MenuToys.SpawnToyRemoteFunction
local cs=P:WaitForChild("CanSpawnToy")
local function gH()
return P.Character and P.Character:FindFirstChild("HumanoidRootPart")or P.CharacterAdded:Wait():WaitForChild("HumanoidRootPart")
end
local function SK(k)
if not k or not k:FindFirstChild("StickyPart")then return end
local ch=gH()if not ch then return end
if k:FindFirstChild("SoundPart")then
if not k.SoundPart:FindFirstChild("PartOwner")or k.SoundPart.PartOwner.Value~=P.Name then
so:FireServer(k.SoundPart,k.SoundPart.CFrame)
end
end
local fp=ch:FindFirstChild("FirePlayerPart")or ch:WaitForChild("FirePlayerPart",5)
if fp then
se2:FireServer(k.StickyPart,fp,CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(90),math.rad(90)))
end
for _,o in pairs(k:GetChildren())do
if o.Name=="Pyramid"then
o.CanTouch=false o.CanCollide=false o.CanQuery=false o.Transparency=0
if not o:FindFirstChild("Highlight")then
local h=Instance.new("Highlight",o)h.FillColor=Color3.fromRGB(0,0,0)
end
elseif o.Name=="Main"then
o.CanTouch=false o.CanCollide=false o.CanQuery=false o.Transparency=0
if not o:FindFirstChild("Highlight")then
local h=Instance.new("Highlight",o)h.FillColor=Color3.fromRGB(255,255,255)
end
elseif o:IsA("BasePart")then
o.CanTouch=false o.CanCollide=false o.CanQuery=false o.Transparency=1
end
end
end
local function ST(n)
local t=tick()
while not cs.Value do
if not _G.SAK or tick()-t>5 then return nil end
task.wait(0.1)
end
local ch=gH()
if ch then
task.spawn(function()
pcall(function()sr:InvokeServer(n,ch.CFrame*CFrame.new(0,12,20),Vector3.new(0,0,0))end)
end)
end
local inv2=WS:FindFirstChild(P.Name.."SpawnedInToys")
if inv2 then return inv2:WaitForChild(n,2)end
return nil
end
while _G.SAK do
task.wait(0.005)
if not P.Character or not P.Character:FindFirstChild("Humanoid")or P.Character.Humanoid.Health<=0 then continue end
local inv=WS:FindFirstChild(P.Name.."SpawnedInToys")
local k=inv and inv:FindFirstChild("NinjaShuriken")
if not k then
k=ST("NinjaShuriken")
if k==nil then continue end
k.Name="AntiKick"
if not k then continue end
end
repeat
if k and k:FindFirstChild("StickyPart")and k.StickyPart.CanTouch==true then
SK(k)
k.Name="AntiKick"
end
task.wait(0.3)
until not k or not _G.SAK or not k:FindFirstChild("StickyPart")or k.StickyPart.CanTouch==false or not P.Character or not P.Character:FindFirstChild("HumanoidRootPart")or(P.Character.HumanoidRootPart.Position-k.StickyPart.Position).Magnitude>=20
if not k or not k:FindFirstChild("StickyPart")or not P.Character or not P.Character:FindFirstChild("HumanoidRootPart")or(P.Character.HumanoidRootPart.Position-k.StickyPart.Position).Magnitude>=20 then
CK()
end
end
end)
else
_G.SAK=false
CK()
end
end})
local ownershipKillActive = false
local function stopOwnershipKill()
    ownershipKillActive = false
end

local function startOwnershipKill()
    ownershipKillActive = true
    task.spawn(function()
        local GE = RS:FindFirstChild("GrabEvents")
        local setOwner = GE and GE:FindFirstChild("SetNetworkOwner")
        local createLine = GE and GE:FindFirstChild("CreateGrabLine")
        local destroyLine = GE and GE:FindFirstChild("DestroyGrabLine")

        if not (setOwner and createLine and destroyLine) then
            ntf("Ownership Kill", "Missing grab remotes", 3)
            ownershipKillActive = false
            return
        end

        while ownershipKillActive do
            local char = P.Character
            local hrp = char and char:FindFirstChild("HumanoidRootPart")
            local targetPlayer = selKP
            local targetChar = targetPlayer and targetPlayer.Character
            local targetRoot = targetChar and targetChar:FindFirstChild("HumanoidRootPart")

            if hrp and targetRoot and targetRoot.Parent then
                pcall(function()
                    setOwner:FireServer(targetRoot, targetRoot.CFrame)
                end)
                pcall(function()
                    createLine:FireServer(targetRoot, Vector3.zero, targetRoot.Position, false)
                end)
                task.wait(0.01)
                pcall(function()
                    destroyLine:FireServer(targetRoot)
                end)
            else
                task.wait(0.05)
            end

            task.wait(0.015)
        end
    end)
end

LD:AddToggle("OwnershipKill", {Text = "Ownership Kill", Default = false, Callback = function(V)
    if V then
        startOwnershipKill()
        ntf("Ownership Kill", "Activated", 2)
    else
        stopOwnershipKill()
        ntf("Ownership Kill", "Disabled", 2)
    end
end})

local antiKickKunaiActive=false
local function hasKunaiStuck()
local char=P.Character
if not char then return false end
for _,part in pairs(char:GetDescendants())do
if part:IsA("BasePart")then
local sticky=part:FindFirstChild("StickyWeld")
if sticky and sticky.Part1 and sticky.Part1.Name=="StickyPart"then
return true
end
end
end
return false
end

local function clearOldKunai()
local folder=WS:FindFirstChild(P.Name.."SpawnedInToys")
if folder then
for _,obj in pairs(folder:GetChildren())do
if obj.Name=="NinjaKunai"or obj.Name=="AntiKickKunai"then
pcall(function()RS.MenuToys.DestroyToy:FireServer(obj)end)
end
end
end
end

local function spawnAndStickKunai()
local char=P.Character or P.CharacterAdded:Wait()
local hrp=char:WaitForChild("HumanoidRootPart")
local rightLeg=char:FindFirstChild("Right Leg")or char:FindFirstChild("RightLowerLeg")or char:FindFirstChild("RightFoot")
if not rightLeg then return end
local SR=RS.MenuToys.SpawnToyRemoteFunction
local SN=RS.GrabEvents.SetNetworkOwner
local SE=RS.PlayerEvents.StickyPartEvent
pcall(function()SR:InvokeServer("NinjaKunai",hrp.CFrame*CFrame.new(0,10,0),Vector3.zero)end)
task.wait(0.3)
local folder=WS:FindFirstChild(P.Name.."SpawnedInToys")
if not folder then return end
local kunai=folder:FindFirstChild("NinjaKunai")
if not kunai then return end
kunai.Name="AntiKickKunai"
local stickyPart=kunai:FindFirstChild("StickyPart")
local soundPart=kunai:FindFirstChild("SoundPart")
if not stickyPart then return end
if soundPart then
pcall(function()SN:FireServer(soundPart,soundPart.CFrame)end)
end
pcall(function()SE:FireServer(stickyPart,rightLeg,CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(90),math.rad(90)))end)
task.wait(0.2)
for _,obj in pairs(kunai:GetChildren())do
if obj.Name=="Pyramid"then
obj.CanTouch=false obj.CanCollide=false obj.CanQuery=false obj.Transparency=0
if not obj:FindFirstChild("Highlight")then
local h=Instance.new("Highlight",obj)h.FillColor=Color3.fromRGB(0,0,0)
end
elseif obj.Name=="Main"then
obj.CanTouch=false obj.CanCollide=false obj.CanQuery=false obj.Transparency=0
if not obj:FindFirstChild("Highlight")then
local h=Instance.new("Highlight",obj)h.FillColor=Color3.fromRGB(255,255,255)
end
elseif obj:IsA("BasePart")then
obj.CanTouch=false obj.CanCollide=false obj.CanQuery=false obj.Transparency=1
end
end
end
LD:AddToggle("ShurikenAntiKick",{Text="Anti Kick(Normal)",Default=false,Callback=function(V)_G.SAK=V local function CK()local inv=WS:FindFirstChild(P.Name.."SpawnedInToys")local dr=RS:FindFirstChild("MenuToys")and RS.MenuToys:FindFirstChild("DestroyToy")if inv and dr then for _,v in pairs(inv:GetChildren())do if v.Name=="AntiKick"or v.Name=="NinjaShuriken"then pcall(function()dr:FireServer(v)end)end end end end if V then task.spawn(function()local so=RS.GrabEvents.SetNetworkOwner local se2=RS.PlayerEvents.StickyPartEvent local sr=RS.MenuToys.SpawnToyRemoteFunction local cs=P:WaitForChild("CanSpawnToy")local function gH()return P.Character and P.Character:FindFirstChild("HumanoidRootPart")or P.CharacterAdded:Wait():WaitForChild("HumanoidRootPart")end local function CHF()if not WS.PlotItems.PlayersInPlots:FindFirstChild(P.Name)then return false end for _,v in pairs(WS.Plots:GetChildren())do local sign=v:FindFirstChild("PlotSign")local owners=sign and sign:FindFirstChild("ThisPlotsOwners")if owners then for _,b in pairs(owners:GetChildren())do if b.Value==P.Name then local folder=WS.PlotItems:FindFirstChild(v.Name)if folder then return true,folder end end end end end return false end local function SK(k)if not k or not k:FindFirstChild("StickyPart")then return end local ch=gH()if not ch then return end if k:FindFirstChild("SoundPart")then if not k.SoundPart:FindFirstChild("PartOwner")or k.SoundPart.PartOwner.Value~=P.Name then so:FireServer(k.SoundPart,k.SoundPart.CFrame)end end local fp=ch:FindFirstChild("FirePlayerPart")or ch:WaitForChild("FirePlayerPart",5)if fp then se2:FireServer(k.StickyPart,fp,CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(90),math.rad(90)))end for _,o in pairs(k:GetChildren())do if o.Name=="Pyramid"then o.CanTouch=false o.CanCollide=false o.CanQuery=false o.Transparency=0 if not o:FindFirstChild("Highlight")then local h=Instance.new("Highlight",o)h.FillColor=Color3.fromRGB(0,0,0)end elseif o.Name=="Main"then o.CanTouch=false o.CanCollide=false o.CanQuery=false o.Transparency=0 if not o:FindFirstChild("Highlight")then local h=Instance.new("Highlight",o)h.FillColor=Color3.fromRGB(255,255,255)end elseif o:IsA("BasePart")then o.CanTouch=false o.CanCollide=false o.CanQuery=false o.Transparency=1 end end end local function ST(n)local t=tick()while not cs.Value do if not _G.SAK or tick()-t>5 then return nil end task.wait(0.1)end local ch=gH()if ch then task.spawn(function()pcall(function()sr:InvokeServer(n,ch.CFrame*CFrame.new(0,12,20),Vector3.new(0,0,0))end)end)end local inv2=WS:FindFirstChild(P.Name.."SpawnedInToys")if(not WS.PlotItems.PlayersInPlots:FindFirstChild(P.Name))and inv2 then return inv2:WaitForChild(n,2)end local b,h=CHF()if b and h then return h:WaitForChild(n,2)end return nil end while _G.SAK do task.wait(0.005)if not P.Character or not P.Character:FindFirstChild("Humanoid")or P.Character.Humanoid.Health<=0 then continue end local inv=WS:FindFirstChild(P.Name.."SpawnedInToys")local k=inv and inv:FindFirstChild("NinjaShuriken")if WS.PlotItems.PlayersInPlots:FindFirstChild(P.Name)then local b,h=CHF()if b and h and WS.Plots:FindFirstChild(h.Name)then local s=WS.Plots[h.Name]:FindFirstChild("PlotSign")if s and s.ThisPlotsOwners.Value.TimeRemainingNum.Value>89 then k=ST("NinjaShuriken")if k==nil then continue end k.Name="AntiKick"SK(k)end end end if not k then if WS.PlotItems.PlayersInPlots:FindFirstChild(P.Name)then continue end k=ST("NinjaShuriken")if k==nil then continue end k.Name="AntiKick"if not k then continue end end repeat if k and k:FindFirstChild("StickyPart")and k.StickyPart.CanTouch==true then SK(k)k.Name="AntiKick"end task.wait(0.3)until not k or not _G.SAK or not k:FindFirstChild("StickyPart")or k.StickyPart.CanTouch==false or not P.Character or not P.Character:FindFirstChild("HumanoidRootPart")or not k:FindFirstChild("StickyPart")or(P.Character.HumanoidRootPart.Position-k.StickyPart.Position).Magnitude>=20 if not k or not k:FindFirstChild("StickyPart")or not P.Character or not P.Character:FindFirstChild("HumanoidRootPart")or(P.Character.HumanoidRootPart.Position-k.StickyPart.Position).Magnitude>=20 then CK()end pcall(function()repeat task.wait(0.05)until not _G.SAK or not P.Character or not P.Character:FindFirstChild("Humanoid")or not k or not k:FindFirstChild("StickyPart")or not k.StickyPart:FindFirstChild("StickyWeld")or not k.StickyPart.StickyWeld.Part1 if not k or not k:FindFirstChild("StickyPart")or(P.Character and P.Character:FindFirstChild("Humanoid")and P.Character.Humanoid.Health<=0)or not k["StickyPart"]:FindFirstChild("StickyWeld").Part1 then CK()end end)end end)else _G.SAK=false CK()end end})
LD:AddToggle("AntiKickV2",{Text="Anti-Kick V2 (Kunai)",Default=false,Callback=function(V)
antiKickKunaiActive=V
if V then
clearOldKunai()
task.wait(0.2)
task.spawn(function()
while antiKickKunaiActive do
if not hasKunaiStuck()then
clearOldKunai()
task.wait(0.3)
spawnAndStickKunai()
ntf("Anti Kick V2","Kunai re-stuck!",2)
end
task.wait(0.5)
end
end)
ntf("Anti Kick V2","Protection activated!",3)
else
clearOldKunai()
ntf("Anti Kick V2","Protection disabled!",2)
end
end})

LD:AddToggle("AntiRagdoll",{Text="Anti-Ragdoll(TEST)",Default=false,Callback=function(V)_G.ARag2=V if V then task.spawn(function()while _G.ARag2 do local hm=P.Character and P.Character:FindFirstChildOfClass("Humanoid")if hm and hm:GetState()==Enum.HumanoidStateType.Ragdoll then hm:ChangeState(Enum.HumanoidStateType.Running)end task.wait(0.1)end end)end end})

local startPos = nil
local loopTpActive = false

LD:AddToggle("LoopTp",{Text="Loop Tp",Default=false,Callback=function(V)
    local c=P.Character or P.CharacterAdded:Wait()
    local h=c:WaitForChild("HumanoidRootPart")
    local hm=c:FindFirstChildOfClass("Humanoid")
    
    if V then
        startPos = h.CFrame
        loopTpActive = true
        
        if hm then hm.PlatformStand=true end
        
        task.spawn(function()
            while loopTpActive and h do
                h.CFrame=CFrame.new(
                    math.random(-500,500),
                    math.random(30,480),
                    math.random(-500,500)
                )
                task.wait(0.03)
            end
        end)
        
        ntf("Loop TP","Started! Start pos saved",3)
    else
        loopTpActive = false
        task.wait(0.1)
        
        if hm then hm.PlatformStand=false end
        
        if startPos and h then
            h.CFrame = startPos
            ntf("Loop TP","Returned to start position!",3)
        end
        
        startPos = nil
    end
end})

local hBC=nil LD:AddToggle("AntiBurn",{Text="Anti-Burn",Default=false,Callback=function(on)if on then local ch=P.Character local hum=ch:WaitForChild("Humanoid")local h=ch:WaitForChild("HumanoidRootPart")ch.PrimaryPart=h if hBC then hBC:Disconnect()end hBC=hum.FireDebounce.Changed:Connect(function(ib)if ib then local old=h.CFrame local pb=WS.Plots.Plot2.Barrier:FindFirstChild("PlotBarrier")if pb then ch:SetPrimaryPartCFrame(pb.CFrame*CFrame.new(0,6,0))task.wait(0.3)local fp=ch:FindFirstChild("FirePlayerPart",true)if fp then for _,o in ipairs(fp:GetChildren())do if o:IsA("Sound")then o:Stop()end if o:IsA("Light")or o:IsA("ParticleEmitter")then o.Enabled=false end end if fp:FindFirstChild("CanBurn")then fp.CanBurn.Value=false end if hum:FindFirstChild("FireDebounce")then hum.FireDebounce.Value=false end end task.wait(0.6)if ch and ch.PrimaryPart then ch:SetPrimaryPartCFrame(old)end end end end)elseif hBC then hBC:Disconnect()end end})

local aB1=false LD:AddToggle("AntiBlobman",{Text="Anti-Blobman",Default=false,Callback=function(on)aB1=on if on then WS.DescendantAdded:Connect(function(t)if t.Name=="CreatureBlobman"and aB1 then pcall(function()t.LeftDetector:Destroy()t.RightDetector:Destroy()end)end end)end end})

LD:AddButton({Text="Delete Legs",Func=function()local c=P.Character if not c then return end for _,n in ipairs({"Left Leg","Right Leg","Left Arm","Right Arm"})do local p=c:FindFirstChild(n)if p then p:Destroy()end end end})

LD:AddToggle("AntiBanana",{Text="Anti-Banana(TEST)",Default=false,Callback=function(V)_G.AntiBan=V if V then task.spawn(function()while _G.AntiBan do for _,o in ipairs(WS:GetDescendants())do if o.Name=="FoodBanana"and o:IsA("Model")then pcall(function()o:Destroy()end)end end task.wait(0.5)end end)end end})

LD:AddToggle("AntiFling",{Text="Anti-Fling(buggy)",Default=false,Callback=function(V)_G.AFL=V if V then task.spawn(function()while _G.AFL do local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if h then local v=h.AssemblyLinearVelocity if v.Magnitude>150 then h.AssemblyLinearVelocity=Vector3.zero end end task.wait()end end)end end})

local cGLC,eGLC local gf=RS:FindFirstChild("GrabEvents")if gf then if gf:FindFirstChild("CreateGrabLine")then cGLC=gf.CreateGrabLine:Clone()end if gf:FindFirstChild("ExtendGrabLine")then eGLC=gf.ExtendGrabLine:Clone()end end

local cGLC,eGLC
local gf=RS:FindFirstChild("GrabEvents")
if gf then
if gf:FindFirstChild("CreateGrabLine")then cGLC=gf.CreateGrabLine:Clone()end
if gf:FindFirstChild("ExtendGrabLine")then eGLC=gf.ExtendGrabLine:Clone()end
end


LD:AddToggle("AntiLagSCT1",{Text="Anti-Lag",Default=false,Callback=function(V)local ps=P:FindFirstChild("PlayerScripts")and P.PlayerScripts:FindFirstChild("CharacterAndBeamMove")if ps then ps.Disabled=V end end})

LD:AddToggle("AntiSticky",{Text="Anti-Sticky",Default=false,Callback=function(V)if P.PlayerScripts:FindFirstChild("StickyPartsTouchDetection")then P.PlayerScripts.StickyPartsTouchDetection.Disabled=V end end})

local aEx=false LD:AddToggle("AntiExplode",{Text="Anti-Explode",Default=false,Callback=function(on)aEx=on if on then local ch=P.Character if not ch then return end local h=ch:WaitForChild("HumanoidRootPart")WS.ChildAdded:Connect(function(m)if m.Name=="Part"and aEx and(m.Position-h.Position).Magnitude<=20 then h.Anchored=true wait(0.01)h.Anchored=false end end)end end})

local aVC=nil LD:AddToggle("AntiVoid",{Text="Anti-Void",Default=false,Callback=function(on)if on then if aVC then aVC:Disconnect()end aVC=R.Heartbeat:Connect(function()local c=P.Character if c and c.PrimaryPart and c.PrimaryPart.Position.Y<-50 then c:SetPrimaryPartCFrame(CFrame.new(c.PrimaryPart.Position+Vector3.new(0,100,0)))c.PrimaryPart.AssemblyLinearVelocity=Vector3.zero end end)elseif aVC then aVC:Disconnect()aVC=nil end end})
-- ═══════════════════════════════════════════════════════════
-- AUTO ATTACKER (COUNTER-ATTACK)
-- ═══════════════════════════════════════════════════════════
local AAG=Tabs.LocalPlayer:AddLeftGroupbox("Counter-Attack","shield")

local autoAttackerEnabled=false
local counterMode="Repulsion"
local autoAttackerTask=nil

local function applyCounterEffect(targetHRP,targetHum)
if not targetHRP or not targetHRP.Parent then return end
pcall(function()
if counterMode=="Repulsion"then
local myHRP=P.Character and P.Character:FindFirstChild("HumanoidRootPart")
if not myHRP then return end
local dir=(targetHRP.Position-myHRP.Position).Unit
local bv=Instance.new("BodyVelocity")
bv.MaxForce=Vector3.new(1e8,1e8,1e8)
bv.Velocity=dir*150
bv.Parent=targetHRP
Deb:AddItem(bv,0.5)
elseif counterMode=="Freeze"then
SNO:FireServer(targetHRP,targetHRP.CFrame)
targetHRP.Anchored=true
task.delay(2,function()
if targetHRP and targetHRP.Parent then
targetHRP.Anchored=false
end
end)
elseif counterMode=="Death"then
SNO:FireServer(targetHRP,targetHRP.CFrame)
local bv=Instance.new("BodyVelocity")
bv.MaxForce=Vector3.new(1e8,1e8,1e8)
bv.Velocity=Vector3.new(0,5000,0)
bv.Parent=targetHRP
Deb:AddItem(bv,0.5)
DGL:FireServer(targetHRP)
if targetHum then
targetHum:ChangeState(Enum.HumanoidStateType.Dead)
end
elseif counterMode=="Kick"then
local bp=getBP()
if not bp then return end
local myHRP=P.Character and P.Character:FindFirstChild("HumanoidRootPart")
if not myHRP then return end
local savedPos=myHRP.CFrame
myHRP.CFrame=targetHRP.CFrame*CFrame.new(0,5,0)
for _=1,16 do
pcall(function()
bp.cg:FireServer(bp.rd,targetHRP,bp.rw)
if bp.ld and bp.lw then
bp.cg:FireServer(bp.ld,targetHRP,bp.lw)
end
SNO:FireServer(targetHRP,bp.br.CFrame)
end)
task.wait(0)
end
local kickPos=getKickTargetPos()
bp.br.CFrame=kickPos
local lp=kickPos*CFrame.new(0,28,0)
targetHRP.CFrame=lp
targetHRP.Velocity=Vector3.zero
pcall(function()
if targetHum then
targetHum.PlatformStand=true
targetHum.Sit=true
end
SNO:FireServer(targetHRP,lp)
local wr=bp.rd:FindFirstChild("RightWeld")or bp.rd:FindFirstChildWhichIsA("Weld")
if wr then bp.cd:FireServer(wr)end
bp.cg:FireServer(bp.rd,targetHRP,bp.rw)
if bp.ld and bp.lw then
local wl=bp.ld:FindFirstChild("LeftWeld")or bp.ld:FindFirstChildWhichIsA("Weld")
if wl then bp.cd:FireServer(wl)end
bp.cg:FireServer(bp.ld,targetHRP,bp.lw)
end
DGL:FireServer(targetHRP)
CGL:FireServer(targetHRP,Vector3.zero,targetHRP.Position,false)
end)
task.delay(0.3,function()
if myHRP and myHRP.Parent then
myHRP.CFrame=savedPos
end
end)
end
end)
end

local function isBeingGrabbedBy(player)
local myChar=P.Character
if not myChar then return false end
local head=myChar:FindFirstChild("Head")
if not head then return false end
local partOwner=head:FindFirstChild("PartOwner")
if partOwner and partOwner.Value==player.Name then
return true
end
local isHeld=P:FindFirstChild("IsHeld")
if isHeld and isHeld.Value then
local grabParts=WS:FindFirstChild("GrabParts")
if grabParts then
local gp=grabParts:FindFirstChild("GrabPart")
if gp then
local wc=gp:FindFirstChild("WeldConstraint")
if wc and wc.Part1 then
local grabber=wc.Part1.Parent
if grabber and grabber.Name==player.Name then
return true
end
end
end
end
end
return false
end

local function runAutoAttacker()
while autoAttackerEnabled do
local myChar=P.Character
local myHRP=myChar and myChar:FindFirstChild("HumanoidRootPart")
local myHum=myChar and myChar:FindFirstChildOfClass("Humanoid")
if myHRP and myHum and myHum.Health>0 then
local isHeld=P:FindFirstChild("IsHeld")
local beingGrabbed=isHeld and isHeld.Value
if beingGrabbed then
for _,pl in ipairs(PS:GetPlayers())do
if pl~=P and pl.Character then
if isBeingGrabbedBy(pl)then
local targetHRP=pl.Character:FindFirstChild("HumanoidRootPart")
local targetHum=pl.Character:FindFirstChildOfClass("Humanoid")
if targetHRP and targetHum and targetHum.Health>0 then
applyCounterEffect(targetHRP,targetHum)
ntf("Counter-Attack","Counter: "..counterMode.." → "..pl.DisplayName,3)
task.wait(0.5)
break
end
end
end
end
end
if not beingGrabbed then
local head=myChar:FindFirstChild("Head")
local partOwner=head and head:FindFirstChild("PartOwner")
if partOwner and partOwner.Value~=""then
local attacker=PS:FindFirstChild(partOwner.Value)
if attacker and attacker~=P and attacker.Character then
local targetHRP=attacker.Character:FindFirstChild("HumanoidRootPart")
local targetHum=attacker.Character:FindFirstChildOfClass("Humanoid")
if targetHRP and targetHum and targetHum.Health>0 then
applyCounterEffect(targetHRP,targetHum)
ntf("Counter-Attack","Counter: "..counterMode.." → "..attacker.DisplayName,3)
task.wait(0.5)
end
end
end
end
end
task.wait(0.05)
end
end

AAG:AddToggle("AutoAttackerToggle",{Text="Auto Attacker",Default=false,Callback=function(Value)
autoAttackerEnabled=Value
if Value then
if counterMode=="Kick"then
if not autoSitBlob()then
ntf("Auto Attacker","Kick mode needs Blobman!",3)
Tog.AutoAttackerToggle:SetValue(false)
return
end
monitorSit(function()return autoAttackerEnabled end)
end
autoAttackerTask=task.spawn(runAutoAttacker)
ntf("Auto Attacker","Started! Mode: "..counterMode,3)
else
if autoAttackerTask then
task.cancel(autoAttackerTask)
autoAttackerTask=nil
end
ntf("Auto Attacker","Stopped!",2)
end
end})

AAG:AddDropdown("CounterMode",{Text="Counter Mode",Values={"Repulsion","Freeze","Death","Kick"},Default=1,Callback=function(Value)
counterMode=Value
if autoAttackerEnabled and Value=="Kick"then
if not autoSitBlob()then
ntf("Counter Mode","Kick needs Blobman! Switching to Repulsion",3)
Opt.CounterMode:SetValue("Repulsion")
counterMode="Repulsion"
return
end
monitorSit(function()return autoAttackerEnabled end)
end
ntf("Counter Mode","Mode: "..Value,2)
end})

AAG:AddLabel("━━━━━━━━━━━━━━━━")
AAG:AddLabel("Repulsion = Push away")
AAG:AddLabel("Freeze = Anchor 2s")
AAG:AddLabel("Death = Sky velocity")
AAG:AddLabel("Kick = Blob kick (needs blob)")
--CHARACTER
LC:AddToggle("NoClip",{Text="No Clip(buggy)",Default=false,Callback=function(V)_G.sctNC=V if V then if _G.sctNCConn then _G.sctNCConn:Disconnect()end _G.sctNCConn=R.Stepped:Connect(function()if not _G.sctNC then return end local c=P.Character if c then for _,v in ipairs(c:GetDescendants())do if v:IsA("BasePart")then v.CanCollide=false end end end end)else if _G.sctNCConn then _G.sctNCConn:Disconnect()_G.sctNCConn=nil end local c=P.Character if c then for _,v in ipairs(c:GetDescendants())do if v:IsA("BasePart")then v.CanCollide=true end end end end end})

_G.WSVal,_G.JPVal=16,50
LC:AddSlider("WalkSpeed",{Text="Walk Speed",Min=0,Max=500,Default=16,Rounding=0,Callback=function(v)_G.WSVal=v end})
LC:AddSlider("JumpPower",{Text="Jump Power",Min=0,Max=500,Default=24,Rounding=0,Callback=function(v)_G.JPVal=v end})
LC:AddSlider("WalkSpeed",{Text="Walk Speed",Min=0,Max=500,Default=16,Rounding=0,Callback=function(v)
    _G.WSVal = v
    local hm = P.Character and P.Character:FindFirstChildOfClass("Humanoid")
    if hm then
        hm.WalkSpeed = v
    end
end})

LC:AddButton({Text="Reset WalkSpeed",Func=function()
    _G.WSVal = 16
    local hm = P.Character and P.Character:FindFirstChildOfClass("Humanoid")
    if hm then
        hm.WalkSpeed = 16
    end
    Opt.WalkSpeed:SetValue(16)
end})
LC:AddButton({Text="Reset WalkSpeed",Func=function()local hm=P.Character and P.Character:FindFirstChildOfClass("Humanoid")if hm then hm.WalkSpeed=16 end end})
LC:AddButton({Text="Set JumpPower",Func=function()local hm=P.Character and P.Character:FindFirstChildOfClass("Humanoid")if hm then if hm.UseJumpPower then hm.JumpPower=_G.JPVal else hm.JumpHeight=(_G.JPVal*_G.JPVal)/(2*196.2)end end end})
LC:AddButton({Text="Reset JumpPower",Func=function()local hm=P.Character and P.Character:FindFirstChildOfClass("Humanoid")if hm then if hm.UseJumpPower then hm.JumpPower=50 else hm.JumpHeight=7.2 end end end})

--SETTINGS
LS:AddDropdown("GucciType",{Text="Gucci Type",Values={"Train(Invisible)","Blobman"},Default=1})
LS:AddDropdown("AntiInputType",{Text="Anti-Input Type",Values={"FoodBanana","FoodCoconut","FoodFrenchFries","FoodMeatStick"},Default=1,Callback=function(v)_G.AILToy=v end})

--INFO
local infoH=LI:AddLabel("Health: --")
local infoWS=LI:AddLabel("WalkSpeed: --")
local infoJP=LI:AddLabel("JumpPower: --")
local infoST=LI:AddLabel("State: --")
local infoGR=LI:AddLabel("Player Who Grabbed You: --")

task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            local c = P.Character
            local hm = c and c:FindFirstChildOfClass("Humanoid")
            if hm then
                local hval = math.floor(hm.Health)
                local wsval = hm.WalkSpeed
                local jpval = hm.UseJumpPower and hm.JumpPower or string.format("%.1f", hm.JumpHeight)
                local stval = tostring(hm:GetState())

                -- update wrapper texts (for library state) without applying RichText/green color
                infoH:SetText("Health: "..hval)
                infoWS:SetText("WalkSpeed: "..wsval)
                infoJP:SetText((hm.UseJumpPower and "JumpPower: " or "JumpHeight: ")..jpval)
                infoST:SetText("State: "..stval)
            end

            local ih = P:FindFirstChild("IsHeld")
            if ih and ih.Value then
                local h = c and c:FindFirstChild("Head")
                local po = h and h:FindFirstChild("PartOwner")
                local name = (po and po.Value) or "?"
                -- set wrapper text without RichText coloring
                infoGR:SetText("Player Who Grabbed You: "..name)
            else
                infoGR:SetText("Player Who Grabbed You: --")
            end
        end)
    end
end)

--VISUAL TAB
local VL=Tabs.Visual:AddLeftGroupbox("Misc","layers")
local VR=Tabs.Visual:AddRightGroupbox("ESP","eye")
local VS=Tabs.Visual:AddRightGroupbox("Shaders","palette")

VL:AddToggle("AntiKickESP",{Text="Anti-Kick ESP",Default=false,Callback=function(V)_G.AKESP=V if V then task.spawn(function()while _G.AKESP do for _,pl in ipairs(PS:GetPlayers())do if pl~=P then local sp=WS:FindFirstChild(pl.Name.."SpawnedInToys")if sp then for _,tn in ipairs({"NinjaKunai","NinjaShuriken","AntiKick"})do local ty=sp:FindFirstChild(tn)if ty then local h=pl.Character and pl.Character:FindFirstChild("Head")if h then local bb=h:FindFirstChild("AKESPGui")or Instance.new("BillboardGui")bb.Name="AKESPGui"bb.Adornee=h bb.Size=UDim2.new(0,100,0,20)bb.StudsOffset=Vector3.new(0,3,0)bb.AlwaysOnTop=true bb.Parent=h local tl=bb:FindFirstChild("TL")or Instance.new("TextLabel",bb)tl.Name="TL"tl.Size=UDim2.new(1,0,1,0)tl.BackgroundTransparency=1 tl.Text="[AK]"tl.TextColor3=Color3.fromRGB(255,0,0)tl.TextScaled=true end end end end end end task.wait(1)end end)end end})

VL:AddSlider("Transparency",{Text="Transparency",Min=0,Max=1,Default=0.6,Rounding=1,Callback=function(v)_G.UITrans=v end})

VL:AddToggle("ViewPCID",{Text="View PCID",Default=false,Callback=function(V)if V then task.spawn(function()for _,pl in ipairs(PS:GetPlayers())do local c=pl.Character if c then for _,o in ipairs(c:GetDescendants())do if o.Name:lower():find("partesp")or o.Name:lower():find("playercharacterlocationdetector")then local h=c:FindFirstChild("Head")if h then local bb=Instance.new("BillboardGui")bb.Name="PCIDGui"bb.Adornee=h bb.Size=UDim2.new(0,120,0,20)bb.StudsOffset=Vector3.new(0,5,0)bb.AlwaysOnTop=true bb.Parent=h local tl=Instance.new("TextLabel",bb)tl.Size=UDim2.new(1,0,1,0)tl.BackgroundTransparency=1 tl.Text="PCID:"..o.Name tl.TextColor3=Color3.fromRGB(0,255,255)tl.TextScaled=true end end end end end end)else for _,pl in ipairs(PS:GetPlayers())do if pl.Character then local h=pl.Character:FindFirstChild("Head")if h then local g=h:FindFirstChild("PCIDGui")if g then g:Destroy()end end end end end end})

local espB={} VR:AddToggle("BoxESP",{Text="PCLD View",Default=false,Callback=function(V)if V then for _,o in ipairs(WS:GetDescendants())do if o:IsA("BasePart")and(o.Name:lower()=="partesp"or o.Name:lower()=="playercharacterlocationdetector")and not espB[o]then local b=Instance.new("BoxHandleAdornment")b.Adornee=o b.AlwaysOnTop=true b.ZIndex=5 b.Color3=Color3.new(1,1,1)b.Transparency=0.5 b.Size=o.Size b.Parent=CG espB[o]=b end end else for _,b in pairs(espB)do b:Destroy()end espB={}end end})

VR:AddToggle("NicknameESP",{Text="Nickname ESP",Default=false,Callback=function(V)if V then for _,pl in pairs(PS:GetPlayers())do if pl~=P and pl.Character and pl.Character:FindFirstChild("HumanoidRootPart")and not pl.Character.HumanoidRootPart:FindFirstChild("NameESP")then local bb=Instance.new("BillboardGui")bb.Name="NameESP"bb.Adornee=pl.Character.HumanoidRootPart bb.Size=UDim2.new(0,100,0,30)bb.StudsOffset=Vector3.new(0,3,0)bb.AlwaysOnTop=true bb.Parent=pl.Character.HumanoidRootPart local tl=Instance.new("TextLabel")tl.Size=UDim2.new(1,0,1,0)tl.BackgroundTransparency=1 tl.Text=pl.Name tl.TextColor3=Color3.new(1,1,1)tl.TextStrokeTransparency=0 tl.TextScaled=true tl.Parent=bb end end else for _,pl in pairs(PS:GetPlayers())do if pl.Character and pl.Character:FindFirstChild("HumanoidRootPart")then local e=pl.Character.HumanoidRootPart:FindFirstChild("NameESP")if e then e:Destroy()end end end end end})

--SHADERS (все 4 + правильное восстановление)
local dreamFX,dreamOrig=nil,nil
local dayFX,dayOrig=nil,nil
local pinkFX,pinkOrig=nil,nil
local crystFX,crystOrig=nil,nil

VS:AddToggle("DreamyNight",{Text="Dreamy Night Shader",Default=false,Callback=function(on)local L=game:GetService("Lighting")if on then dreamOrig={ClockTime=L.ClockTime,GlobalShadows=L.GlobalShadows,Brightness=L.Brightness,EnvironmentDiffuseScale=L.EnvironmentDiffuseScale,EnvironmentSpecularScale=L.EnvironmentSpecularScale,FogEnd=L.FogEnd}if dreamFX then for _,e in ipairs(dreamFX)do pcall(function()e:Destroy()end)end end dreamFX={}local function ae(c,n,p)c.Name=n for k,v in pairs(p)do c[k]=v end c.Parent=L dreamFX[#dreamFX+1]=c end ae(Instance.new("BlurEffect"),"DreamyBlur",{Size=6})ae(Instance.new("BloomEffect"),"DreamyBloom",{Intensity=1.6,Size=90,Threshold=1.4})ae(Instance.new("ColorCorrectionEffect"),"DreamyCC",{Brightness=0.15,Contrast=-0.1,Saturation=0.25,TintColor=Color3.fromRGB(210,220,255)})ae(Instance.new("SunRaysEffect"),"DreamySR",{Intensity=0.05,Spread=0.6})ae(Instance.new("Atmosphere"),"DreamyAtmo",{Density=0.45,Offset=0.1,Color=Color3.fromRGB(180,190,255),Decay=Color3.fromRGB(120,130,180),Glare=0.15,Haze=3})L.ClockTime=0.5 L.GlobalShadows=false L.Brightness=2 L.EnvironmentDiffuseScale=0.2 L.EnvironmentSpecularScale=0.1 L.FogEnd=2e5 else if dreamFX then for _,e in ipairs(dreamFX)do pcall(function()e:Destroy()end)end dreamFX=nil end for _,v in pairs(L:GetChildren())do if v.Name:find("Dreamy")then v:Destroy()end end if dreamOrig then for k,v in pairs(dreamOrig)do L[k]=v end dreamOrig=nil end end end})

VS:AddToggle("GoldenDay",{Text="Golden Day Shader",Default=false,Callback=function(on)local L=game:GetService("Lighting")if on then dayOrig={ClockTime=L.ClockTime,GlobalShadows=L.GlobalShadows,Brightness=L.Brightness,EnvironmentDiffuseScale=L.EnvironmentDiffuseScale,EnvironmentSpecularScale=L.EnvironmentSpecularScale,FogEnd=L.FogEnd}if dayFX then for _,e in ipairs(dayFX)do pcall(function()e:Destroy()end)end end dayFX={}local function ae(c,n,p)c.Name=n for k,v in pairs(p)do c[k]=v end c.Parent=L dayFX[#dayFX+1]=c end ae(Instance.new("BloomEffect"),"DayBloom",{Intensity=0.8,Size=56,Threshold=1.1})ae(Instance.new("ColorCorrectionEffect"),"DayCC",{Brightness=0.08,Contrast=0.15,Saturation=0.35,TintColor=Color3.fromRGB(255,245,220)})ae(Instance.new("SunRaysEffect"),"DaySR",{Intensity=0.25,Spread=0.8})ae(Instance.new("BlurEffect"),"DayBlur",{Size=2})ae(Instance.new("Atmosphere"),"DayAtmo",{Density=0.3,Offset=0,Color=Color3.fromRGB(255,235,180),Decay=Color3.fromRGB(255,200,120),Glare=0.4,Haze=1.5})L.ClockTime=14 L.GlobalShadows=true L.Brightness=3 L.EnvironmentDiffuseScale=1 L.EnvironmentSpecularScale=0.8 L.FogEnd=1e5 else if dayFX then for _,e in ipairs(dayFX)do pcall(function()e:Destroy()end)end dayFX=nil end for _,v in pairs(L:GetChildren())do if v.Name:find("Day")then v:Destroy()end end if dayOrig then for k,v in pairs(dayOrig)do L[k]=v end dayOrig=nil end end end})

VS:AddToggle("PinkSunset",{Text="Pink Sunset Shader",Default=false,Callback=function(on)local L=game:GetService("Lighting")if on then pinkOrig={ClockTime=L.ClockTime,GlobalShadows=L.GlobalShadows,Brightness=L.Brightness,EnvironmentDiffuseScale=L.EnvironmentDiffuseScale,EnvironmentSpecularScale=L.EnvironmentSpecularScale,FogEnd=L.FogEnd}if pinkFX then for _,e in ipairs(pinkFX)do pcall(function()e:Destroy()end)end end pinkFX={}local function ae(c,n,p)c.Name=n for k,v in pairs(p)do c[k]=v end c.Parent=L pinkFX[#pinkFX+1]=c end ae(Instance.new("BloomEffect"),"PinkBloom",{Intensity=1.2,Size=70,Threshold=1.0})ae(Instance.new("ColorCorrectionEffect"),"PinkCC",{Brightness=0.1,Contrast=0.1,Saturation=0.5,TintColor=Color3.fromRGB(255,180,200)})ae(Instance.new("SunRaysEffect"),"PinkSR",{Intensity=0.35,Spread=1})ae(Instance.new("BlurEffect"),"PinkBlur",{Size=3})ae(Instance.new("Atmosphere"),"PinkAtmo",{Density=0.35,Offset=0.05,Color=Color3.fromRGB(255,170,190),Decay=Color3.fromRGB(255,100,130),Glare=0.3,Haze=2})L.ClockTime=18.5 L.GlobalShadows=true L.Brightness=2.5 L.EnvironmentDiffuseScale=0.8 L.EnvironmentSpecularScale=0.6 L.FogEnd=8e4 else if pinkFX then for _,e in ipairs(pinkFX)do pcall(function()e:Destroy()end)end pinkFX=nil end for _,v in pairs(L:GetChildren())do if v.Name:find("Pink")then v:Destroy()end end if pinkOrig then for k,v in pairs(pinkOrig)do L[k]=v end pinkOrig=nil end end end})

VS:AddToggle("CrystalDay",{Text="Crystal Day Shader",Default=false,Callback=function(on)local L=game:GetService("Lighting")if on then crystOrig={ClockTime=L.ClockTime,GlobalShadows=L.GlobalShadows,Brightness=L.Brightness,EnvironmentDiffuseScale=L.EnvironmentDiffuseScale,EnvironmentSpecularScale=L.EnvironmentSpecularScale,FogEnd=L.FogEnd}if crystFX then for _,e in ipairs(crystFX)do pcall(function()e:Destroy()end)end end crystFX={}local function ae(c,n,p)c.Name=n for k,v in pairs(p)do c[k]=v end c.Parent=L crystFX[#crystFX+1]=c end ae(Instance.new("BloomEffect"),"CrystBloom",{Intensity=0.6,Size=40,Threshold=1.3})ae(Instance.new("ColorCorrectionEffect"),"CrystCC",{Brightness=0.05,Contrast=0.2,Saturation=0.6,TintColor=Color3.fromRGB(200,240,255)})ae(Instance.new("SunRaysEffect"),"CrystSR",{Intensity=0.2,Spread=0.5})ae(Instance.new("Atmosphere"),"CrystAtmo",{Density=0.2,Offset=0,Color=Color3.fromRGB(200,230,255),Decay=Color3.fromRGB(150,200,255),Glare=0.5,Haze=1})L.ClockTime=12 L.GlobalShadows=true L.Brightness=3.5 L.EnvironmentDiffuseScale=1.2 L.EnvironmentSpecularScale=1 L.FogEnd=2e5 else if crystFX then for _,e in ipairs(crystFX)do pcall(function()e:Destroy()end)end crystFX=nil end for _,v in pairs(L:GetChildren())do if v.Name:find("Cryst")then v:Destroy()end end if crystOrig then for k,v in pairs(crystOrig)do L[k]=v end crystOrig=nil end end end})

VS:AddButton({Text="Full Bright",Func=function()local L=game:GetService("Lighting")L.Brightness=2 L.ClockTime=14 L.FogEnd=100000 L.GlobalShadows=false L.OutdoorAmbient=Color3.fromRGB(128,128,128)ntf("Visual","Fullbright ON!",3)end})
--END PART 2/5|Пиши "продолжай"
--a:sob ULTIMATE v3.0|PART 3/5|ANIMCREATOR+SERVER+MISC+WHITELIST
--ANIM CREATOR TAB
local AC=Tabs.AnimCreator
local ATG=AC:AddLeftGroupbox("Target","crosshair")
local ASA=AC:AddRightGroupbox("Saved Anims","activity")
local parts={"Torso","Head","Left Arm","Right Arm","Left Leg","Right Leg"}
ATG:AddDropdown("AC_Target",{Text="Target",Values=gPL(),Default=1,Callback=function(V)end})
ATG:AddToggle("AC_AnimGrab",{Text="Anim Grab",Default=false})
ATG:AddLabel("Anim")
ATG:AddButton({Text="Start Record",Func=function()ntf("Anim Creator","",3)end})
ATG:AddButton({Text="Stop Record",Func=function()ntf("Anim Creator","",3)end})
ATG:AddButton({Text="Playback",Func=function()ntf("Anim Creator","",3)end})
ATG:AddToggle("AC_LoopPlayback",{Text="Loop Playback",Default=false})
ASA:AddDropdown("AC_AnimList",{Text="Anim List",Values={"---"},Default=1})
ASA:AddInput("AC_AnimName",{Text="Anim Name",Default="Anim1"})
ASA:AddButton({Text="Remove Anim",Func=function()end})
ASA:AddButton({Text="Save Anim",Func=function()end})
ASA:AddButton({Text="Load Anim",Func=function()end})
local TB=AC:AddLeftTabbox("Editor")local STab=TB:AddTab("Sliders")local TTab=TB:AddTab("Textbox")
STab:AddDropdown("AC_TargetPartsS",{Text="Target Parts",Values=parts,Default=1})
STab:AddLabel("Rotation")
STab:AddSlider("AC_RotXS",{Text="Rotation X",Min=0,Max=360,Default=0,Rounding=0})
STab:AddSlider("AC_RotYS",{Text="Rotation Y",Min=0,Max=360,Default=0,Rounding=0})
STab:AddSlider("AC_RotZS",{Text="Rotation Z",Min=0,Max=360,Default=0,Rounding=0})
STab:AddLabel("Position")
STab:AddSlider("AC_PosXS",{Text="Position X",Min=-30,Max=30,Default=0,Rounding=0})
STab:AddSlider("AC_PosYS",{Text="Position Y",Min=-30,Max=30,Default=0,Rounding=0})
STab:AddSlider("AC_PosZS",{Text="Position Z",Min=-30,Max=30,Default=-4,Rounding=0})
TTab:AddDropdown("AC_TargetPartsT",{Text="Target Parts",Values=parts,Default=1})
TTab:AddLabel("Rotation")
TTab:AddInput("AC_RotXT",{Text="X Value",Default="0"})
TTab:AddInput("AC_RotYT",{Text="Y Value",Default="0"})
TTab:AddInput("AC_RotZT",{Text="Z Value",Default="0"})
TTab:AddLabel("Position")
TTab:AddInput("AC_PosXT",{Text="X Pos Value",Default="0"})
TTab:AddInput("AC_PosYT",{Text="Y Pos Value",Default="0"})
TTab:AddInput("AC_PosZT",{Text="Z Pos Value",Default="-4"})

-- =========================
-- SERVER
-- =========================
do
	local Srv = Tabs.Server

    -- Left: Lags
    local L = Srv:AddLeftGroupbox("Lags","zap")

    -- Right: No Blobman (moved to top of right column)
    local NB = Srv:AddRightGroupbox("No Blobman","activity")
    
    NB:AddButton("Bring Server", function()
        local P = game:GetService("Players").LocalPlayer
        local PS = game:GetService("Players")
        local RS = game:GetService("ReplicatedStorage")
        local SNO = RS.GrabEvents.SetNetworkOwner
        
        local h = P.Character and P.Character:FindFirstChild("HumanoidRootPart")
        if not h then return end
        local sPos = h.Position
        
        task.spawn(function()
            for _, pl in ipairs(PS:GetPlayers()) do
                if pl ~= P and pl.Character then
                    local tr = pl.Character:FindFirstChild("HumanoidRootPart")
                    local hd = pl.Character:FindFirstChild("Head")
                    if tr and hd then
                        P.Character:PivotTo(tr.CFrame * CFrame.new(0, -6, 0))
                        local ct = 0
                        repeat
                            SNO:FireServer(tr, h.CFrame)
                            task.wait(0.15)
                            ct = ct + 1
                        until ct > 20 or (hd:FindFirstChild("PartOwner") and hd.PartOwner.Value == P.Name)
                        
                        if hd:FindFirstChild("PartOwner") and hd.PartOwner.Value == P.Name then
                            tr.CFrame = CFrame.new(sPos)
                            tr.AssemblyLinearVelocity = Vector3.zero
                            task.wait(0.8)
                        end
                    end
                end
            end
            h.CFrame = CFrame.new(sPos)
            ntf("Bring Server", "All players brought!", 5)
        end)
    end)
    
    NB:AddButton("Kill Server", function()
        local P = game:GetService("Players").LocalPlayer
        local PS = game:GetService("Players")
        local RS = game:GetService("ReplicatedStorage")
        local SNO = RS.GrabEvents.SetNetworkOwner
        local DGL = RS.GrabEvents.DestroyGrabLine
        
        local sPos = P.Character and P.Character:FindFirstChild("HumanoidRootPart") and P.Character.HumanoidRootPart.CFrame
        local Off = Vector3.new(5, -18.5, 0)
        
        for _, pl in ipairs(PS:GetPlayers()) do
            if pl ~= P and pl.Character then
                local tr = pl.Character:FindFirstChild("HumanoidRootPart")
                local th = pl.Character:FindFirstChildOfClass("Humanoid")
                local hd = pl.Character:FindFirstChild("Head")
                if tr and th and hd and th.Health > 0 then
                    pcall(function()
                        P.Character:PivotTo(CFrame.new(tr.Position + Off))
                        SNO:FireServer(tr, tr.CFrame)
                        task.wait()
                        P.Character:PivotTo(sPos)
                        task.wait(0.1)
                        DGL:FireServer(tr)
                    end)
                end
            end
        end
        ntf("Kill Server", "All players killed!", 5)
    end) 
    
    NB:AddToggle("LoopRagdollServer", { Text = "Loop Ragdoll Server", Default = false })
    NB:AddToggle("Zelebomba", { Text = "Zelebomba", Default = false })

	local linesPerSec = 100
    L:AddSlider("LinesPerSecond", {
    Text = "Lines Per Second",
    Min = 1,
    Max = 10000,
    Default = 150,
    Rounding = 0,
    Callback = function(v) linesPerSec = v end
})  
	
	L:AddToggle("LineLag", {
		Text = "Line Lag",
		Default = false,
		Callback = function(on)
			_G.LineLagActive = on
			if on then
				task.spawn(function()
					while _G.LineLagActive do
						for _ = 1, linesPerSec do
							if not _G.LineLagActive then break end
							for _, pl in ipairs(game:GetService("Players"):GetPlayers()) do
								if pl.Character and pl.Character:FindFirstChild("Torso") then
									pcall(function()
										game:GetService("ReplicatedStorage").GrabEvents.CreateGrabLine:FireServer(
											pl.Character.Torso,
											pl.Character.Torso.CFrame
										)
									end)
								end
							end
						end
						task.wait(1)
					end
				end)
			end
		end
	})

	L:AddInput("LagDelay", { Text = "Delay", Default = "1", Placeholder = "1" })

	
    local MR = Srv:AddRightGroupbox("Packets","server")

-- Packet Strength Variable
local packetStrength = 3000

-- Packet Strength Slider
MR:AddSlider("PacketStrengthSlider", { -- ИЗМЕНИЛ ИМЯ!
    Text = "Packet Strength",
    Min = 0,
    Max = 200000,
    Default = 3000,
    Rounding = 0,
    Callback = function(Value)
        packetStrength = Value
    end
})

-- Anti-Detect Packets (3 пакета в секунду)
local antiDetectActive = false
local antiDetectTask = nil
MR:AddToggle("AntiDetectPackets", {
    Text = "Anti-Detect(Packets)",
    Default = false,
    Callback = function(Value)
        antiDetectActive = Value
        if Value then
            antiDetectTask = task.spawn(function()
                local GExt = RS.GrabEvents.ExtendGrabLine
                local targetCFrame = CFrame.new(-524.1, 39.9, -167.3)
                while antiDetectActive do
                    for i = 1, 3 do
                        if not antiDetectActive then break end
                        pcall(function()
                            GExt:FireServer(
                                string.rep("x", packetStrength),
                                targetCFrame
                            )
                        end)
                    end
                    task.wait(1)
                end
            end)
        else
            if antiDetectTask then
                task.cancel(antiDetectTask)
                antiDetectTask = nil
            end
        end
    end
})

-- Packets Toggle (постоянный)
local packetsActive = false
local packetsTask = nil
MR:AddToggle("PacketsToggle", { -- ИЗМЕНИЛ ИМЯ!
    Text = "Packets",
    Default = false,
    Callback = function(Value)
        packetsActive = Value
        if Value then
            packetsTask = task.spawn(function()
                local GExt = RS.GrabEvents.ExtendGrabLine
                local targetCFrame = CFrame.new(-524.1, 39.9, -167.3)
                while packetsActive do
                    pcall(function()
                        GExt:FireServer(
                            string.rep("x", packetStrength),
                            targetCFrame
                        )
                    end)
                    task.wait()
                end
            end)
        else
            if packetsTask then
                task.cancel(packetsTask)
                packetsTask = nil
            end
        end
    end
})

-- Packet Button (1 раз)
MR:AddButton({
    Text = "Packet",
    Func = function()
        local GExt = RS.GrabEvents.ExtendGrabLine
        local targetCFrame = CFrame.new(-524.1, 39.9, -167.3)
        pcall(function()
            GExt:FireServer(
                string.rep("x", packetStrength),
                targetCFrame
            )
        end)
        ntf("Packet", "Sent 1 packet!", 2)
    end,
    DoubleClick = false
})

-- Single normal grab used to pick up items (fires one ExtendGrabLine in front)
MR:AddButton({
    Text = "Grab Item",
    Func = function()
        local GExt = RS:FindFirstChild("GrabEvents") and RS.GrabEvents:FindFirstChild("ExtendGrabLine") and RS.GrabEvents.ExtendGrabLine
        if not GExt then ntf("Grab","ExtendGrabLine missing",3) return end
        local myRoot = P.Character and P.Character:FindFirstChild("HumanoidRootPart")
        if not myRoot then ntf("Grab","No HumanoidRootPart",3) return end
        local targetPos = myRoot.Position + (myRoot.CFrame.LookVector * 3)
        local targetCFrame = CFrame.new(targetPos)
        pcall(function()
            GExt:FireServer(string.rep("x", 10), targetCFrame)
        end)
        ntf("Grab","Sent normal grab",2)
    end,
    DoubleClick = false
})

-- Second Line: fire ExtendGrabLine on mouse click (works while holding items)
local secondLineActive = false
local secondLineConn = nil
MR:AddToggle("SecondLineGrab", {
    Text = "Second Line (click to grab)",
    Default = false,
    Callback = function(on)
        secondLineActive = on
        if secondLineConn then
            secondLineConn:Disconnect()
            secondLineConn = nil
        end
        if on then
            local GExt = RS:FindFirstChild("GrabEvents") and RS.GrabEvents:FindFirstChild("ExtendGrabLine") and RS.GrabEvents.ExtendGrabLine
            if not GExt then ntf("Second Line","ExtendGrabLine missing",3) return end
            secondLineConn = Mouse.Button1Down:Connect(function()
                if not secondLineActive then return end
                local hitPos = Mouse.Hit and Mouse.Hit.p or nil
                if not hitPos then return end
                local targetCFrame = CFrame.new(hitPos)
                pcall(function()
                    GExt:FireServer(string.rep("x", 20), targetCFrame)
                end)
            end)
            ntf("Second Line","Enabled",2)
        else
            ntf("Second Line","Disabled",2)
        end
    end
})
    
-- Anti-Detect Packets (3 пакета в секунду)
local antiDetectActive = false
local antiDetectTask = nil
MR:AddToggle("AntiDetectPackets", {
    Text = "Anti-Detect(Packets)",
    Default = false,
    Callback = function(Value)
        antiDetectActive = Value
        if Value then
            antiDetectTask = task.spawn(function()
                local GExt = RS.GrabEvents.ExtendGrabLine
                local targetCFrame = CFrame.new(-524.1, 39.9, -167.3)
                while antiDetectActive do
                    for i = 1, 3 do
                        if not antiDetectActive then break end
                        pcall(function()
                            GExt:FireServer(
                                string.rep("x", packetStrength),
                                targetCFrame
                            )
                        end)
                    end
                    task.wait(1)
                end
            end)
        else
            if antiDetectTask then
                task.cancel(antiDetectTask)
                antiDetectTask = nil
            end
        end
    end
})

-- Packets Toggle (постоянный)
local packetsActive = false
local packetsTask = nil
MR:AddToggle("Packets", {
    Text = "Packets",
    Default = false,
    Callback = function(Value)
        packetsActive = Value
        if Value then
            packetsTask = task.spawn(function()
                local GExt = RS.GrabEvents.ExtendGrabLine
                local targetCFrame = CFrame.new(-524.1, 39.9, -167.3)
                while packetsActive do
                    pcall(function()
                        GExt:FireServer(
                            string.rep("x", packetStrength),
                            targetCFrame
                        )
                    end)
                    task.wait()
                end
            end)
        else
            if packetsTask then
                task.cancel(packetsTask)
                packetsTask = nil
            end
        end
    end
})
-- Left: Blobman
    local B = Srv:AddLeftGroupbox("Blobman","layers")
	
    B:AddToggle("KickAllBeta",{Text="Kick All [Beta]",Default=false,Callback=function(on)
    _G.kickAllBeta = on
    if not on then ntf("Kick All","Stopped",3) return end
    -- run sequence
    task.spawn(function()
        local centerC = CFrame.new(0,40,0)
        -- ensure blobman seated at center
        if not autoSitBlob() then
            pcall(function()
                RS.MenuToys.SpawnToyRemoteFunction:InvokeServer("CreatureBlobman", centerC, Vector3.zero)
            end)
            task.wait(1.5)
            if not autoSitBlob() then _G.kickAllBeta=false Tog.KickAllBeta:SetValue(false) ntf("Error","Cant sit!",3) return end
        end
        monitorSit(function() return _G.kickAllBeta end)
        ntf("Kick All","Started!",3)
        local kickStart = tick()
        local targets = {}
        for _,pl in ipairs(PS:GetPlayers()) do
            if pl ~= P and pl.Character then table.insert(targets, pl) end
        end
        if #targets == 0 then ntf("Kick All","No targets",3) _G.kickAllBeta=false Tog.KickAllBeta:SetValue(false) return end
        local bp = getBP()
        if not bp then ntf("Kick All","Blobman not ready",3) _G.kickAllBeta=false Tog.KickAllBeta:SetValue(false) return end
        -- circle positions
        local n = #targets
        local radius = math.max(6, n * 1.5)
        local circlePositions = {}
        for i=1,n do
            local ang = (i-1)/n * 2 * math.pi
            local pos = centerC.Position + Vector3.new(math.cos(ang)*radius, 0, math.sin(ang)*radius)
            circlePositions[i] = CFrame.new(pos + Vector3.new(0,1.5,0))
        end
        local circleRoots = {}
        for i,tg in ipairs(targets) do
            if not _G.kickAllBeta then break end
            local tc = tg.Character
            local tr = tc and tc:FindFirstChild("HumanoidRootPart")
            local th = tc and tc:FindFirstChildOfClass("Humanoid")
            if not tr or not th or th.Health <= 0 then continue end
            -- bring blobman to target and creature-grab
            bp.br.CFrame = tr.CFrame * CFrame.new(0,5,0)
            task.wait(0.12)
            pcall(function()
                th.PlatformStand = true th.Sit = true
                if bp.rd and bp.rw then pcall(function() bp.cg:FireServer(bp.rd, tr, bp.rw) end) end
                if bp.ld and bp.lw then pcall(function() bp.cg:FireServer(bp.ld, tr, bp.lw) end) end
                SNO:FireServer(tr, bp.br.CFrame)
            end)
            task.wait(0.12)
            -- move target to circle slot
            local targetC = circlePositions[i]
            pcall(function()
                SNO:FireServer(tr, targetC)
                tr.CFrame = targetC
            end)
            table.insert(circleRoots, tr)
            ntf("Grabbed", tg.DisplayName, 1)
            task.wait(0.06)
        end
        -- teleport player to center
        local myRoot = P.Character and P.Character:FindFirstChild("HumanoidRootPart")
        if myRoot then myRoot.CFrame = centerC end
        task.wait(0.25)
        -- perform two quick ExtendGrabLine hits for all circle targets
        local GExt = RS:FindFirstChild("GrabEvents") and RS.GrabEvents:FindFirstChild("ExtendGrabLine") and RS.GrabEvents.ExtendGrabLine
        if GExt then
            for rep = 1,2 do
                for _,r in ipairs(circleRoots) do
                    if r and r.Parent then pcall(function() GExt:FireServer(string.rep("x", 20), CFrame.new(r.Position)) end) end
                end
                task.wait(0.09)
            end
        end
        -- cleanup: destroy grab lines
        for _,r in ipairs(circleRoots) do if r and r.Parent then pcall(function() DGL:FireServer(r) end) end end
        -- reset blobman welds
        bp = getBP()
        if bp then pcall(function() local w1 = bp.rd:FindFirstChild("RightWeld") or bp.rd:FindFirstChildWhichIsA("Weld") if w1 then bp.cd:FireServer(w1) end if bp.ld and bp.lw then local w2 = bp.ld:FindFirstChild("LeftWeld") or bp.ld:FindFirstChildWhichIsA("Weld") if w2 then bp.cd:FireServer(w2) end end end) end
        _G.kickAllBeta = false
        pcall(function() Tog.KickAllBeta:SetValue(false) end)
        ntf("Kick All","Finished! "..string.format("%.1f",tick()-kickStart).."s",8)
    end)
    end})
	
	B:AddButton("Bring Server", function()
		local P = game:GetService("Players").LocalPlayer
		local PS = game:GetService("Players")
		local RS = game:GetService("ReplicatedStorage")
		local SNO = RS.GrabEvents.SetNetworkOwner
		local DGL = RS.GrabEvents.DestroyGrabLine
		local R = game:GetService("RunService")
		
		local h = P.Character and P.Character:FindFirstChild("HumanoidRootPart")
		if not h then return end
		local sPos = h.Position
		
		task.spawn(function()
			for _, pl in ipairs(PS:GetPlayers()) do
				if pl ~= P and pl.Character then
					local tr = pl.Character:FindFirstChild("HumanoidRootPart")
					local hd = pl.Character:FindFirstChild("Head")
					if tr and hd then
						P.Character:PivotTo(tr.CFrame * CFrame.new(0, -6, 0))
						local ct = 0
						repeat
							SNO:FireServer(tr, h.CFrame)
							task.wait(0.15)
							ct = ct + 1
						until ct > 20 or (hd:FindFirstChild("PartOwner") and hd.PartOwner.Value == P.Name)
						
						if hd:FindFirstChild("PartOwner") and hd.PartOwner.Value == P.Name then
							tr.CFrame = CFrame.new(sPos)
							tr.AssemblyLinearVelocity = Vector3.zero
							task.wait(0.8)
						end
					end
				end
			end
			h.CFrame = CFrame.new(sPos)
			ntf("Bring Server", "All players brought!", 5)
		end)
	end)
	
    B:AddToggle("AntiGrabForServer", { Text = "Anti Grab For Server", Default = false })

    -- Right: Breaker
    local Br = Srv:AddRightGroupbox("Breaker","zap")
	Br:AddLabel("Select Object")
	Br:AddDropdown("BreakerSelectObject", { Text = "", Values = { "InnerUFO" }, Default = 1 })
    Br:AddButton("Break", function() end)
end

--MISC TAB
local ML2=Tabs.Misc:AddLeftGroupbox("Misc","layers")
local MR2=Tabs.Misc:AddRightGroupbox("Fun","gamepad")
local MB=Tabs.Misc:AddLeftGroupbox("Build","build")

ML2:AddToggle("IgnoreBarriers",{Text="Ignore Barriers",Default=false,Callback=function(V)local pl2=WS:FindFirstChild("Plots")if pl2 then for _,p in ipairs(pl2:GetChildren())do local b=p:FindFirstChild("Barrier")if b then for _,o in ipairs(b:GetDescendants())do if o:IsA("BasePart")then o.CanCollide=not V end end end end end end})

local TB2={Enabled=false,Connection=nil,canGrab=true,maxDist=20,lastT=nil,lastH=0,tMD=0.1,cT=0.008,lastC=0}local rP=RaycastParams.new()rP.FilterType=Enum.RaycastFilterType.Exclude
function TB2:GetTarget()local c=P.Character if not c or not c:FindFirstChild("HumanoidRootPart")or WS:FindFirstChild("GrabParts")then return end rP.FilterDescendantsInstances={c,WS.Terrain}local r=WS:Raycast(Cam.CFrame.Position,Cam.CFrame.LookVector*1e3,rP)if not r then return end local m=r.Instance:FindFirstAncestorOfClass("Model")if not m or not m:FindFirstChildOfClass("Humanoid")or m==c then return end local hm=m:FindFirstChildOfClass("Humanoid")if hm.Health<=0 then return end local rt=m:FindFirstChild("HumanoidRootPart")if rt and(c.HumanoidRootPart.Position-rt.Position).Magnitude<=self.maxDist then return m end end
function TB2:OnHB()if not self.Enabled or not self.canGrab or UIS:GetFocusedTextBox()or tick()-self.lastC<self.cT then return end self.lastC=tick()local t=self:GetTarget()if t then self.lastT=t self.lastH=tick()elseif self.lastT and tick()-self.lastH>self.tMD then self.lastT=nil end if not self.lastT then return end local c=P.Character local rt=self.lastT:FindFirstChild("HumanoidRootPart")if not c or not c:FindFirstChild("HumanoidRootPart")or not rt or(c.HumanoidRootPart.Position-rt.Position).Magnitude>self.maxDist then self.lastT=nil return end self.canGrab=false task.spawn(function()pcall(mouse1press)local t0=tick()repeat task.wait(0.02)until not WS:FindFirstChild("GrabParts")or tick()-t0>1.6 task.wait(0.05)self.canGrab=true self.lastT=nil end)end
ML2:AddToggle("TriggerBot",{Text="Trigger Bot",Default=false,Callback=function(v)TB2.Enabled=v if v and not TB2.Connection then TB2.Connection=R.Heartbeat:Connect(function()TB2:OnHB()end)elseif not v and TB2.Connection then TB2.Connection:Disconnect()TB2.Connection=nil end end})

ML2:AddSlider("FOVSlider",{Text="FOV",Default=90,Min=1,Max=120,Rounding=0,Suffix="deg",Callback=function(v)Cam.FieldOfView=v end})

ML2:AddToggle("AntiAFK",{Text="Anti AFK",Default=false,Callback=function(V)if V then local VU=game:GetService("VirtualUser")P.Idled:Connect(function()VU:CaptureController()VU:ClickButton2(Vector2.new())end)end end})

ML2:AddButton({Text="Remove Accessories",Func=function()local c=P.Character if c then for _,a in pairs(c:GetChildren())do if a:IsA("Accessory")then a:Destroy()end end ntf("Misc","Accessories removed!",2)end end})

ML2:AddButton({Text="Boost FPS",Func=function()local L=game:GetService("Lighting")for _,v in pairs(WS:GetDescendants())do if v:IsA("BasePart")then v.Material=Enum.Material.Plastic v.Reflectance=0 v.CastShadow=false elseif v:IsA("ParticleEmitter")or v:IsA("Trail")or v:IsA("Smoke")or v:IsA("Fire")then v.Enabled=false end end L.GlobalShadows=false L.FogEnd=1e5 L.Brightness=2 ntf("FPS","Boost applied!",3)end})
--COORDINATES INFO
local CoordG=Tabs.Misc:AddRightGroupbox("Coordinates","map")
CoordG:AddButton({Text="Copy XYZ",Func=function()local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if h then local pos=h.Position setclipboard(string.format("%.2f, %.2f, %.2f",pos.X,pos.Y,pos.Z))ntf("Coordinates","Copied!",2)end end})
CoordG:AddButton({Text="Copy CFrame",Func=function()local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if h then setclipboard(string.format("CFrame.new(%.2f, %.2f, %.2f)",h.Position.X,h.Position.Y,h.Position.Z))ntf("CFrame","Copied!",2)end end})

-- Координаты через Input (они читаемые и обновляемые)
local coordDisp=CoordG:AddInput("CoordDisplay",{Text="Position",Default="X:0 Y:0 Z:0",Placeholder="coordinates here"})
local rotDisp=CoordG:AddInput("RotDisplay",{Text="Rotation",Default="X:0 Y:0 Z:0",Placeholder="rotation here"})
local speedDisp=CoordG:AddInput("SpeedDisplay",{Text="Speed",Default="0",Placeholder="speed here"})

task.spawn(function()
    while task.wait(0.1)do
        pcall(function()
            local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")
            if h then
                local pos=h.Position
                local rx,ry,rz=h.CFrame:ToOrientation()
                local spd=h.AssemblyLinearVelocity
                Opt.CoordDisplay:SetValue(string.format("X:%.1f Y:%.1f Z:%.1f",pos.X,pos.Y,pos.Z))
                Opt.RotDisplay:SetValue(string.format("X:%.0f Y:%.0f Z:%.0f",math.deg(rx),math.deg(ry),math.deg(rz)))
                Opt.SpeedDisplay:SetValue(string.format("%.1f studs/s",spd.Magnitude))
            end
        end)
    end
end)
--FUN
local animE=false local curTr=nil local selAN="Crazy"
local _FALLBACK_ANIM = "rbxassetid://507770677"
local Anims={
    Crazy="rbxassetid://248263260",
    Insane="rbxassetid://35654637",
    Collapse="rbxassetid://35154961",
    Zombie="rbxassetid://33796059",
    Dance01=_FALLBACK_ANIM,
    Dance02=_FALLBACK_ANIM,
    Dance03=_FALLBACK_ANIM,
    Dance04=_FALLBACK_ANIM,
    Dance05=_FALLBACK_ANIM,
    Dance06=_FALLBACK_ANIM,
    Dance07=_FALLBACK_ANIM,
    Dance08=_FALLBACK_ANIM,
    Dance09=_FALLBACK_ANIM,
    Dance10=_FALLBACK_ANIM,
    Groove01=_FALLBACK_ANIM,
    Groove02=_FALLBACK_ANIM,
    Groove03=_FALLBACK_ANIM,
    Funk01=_FALLBACK_ANIM,
    Funk02=_FALLBACK_ANIM,
    Robot=_FALLBACK_ANIM,
    Breakdance=_FALLBACK_ANIM,
    Moonwalk=_FALLBACK_ANIM,
    Twerk=_FALLBACK_ANIM,
    Floss=_FALLBACK_ANIM,
    Pop=_FALLBACK_ANIM,
    Lock=_FALLBACK_ANIM,
    Spin=_FALLBACK_ANIM,
    Cheer01=_FALLBACK_ANIM,
    Cheer02=_FALLBACK_ANIM,
    Laugh01=_FALLBACK_ANIM,
    Clap01=_FALLBACK_ANIM,
}
local function playA()local hm=P.Character and P.Character:FindFirstChildOfClass("Humanoid")if not hm then return end local an=hm:FindFirstChildOfClass("Animator")or Instance.new("Animator",hm)if curTr then curTr:Stop()end local a=Instance.new("Animation")a.AnimationId=Anims[selAN]curTr=an:LoadAnimation(a)curTr.Priority=Enum.AnimationPriority.Action curTr.Looped=true curTr:Play()end
MR2:AddToggle("PlayAnim",{Text="Play Animation",Default=false,Callback=function(on)animE=on if on then playA()elseif curTr then curTr:Stop()curTr=nil end end})
MR2:AddDropdown("AnimSelect",{Text="Animation",Values={"Crazy","Insane","Collapse","Zombie",
    "Dance01","Dance02","Dance03","Dance04","Dance05","Dance06","Dance07","Dance08","Dance09","Dance10",
    "Groove01","Groove02","Groove03","Funk01","Funk02","Robot","Breakdance","Moonwalk","Twerk","Floss",
    "Pop","Lock","Spin","Cheer01","Cheer02","Laugh01","Clap01"
},Default=1,Callback=function(v)selAN=v if animE then playA()end end})

local spC2=nil local spSp2=5 MR2:AddToggle("SpinFun",{Text="Spin",Default=false,Callback=function(V)if V then spC2=R.Heartbeat:Connect(function()local rt=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if rt then rt.CFrame=rt.CFrame*CFrame.Angles(0,math.rad(spSp2),0)end end)elseif spC2 then spC2:Disconnect()spC2=nil end end})
MR2:AddSlider("SpinSpeedFun",{Text="Spin Speed",Default=5,Min=1,Max=50,Rounding=0,Callback=function(V)spSp2=V end})

local fol=false MR2:AddToggle("FollowStare",{Text="Follow & Stare",Default=false,Callback=function(on)fol=on task.spawn(function()while fol do local ps2=PS:GetPlayers()local tg=ps2[math.random(#ps2)]if tg~=P and tg.Character and tg.Character:FindFirstChild("HumanoidRootPart")then P.Character.HumanoidRootPart.CFrame=CFrame.new(tg.Character.HumanoidRootPart.Position+tg.Character.HumanoidRootPart.CFrame.LookVector*-2,tg.Character.HumanoidRootPart.Position)end task.wait(0.3)end end)end})

MR2:AddToggle("FakeDeath",{Text="Fake Death",Default=false,Callback=function(on)local hm=P.Character and P.Character:FindFirstChildOfClass("Humanoid")if hm then if on then hm:ChangeState(Enum.HumanoidStateType.Physics)hm.PlatformStand=true else hm.PlatformStand=false hm:ChangeState(Enum.HumanoidStateType.GettingUp)end end end})

local fLC=nil MR2:AddToggle("FakeLag",{Text="Fake Lag",Default=false,Callback=function(on)if fLC then fLC:Disconnect()fLC=nil end if on then fLC=R.Heartbeat:Connect(function()local rt=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if rt and math.random(1,5)==1 then rt.CFrame=rt.CFrame*CFrame.new(math.random(-2,2)/10,0,math.random(-2,2)/10)end end)end end})

--BUILD
local hRun=false local hConn=nil local hToy=nil
MB:AddToggle("HeartBuild",{Text="Heart Build",Default=false,Callback=function(V)hRun=V if V then task.spawn(function()local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if not h then return end pcall(function()RS.MenuToys.SpawnToyRemoteFunction:InvokeServer("FireworkSparkler",h.CFrame*CFrame.new(0,50,0),Vector3.zero)end)local f=WS:WaitForChild(P.Name.."SpawnedInToys",5)hToy=f and f:WaitForChild("FireworkSparkler",5)if not hToy then return end local p=hToy:FindFirstChild("Handle")or hToy:FindFirstChildWhichIsA("BasePart")if not p then return end task.wait(0.2)for _,v in ipairs(hToy:GetDescendants())do if v:IsA("BasePart")then v.Anchored=false v.CanCollide=false v.Massless=true end end p:BreakJoints()local bp=Instance.new("BodyPosition")bp.MaxForce=Vector3.new(1e8,1e8,1e8)bp.P=2e4 bp.D=500 bp.Parent=p local t=0 hConn=R.Heartbeat:Connect(function(dt)if not hRun or not p or not p.Parent then if hConn then hConn:Disconnect()end if hToy then pcall(function()hToy:Destroy()end)end return end local ch=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if not ch then return end pcall(function()SNO:FireServer(p,p.CFrame)end)t=t+8*dt local sc=1.5 bp.Position=ch.CFrame:PointToWorldSpace(Vector3.new(16*math.sin(t)^3*sc,(13*math.cos(t)-5*math.cos(2*t)-2*math.cos(3*t)-math.cos(4*t))*sc+25,3))end)end)else if hConn then hConn:Disconnect()hConn=nil end if hToy then pcall(function()hToy:Destroy()end)hToy=nil end end end})

MB:AddToggle("SpiralBuild",{Text="Spiral Build",Default=false,Callback=function(V)_G.spiralRun=V if V then local spiralToys={}task.spawn(function()local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if not h then return end for i=1,9 do if not _G.spiralRun then break end pcall(function()RS.MenuToys.SpawnToyRemoteFunction:InvokeServer("FireworkSparkler",h.CFrame*CFrame.new(0,50,0),Vector3.zero)end)task.wait(0.1)end task.wait(0.5)local f=WS:FindFirstChild(P.Name.."SpawnedInToys")if f then for _,toy in ipairs(f:GetChildren())do if toy.Name=="FireworkSparkler"then local p=toy:FindFirstChild("Handle")or toy:FindFirstChildWhichIsA("BasePart")if p then table.insert(spiralToys,{toy=toy,part=p})end end end end for _,item in ipairs(spiralToys)do local p=item.part if p then for _,v in ipairs(item.toy:GetDescendants())do if v:IsA("BasePart")then v.Anchored=false v.CanCollide=false v.Massless=true end end p:BreakJoints()local bp=Instance.new("BodyPosition")bp.MaxForce=Vector3.new(1e8,1e8,1e8)bp.P=2e4 bp.D=500 bp.Parent=p end end _G.spiralConn=R.Heartbeat:Connect(function()if not _G.spiralRun then if _G.spiralConn then _G.spiralConn:Disconnect()end for _,item in ipairs(spiralToys)do if item.toy and item.toy.Parent then pcall(function()item.toy:Destroy()end)end end return end local ch=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if not ch then return end for idx,item in ipairs(spiralToys)do if item.part and item.part.Parent then local angle=(idx-1)*(360/#spiralToys)/180*math.pi local dist=9 local offset=Vector3.new(math.cos(angle)*dist,0,math.sin(angle)*dist)local bp2=item.part:FindFirstChildOfClass("BodyPosition")if bp2 then pcall(function()bp2.Position=ch.Position+offset end)end pcall(function()SNO:FireServer(item.part,item.part.CFrame)end)end end end)end)else if _G.spiralConn then _G.spiralConn:Disconnect()_G.spiralConn=nil end end end})


--TELEPORT TAB
--TELEPORT TAB
local TPL=Tabs.Teleport:AddLeftGroupbox("Teleport","compass")
local TPR=Tabs.Teleport:AddRightGroupbox("Spectate","eye")
TPL:AddButton({Text="TP to Target",Func=function()if not selKP then ntf("Error","Select target!",3)return end local tr=selKP.Character and selKP.Character:FindFirstChild("HumanoidRootPart")local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if tr and h then h.CFrame=CFrame.new(tr.Position)end end})
TPL:AddToggle("LoopTPTarget",{Text="Loop TP to Target",Default=false,Callback=function(on)_G.sctLoopTP=on if on then task.spawn(function()while _G.sctLoopTP do if selKP and selKP.Character and selKP.Character:FindFirstChild("HumanoidRootPart")then local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if h then h.CFrame=CFrame.new(selKP.Character.HumanoidRootPart.Position)end end task.wait(0.02)end end)end end})
TPL:AddButton({Text="TP to Spawn",Func=function()local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if h then h.CFrame=CFrame.new(0,10,0)end end})
local locs={["Pink House (Plot)"]=CFrame.new(-491.6,-7.4,-146.0),["Blue House (Plot)"]=CFrame.new(-491.6,-7.4,-146.0),["Red House (Plot)"]=CFrame.new(-491.6,-7.4,-146.0),["Dark House (Plot)"]=CFrame.new(-491.6,-7.4,-146.0),["Green House (Plot)"]=CFrame.new(-491.6,-7.4,-146.0),["Red House 2"]=CFrame.new(-239.0,82.8,-328.9),["Dark Green House"]=CFrame.new(-337.5,81.6,341.5),["Dark Red House"]=CFrame.new(137.4,347.2,352.0)}
local locNames={"Pink House (Plot)","Blue House (Plot)","Red House (Plot)","Dark House (Plot)","Green House (Plot)","Red House 2","Dark Green House","Dark Red House"}
local selLoc=locs["Pink House (Plot)"]
TPL:AddDropdown("TeleportLocation",{Text="Select Location",Values=locNames,Default=1,Callback=function(V)selLoc=locs[V]end})
TPL:AddButton({Text="Teleport",Func=function()local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if h and selLoc then h.CFrame=selLoc ntf("Teleport","Done!",2)end end})
TPL:AddToggle("LoopTPLoc",{Text="Loop TP",Default=false,Callback=function(on)_G.LoopTPLoc=on if on then task.spawn(function()while _G.LoopTPLoc do local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if h and selLoc then h.CFrame=selLoc end task.wait(0)end end)end end})
TPL:AddButton({Text="TP to Safe Pos",Func=function()local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if h then h.CFrame=CFrame.new(-485.60,-9.25,377.20)end end})

local specTarget=nil local specCam=nil
TPR:AddDropdown("SpecPlayer",{Values=gPL(),Default=1,Multi=false,Text="Select Player",Callback=function(V)specTarget=gPFS(V)end})
TPR:AddButton({Text="Refresh",Func=function()Opt.SpecPlayer:SetValues(gPL())end})
TPR:AddToggle("Spectate",{Text="Spectate Player",Default=false,Callback=function(on)if on then if not specTarget or not specTarget.Character then ntf("Error","Select player!",3)Tog.Spectate:SetValue(false)return end Cam.CameraSubject=specTarget.Character:FindFirstChildOfClass("Humanoid")if specCam then specCam:Disconnect()end specCam=R.Heartbeat:Connect(function()if not Tog.Spectate.Value or not specTarget or not specTarget.Character then Tog.Spectate:SetValue(false)return end Cam.CameraSubject=specTarget.Character:FindFirstChildOfClass("Humanoid")end)else if specCam then specCam:Disconnect()specCam=nil end Cam.CameraSubject=P.Character and P.Character:FindFirstChildOfClass("Humanoid")end end})

--KEYBINDS TAB
--KEYBINDS TAB
local KGL=Tabs.Keybinds:AddLeftGroupbox("Movement","arrow-up")
local KGR=Tabs.Keybinds:AddRightGroupbox("Combat","sword")
local KGL2=Tabs.Keybinds:AddLeftGroupbox("Utility","tool")
local KGR2=Tabs.Keybinds:AddRightGroupbox("Fun","gamepad")
local Mouse=P:GetMouse()
KGL:AddLabel("TP to Mouse"):AddKeyPicker("TPKeybind",{Default="X",Text="TP to Mouse",NoUI=false,Callback=function()local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if h then h.CFrame=CFrame.new(Mouse.Hit.Position+Vector3.new(0,3,0))end end})
KGL:AddLabel("Sit Blobman"):AddKeyPicker("SitBlobmanKey",{Default="Z",Text="Sit Blobman",NoUI=false,Callback=function()local c=P.Character local hm=c and c:FindFirstChildOfClass("Humanoid")local h=c and c:FindFirstChild("HumanoidRootPart")if not hm or not h or hm.SeatPart then return end local n,d=nil,50 for _,m in ipairs(WS:GetDescendants())do if m:IsA("Model")and m.Name=="CreatureBlobman"then local rt=m:FindFirstChild("HumanoidRootPart")or m.PrimaryPart if rt and(rt.Position-h.Position).Magnitude<d then d=(rt.Position-h.Position).Magnitude n=m end end end if n then local se=n:FindFirstChildWhichIsA("VehicleSeat",true)if se then h.CFrame=se.CFrame*CFrame.new(0,1.2,-1)task.wait(0.05)pcall(function()se:Sit(hm)end)end end end})
KGL:AddLabel("Speed Toggle"):AddKeyPicker("SpeedKey",{Default="RightShift",Text="Speed",NoUI=false,Callback=function()_G.WSE=not _G.WSE local hm=P.Character and P.Character:FindFirstChildOfClass("Humanoid")if hm then hm.WalkSpeed=_G.WSE and(_G.WSVal or 50)or 16 end ntf("Speed",_G.WSE and"ON"or"OFF",2)end})
KGL:AddLabel("Noclip Toggle"):AddKeyPicker("NoclipKey",{Default="N",Text="Noclip",NoUI=false,Callback=function()_G.sctNC=not _G.sctNC ntf("Noclip",_G.sctNC and"ON"or"OFF",2)end})
KGL:AddLabel("Reset Char"):AddKeyPicker("ResetKey",{Default="Delete",Text="Reset",NoUI=false,Callback=function()local c=P.Character if c then c:BreakJoints()end end})
KGR:AddLabel("Kill Aura"):AddKeyPicker("KAKey",{Default="K",Text="Kill Aura",NoUI=false,Callback=function()Tog.KillAura:SetValue(not Tog.KillAura.Value)end})
KGR:AddLabel("Anti Grab"):AddKeyPicker("AGKey",{Default="G",Text="Anti Grab",NoUI=false,Callback=function()Tog.AntiGrab:SetValue(not Tog.AntiGrab.Value)end})
KGR:AddLabel("Fling Nearest"):AddKeyPicker("FlingKey",{Default="Q",Text="Fling",NoUI=false,Callback=function()local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if h then for _,pl in ipairs(PS:GetPlayers())do if pl~=P and pl.Character then local tr=pl.Character:FindFirstChild("HumanoidRootPart")if tr and(tr.Position-h.Position).Magnitude<=20 then local bv=Instance.new("BodyVelocity")bv.MaxForce=Vector3.new(1e8,1e8,1e8)bv.Velocity=(tr.Position-h.Position).Unit*1000 bv.Parent=tr Deb:AddItem(bv,0.5)break end end end end end})
KGL2:AddLabel("Fullbright"):AddKeyPicker("FBKey",{Default="L",Text="Fullbright",NoUI=false,Callback=function()local L=game:GetService("Lighting")L.Brightness=2 L.ClockTime=14 L.FogEnd=100000 L.GlobalShadows=false ntf("Fullbright","ON",2)end})
KGL2:AddLabel("FOV+"):AddKeyPicker("FOVUpKey",{Default="Equals",Text="FOV+",NoUI=false,Callback=function()Cam.FieldOfView=math.min(Cam.FieldOfView+5,120)ntf("FOV",tostring(Cam.FieldOfView),1)end})
KGL2:AddLabel("FOV-"):AddKeyPicker("FOVDownKey",{Default="Minus",Text="FOV-",NoUI=false,Callback=function()Cam.FieldOfView=math.max(Cam.FieldOfView-5,1)ntf("FOV",tostring(Cam.FieldOfView),1)end})
KGR2:AddLabel("Spin"):AddKeyPicker("SpinKey",{Default="R",Text="Spin",NoUI=false,Callback=function()if spC2 then spC2:Disconnect()spC2=nil ntf("Spin","OFF",2)else spC2=R.Heartbeat:Connect(function()local rt=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if rt then rt.CFrame=rt.CFrame*CFrame.Angles(0,math.rad(spSp2 or 5),0)end end)ntf("Spin","ON",2)end end})
KGR2:AddLabel("Fake Death"):AddKeyPicker("FDKey",{Default="F",Text="Fake Death",NoUI=false,Callback=function()local hm=P.Character and P.Character:FindFirstChildOfClass("Humanoid")if hm then hm:ChangeState(Enum.HumanoidStateType.Physics)hm.PlatformStand=true task.delay(2,function()hm.PlatformStand=false hm:ChangeState(Enum.HumanoidStateType.GettingUp)end)end end})
KGR2:AddLabel("Dance"):AddKeyPicker("DanceKey",{Default="1",Text="Dance",NoUI=false,Callback=function()local hm=P.Character and P.Character:FindFirstChildOfClass("Humanoid")if hm then local a=Instance.new("Animation")a.AnimationId="rbxassetid://507770677"hm:LoadAnimation(a):Play()end end})
KGR2:AddLabel("Wave"):AddKeyPicker("WaveKey",{Default="2",Text="Wave",NoUI=false,Callback=function()local hm=P.Character and P.Character:FindFirstChildOfClass("Humanoid")if hm then local a=Instance.new("Animation")a.AnimationId="rbxassetid://507770239"hm:LoadAnimation(a):Play()end end})
--WHITELIST TAB
local WLL=Tabs.Whitelist:AddLeftGroupbox("Whitelist","users")
WLL:AddToggle("EnableWhitelist",{Text="Enable Whitelist",Default=false})
WLL:AddDropdown("MultiWhitelist",{Values=gPL(),Default={},Multi=true,Text="Whitelist Players"})
WLL:AddButton({Text="Refresh",Func=function()Opt.MultiWhitelist:SetValues(gPL())end})
local nA=false local nC2=nil WLL:AddToggle("JoinNotify",{Text="View PCLD(off>>on to update)",Default=false,Callback=function(on)nA=on if on then if nC2 then nC2:Disconnect()end nC2=PS.PlayerAdded:Connect(function(np)if not nA then return end local wt=Opt.MultiWhitelist.Value for ns,is in pairs(wt)do if is then local an=ns:match("%((.-)%)")if an==np.Name then ntf("Detected","[WL] "..np.Name,8)return end end end local sv=Opt.TargetPlayer and Opt.TargetPlayer.Value if sv then local sn=sv:match("%((.-)%)")if sn==np.Name then ntf("Detected","[Target] "..np.Name,8)end end end)elseif nC2 then nC2:Disconnect()nC2=nil end end})
--CMD TAB
local CMDL=Tabs.CMD:AddLeftGroupbox("Commands","terminal")
local CMDR=Tabs.CMD:AddRightGroupbox("List","list")
CMDL:AddToggle("EnableCMD",{Text="Enable CMD",Default=false,Callback=function(V)_G.CMDEnabled=V if V then ntf("CMD","Chat commands ON!",3)end end})
CMDL:AddLabel("Prefix: /")
CMDR:AddLabel("/kill + name")
CMDR:AddLabel("/kickv2 + name")
CMDR:AddLabel("/kickv3 + name")
CMDR:AddLabel("/killall")
CMDR:AddLabel("/kickall")
CMDR:AddLabel("/bringall /flingall")
CMDR:AddLabel("/fly /godmode /noclip")
CMDR:AddLabel("/speed 100")
CMDR:AddLabel("/esp /fullbright /invis")
CMDR:AddLabel("/infjump /resetchr /rejoin")
CMDR:AddLabel("/antiafk")
CMDR:AddLabel("/tp + name /bring + name")
CMDR:AddLabel("/fling + name")
CMDR:AddLabel("/code:... /cmdlist")
P.Chatted:Connect(function(m)if not _G.CMDEnabled then return end m=m:lower()local t=m.sub local function gp(s)for _,p in pairs(PS:GetPlayers())do if p~=P and(p.Name:lower():find(s)or p.DisplayName:lower():find(s))then return p end end end if m:find("/kill ")then local pl=gp(t(m,7))if pl and pl.Character then local h=pl.Character:FindFirstChildOfClass("Humanoid")if h then h.Health=0 ntf("CMD","Killed "..pl.Name,3)end end elseif m:find("/kickv2 ")then local pl=gp(t(m,9))if pl then selKP=pl Tog.LoopKickV2:SetValue(true)ntf("CMD","KickV2 "..pl.Name,3)end elseif m:find("/kickv3 ")then local pl=gp(t(m,9))if pl then selKP=pl Tog.LoopKickV3:SetValue(true)ntf("CMD","KickV3 "..pl.Name,3)end elseif m=="/killall"then for _,pl in pairs(PS:GetPlayers())do if pl~=P and pl.Character then local hr=pl.Character:FindFirstChild("HumanoidRootPart")local hm=pl.Character:FindFirstChildOfClass("Humanoid")if hr and hm and hm.Health>0 then pcall(function()SNO:FireServer(hr,hr.CFrame)task.wait(0.05)DGL:FireServer(hr)hm.Health=0 end)end end end ntf("CMD","Killed all!",3) elseif m=="/kickall"then task.spawn(function()if not autoSitBlob()then ntf("CMD","Blobman needed",3)return end local bp=getBP()if not bp then return end for _,pl in pairs(PS:GetPlayers())do if pl~=P and pl.Character then local tr=pl.Character:FindFirstChild("HumanoidRootPart")local th=pl.Character:FindFirstChild("Humanoid")if tr and th and th.Health>0 then bp.br.CFrame=tr.CFrame pcall(function()bp.cg:FireServer(bp.rd,tr,bp.rw)if bp.ld and bp.lw then bp.cg:FireServer(bp.ld,tr,bp.lw)end SNO:FireServer(tr,bp.br.CFrame)end)task.wait(0.1)bp.br.CFrame=bp.sp local lp=bp.sp*CFrame.new(0,25,0)tr.CFrame=lp pcall(function()th.PlatformStand=true th.Sit=true SNO:FireServer(tr,lp)local w=bp.rd:FindFirstChild("RightWeld")or bp.rd:FindFirstChildWhichIsA("Weld")if w then bp.cd:FireServer(w)end bp.cg:FireServer(bp.rd,tr,bp.rw)if bp.ld and bp.lw then local w2=bp.ld:FindFirstChild("LeftWeld")or bp.ld:FindFirstChildWhichIsA("Weld")if w2 then bp.cd:FireServer(w2)end bp.cg:FireServer(bp.ld,tr,bp.lw)end DGL:FireServer(tr)end)end end task.wait(0.1)end bp.br.CFrame=bp.sp ntf("CMD","Kicked all!",3)end) elseif m=="/bringall"then local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if h then for _,pl in pairs(PS:GetPlayers())do if pl~=P and pl.Character then local tr=pl.Character:FindFirstChild("HumanoidRootPart")if tr then tr.CFrame=h.CFrame end end end ntf("CMD","Brought all!",2)end elseif m=="/flingall"then local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if h then for _,pl in pairs(PS:GetPlayers())do if pl~=P and pl.Character then local tr=pl.Character:FindFirstChild("HumanoidRootPart")if tr then local bv=Instance.new("BodyVelocity")bv.MaxForce=Vector3.new(1e8,1e8,1e8)bv.Velocity=(tr.Position-h.Position).Unit*2000 bv.Parent=tr Deb:AddItem(bv,0.5)end end end ntf("CMD","Flung all!",2)end elseif m=="/fly"then Tog.ClassicFly:SetValue(not Tog.ClassicFly.Value)ntf("CMD","Fly: "..tostring(Tog.ClassicFly.Value),2) elseif m=="/godmode"then Tog.ClassicGodMode:SetValue(not Tog.ClassicGodMode.Value)ntf("CMD","God: "..tostring(Tog.ClassicGodMode.Value),2) elseif m=="/noclip"then Tog.ClassicNoclip:SetValue(not Tog.ClassicNoclip.Value)ntf("CMD","Noclip: "..tostring(Tog.ClassicNoclip.Value),2) elseif m:find("/speed ")then local spd=tonumber(t(m,8))if spd then _G.WSVal=spd local hm=P.Character and P.Character:FindFirstChildOfClass("Humanoid")if hm then hm.WalkSpeed=spd ntf("CMD","Speed: "..spd,2)end end elseif m=="/esp"then Tog.ClassicESP:SetValue(not Tog.ClassicESP.Value)ntf("CMD","ESP: "..tostring(Tog.ClassicESP.Value),2) elseif m=="/fullbright"then Tog.ClassicFullbright:SetValue(not Tog.ClassicFullbright.Value)ntf("CMD","FB: "..tostring(Tog.ClassicFullbright.Value),2) elseif m=="/invis"then Tog.ClassicInvis:SetValue(not Tog.ClassicInvis.Value)ntf("CMD","Invis: "..tostring(Tog.ClassicInvis.Value),2) elseif m=="/infjump"then Tog.ClassicInfJump:SetValue(not Tog.ClassicInfJump.Value)ntf("CMD","InfJump: "..tostring(Tog.ClassicInfJump.Value),2) elseif m=="/resetchr"then local c=P.Character if c then c:BreakJoints()ntf("CMD","Reset!",2)end elseif m=="/rejoin"then game:GetService("TeleportService"):Teleport(game.PlaceId,P) elseif m=="/antiafk"then Tog.ClassicAntiAFK:SetValue(not Tog.ClassicAntiAFK.Value)ntf("CMD","AntiAFK: "..tostring(Tog.ClassicAntiAFK.Value),2) elseif m:find("/tp ")then local pl=gp(t(m,5))if pl and pl.Character then local tr=pl.Character:FindFirstChild("HumanoidRootPart")local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if tr and h then h.CFrame=tr.CFrame ntf("CMD","TP "..pl.Name,2)end end elseif m:find("/bring ")then local pl=gp(t(m,8))local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if h and pl and pl.Character then local tr=pl.Character:FindFirstChild("HumanoidRootPart")if tr then tr.CFrame=h.CFrame ntf("CMD","Brought "..pl.Name,2)end end elseif m:find("/fling ")then local pl=gp(t(m,8))local h=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if h and pl and pl.Character then local tr=pl.Character:FindFirstChild("HumanoidRootPart")if tr then local bv=Instance.new("BodyVelocity")bv.MaxForce=Vector3.new(1e8,1e8,1e8)bv.Velocity=(tr.Position-h.Position).Unit*2000 bv.Parent=tr Deb:AddItem(bv,0.5)ntf("CMD","Flung "..pl.Name,2)end end elseif m:find("/code:")then local code=t(m,7)ntf("CMD","Code: "..code,3) elseif m=="/cmdlist"or m=="/cmds"or m=="/help"then ntf("CMD","Commands: /kill /kickv2 /kickv3 /killall /kickall /bringall /flingall /fly /godmode /noclip /speed /esp /fullbright /invis /infjump /resetchr /rejoin /antiafk /tp /bring /fling /code:",10)end end)
--END PART 3/5|Пиши "продолжай"
--a:sob ULTIMATE v3.0|PART 4/5|AURAS+MEGA ANTI+ULTRA ANTI
--AURAS (в Misc правая колонка)
local AUR=Tabs.Misc:AddRightGroupbox("Auras","sparkles")

local kaR2=12 AUR:AddSlider("KillAuraRadius",{Text="Kill Aura Radius",Min=5,Max=50,Default=12,Rounding=0,Callback=function(v)kaR2=v kaR=v end})

local dKAC=nil local dKAR=20 AUR:AddSlider("DualKickRadius",{Text="Dual Kick Aura Radius",Min=10,Max=100,Default=20,Rounding=0,Callback=function(v)dKAR=v end})
AUR:AddToggle("DualKickAura",{Text="Dual Kick Aura (Blob)",Default=false,Callback=function(on)if dKAC then dKAC:Disconnect()dKAC=nil end if not on then return end dKAC=R.Heartbeat:Connect(function()local tl=tick()local c=P.Character local hm=c and c:FindFirstChild("Humanoid")local se=hm and hm.SeatPart local rt=c and c:FindFirstChild("HumanoidRootPart")if not(se and rt)then return end local bl=se.Parent local so=bl:FindFirstChild("BlobmanSeatAndOwnerScript")local CG2=so and so:FindFirstChild("CreatureGrab")local CD2=so and so:FindFirstChild("CreatureDrop")local ld=bl:FindFirstChild("LeftDetector")local rd=bl:FindFirstChild("RightDetector")local lw=ld and ld:FindFirstChild("LeftWeld")local rw=rd and rd:FindFirstChild("RightWeld")if not(CG2 and CD2 and ld and rd and lw and rw)then return end for _,pl in ipairs(PS:GetPlayers())do if pl~=P and pl.Character then local h2=pl.Character:FindFirstChild("HumanoidRootPart")local hm2=pl.Character:FindFirstChildOfClass("Humanoid")if h2 and hm2 and hm2.Health>0 and(h2.Position-rt.Position).Magnitude<=dKAR then pcall(function()CG2:FireServer(ld,h2,lw)task.wait(0.04)CD2:FireServer(lw,h2)CG2:FireServer(rd,h2,rw)task.wait(0.04)CD2:FireServer(rw,h2)end)end end end end)end})

local kA1C=nil local kA1R=20 AUR:AddSlider("KickAura1Radius",{Text="Kick Aura Radius",Min=10,Max=100,Default=20,Rounding=0,Callback=function(v)kA1R=v end})
AUR:AddToggle("KickAura1",{Text="Kick Aura (Blob)",Default=false,Callback=function(on)if kA1C then kA1C:Disconnect()kA1C=nil end if not on then return end kA1C=R.Heartbeat:Connect(function()local c=P.Character local hm=c and c:FindFirstChild("Humanoid")local se=hm and hm.SeatPart local rt=c and c:FindFirstChild("HumanoidRootPart")if not(se and rt)then return end local bl=se.Parent local so=bl:FindFirstChild("BlobmanSeatAndOwnerScript")local CG2=so and so:FindFirstChild("CreatureGrab")local CD2=so and so:FindFirstChild("CreatureDrop")local RD=bl:FindFirstChild("RightDetector")local RW=RD and(RD:FindFirstChild("RightWeld")or RD:FindFirstChildWhichIsA("Weld"))if not(CG2 and CD2 and RD and RW)then return end for _,pl in ipairs(PS:GetPlayers())do if pl~=P and pl.Character then local tr=pl.Character:FindFirstChild("HumanoidRootPart")local th=pl.Character:FindFirstChild("Humanoid")if tr and th and th.Health>0 and(tr.Position-rt.Position).Magnitude<=kA1R then pcall(function()local w=RD:FindFirstChild("RightWeld")or RD:FindFirstChildWhichIsA("Weld")if w then CD2:FireServer(w)CG2:FireServer(RD,tr,RW)end end)end end end end)end})

local rAKC=nil local rAKR=15 AUR:AddSlider("RAKRadius",{Text="Remove AK Aura Radius",Min=5,Max=50,Default=15,Rounding=0,Callback=function(v)rAKR=v end})
AUR:AddToggle("RemoveAKAura",{Text="Remove Anti-Kick Aura",Default=false,Callback=function(on)if rAKC then rAKC:Disconnect()rAKC=nil end if not on then return end local SN2=RS.GrabEvents.SetNetworkOwner rAKC=R.Heartbeat:Connect(function()local mr=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if not mr then return end for _,tg in ipairs(PS:GetPlayers())do if tg~=P then local tr=tg.Character and tg.Character:FindFirstChild("HumanoidRootPart")if tr and(tr.Position-mr.Position).Magnitude<=rAKR then local sp=WS:FindFirstChild(tg.Name.."SpawnedInToys")if sp then for _,tn in ipairs({"NinjaKunai","NinjaShuriken","AntiKick"})do local ty=sp:FindFirstChild(tn)if ty and ty:FindFirstChild("SoundPart")then pcall(function()SN2:FireServer(ty.SoundPart,ty.SoundPart.CFrame)end)end end end end end end end)end})

AUR:AddToggle("LaunchAura",{Text="Launch Aura",Default=false,Callback=function(on)_G.LaunchA=on if on then task.spawn(function()while _G.LaunchA do pcall(function()local c=P.Character if not c or not c:FindFirstChild("HumanoidRootPart")then return end local hr=c.HumanoidRootPart for _,pl in pairs(PS:GetPlayers())do if pl~=P and pl.Character then local ts=pl.Character:FindFirstChild("Torso")if ts and(ts.Position-hr.Position).Magnitude<=25 then local bv=ts:FindFirstChild("LaunchBV")or Instance.new("BodyVelocity",ts)bv.Name="LaunchBV"bv.Velocity=Vector3.new(0,2e11,0)bv.MaxForce=Vector3.new(0,1e12,0)Deb:AddItem(bv,100)end end end end)task.wait(0.02)end end)end end})

AUR:AddToggle("DeathAura",{Text="Death Aura",Default=false,Callback=function(on)_G.DeathA=on if on then _G.DeathAConn=R.Heartbeat:Connect(function()if not _G.DeathA then return end for _,pl in ipairs(PS:GetPlayers())do if pl~=P and pl.Character then local hr=pl.Character:FindFirstChild("HumanoidRootPart")local hd=pl.Character:FindFirstChild("Head")local hm2=pl.Character:FindFirstChildOfClass("Humanoid")if hr and hd and hm2 and hm2.Health>0 then local mh=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if mh and(hr.Position-mh.Position).Magnitude<=25 then pcall(function()SNO:FireServer(hr,hr.CFrame)task.wait(0.1)DGL:FireServer(hr)if hd:FindFirstChild("PartOwner")and hd.PartOwner.Value==P.Name then for _,pt in pairs(hm2.Parent:GetChildren())do if pt:IsA("BasePart")then pt.CFrame=CFrame.new(-1e9,1e9,-1e9)end end local bv=Instance.new("BodyVelocity")bv.Velocity=Vector3.new(0,-1e7,0)bv.MaxForce=Vector3.new(9e9,9e9,9e9)bv.Parent=hr hm2:ChangeState(Enum.HumanoidStateType.Dead)task.delay(2,function()if bv and bv.Parent then bv:Destroy()end end)end end)end end end end end)else if _G.DeathAConn then _G.DeathAConn:Disconnect()end end end})

local eAuraR=32 AUR:AddSlider("EggAuraRadius",{Text="Egg Aura Radius",Min=10,Max=100,Default=32,Rounding=0,Callback=function(v)eAuraR=v end})
AUR:AddToggle("EggKillAura",{Text="Egg Kill Aura",Default=false,Callback=function(v)_G.EKA=v end})
AUR:AddToggle("EggVoidAura",{Text="Egg Void Aura",Default=false,Callback=function(v)_G.EVA=v end})
AUR:AddToggle("EggFlingAura",{Text="Egg Fling Aura",Default=false,Callback=function(v)_G.EFA2=v end})
AUR:AddToggle("EggAnchorAura",{Text="Egg Anchor Aura",Default=false,Callback=function(v)_G.EAA=v end})

--MEGA ANTI (в Misc левая доп группа)
local MAG=Tabs.Misc:AddLeftGroupbox("Mega Anti","shield")
local OBP="_SOB_BP" local OBG="_SOB_BG" local pAAE=false local pAAC={} local SPOS=CFrame.new(322.31,9.52,489.68) local pABC=nil local pLC=nil
local SANIM={"idle","walk","run","jump","fall","climb","sit","swim","tool","wave","point","dance","cheer","laugh","tilt","movedirection","land"}
local GANIM={"grab","hold","carry","punch","stun","ragdoll","knock","sleep","drag","pull","throw","slam","choke","bind","tie","capture","arrest","cuff","kill","eat","swallow","consume","caught","trapped","picked","lifted","fling","toss","crush","blob","devour","absorb"}
local function isSafe(n)local l=(n or""):lower()if l==""then return false end for _,s in ipairs(SANIM)do if l:find(s)then return true end end return false end
local function isGrab(n)local l=(n or""):lower()for _,k in ipairs(GANIM)do if l:find(k)then return true end end return false end
local function isOur(o)return o.Name==OBP or o.Name==OBG end
local function isForce(o)for _,t in ipairs({"BodyVelocity","BodyForce","BodyThrust","BodyAngularVelocity","BodyPosition","BodyGyro","LinearVelocity","VectorForce","AlignPosition","AlignOrientation","LineForce","Torque"})do if o:IsA(t)then return true end end return false end
local function SetupAB(char)if pABC then pcall(function()pABC:Disconnect()end)pABC=nil end local hum=char:WaitForChild("Humanoid",5)if not hum then return end local anim=hum:FindFirstChildOfClass("Animator")or hum:WaitForChild("Animator",3)if not anim then return end pABC=anim.AnimationPlayed:Connect(function(track)if not pAAE then return end local an=""pcall(function()an=track.Animation and track.Animation.Name or""end)if isGrab(an)or(not isSafe(an)and track.Priority==Enum.AnimationPriority.Action)or(not isSafe(an)and an=="")then pcall(function()track:Stop(0)end)task.defer(function()pcall(function()track:Stop(0)end)end)local hrp=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if hrp then hrp.CFrame=SPOS hrp.AssemblyLinearVelocity=Vector3.zero hrp.AssemblyAngularVelocity=Vector3.zero end end end)end

MAG:AddToggle("MegaAntiAll",{Text="Anti All [2026]",Default=false,Callback=function(V)pAAE=V if V then for _,cn in pairs(pAAC)do pcall(function()cn:Disconnect()end)end pAAC={}pcall(function()if P.Character then SetupAB(P.Character)pLC=P.Character end end)table.insert(pAAC,P.CharacterAdded:Connect(function(nc)if not pAAE then return end task.wait(0.3)SetupAB(nc)pLC=nc end))task.spawn(function()while pAAE do task.wait(0.15)pcall(function()local hum=P.Character and P.Character:FindFirstChildOfClass("Humanoid")if not hum then return end hum:ChangeState(Enum.HumanoidStateType.GettingUp)local anim=hum:FindFirstChildOfClass("Animator")if anim then for _,tr in pairs(anim:GetPlayingAnimationTracks())do local an=""pcall(function()an=tr.Animation and tr.Animation.Name or""end)if not isSafe(an)then tr:Stop(0)end end end hum.Sit=false hum.PlatformStand=false if P.Character~=pLC then pLC=P.Character SetupAB(P.Character)end end)end end)task.spawn(function()while pAAE do task.wait(0.3)pcall(function()local char=P.Character if not char then return end for _,v in pairs(char:GetDescendants())do if(v:IsA("Weld")or v:IsA("WeldConstraint")or v:IsA("RigidConstraint"))and v.Part0 and v.Part1 then if not v.Part0:IsDescendantOf(char)or not v.Part1:IsDescendantOf(char)then v:Destroy()end end end end)end end)local function uL()if not pAAE then return end local hrp=P.Character and P.Character:FindFirstChild("HumanoidRootPart")local hum=P.Character and P.Character:FindFirstChildOfClass("Humanoid")if not hrp then return end pcall(function()hrp.Anchored=false local bp=hrp:FindFirstChild(OBP)if not bp then bp=Instance.new("BodyPosition")bp.Name=OBP bp.MaxForce=Vector3.new(math.huge,math.huge,math.huge)bp.P=1e7 bp.D=1e5 bp.Parent=hrp end bp.Position=SPOS.Position local bg=hrp:FindFirstChild(OBG)if not bg then bg=Instance.new("BodyGyro")bg.Name=OBG bg.MaxTorque=Vector3.new(math.huge,math.huge,math.huge)bg.P=1e7 bg.Parent=hrp end bg.CFrame=SPOS for _=1,10 do hrp.CFrame=SPOS hrp.AssemblyLinearVelocity=Vector3.zero hrp.AssemblyAngularVelocity=Vector3.zero end for _,ch in pairs(hrp:GetChildren())do if isForce(ch)and not isOur(ch)then ch:Destroy()end end for _,part in pairs(P.Character:GetDescendants())do if part:IsA("BasePart")and part~=hrp then part.AssemblyLinearVelocity=Vector3.zero part.AssemblyAngularVelocity=Vector3.zero for _,ch in pairs(part:GetChildren())do if isForce(ch)and not isOur(ch)then ch:Destroy()end end end end if hum and hum.SeatPart and not hum.SeatPart:IsDescendantOf(P.Character)then hum.Jump=true hum.Sit=false end if hum then hum.PlatformStand=false hum.Sit=false hum.Health=hum.MaxHealth end for _,v in pairs(P.Character:GetDescendants())do if v:IsA("Fire")or v:IsA("Smoke")or v:IsA("Sparkles")then v:Destroy()end end hrp.CFrame=SPOS hrp.AssemblyLinearVelocity=Vector3.zero hrp.AssemblyAngularVelocity=Vector3.zero hrp.Anchored=false end)end table.insert(pAAC,R.RenderStepped:Connect(uL))table.insert(pAAC,R.Heartbeat:Connect(uL))table.insert(pAAC,R.Stepped:Connect(uL))table.insert(pAAC,R.Heartbeat:Connect(function()if not pAAE then return end local hrp=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if hrp and(hrp.Position-SPOS.Position).Magnitude>5 then hrp.Anchored=false task.wait()for _=1,500 do hrp.CFrame=SPOS hrp.AssemblyLinearVelocity=Vector3.zero end local bp2=hrp:FindFirstChild(OBP)if bp2 then bp2.Position=SPOS.Position end end end))else for _,cn in pairs(pAAC)do pcall(function()cn:Disconnect()end)end pAAC={}if pABC then pcall(function()pABC:Disconnect()end)pABC=nil end pcall(function()local hrp=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if hrp then hrp.Anchored=false local bp2=hrp:FindFirstChild(OBP)if bp2 then bp2:Destroy()end local bg2=hrp:FindFirstChild(OBG)if bg2 then bg2:Destroy()end end end)end end})

-- ═══════════════════════════════════════════════════════════
-- ESP SYSTEM - ДОБАВЛЕНО В MISC ВКЛАДКУ
-- ═══════════════════════════════════════════════════════════

-- ESP Variables
local espEnabled = false
local espPlayers = false
local espPlayerColor = Color3.fromRGB(255, 0, 0) -- Красный для игроков во время кика
local espLines = false
local espLineColor = Color3.fromRGB(0, 255, 0) -- Зеленый для линий
local espHeadLines = false
local espHeadLineColor = Color3.fromRGB(255, 255, 0) -- Желтый для линий в голову
local espItems = false
local espItemColor = Color3.fromRGB(0, 0, 255) -- Синий для предметов
local espConnections = {}
local espDrawings = {}

-- ESP Functions
local function createESP()
    -- Clear old ESP
    for _, drawing in pairs(espDrawings) do
        pcall(function() drawing:Remove() end)
    end
    espDrawings = {}

    if not espEnabled then return end

    -- ESP Players (during kick)
    if espPlayers then
        for _, player in ipairs(PS:GetPlayers()) do
            if player ~= P and player.Character then
                local character = player.Character
                local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                local humanoid = character:FindFirstChildOfClass("Humanoid")

                if humanoidRootPart and humanoid and humanoid.Health > 0 then
                    -- Check if player is being kicked (has grab lines or is targeted)
                    local isBeingKicked = false
                    if selKP and player.Name == selKP.Name then
                        isBeingKicked = true
                    end

                    if isBeingKicked then
                        -- Create highlight for player
                        local highlight = Instance.new("Highlight")
                        highlight.Name = "ESP_Highlight_" .. player.Name
                        highlight.Adornee = character
                        highlight.FillColor = espPlayerColor
                        highlight.FillTransparency = 0.5
                        highlight.OutlineColor = espPlayerColor
                        highlight.OutlineTransparency = 0
                        highlight.Parent = CG
                        table.insert(espDrawings, highlight)
                    end
                end
            end
        end
    end

    -- ESP Lines from player to others
    if espLines then
        local myRoot = P.Character and P.Character:FindFirstChild("HumanoidRootPart")
        if myRoot then
            for _, player in ipairs(PS:GetPlayers()) do
                if player ~= P and player.Character then
                    local targetRoot = player.Character:FindFirstChild("HumanoidRootPart")
                    if targetRoot then
                        local line = Drawing.new("Line")
                        line.Thickness = 2
                        line.Color = espLineColor
                        line.Transparency = 1
                        line.ZIndex = 1

                        local myScreen = Cam:WorldToViewportPoint(myRoot.Position)
                        local targetScreen = Cam:WorldToViewportPoint(targetRoot.Position)

                        if myScreen.Z > 0 and targetScreen.Z > 0 then
                            line.From = Vector2.new(myScreen.X, myScreen.Y)
                            line.To = Vector2.new(targetScreen.X, targetScreen.Y)
                            line.Visible = true
                        else
                            line.Visible = false
                        end

                        table.insert(espDrawings, line)
                    end
                end
            end
        end
    end

    -- ESP Head Lines (during kick)
    if espHeadLines then
        local myHead = P.Character and (P.Character:FindFirstChild("Head") or P.Character:FindFirstChild("HumanoidRootPart"))
        if myHead then
            for _, player in ipairs(PS:GetPlayers()) do
                if player ~= P and player.Character then
                    local targetHead = player.Character:FindFirstChild("Head")
                    if targetHead then
                        -- Check if this player is being targeted for kick
                        local isTarget = selKP and player.Name == selKP.Name

                        if isTarget then
                            local line = Drawing.new("Line")
                            line.Thickness = 3
                            line.Color = espHeadLineColor
                            line.Transparency = 1
                            line.ZIndex = 2

                            local myScreen = Cam:WorldToViewportPoint(myHead.Position)
                            local targetScreen = Cam:WorldToViewportPoint(targetHead.Position)

                            if myScreen.Z > 0 and targetScreen.Z > 0 then
                                line.From = Vector2.new(myScreen.X, myScreen.Y)
                                line.To = Vector2.new(targetScreen.X, targetScreen.Y)
                                line.Visible = true
                            else
                                line.Visible = false
                            end

                            table.insert(espDrawings, line)
                        end
                    end
                end
            end
        end
    end

    -- ESP Items
    if espItems then
        for _, item in ipairs(WS:GetDescendants()) do
            if item:IsA("Tool") or item:IsA("Model") then
                local primaryPart = item:IsA("Model") and item.PrimaryPart or item:IsA("Tool") and item.Handle
                if primaryPart and primaryPart:IsA("BasePart") then
                    -- Check if it's a weapon/tool
                    local isWeapon = false
                    local itemName = item.Name:lower()
                    if itemName:find("sword") or itemName:find("gun") or itemName:find("knife") or
                       itemName:find("tool") or itemName:find("weapon") then
                        isWeapon = true
                    end

                    if isWeapon then
                        local highlight = Instance.new("Highlight")
                        highlight.Name = "ESP_Item_" .. item.Name
                        highlight.Adornee = item
                        highlight.FillColor = espItemColor
                        highlight.FillTransparency = 0.7
                        highlight.OutlineColor = espItemColor
                        highlight.OutlineTransparency = 0.3
                        highlight.Parent = CG
                        table.insert(espDrawings, highlight)
                    end
                end
            end
        end
    end
end

local function updateESP()
    if espEnabled then
        createESP()
    end
end

-- ESP Group in Misc Tab
local ESPG = Tabs.Misc:AddRightGroupbox("ESP System","eye")

ESPG:AddToggle("ESPEnabled", {Text="Enable ESP", Default=false, Callback=function(on)
    espEnabled = on
    if on then
        -- Start ESP update loop
        table.insert(espConnections, R.RenderStepped:Connect(updateESP))
        ntf("ESP","Enabled!", 3)
    else
        -- Disable ESP
        for _, conn in pairs(espConnections) do
            pcall(function() conn:Disconnect() end)
        end
        espConnections = {}

        -- Clear all ESP drawings
        for _, drawing in pairs(espDrawings) do
            pcall(function() drawing:Remove() end)
        end
        espDrawings = {}

        -- Clear highlights
        for _, obj in pairs(CG:GetChildren()) do
            if obj.Name:find("ESP_") then
                obj:Destroy()
            end
        end

        ntf("ESP","Disabled!", 2)
    end
end})

ESPG:AddToggle("ESPPlayers", {Text="ESP Players (Kick)", Default=false, Callback=function(on)
    espPlayers = on
    if espEnabled then updateESP() end
end})

ESPG:AddLabel("Player ESP Color"):AddColorPicker("ESPPlayerColor", {Default=Color3.fromRGB(255, 0, 0), Title="Player ESP Color", Callback=function(color)
    espPlayerColor = color
    if espEnabled then updateESP() end
end})

ESPG:AddToggle("ESPPlayerLines", {Text="ESP Lines to Players", Default=false, Callback=function(on)
    espLines = on
    if espEnabled then updateESP() end
end})

ESPG:AddLabel("Lines Color"):AddColorPicker("ESPLineColor", {Default=Color3.fromRGB(0, 255, 0), Title="Lines Color", Callback=function(color)
    espLineColor = color
    if espEnabled then updateESP() end
end})

ESPG:AddToggle("ESPHeadLines", {Text="ESP Head Lines (Kick)", Default=false, Callback=function(on)
    espHeadLines = on
    if espEnabled then updateESP() end
end})

ESPG:AddLabel("Head Lines Color"):AddColorPicker("ESPHeadLineColor", {Default=Color3.fromRGB(255, 255, 0), Title="Head Lines Color", Callback=function(color)
    espHeadLineColor = color
    if espEnabled then updateESP() end
end})

ESPG:AddToggle("ESPItems", {Text="ESP Items", Default=false, Callback=function(on)
    espItems = on
    if espEnabled then updateESP() end
end})

ESPG:AddLabel("Items Color"):AddColorPicker("ESPItemColor", {Default=Color3.fromRGB(0, 0, 255), Title="Items Color", Callback=function(color)
    espItemColor = color
    if espEnabled then updateESP() end
end})

-- ═══════════════════════════════════════════════════════════
-- END ESP SYSTEM
-- ═══════════════════════════════════════════════════════════

MAG:AddToggle("SitLock",{Text="Sit Lock",Default=false,Callback=function(on)_G.SitLock=on if on then task.spawn(function()while _G.SitLock do pcall(function()local c=P.Character if not c then return end local hum=c:FindFirstChildOfClass("Humanoid")local hrp=c:FindFirstChild("HumanoidRootPart")if not hum or not hrp then return end hum.PlatformStand=false hum.Sit=false hum:ChangeState(Enum.HumanoidStateType.GettingUp)for _,v in pairs(c:GetDescendants())do if(v:IsA("Weld")or v:IsA("WeldConstraint"))then local p0,p1 pcall(function()p0=v.Part0 end)pcall(function()p1=v.Part1 end)if p0 and not p0:IsDescendantOf(c)then v:Destroy()elseif p1 and not p1:IsDescendantOf(c)then v:Destroy()end end if isForce(v)and not isOur(v)and v.Parent and v.Parent:IsDescendantOf(c)then v:Destroy()end end hrp.AssemblyLinearVelocity=Vector3.zero hrp.AssemblyAngularVelocity=Vector3.zero RS.CharacterEvents.RagdollRemote:FireServer(hrp,0)end)task.wait(0.05)end end)end end})

local anonC=nil MAG:AddToggle("Anonymous",{Text="Anonymous",Default=false,Callback=function(on)if on then if anonC then anonC:Disconnect()end anonC=R.Heartbeat:Connect(function()pcall(function()local ch=P.Character if not ch then return end local head=ch:FindFirstChild("Head")if head then for _,v in pairs(head:GetDescendants())do if v:IsA("TextLabel")or v:IsA("TextBox")then if v.Text==P.DisplayName or v.Text==P.Name then v.Text="Anonymous"end end end end end)end)else if anonC then anonC:Disconnect()anonC=nil end end end})

local REZON_POS={CFrame.new(326.8,-4.5,486.7),CFrame.new(601.7,124.3,-101.4),CFrame.new(539,96.5,-391),CFrame.new(-525.1,52,-164.9),CFrame.new(-576.5,50.4,89.2)}
local rezonConns={} MAG:AddToggle("AntiRezonans",{Text="Anti Rezonans v2",Default=false,Callback=function(on)_G.AntiRezon=on for _,cn in pairs(rezonConns)do pcall(function()cn:Disconnect()end)end rezonConns={}if on then local idx=0 local function rezonTick()if not _G.AntiRezon then return end local hrp=P.Character and P.Character:FindFirstChild("HumanoidRootPart")local hum=P.Character and P.Character:FindFirstChildOfClass("Humanoid")if not hrp then return end pcall(function()hrp.Anchored=false idx=idx%#REZON_POS+1 local cf=REZON_POS[idx]hrp.CFrame=cf hrp.AssemblyLinearVelocity=Vector3.zero hrp.AssemblyAngularVelocity=Vector3.zero if hum then hum.PlatformStand=false hum.Sit=false hum:ChangeState(Enum.HumanoidStateType.GettingUp)end for _,v in pairs(P.Character:GetDescendants())do if(v:IsA("Weld")or v:IsA("WeldConstraint"))then local p0,p1 pcall(function()p0=v.Part0 end)pcall(function()p1=v.Part1 end)if(p0 and not p0:IsDescendantOf(P.Character))or(p1 and not p1:IsDescendantOf(P.Character))then v:Destroy()end end if isForce(v)and not isOur(v)and v.Parent and v.Parent:IsDescendantOf(P.Character)then v:Destroy()end end for _,v in pairs(P.Character:GetDescendants())do if v:IsA("Fire")or v:IsA("Smoke")or v:IsA("Sparkles")then v:Destroy()end end RS.CharacterEvents.RagdollRemote:FireServer(hrp,0)end)end table.insert(rezonConns,R.RenderStepped:Connect(rezonTick))table.insert(rezonConns,R.Heartbeat:Connect(rezonTick))table.insert(rezonConns,R.Stepped:Connect(rezonTick))end end})

MAG:AddButton({Text="Remove Void",Func=function()WS.FallenPartsDestroyHeight=-1e95 ntf("Mega Anti","Void removed!",3)end})
MAG:AddButton({Text="Anti Ragdoll Fire Server",Func=function()if RR then for _,pl in pairs(PS:GetPlayers())do if pl.Character and pl.Character:FindFirstChild("HumanoidRootPart")then for _=1,150 do RR:FireServer(pl.Character.HumanoidRootPart,9999999)task.wait()end end end end end})

--SIT BUTTON GUI
local sG=Instance.new("ScreenGui")sG.Name="SitBtnGui"sG.ResetOnSpawn=false sG.ZIndexBehavior=Enum.ZIndexBehavior.Sibling sG.Parent=CG
local sB=Instance.new("TextButton")sB.Name="SitBtn"sB.Size=UDim2.new(0,55,0,55)sB.Position=UDim2.new(1,-70,0.5,-27)sB.BackgroundColor3=Color3.fromRGB(0,0,0)sB.BackgroundTransparency=0.1 sB.TextColor3=Color3.fromRGB(255,255,255)sB.Text="SIT"sB.Font=Enum.Font.GothamBold sB.TextSize=16 sB.BorderSizePixel=0 sB.Parent=sG
Instance.new("UICorner",sB).CornerRadius=UDim.new(0,8)
local ss=Instance.new("UIStroke")ss.Color=Color3.fromRGB(255,0,0)ss.Thickness=3 ss.Parent=sB
sB.MouseButton1Click:Connect(function()local c=P.Character local h=c and c:FindFirstChild("HumanoidRootPart")local hm=c and c:FindFirstChild("Humanoid")if not h or not hm then return end local fn=P.Name.."SpawnedInToys"local f=WS:FindFirstChild(fn)local bl=f and f:FindFirstChild("CreatureBlobman")if not bl then pcall(function()RS.MenuToys.SpawnToyRemoteFunction:InvokeServer("CreatureBlobman",h.CFrame*CFrame.new(0,0,0),Vector3.zero)end)if not f then f=WS:WaitForChild(fn,5)end if f then bl=f:WaitForChild("CreatureBlobman",5)end end if bl then local se=bl:WaitForChild("VehicleSeat",5)if se then local t=tick()repeat if not hm.SeatPart then h.CFrame=se.CFrame+Vector3.new(0,1,0)h.Velocity=Vector3.zero se:Sit(hm)end R.Heartbeat:Wait()until hm.SeatPart==se or tick()-t>2 end end end)
local sDr,sDI,sDS,sSP sB.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then sDr=true sDS=i.Position sSP=sB.Position i.Changed:Connect(function()if i.UserInputState==Enum.UserInputState.End then sDr=false end end)end end)sB.InputChanged:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch then sDI=i end end)UIS.InputChanged:Connect(function(i)if i==sDI and sDr then local d=i.Position-sDS sB.Position=UDim2.new(sSP.X.Scale,sSP.X.Offset+d.X,sSP.Y.Scale,sSP.Y.Offset+d.Y)end end)

--MAIN HEARTBEAT LOOP
local eLoopT,eAuraT=0,0
R.Heartbeat:Connect(function(dt)
local c=P.Character if not c then return end
local root=c:FindFirstChild("HumanoidRootPart")local hum=c:FindFirstChildOfClass("Humanoid")if not root or not hum then return end
eLoopT=eLoopT+dt eAuraT=eAuraT+dt

if _G.sctNC then for _,part in pairs(c:GetDescendants())do if part:IsA("BasePart")then part.CanCollide=false end end end

if eAuraT>=0.3 then
if _G.EKA or _G.EVA or _G.EFA2 or _G.EAA then
for _,pl in ipairs(PS:GetPlayers())do
if pl~=P and pl.Character then
local part=pl.Character:FindFirstChild("HumanoidRootPart")
local hum2=pl.Character:FindFirstChildOfClass("Humanoid")
if part and hum2 and hum2.Health>0 and(part.Position-root.Position).Magnitude<=eAuraR then
pcall(function()
SNO:FireServer(part)
if _G.EKA then hum2.Health=0 pl.Character:BreakJoints()MvTo(part,CFrame.new(4096,-75,4096))Vel(part,Vector3.new(0,-1000,0))end
if _G.EVA then Vel(part,Vector3.new(0,10000,0))end
if _G.EFA2 then local bv=Instance.new("BodyVelocity")bv.MaxForce=Vector3.new(1e8,1e8,1e8)bv.Velocity=(part.Position-root.Position).Unit*500 bv.Parent=part Deb:AddItem(bv,0.5)end
if _G.EAA then part.Anchored=true end
end)
end
end
end
end
eAuraT=0
end

if eLoopT>=1.5 then
if selKP and selKP.Parent and selKP.Character then
local function SnKill2(t)local r=t.Character and t.Character:FindFirstChild("HumanoidRootPart")if r then pcall(function()SNO:FireServer(r)MvTo(r,CFrame.new(4096,-75,4096))Vel(r,Vector3.new(0,-1000,0))end)end end
local function SnVoid2(t)local r=t.Character and t.Character:FindFirstChild("HumanoidRootPart")if r then pcall(function()SNO:FireServer(r)Vel(r,Vector3.new(0,10000,0))end)end end
if _G.ELK then task.spawn(SnKill2,selKP)end
if _G.ELV then task.spawn(SnVoid2,selKP)end
end
eLoopT=0
end

if _G.FlingA then
for _,pl in ipairs(PS:GetPlayers())do
if pl~=P and pl.Character then
local tr=pl.Character:FindFirstChild("HumanoidRootPart")
if tr and(tr.Position-root.Position).Magnitude<=20 then
local bv=Instance.new("BodyVelocity")bv.MaxForce=Vector3.new(1e8,1e8,1e8)bv.Velocity=(tr.Position-root.Position).Unit*(Opt.FlingAuraStrength and Opt.FlingAuraStrength.Value or 300)bv.Parent=tr Deb:AddItem(bv,0.1)
end
end
end
end

if kaE then
if tick()-kaCD>=0.12 then
for _,pl in ipairs(PS:GetPlayers())do
if pl==P then continue end
local tc=pl.Character local tr=tc and tc:FindFirstChild("HumanoidRootPart")local th=tc and tc:FindFirstChildOfClass("Humanoid")
if tr and th and th.Health>0 and(tr.Position-root.Position).Magnitude<=kaR then
kaCD=tick()pcall(function()SNO:FireServer(tr,tr.CFrame)th.Health=0 tc:BreakJoints()end)break
end
end
end
end
end)

UIS.JumpRequest:Connect(function()if _G.sctIJ then local c=P.Character local hm=c and c:FindFirstChildOfClass("Humanoid")if hm and hm:GetState()~=Enum.HumanoidStateType.Dead then if hm.UseJumpPower then hm.JumpPower=_G.sctJPVal or 100 else hm.JumpHeight=((_G.sctJPVal or 100)*(_G.sctJPVal or 100))/(2*196.2)end hm:ChangeState(Enum.HumanoidStateType.Jumping)end end end)

P.CharacterAdded:Connect(function(newChar)
    task.wait(0.5)
    local h = newChar:WaitForChild("Humanoid", 5)
    if not h then return end
    -- Priority: ClassicSpeed > LocalPlayer SDFv3 > Speed Key (_G.WSE) > Global _G.WSVal > default
    if _G.ClassicSP then
        h.WalkSpeed = 100
    elseif _G.sctWS then
        h.WalkSpeed = 16 * ((_G.sctWSVal or 5) / 5)
    elseif _G.WSE then
        h.WalkSpeed = (_G.WSVal or 50)
    elseif _G.WSVal then
        h.WalkSpeed = _G.WSVal
    else
        h.WalkSpeed = 16
    end
end)

spawn(function()while task.wait(1)do if Tog.NicknameESP and Tog.NicknameESP.Value then for _,pl in pairs(PS:GetPlayers())do if pl~=P and pl.Character and pl.Character:FindFirstChild("HumanoidRootPart")and not pl.Character.HumanoidRootPart:FindFirstChild("NameESP")then local bb=Instance.new("BillboardGui")bb.Name="NameESP"bb.Adornee=pl.Character.HumanoidRootPart bb.Size=UDim2.new(0,100,0,30)bb.StudsOffset=Vector3.new(0,3,0)bb.AlwaysOnTop=true bb.Parent=pl.Character.HumanoidRootPart local tl=Instance.new("TextLabel")tl.Size=UDim2.new(1,0,1,0)tl.BackgroundTransparency=1 tl.Text=pl.Name tl.TextColor3=Color3.new(1,1,1)tl.TextStrokeTransparency=0 tl.TextScaled=true tl.Parent=bb end end else for _,pl in pairs(PS:GetPlayers())do if pl.Character and pl.Character:FindFirstChild("HumanoidRootPart")then local e=pl.Character.HumanoidRootPart:FindFirstChild("NameESP")if e then e:Destroy()end end end end end end)
--END PART 4/5|Пиши "продолжай"
--a:sob ULTIMATE v3.0|PART 5/5|UI SETTINGS+SAVE+NOTIFY+LOOP
--UI SETTINGS TAB
local UIL=Tabs.UI:AddLeftGroupbox("Menu Settings","settings")
local UIR=Tabs.UI:AddRightGroupbox("Background","image")

UIL:AddButton({Text="Unload",Func=function()if sG then sG:Destroy()end Lib:Unload()end})
UIL:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind",{Default="RightShift",NoUI=true,Text="Menu bind"})
Lib.ToggleKeybind=Opt.MenuKeybind

local alwaysCursor=false UIL:AddToggle("AlwaysViewCursor",{Text="Always View Cursor",Default=false,Callback=function(V)alwaysCursor=V if V then game:GetService("UserInputService").MouseIconEnabled=true end end})

UIR:AddToggle("CustomBackground",{Text="Custom Background",Default=false,Callback=function(V)_G.CustomBG=V end})
UIR:AddToggle("Blur",{Text="Blur",Default=false,Callback=function(V)local blur=game:GetService("Lighting"):FindFirstChild("SOBBlur")if V then if not blur then blur=Instance.new("BlurEffect")blur.Name="SOBBlur"blur.Size=10 blur.Parent=game:GetService("Lighting")end else if blur then blur:Destroy()end end end})
UIR:AddInput("ImageUrl",{Text="Image Url",Default="",Placeholder="https://...",Callback=function(V)_G.BGUrl=V end})

SM:SetLibrary(Lib)
SM:IgnoreThemeSettings()
SM:SetIgnoreIndexes({"MenuKeybind"})
TM:SetFolder("a_sob_ultimate")
SM:SetFolder("a_sob_ultimate/Configs")
SM:BuildConfigSection(Tabs.UI)
TM:ApplyToTab(Tabs.UI)

--FINAL LOOPS & CONNECTIONS
PS.PlayerAdded:Connect(function()task.wait(1)pcall(function()local pl=gPL()Opt.TargetPlayer:SetValues(pl)if Opt.MultiWhitelist then Opt.MultiWhitelist:SetValues(pl)end if Opt.SpecPlayer then Opt.SpecPlayer:SetValues(pl)end end)end)
PS.PlayerRemoving:Connect(function()task.wait(0.5)pcall(function()local pl=gPL()Opt.TargetPlayer:SetValues(pl)if Opt.MultiWhitelist then Opt.MultiWhitelist:SetValues(pl)end if Opt.SpecPlayer then Opt.SpecPlayer:SetValues(pl)end end)end)

WS.DescendantAdded:Connect(function(o)if Tog.BoxESP and Tog.BoxESP.Value and o:IsA("BasePart")and(o.Name:lower()=="partesp"or o.Name:lower()=="playercharacterlocationdetector")and not espB[o]then local b=Instance.new("BoxHandleAdornment")b.Adornee=o b.AlwaysOnTop=true b.ZIndex=5 b.Color3=Color3.new(1,1,1)b.Transparency=0.5 b.Size=o.Size b.Parent=CG espB[o]=b end end)

--SILENT AIM (Visual вкладка правая группа)
local SAG=Tabs.Visual:AddLeftGroupbox("Silent Aim","crosshair")
local silentAimEnabled=false local silentAimFOV=120 local silentAimDistance=500 local silentAimTargetPart="Head" local silentAimFOVCircle=nil local silentAimConnection=nil

local function createFOVCircle()if silentAimFOVCircle then pcall(function()silentAimFOVCircle:Remove()end)end silentAimFOVCircle=Drawing.new("Circle")silentAimFOVCircle.Thickness=2 silentAimFOVCircle.NumSides=64 silentAimFOVCircle.Radius=silentAimFOV silentAimFOVCircle.Filled=false silentAimFOVCircle.Visible=false silentAimFOVCircle.ZIndex=999 silentAimFOVCircle.Transparency=1 silentAimFOVCircle.Color=Color3.fromRGB(255,255,255)silentAimFOVCircle.Position=Vector2.new(Cam.ViewportSize.X/2,Cam.ViewportSize.Y/2)end

local function getClosestToMouse()if not silentAimEnabled then return nil end local closestPlayer=nil local shortestDistance=silentAimFOV local mousePos=UIS:GetMouseLocation()for _,player in ipairs(PS:GetPlayers())do if player==P then continue end local character=player.Character if not character then continue end local targetPart=character:FindFirstChild(silentAimTargetPart)if not targetPart then continue end local humanoid=character:FindFirstChildOfClass("Humanoid")if not humanoid or humanoid.Health<=0 then continue end local myRoot=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if myRoot and(myRoot.Position-targetPart.Position).Magnitude>silentAimDistance then continue end local screenPos,onScreen=Cam:WorldToViewportPoint(targetPart.Position)if not onScreen then continue end local screenDistance=(Vector2.new(screenPos.X,screenPos.Y)-mousePos).Magnitude if screenDistance<shortestDistance then shortestDistance=screenDistance closestPlayer=targetPart end end return closestPlayer end

SAG:AddToggle("SilentAim",{Text="Enable Silent Aim",Default=false,Callback=function(value)silentAimEnabled=value if value then createFOVCircle()silentAimConnection=R.RenderStepped:Connect(function()if not silentAimEnabled then return end if silentAimFOVCircle and silentAimFOVCircle.Visible then silentAimFOVCircle.Position=Vector2.new(Cam.ViewportSize.X/2,Cam.ViewportSize.Y/2)silentAimFOVCircle.Radius=silentAimFOV end local target=getClosestToMouse()if target and UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)then local myRoot=P.Character and P.Character:FindFirstChild("HumanoidRootPart")if myRoot and(myRoot.Position-target.Position).Magnitude<=25 then pcall(function()SNO:FireServer(target,myRoot.CFrame)CGL:FireServer(target,Vector3.zero,target.Position,false)end)end end end)ntf("Silent Aim","Enabled! FOV:"..silentAimFOV,3)else if silentAimConnection then silentAimConnection:Disconnect()silentAimConnection=nil end if silentAimFOVCircle then silentAimFOVCircle.Visible=false end ntf("Silent Aim","Disabled",2)end end})
SAG:AddSlider("SilentAimFOV",{Text="FOV Radius",Default=120,Min=10,Max=500,Rounding=1,Suffix=" px",Callback=function(value)silentAimFOV=value if silentAimFOVCircle then silentAimFOVCircle.Radius=value end end})
SAG:AddSlider("SilentAimDist",{Text="Max Distance",Default=500,Min=50,Max=2000,Rounding=10,Suffix=" studs",Callback=function(value)silentAimDistance=value end})
SAG:AddDropdown("SilentAimPart",{Text="Target Part",Values={"Head","HumanoidRootPart","Torso","UpperTorso"},Default=1,Callback=function(value)silentAimTargetPart=value end})
SAG:AddToggle("SilentAimShowFOV",{Text="Show FOV Circle",Default=false,Callback=function(value)if silentAimFOVCircle then silentAimFOVCircle.Visible=value else createFOVCircle()silentAimFOVCircle.Visible=value end end})
SAG:AddLabel("FOV Color"):AddColorPicker("SilentAimColor",{Default=Color3.fromRGB(255,255,255),Title="FOV Color",Callback=function(value)if silentAimFOVCircle then silentAimFOVCircle.Color=value end end})


--INFINITE JUMP
UIS.JumpRequest:Connect(function()if Tog.infJump and Tog.infJump.Value then local c=P.Character local hm=c and c:FindFirstChildOfClass("Humanoid")if hm and hm:GetState()~=Enum.HumanoidStateType.Dead then hm:ChangeState(Enum.HumanoidStateType.Jumping)end end end)

--LOCALPLAYER Infinite Jump в Character группу
LC:AddToggle("infJump",{Text="Infinite Jump",Default=false})
LC:AddSlider("SCT1JPVal",{Text="Jump Power [SDFv3]",Default=100,Min=16,Max=500,Rounding=0,Callback=function(v)_G.sctJPVal=v if _G.sctIJ then local c=P.Character local hm=c and c:FindFirstChildOfClass("Humanoid")if hm then if hm.UseJumpPower then hm.JumpPower=v else hm.JumpHeight=(v*v)/(2*196.2)end end end end})
LC:AddToggle("InfJumpSDFv3",{Text="Infinite Jump [SDFv3]",Default=false,Callback=function(V)_G.sctIJ=V if not V then local c=P.Character local hm=c and c:FindFirstChildOfClass("Humanoid")if hm then if hm.UseJumpPower then hm.JumpPower=50 else hm.JumpHeight=7.2 end end end end})
LC:AddSlider("SCT1WSVal",{Text="Speed Multiplier [SDFv3]",Default=5,Min=1,Max=50,Rounding=1,Callback=function(v)_G.sctWSVal=v if _G.sctWS then local c=P.Character local hm=c and c:FindFirstChildOfClass("Humanoid")if hm then hm.WalkSpeed=16*(v/5)end end end})
LC:AddToggle("WalkspeedSDFv3",{Text="Walkspeed [SDFv3]",Default=false,Callback=function(V)_G.sctWS=V if V then local c=P.Character local hm=c and c:FindFirstChildOfClass("Humanoid")if hm then hm.WalkSpeed=16*((_G.sctWSVal or 5)/5)end else local c=P.Character local hm=c and c:FindFirstChildOfClass("Humanoid")if hm then hm.WalkSpeed=16 end end end})

--GOD MODE в LocalPlayer
LC:AddToggle("GodMode",{Text="God Mode",Default=false,Callback=function(V)if V then local c=P.Character if c then local hum=c:FindFirstChildOfClass("Humanoid")if hum then hum.MaxHealth=math.huge hum.Health=math.huge end end else local c=P.Character if c then local hum=c:FindFirstChildOfClass("Humanoid")if hum then hum.MaxHealth=100 hum.Health=100 end end end end})

--INVISIBILITY
LC:AddToggle("Invisibility",{Text="Invisibility",Default=false,Callback=function(V)local c=P.Character if c then for _,part in pairs(c:GetDescendants())do if part:IsA("BasePart")and part.Name~="HumanoidRootPart"then part.Transparency=V and 1 or 0 end if V and part:IsA("Accessory")then part:Destroy()end end end end})

--3RD PERSON в Visual
VL:AddToggle("ThirdPerson",{Text="3rd Person",Default=false,Callback=function(V)if V then P.CameraMode=Enum.CameraMode.Classic P.CameraMaxZoomDistance=1e9 P.CameraMinZoomDistance=0.5 else P.CameraMode=Enum.CameraMode.LockFirstPerson P.CameraMaxZoomDistance=0 P.CameraMinZoomDistance=0 end end})
VL:AddSlider("CamZoom",{Text="Max Zoom",Default=128,Min=1,Max=50000,Rounding=0,Callback=function(v)P.CameraMaxZoomDistance=v end})

--ESP STCv3
spawn(function()while task.wait(1)do if Tog.BoxESP and Tog.BoxESP.Value then for _,player in pairs(PS:GetPlayers())do if player~=P and player.Character then local char=player.Character if not char:FindFirstChild("ESPBox")then local esp=Instance.new("BillboardGui")esp.Name="ESPBox"esp.AlwaysOnTop=true esp.Size=UDim2.new(0,100,0,50)esp.StudsOffset=Vector3.new(0,3,0)esp.Parent=char local frame=Instance.new("Frame")frame.Size=UDim2.new(1,0,1,0)frame.BackgroundColor3=Color3.fromRGB(255,0,0)frame.BackgroundTransparency=0.5 frame.BorderSizePixel=2 frame.Parent=esp local nameLabel=Instance.new("TextLabel")nameLabel.Size=UDim2.new(1,0,1,0)nameLabel.BackgroundTransparency=1 nameLabel.Text=player.Name nameLabel.TextColor3=Color3.fromRGB(255,255,255)nameLabel.TextScaled=true nameLabel.Parent=frame end end end else for _,player in pairs(PS:GetPlayers())do if player.Character and player.Character:FindFirstChild("ESPBox")then player.Character.ESPBox:Destroy()end end end end end)

--AUTO RESET
P.CharacterAdded:Connect(function(newChar)if aRst then task.wait(0.5)local hm=newChar:WaitForChild("Humanoid",5)if hm then hm.Died:Connect(function()if aRst then task.wait(1)P:LoadCharacter()end end)end end end)

--CAMERA DEFAULT
P.CameraMode=Enum.CameraMode.Classic P.CameraMinZoomDistance=0.5 P.CameraMaxZoomDistance=128

--FINAL WALKSPEED HEARTBEAT
R.Heartbeat:Connect(function()
    local c = P.Character if not c then return end
    local hm = c:FindFirstChildOfClass("Humanoid") if not hm then return end
    -- Apply WalkSpeed with priority
    if _G.ClassicSP then
        hm.WalkSpeed = 100
    elseif _G.sctWS then
        hm.WalkSpeed = 16 * ((_G.sctWSVal or 5) / 5)
    elseif _G.WSE then
        hm.WalkSpeed = (_G.WSVal or 50)
    elseif _G.WSVal and _G.WSVal ~= 16 then
        hm.WalkSpeed = _G.WSVal
    else
        hm.WalkSpeed = 16
    end

    if Tog.GodMode and Tog.GodMode.Value then
        if hm.Health < hm.MaxHealth then hm.Health = hm.MaxHealth end
    end
end)

--KICK DETECTED NOTIFY
WS.ChildAdded:Connect(function(o)if o.Name=="BlackHoleKick"or o.Name=="BlackHoleDetected"then task.wait(0.05)local pos=o:IsA("BasePart")and o.Position or(o:IsA("Model")and o.PrimaryPart and o.PrimaryPart.Position)if not pos then return end local cp,cd2=nil,1e9 for _,pl in ipairs(PS:GetPlayers())do if pl~=P and pl.Character then local h2=pl.Character:FindFirstChild("HumanoidRootPart")if h2 and(h2.Position-pos).Magnitude<cd2 then cd2=(h2.Position-pos).Magnitude cp=pl end end end if cp then ntf("Kick Detected",cp.DisplayName.." used kick!",6)end end end)

--FRIEND JOIN NOTIFY
PS.PlayerAdded:Connect(function(pl)pcall(function()if pl:IsFriendsWith(P.UserId)then ntf("Friend Joined",pl.Name.." joined!",5)end end)end)

--ANTI VOID FINAL
R.Heartbeat:Connect(function()if Tog.AntiVoid and Tog.AntiVoid.Value then local c=P.Character if c and c.PrimaryPart and c.PrimaryPart.Position.Y<-50 then c:SetPrimaryPartCFrame(CFrame.new(c.PrimaryPart.Position+Vector3.new(0,100,0)))c.PrimaryPart.AssemblyLinearVelocity=Vector3.zero end end end)

--LOOP TP RANDOM
R.Heartbeat:Connect(function()if Tog.LoopTp and Tog.LoopTp.Value then local c=P.Character local h=c and c:FindFirstChild("HumanoidRootPart")if h then h.CFrame=CFrame.new(math.random(-500,500),math.random(30,480),math.random(-500,500))end end end)

--AUTO SIT BLOBMAN LOOP (Target вкладка)
R.Heartbeat:Connect(function()if Tog.AutoSitBlobman and Tog.AutoSitBlobman.Value then local hm=P.Character and P.Character:FindFirstChildOfClass("Humanoid")if hm and not hm.SeatPart then task.spawn(autoSitBlob)end end end)
--CODE TAB
local CGL=Tabs.Code:AddLeftGroupbox("Code Executor","code")
local CGR=Tabs.Code:AddRightGroupbox("Active Functions","activity")
local RGR=Tabs.Code:AddRightGroupbox("Active Functions2","activity")

local codeInput=""
local activeScripts={}

CGL:AddLabel("Enter Code:")
CGL:AddInput("CodeInput",{Text="Code",Default="",Placeholder="Enter code (e.g. 9800)",Callback=function(v)codeInput=v end})

CGL:AddButton({Text="Execute",Func=function()
    if codeInput==""then ntf("Code","Enter code first!",3)return end
    
    -- Отключаем ВСЕ функции
    for name,toggle in pairs(Tog)do
        if toggle.Value then
            toggle:SetValue(false)
        end
    end
    
    ntf("Code","All functions disabled...",2)
    task.wait(0.5)
    
    -- Загружаем базу кодов с GitHub
    local success,codeDB=pcall(function()
        return game:HttpGet("https://raw.githubusercontent.com/sladkoeshkaogg-svg/CodeExecutor/main/codes.txt")
    end)
    
    if not success then
        ntf("Code","❌ Failed to connect to server!",5)
        return
    end
    
    -- Парсим коды (формат: КОД|ССЫЛКА)
    local found=false
    for line in codeDB:gmatch("[^\r\n]+")do
        local code,url=line:match("^(%d+)|(.+)$")
        if code==codeInput then
            found=true
            ntf("Code","✅ Code verified! Loading...",3)
            task.wait(0.5)
            
            -- Загружаем скрипт
            local scriptSuccess,script=pcall(function()
                return game:HttpGet(url)
            end)
            
            if scriptSuccess then
                pcall(function()
                    loadstring(script)()
                    table.insert(activeScripts,{code=codeInput,name="Script_"..codeInput})
                    ntf("Code","🚀 Script "..codeInput.." loaded!",5)
                    
                    -- Добавляем в список активных
                    CGR:AddLabel("✅ "..codeInput.." - Active")
                end)
            else
                ntf("Code","❌ Failed to load script!",5)
            end
            break
        end
    end
    
    if not found then
        ntf("Code","❌ Invalid code!",3)
    end
end})

CGL:AddButton({Text="Delete All Functions",Func=function()
    -- Отключаем все toggles
    for name,toggle in pairs(Tog)do
        if toggle.Value then
            toggle:SetValue(false)
        end
    end
    
    -- Очищаем активные скрипты
    activeScripts={}
    
    task.wait(0.3)
    ntf("Code","🗑️ All functions deleted!",3)
end})

CGL:AddLabel("═══════════════")
CGL:AddLabel("Instructions:")
CGL:AddLabel("Insert the code")
CGL:AddLabel("you want to use,")
CGL:AddLabel("for example 9800,")
CGL:AddLabel("and click Execute")
CGL:AddLabel("═══════════════")
CGL:AddLabel("Инструкция")
CGL:AddLabel("Введите код,")
CGL:AddLabel("который хотите использовать,")
CGL:AddLabel("например 9800,")
CGL:AddLabel("и нажмите Execute")
CGL:AddLabel("═══════════════")


CGL:AddLabel("XOCU - 4562")
CGR:AddLabel("Cosmic Hub(CRACK) - 7823")
CGR:AddLabel("Cosmic Hub2(CRACK) - 1292")
CGR:AddLabel("EGG Hub(CRACK) - 1230")
CGR:AddLabel("noob HUB(CRACK) - 2381")
CGR:AddLabel("GameLand(Premium) - 1929")
CGR:AddLabel("Wexord hub 2022 - 0690")
CGR:AddLabel("Ametist premium(PC) - 0878")
CGR:AddLabel("Bloody V2 Premium(No Key) - 123112")
CGR:AddLabel("Alon Hub(No Key) - 213213")
CGR:AddLabel("VHSVF Script(No key) - 6121")
CGR:AddLabel("Worst Script(No Key) - 1145")

RGR:AddLabel("Polaris Hub(No Key) - 0392")
RGR:AddLabel("BlizT Hub(No Key) - 4824")
RGR:AddLabel("Ragalic(No Key) - 0934")
RGR:AddLabel("Bloody V2 - 9800")
RGR:AddLabel("Yuki Hub - 0923")
RGR:AddLabel("Posral - 1234")
RGR:AddLabel("Rezonans - 54637")
RGR:AddLabel("Mercuriy - 92847")
RGR:AddLabel("Ftap Hub - 2113")
RGR:AddLabel("FANATIC - 2345")
RGR:AddLabel("BlizT Hub - 6767")
RGR:AddLabel("Tokra (Anonym) - 1731")
RGR:AddLabel("Genius - 12932 ")
RGR:AddLabel("Galaxy Script(UPD) - 4444")

--VUHUT TAB
local DG=Tabs.VUHUT:AddLeftGroupbox("Discord Community","chat")
DG:AddButton({Text="Copy Discord Link",Func=function()setclipboard("https://discord.gg/ysZByhDT")ntf("Discord","Link copied!",3)end})
DG:AddLabel("Discord: discord.gg/ysZByhDT")
DG:AddLabel("Join for updates & support!")
DG:AddLabel("Thanks For Join!!!")
DG:AddLabel("")
DG:AddLabel("Contact Developer:")
DG:AddLabel("TG: @HunterH2")
DG:AddLabel("Roblox: magfun_legend")

local TG2=Tabs.VUHUT:AddRightGroupbox("VUHUT Scripts","file-code")
TG2:AddButton({Text="Copy Telegram Link",Func=function()setclipboard("https://t.me/VUHUTScript")ntf("Telegram","Link copied!",3)end})
TG2:AddLabel("Telegram: t.me/VUHUTScript")
TG2:AddLabel("Join for updates & support!")
TG2:AddLabel("Thanks For Join!!!")
TG2:AddLabel("")
TG2:AddButton({Text="Official Site (ALPHA)",Func=function()setclipboard("https://github.com/sladkoeshkaogg-svg/Nexus")ntf("GitHub","Link copied!",3)end})
TG2:AddLabel("GitHub: github.com/sladkoeshkaogg-svg/Nexus")
TG2:AddLabel("")
TG2:AddLabel("Contact Developer:")
TG2:AddLabel("TG: @HunterH2")
TG2:AddLabel("Roblox: magfun_legend")
--HELL KICK RED HIGHLIGHT
task.spawn(function()
    task.wait(1) -- Ждём загрузки UI
    
    -- Находим элемент Hell Kick в UI
    local function findHellKickUI()
        for _, descendant in pairs(Lib.GUI:GetDescendants()) do
            if descendant:IsA("TextLabel") and descendant.Text and descendant.Text:find("Hell Kick") then
                -- Красный текст
                descendant.TextColor3 = Color3.fromRGB(255, 50, 50)
                
                -- Добавляем свечение
                local stroke = descendant:FindFirstChildOfClass("UIStroke") or Instance.new("UIStroke")
                stroke.Color = Color3.fromRGB(255, 0, 0)
                stroke.Thickness = 1.5
                stroke.Transparency = 0.3
                stroke.Parent = descendant
                
                -- Анимация пульсации
                task.spawn(function()
                    while descendant.Parent do
                        TS:Create(descendant, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                            TextColor3 = Color3.fromRGB(255, 100, 100)
                        }):Play()
                        task.wait(1)
                        TS:Create(descendant, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                            TextColor3 = Color3.fromRGB(255, 50, 50)
                        }):Play()
                        task.wait(1)
                    end
                end)
            end
            
            -- Красная галочка (чекбокс)
            if descendant:IsA("Frame") and descendant.Parent and descendant.Parent.Name == "HellKick" then
                -- Красная обводка чекбокса
                local boxStroke = descendant:FindFirstChildOfClass("UIStroke") or Instance.new("UIStroke")
                boxStroke.Color = Color3.fromRGB(255, 0, 0)
                boxStroke.Thickness = 2
                boxStroke.Parent = descendant
                
                -- Красная галочка внутри
                for _, child in pairs(descendant:GetChildren()) do
                    if child:IsA("ImageLabel") or child:IsA("TextLabel") then
                        if child:IsA("ImageLabel") then
                            child.ImageColor3 = Color3.fromRGB(255, 0, 0)
                        else
                            child.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    end
                end
                
                -- Анимация свечения чекбокса
                task.spawn(function()
                    while descendant.Parent do
                        TS:Create(boxStroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                            Transparency = 0
                        }):Play()
                        task.wait(1.5)
                        TS:Create(boxStroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                            Transparency = 0.5
                        }):Play()
                        task.wait(1.5)
                    end
                end)
            end
        end
    end
    
    findHellKickUI()
    
    -- Повторная проверка через 2 секунды (если UI не сразу загрузился)
    task.wait(2)
    findHellKickUI()
end)
--AUTO CLICKER TAB
local ACL=Tabs.AutoClicker:AddLeftGroupbox("Settings","mouse-pointer-click")
local ACR=Tabs.AutoClicker:AddRightGroupbox("Status","activity")

-- Variables
local autoClickerEnabled = false
local autoClickerButton = "Left" -- Left или Right
local autoClickerDelay = 0.1 -- секунды
local autoClickerTask = nil
local clickCount = 0
local lastClickTime = 0

-- Status Labels
local statusLabel = ACR:AddLabel("Status: Disabled")
local clickCountLabel = ACR:AddLabel("Clicks: 0")
local cpsLabel = ACR:AddLabel("CPS: 0")

-- Auto Clicker Function
local function autoClickLoop()
    while autoClickerEnabled do
        local currentTime = tick()
        
        -- Click
        if autoClickerButton == "Left" then
            mouse1click()
        else
            mouse2click()
        end
        
        clickCount = clickCount + 1
        
        -- Update CPS every second
        if currentTime - lastClickTime >= 1 then
            local cps = clickCount
            clickCount = 0
            lastClickTime = currentTime
            cpsLabel:SetText("CPS: " .. cps)
        end
        
        clickCountLabel:SetText("Clicks: " .. clickCount)
        
        task.wait(autoClickerDelay)
    end
end

-- Enable Toggle
ACL:AddToggle("AutoClickerToggle", {
    Text = "Enable Auto Clicker",
    Default = false,
    Callback = function(Value)
        autoClickerEnabled = Value
        
        if Value then
            clickCount = 0
            lastClickTime = tick()
            autoClickerTask = task.spawn(autoClickLoop)
            statusLabel:SetText("Status: Enabled (" .. autoClickerButton .. " Click)")
            ntf("Auto Clicker", "Started! Button: " .. autoClickerButton, 3)
        else
            if autoClickerTask then
                task.cancel(autoClickerTask)
                autoClickerTask = nil
            end
            statusLabel:SetText("Status: Disabled")
            clickCountLabel:SetText("Clicks: 0")
            cpsLabel:SetText("CPS: 0")
            ntf("Auto Clicker", "Stopped!", 2)
        end
    end
})

-- Button Selection
ACL:AddDropdown("AutoClickerButton", {
    Text = "Mouse Button",
    Values = {"Left", "Right"},
    Default = 1,
    Callback = function(Value)
        autoClickerButton = Value
        if autoClickerEnabled then
            statusLabel:SetText("Status: Enabled (" .. Value .. " Click)")
        end
        ntf("Auto Clicker", "Button: " .. Value, 2)
    end
})

-- Delay Slider
ACL:AddSlider("AutoClickerDelay", {
    Text = "Click Delay",
    Min = 0.01,
    Max = 10,
    Default = 0.1,
    Rounding = 2,
    Suffix = "s",
    Callback = function(Value)
        autoClickerDelay = Value
        ntf("Auto Clicker", "Delay: " .. Value .. "s", 2)
    end
})

ACL:AddLabel("━━━━━━━━━━━━━━━━")
ACL:AddLabel("Min Delay: 0.01s (100 CPS)")
ACL:AddLabel("Max Delay: 10s (0.1 CPS)")
ACL:AddLabel("")
ACL:AddLabel("Warning:")
ACL:AddLabel("Very low delays may cause")
ACL:AddLabel("lag or detection!")

-- Hotkey Toggle
ACL:AddLabel("Toggle Hotkey"):AddKeyPicker("AutoClickerHotkey", {
    Default = "F",
    NoUI = false,
    Text = "Auto Clicker Hotkey",
    Callback = function()
        if Tog.AutoClickerToggle then
            Tog.AutoClickerToggle:SetValue(not Tog.AutoClickerToggle.Value)
        end
    end
})

-- Reset Stats Button
ACR:AddButton({
    Text = "Reset Stats",
    Func = function()
        clickCount = 0
        lastClickTime = tick()
        clickCountLabel:SetText("Clicks: 0")
        cpsLabel:SetText("CPS: 0")
        ntf("Auto Clicker", "Stats reset!", 2)
    end
})

ACR:AddLabel("━━━━━━━━━━━━━━━━")
ACR:AddLabel("Tips:")
ACR:AddLabel("• Use hotkey for quick toggle")
ACR:AddLabel("• Low delay = high CPS")
ACR:AddLabel("• Right click for special actions")
ACR:AddLabel("")
ACR:AddLabel("CPS Calculator:")
ACR:AddLabel("0.01s = 100 CPS")
ACR:AddLabel("0.05s = 20 CPS")
ACR:AddLabel("0.1s = 10 CPS")
ACR:AddLabel("1s = 1 CPS")
--DEVELOPERS TAB
local DevL=Tabs.Developers:AddLeftGroupbox("Information","user")

DevL:AddLabel("magfun_legend - Developer" , "Sword")
DevL:AddLabel("tudufhhvgu3 - Skidder")
DevL:AddLabel("ia_sigma61 - Friend & Owner of")
DevL:AddLabel("another Script *Doro hub*")
DevL:AddLabel("dvinechja - Friend & Says what to add")
DevL:AddLabel("Hasup_233 - Tester & Friend")
DevL:AddLabel("amdprocessor_death - Says what to add")
DevL:AddLabel("Vanessa735285 - Friend & Tester")
DevL:AddLabel("What are you even doing here? ;3")
DevL:AddLabel("━━━━━━━━━━━━━━━━")


--FINAL NOTIFY
ntf("a:sob ULTIMATE","v3.0 loaded! All functions active!",5)
print("╔═══════════════════════════╗")
print("║  a:sob ULTIMATE v3.0      ║")
print("║  All systems loaded!      ║")
print("║  Kick V1/V2/V3/V4 ready!  ║")
print("║  Silent Aim ready!        ║")
print("║  Mega Anti ready!         ║")
print("╚═══════════════════════════╝")
-- RED HIGHLIGHT FOR KICK EXE (ВСТАВЬ В САМЫЙ КОНЕЦ СКРИПТА, ПЕРЕД --END PART 5/5 FINAL)
task.spawn(function()
    task.wait(2)
    
    local function findKickExeUI()
        for _, descendant in pairs(Lib.GUI:GetDescendants()) do
            -- Находим текст "Kick exe"
            if descendant:IsA("TextLabel") and descendant.Text and descendant.Text:find("Kick exe") then
                -- Красный текст
                descendant.TextColor3 = Color3.fromRGB(255, 0, 0)
                
                -- Красная обводка
                local stroke = descendant:FindFirstChildOfClass("UIStroke") or Instance.new("UIStroke")
                stroke.Color = Color3.fromRGB(255, 0, 0)
                stroke.Thickness = 2
                stroke.Transparency = 0.2
                stroke.Parent = descendant
                
                -- Анимация пульсации
                task.spawn(function()
                    while descendant.Parent do
                        TS:Create(descendant, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                            TextColor3 = Color3.fromRGB(255, 100, 100)
                        }):Play()
                        task.wait(1)
                        TS:Create(descendant, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                            TextColor3 = Color3.fromRGB(255, 0, 0)
                        }):Play()
                        task.wait(1)
                    end
                end)
            end
            
            -- Красная галочка
            if descendant:IsA("Frame") and descendant.Parent and descendant.Parent.Name == "KickExe" then
                local boxStroke = descendant:FindFirstChildOfClass("UIStroke") or Instance.new("UIStroke")
                boxStroke.Color = Color3.fromRGB(255, 0, 0)
                boxStroke.Thickness = 2
                boxStroke.Parent = descendant
                
                for _, child in pairs(descendant:GetChildren()) do
                    if child:IsA("ImageLabel") then
                        child.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    elseif child:IsA("TextLabel") then
                        child.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                end
                
                -- Анимация чекбокса
                task.spawn(function()
                    while descendant.Parent do
                        TS:Create(boxStroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                            Transparency = 0
                        }):Play()
                        task.wait(1.5)
                        TS:Create(boxStroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                            Transparency = 0.5
                        }):Play()
                        task.wait(1.5)
                    end
                end)
            end
        end
    end
    
    findKickExeUI()
    task.wait(2)
    findKickExeUI()
end)
-- =========================================================================
-- RADAR SYSTEM (Beautiful Circular Radar)
-- =========================================================================
do
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local LocalPlayer = Players.LocalPlayer
    
    local RadarEnabled = false
    local RadarGui = nil
    local RadarConnection = nil
    local PlayerDots = {}
    
    -- Настройки радара
    local RADAR_SIZE = 180        -- Размер радара (круга)
    local RADAR_RANGE = 200       -- Дистанция обзора (в стадах)
    local DOT_SIZE = 8            -- Размер точек игроков
    local UPDATE_RATE = 0.05      -- Частота обновления (секунды)
    
    -- Цвета
    local BG_COLOR = Color3.fromRGB(34, 139, 34)      -- Зеленый фон (Forest Green)
    local PLAYER_COLOR = Color3.fromRGB(255, 50, 50)  -- Красные точки
    local SELF_COLOR = Color3.fromRGB(255, 255, 255)  -- Белая точка (ты)
    local BORDER_COLOR = Color3.fromRGB(20, 80, 20)   -- Темно-зеленая рамка
    
    -- Создание GUI радара
    local function CreateRadar()
        if RadarGui then RadarGui:Destroy() end
        
        -- Main ScreenGui
        RadarGui = Instance.new("ScreenGui")
        RadarGui.Name = "PlutoniumRadar"
        RadarGui.ResetOnSpawn = false
        RadarGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        RadarGui.Parent = game:GetService("CoreGui")
        
        -- Main Frame (круглый контейнер)
        local MainFrame = Instance.new("Frame")
        MainFrame.Name = "RadarFrame"
        MainFrame.Size = UDim2.new(0, RADAR_SIZE, 0, RADAR_SIZE)
        MainFrame.Position = UDim2.new(0, 20, 0, 300) -- Левый верхний угол (отступ вниз)
        MainFrame.AnchorPoint = Vector2.new(0, 0)
        MainFrame.BackgroundColor3 = BG_COLOR
        MainFrame.BorderSizePixel = 0
        MainFrame.Parent = RadarGui
        
        -- Закругление углов (делаем круг)
        local Corner = Instance.new("UICorner")
        Corner.CornerRadius = UDim.new(1, 0) -- Полный круг
        Corner.Parent = MainFrame
        
        -- Рамка (border)
        local Border = Instance.new("UIStroke")
        Border.Color = BORDER_COLOR
        Border.Thickness = 4
        Border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        Border.Parent = MainFrame
        
        -- Градиент (небольшой эффект глубины)
        local Gradient = Instance.new("UIGradient")
        Gradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 180, 50)),
            ColorSequenceKeypoint.new(0.5, BG_COLOR),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 100, 20))
        })
        Gradient.Rotation = 90
        Gradient.Parent = MainFrame
        
        -- Центральная точка (ты)
        local SelfDot = Instance.new("Frame")
        SelfDot.Name = "SelfDot"
        SelfDot.Size = UDim2.new(0, DOT_SIZE, 0, DOT_SIZE)
        SelfDot.Position = UDim2.new(0.5, 0, 0.5, 0)
        SelfDot.AnchorPoint = Vector2.new(0.5, 0.5)
        SelfDot.BackgroundColor3 = SELF_COLOR
        SelfDot.BorderSizePixel = 0
        SelfDot.ZIndex = 10
        SelfDot.Parent = MainFrame
        
        local SelfCorner = Instance.new("UICorner")
        SelfCorner.CornerRadius = UDim.new(1, 0)
        SelfCorner.Parent = SelfDot
        
        -- Свечение для центральной точки
        local SelfStroke = Instance.new("UIStroke")
        SelfStroke.Color = Color3.fromRGB(255, 255, 255)
        SelfStroke.Thickness = 2
        SelfStroke.Transparency = 0.3
        SelfStroke.Parent = SelfDot
        
        -- Крестик в центре (для точности)
        local function CreateLine(rotation)
            local Line = Instance.new("Frame")
            Line.Size = UDim2.new(0, 2, 0, 20)
            Line.Position = UDim2.new(0.5, 0, 0.5, 0)
            Line.AnchorPoint = Vector2.new(0.5, 0.5)
            Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Line.BackgroundTransparency = 0.7
            Line.BorderSizePixel = 0
            Line.Rotation = rotation
            Line.Parent = MainFrame
        end
        CreateLine(0)   -- Вертикальная
        CreateLine(90)  -- Горизонтальная
        
        -- Текст с дистанцией (опционально)
        local RangeLabel = Instance.new("TextLabel")
        RangeLabel.Name = "RangeLabel"
        RangeLabel.Size = UDim2.new(1, 0, 0, 25)
        RangeLabel.Position = UDim2.new(0, 0, 1, 5)
        RangeLabel.BackgroundTransparency = 1
        RangeLabel.Text = "Range: " .. RADAR_RANGE .. " studs"
        RangeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        RangeLabel.TextSize = 12
        RangeLabel.Font = Enum.Font.GothamBold
        RangeLabel.TextStrokeTransparency = 0.5
        RangeLabel.Parent = MainFrame
        
        return MainFrame
    end
    
    -- Создание точки игрока
    local function CreatePlayerDot(player)
        if PlayerDots[player] then return PlayerDots[player] end
        
        local Dot = Instance.new("Frame")
        Dot.Name = "PlayerDot_" .. player.Name
        Dot.Size = UDim2.new(0, DOT_SIZE, 0, DOT_SIZE)
        Dot.AnchorPoint = Vector2.new(0.5, 0.5)
        Dot.BackgroundColor3 = PLAYER_COLOR
        Dot.BorderSizePixel = 0
        Dot.ZIndex = 5
        Dot.Visible = false
        Dot.Parent = RadarGui.RadarFrame
        
        local DotCorner = Instance.new("UICorner")
        DotCorner.CornerRadius = UDim.new(1, 0)
        DotCorner.Parent = Dot
        
        -- Пульсирующее свечение
        local DotStroke = Instance.new("UIStroke")
        DotStroke.Color = PLAYER_COLOR
        DotStroke.Thickness = 2
        DotStroke.Transparency = 0.5
        DotStroke.Parent = Dot
        
        PlayerDots[player] = Dot
        return Dot
    end
    
    -- Обновление позиций точек
    local function UpdateRadar()
        local myChar = LocalPlayer.Character
        local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
        if not myRoot then return end
        
        local myPos = myRoot.Position
        local myLook = myRoot.CFrame.LookVector
        
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                local char = player.Character
                local root = char and char:FindFirstChild("HumanoidRootPart")
                
                if root then
                    local dot = PlayerDots[player] or CreatePlayerDot(player)
                    
                    -- Вычисление относительной позиции
                    local offset = root.Position - myPos
                    local distance = offset.Magnitude
                    
                    if distance <= RADAR_RANGE then
                        -- Поворот относительно направления взгляда
                        local x = offset.X * myLook.X + offset.Z * myLook.Z
                        local z = offset.X * -myLook.Z + offset.Z * myLook.X
                        
                        -- Масштабирование на радар
                        local scale = (RADAR_SIZE / 2) / RADAR_RANGE
                        local screenX = x * scale
                        local screenY = -z * scale -- Инвертируем Z для правильного отображения
                        
                        -- Ограничение в пределах круга
                        local distFromCenter = math.sqrt(screenX^2 + screenY^2)
                        if distFromCenter > (RADAR_SIZE / 2 - DOT_SIZE) then
                            local angle = math.atan2(screenY, screenX)
                            screenX = math.cos(angle) * (RADAR_SIZE / 2 - DOT_SIZE)
                            screenY = math.sin(angle) * (RADAR_SIZE / 2 - DOT_SIZE)
                        end
                        
                        dot.Position = UDim2.new(0.5, screenX, 0.5, screenY)
                        dot.Visible = true
                        
                        -- Цвет по дистанции (опционально)
                        local intensity = 1 - (distance / RADAR_RANGE)
                        dot.BackgroundColor3 = PLAYER_COLOR:Lerp(Color3.fromRGB(100, 20, 20), 1 - intensity)
                    else
                        dot.Visible = false
                    end
                else
                    if PlayerDots[player] then
                        PlayerDots[player].Visible = false
                    end
                end
            end
        end
    end
    
    -- Очистка точек
    local function CleanupDots()
        for player, dot in pairs(PlayerDots) do
            if not player.Parent or player == LocalPlayer then
                dot:Destroy()
                PlayerDots[player] = nil
            end
        end
    end
    
    -- Включение радара
    local function EnableRadar()
        RadarEnabled = true
        CreateRadar()
        
        -- Создание точек для всех игроков
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                CreatePlayerDot(player)
            end
        end
        
        -- Обновление радара
        RadarConnection = RunService.Heartbeat:Connect(function()
            if not RadarEnabled then return end
            UpdateRadar()
        end)
        
        -- Обработка новых игроков
        Players.PlayerAdded:Connect(function(player)
            if RadarEnabled and player ~= LocalPlayer then
                CreatePlayerDot(player)
            end
        end)
        
        -- Очистка при выходе игроков
        Players.PlayerRemoving:Connect(function(player)
            if PlayerDots[player] then
                PlayerDots[player]:Destroy()
                PlayerDots[player] = nil
            end
        end)
        
        Library:Notify({ Title = "Radar", Content = "Radar Enabled", Duration = 2 })
    end
    
    -- Выключение радара
    local function DisableRadar()
        RadarEnabled = false
        
        if RadarConnection then
            RadarConnection:Disconnect()
            RadarConnection = nil
        end
        
        if RadarGui then
            RadarGui:Destroy()
            RadarGui = nil
        end
        
        for _, dot in pairs(PlayerDots) do
            dot:Destroy()
        end
        PlayerDots = {}
        
        Library:Notify({ Title = "Radar", Content = "Radar Disabled", Duration = 2 })
    end
    
    -- UI Toggle
    MiscGroup:CreateToggle({
        Name = "Player Radar",
        Flag = "PlayerRadarToggle",
        Default = false,
        Callback = function(Value)
            SetToggleState("PlayerRadarToggle", Value)
            
            if Value then
                EnableRadar()
            else
                DisableRadar()
            end
        end
    })
    
    -- Слайдер для изменения дистанции (опционально)
    MiscGroup:CreateSlider({
        Name = "Radar Range",
        Flag = "RadarRange",
        Min = 50,
        Max = 500,
        Default = 200,
        Rounding = 0,
        Callback = function(v)
            RADAR_RANGE = v
            if RadarGui and RadarGui:FindFirstChild("RadarFrame") then
                local rangeLabel = RadarGui.RadarFrame:FindFirstChild("RangeLabel")
                if rangeLabel then
                    rangeLabel.Text = "Range: " .. v .. " studs"
                end
            end
        end
    })
end
