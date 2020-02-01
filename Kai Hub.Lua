local Games = {
  [4458733955] = "Blade Simulator",
}

local GameName = Games[game.PlaceId] or (function()
    local Game = "No Game Detected"
    return Game
end)()

if GameName == "Blade Simulator" then
    loadstring(game:HTTPGet(""))()
elseif GameName == "Other Game" then
    loadstring(game:HTTPGet(""))()
end
