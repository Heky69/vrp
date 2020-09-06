local LocationAttachments = {
    {1444.1568603516,6333.14453125,23.889707565308},
}

Citizen.CreateThread(function()
    while true do 
        Wait(0)
        local WeaponsDealer = PlayerPedId(-1)
        local CoordsWeaponsDealer = GetEntityCoords(WeaponsDealer)
        for k,v in pairs (LocationAttachments) do 
            local Distance = GetDistanceBetweenCoords(CoordsWeaponsDealer.x, CoordsWeaponsDealer.y, CoordsWeaponsDealer.z, v[1], v[2], v[3], true)
            if Distance < 2 then 
                if (Vdist(CoordsWeaponsDealer.x, CoordsWeaponsDealer.y, CoordsWeaponsDealer.z,v[1],v[2],v[3])) then
                    heky_text("~w~Press ~r~[E] ~w~for ~c~Attachments")
                        DrawMarker(29, v[1],v[2],v[3] , 0, 0, 0, 0, 0, 0, 0.5001,0.5001,0.5001, 173, 22, 44, 255, 1, 0, 0, 1, 0, 0, 0)
                        if Distance < 1 then 
                            if IsControlJustPressed(0, 38) then
                                TriggerServerEvent('hekyattachments')
                                TaskStartScenarioInPlace(WeaponsDealer, 'PROP_HUMAN_PARKING_METER', 0, true)
                                Wait(1000)
                                TriggerServerEvent('hekyproductionattachments')
                                ClearPedTasks(WeaponsDealer)
                            end
                        end
                    end
                end
            end
        end
    end)

local CoordsAk47 = {
    {2327.1684570313,2529.7922363281,46.667728424072}
}

Citizen.CreateThread(function()
    while true do 
        Wait(0)
        local WeaponsDealer = PlayerPedId(-1)
        local CoordsWeaponsDealer = GetEntityCoords(WeaponsDealer)
        for k,v in pairs (CoordsAk47) do 
            local Distance = GetDistanceBetweenCoords(CoordsWeaponsDealer.x, CoordsWeaponsDealer.y, CoordsWeaponsDealer.z, v[1], v[2], v[3], true)
            if Distance < 1 then 
                if (Vdist(CoordsWeaponsDealer.x, CoordsWeaponsDealer.y, CoordsWeaponsDealer.z,v[1],v[2],v[3])) then
                    heky_text("~w~Press ~r~[E] ~w~for ~c~Ak47")
                        DrawMarker(29, v[1],v[2],v[3] , 0, 0, 0, 0, 0, 0, 0.5001,0.5001,0.5001, 173, 22, 44, 255, 1, 0, 0, 1, 0, 0, 0)
                        if Distance < 1 then 
                            if IsControlJustPressed(0, 38) then
                                TriggerServerEvent('hekyak47')
                                TaskStartScenarioInPlace(WeaponsDealer, 'PROP_HUMAN_PARKING_METER', 0, true)
                                Wait(1000)
                                TriggerServerEvent('hekyak47craft')
                                ClearPedTasks(WeaponsDealer)
                            end
                        end
                    end
                end
            end
        end
    end)

local CoordsM4A1 = {
    {1743.7073974609,-1623.1519775391,116.19491577148}
}

Citizen.CreateThread(function()
    while true do 
        Wait(0)
        local WeaponsDealer = PlayerPedId(-1)
        local CoordsWeaponsDealer = GetEntityCoords(WeaponsDealer)
        for k,v in pairs (CoordsM4A1) do 
            local Distance = GetDistanceBetweenCoords(CoordsWeaponsDealer.x, CoordsWeaponsDealer.y, CoordsWeaponsDealer.z, v[1], v[2], v[3], true)
            if Distance < 1 then 
                if (Vdist(CoordsWeaponsDealer.x, CoordsWeaponsDealer.y, CoordsWeaponsDealer.z,v[1],v[2],v[3])) then
                    heky_text("~w~Press ~r~[E] ~w~for ~c~M4A1")
                        DrawMarker(29, v[1],v[2],v[3] , 0, 0, 0, 0, 0, 0, 0.5001,0.5001,0.5001, 173, 22, 44, 255, 1, 0, 0, 1, 0, 0, 0)
                        if Distance < 1 then 
                            if IsControlJustPressed(0, 38) then
                                TriggerServerEvent('hekym4a1')
                                TaskStartScenarioInPlace(WeaponsDealer, 'PROP_HUMAN_PARKING_METER', 0, true)
                                Wait(1000)
                                TriggerServerEvent('hekym4a1craft')
                                ClearPedTasks(WeaponsDealer)
                            end
                        end
                    end
                end
            end
        end
    end)

local CoordsTakeJob = {
    {3800.5378417969,4439.8720703125,4.2656474113464}
}

Citizen.CreateThread(function()
    while true do
        Wait(0)
        local WeaponsDealer = PlayerPedId(-1)
        local CoordsWeaponsDealer = GetEntityCoords(WeaponsDealer)
        for k,v in pairs (CoordsTakeJob) do 
            local Distance = GetDistanceBetweenCoords(CoordsWeaponsDealer.x, CoordsWeaponsDealer.y, CoordsWeaponsDealer.z, v[1], v[2], v[3], true)
            if Distance < 1 then 
                if IsControlJustPressed(0, 38) then
                    TriggerServerEvent('hekyweaponsdealer')
                    Wait(5000)
                end
            end
        end
    end
end)

local createNPC = {
    {3800.5378417969,4439.8720703125,3.249743938446,"",340.77,0x231AF63F,"g_m_y_ballaorig_01"}
}

Citizen.CreateThread(function()

    for _,v in pairs(createNPC) do
      RequestModel(GetHashKey(v[7]))
      while not HasModelLoaded(GetHashKey(v[7])) do
        Wait(1)
      end
      RequestAnimDict("mini@strip_club@idles@bouncer@base")
      while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
        Wait(1)
      end
      ped =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
      SetEntityHeading(ped, v[5])
      FreezeEntityPosition(ped, true)
      SetEntityInvincible(ped, true)
      SetBlockingOfNonTemporaryEvents(ped, true)
      TaskPlayAnim(ped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
end)

Citizen.CreateThread(function()
    while true do
        local coords = GetEntityCoords(GetPlayerPed(-1), true)
        Citizen.Wait(0)
        for _,v in pairs(createNPC) do
            x = v[1]
            y = v[2]
            z = v[3]
            if(Vdist(coords.x, coords.y, coords.z, x, y, z) < 2.0)then
                heky_text("~w~Press ~r~[E] ~w~for ~c~Weapons Dealer")
            end
        end
    end
end)

function heky_text(m_text, showtime)
    SetTextEntry_2("STRING")
    AddTextComponentString(m_text)
    DrawSubtitleTimed(showtime, 1)
  end
