--------------------------------------------------------------------------------------------------------------------
plr = game:GetService("Players").LocalPlayer
plrgui = game.CoreGui
plrscr = plr.PlayerScripts
sounds = game:GetService("SoundService")
startergui = game.StarterGui
repl = game:GetService("ReplicatedStorage")
replc = game:GetService("ReplicatedFirst")
mouse = plr:GetMouse()
chat = game:GetService("TextChatService")
--------------------------------------------------------------------------------------------------------------------

local Rayfield = loadstring(game:HttpGet("https://sirius.menu/gen2"))()

local window = Rayfield:CreateWindow({
    name = "Pochang UI",
    subtitle = "By Pochang",
    theme = "cobalt",
})

local tab = window:CreateTab({ name = "General"})
tab:CreateSection({ name = "General Options"})

tab:CreateButton({
    name = "Unload",
    description = "Unloads the panel.",
    callback = function()
        window:Popup({
            title = "Unload the panel?",
            content = "This will unload the panel.",
            options = {
                {text = "Cancel"},
                {text = "Unload",style = "danger",callback = function() window:Unload() end},
            },
        })
    end,
})

tab:CreateSlider({
    name = "Field of view",
    range = { 70, 120 },
    increment = 1,
    value = workspace.CurrentCamera.FieldOfView,
    suffix = "°",
    callback = function(value)
        workspace.CurrentCamera.FieldOfView = value
    end,
})

tab:CreateSlider({
    name = "Walkspeed",
    range = { 8, 200 },
    increment = 1,
    value = plr.Character.Humanoid.WalkSpeed,
    suffix = "stud/min",
    callback = function(value)
        plr.Character.Humanoid.WalkSpeed = value
    end,
})
