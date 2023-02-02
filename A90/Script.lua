--A-90 Screen Disabler
local Plr = game.Players.LocalPlayer
local ModuleScripts = {
   MainGame = Plr.PlayerGui.MainUI.Initiator.Main_Game,
}

ModuleScripts.MainGame.RemoteListener.Modules["A90"].Name = "Baller" ``` 

--A-90 damage disabler
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(self, ...)
  local args = {...}
  if getnamecallmethod() == 'FireServer' and self.Name == 'A90' then
    args[1] = false
  end
  return old(self, unpack(args))
end)

--A-90 auto-stop moving
game.ReplicatedStorage.EntityInfo.A90.OnClientEvent:Connect(function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
    task.wait(1.75)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)
