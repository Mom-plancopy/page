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
