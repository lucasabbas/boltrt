button = godot.Button.__new()
button.text = "Press me"
rootNode:add_child(button)

--[[godot.SignalToFunc.connect(button, "pressed", function()
    print("Button pressed")

    
end)]]

button.toggle_mode = not button.toggle_mode

godot.SignalToFunc.connect(button, "toggled", function(buttonPressed)
    print(buttonPressed)
end)