workspace.CurrentRooms.ChildAdded:Connect(function(Room)
    Room:WaitForChild("Assets")
    for i = 1, 10 do
        for _,Obj in pairs(Room.Assets:GetChildren()) do
            if Obj.Name == "Rooms_Locker" then
                Instance.new("Highlight", Obj)
            end
        end
        task.wait(1)
    end
end)
