local Games = {
  [4458733955] = "Blade Simulator",
}

local GameName = Games[game.PlaceId] or (function()
    local Game = "No Game Detected"
    return Game
end)()

if GameName == "Blade Simulator" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Big-Daddy-Gon/Kai-Hub/master/Blade%20Sim.Lua", true))()
elseif GameName == "Other Game" then
    loadstring(game:HttpGet("", true))()
end
