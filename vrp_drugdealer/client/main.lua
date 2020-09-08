local CordsSeeds = {
    {2216.3596191406,5576.68359375,53.635818481445},
    {2218.6608886719,5576.6850585938,53.714641571045},
    {2220.5715332031,5576.4047851563,53.649070739746},
    {2222.9497070313,5576.490234375,53.769706726074},
    {2225.3149414063,5576.3686523438,53.80793762207},
    {2227.6647949219,5576.2822265625,53.82071685791},
    {2230.1958007813,5576.1440429688,53.920837402344},
    {2232.6923828125,5575.8251953125,53.980484008789}
}

Citizen.CreateThread(function()
    while true do 
        Wait(0)
        local DrugDealer = PlayerPedId(-1)
        local CoordsDrugDealer = GetEntityCoords(DrugDealer)
        for k,v in pairs (CordsSeeds) do 
            local Distance = GetDistanceBetweenCoords(CoordsDrugDealer.x, CoordsDrugDealer.y, CoordsDrugDealer.z, v[1], v[2], v[3], true)
            if Distance < 2 then 
                if (Vdist(CoordsDrugDealer.x, CoordsDrugDealer.y, CoordsDrugDealer.z,v[1],v[2],v[3])) then
                    heky_text("Press ~r~[E] ~w~for ~c~Seeds")
                        DrawMarker(29, v[1],v[2],v[3] , 0, 0, 0, 0, 0, 0, 0.5001,0.5001,0.5001, 173, 22, 44, 255, 1, 0, 0, 1, 0, 0, 0)
                        if Distance < 1 then 
                            if IsControlJustPressed(0, 38) then
                                TriggerServerEvent('hekyseeds')
                                TaskStartScenarioInPlace(DrugDealer, 'PROP_HUMAN_PARKING_METER', 0, true)
                                Wait(1000)
                                TriggerServerEvent('hekyreceivesseeds')
                                ClearPedTasks(DrugDealer)
                            end
                        end
                    end
                end
            end
        end
    end)

local CoordsHarness = {
    {2842.8073730469,1457.0086669922,24.735801696777}
}

Citizen.CreateThread(function()
    while true do 
        Wait(0)
        local DrugDealer = PlayerPedId(-1)
        local CoordsDrugDealer = GetEntityCoords(DrugDealer)
        for k,v in pairs (CoordsHarness) do 
            local Distance = GetDistanceBetweenCoords(CoordsDrugDealer.x, CoordsDrugDealer.y, CoordsDrugDealer.z, v[1], v[2], v[3], true)
            if Distance < 1 then 
                if (Vdist(CoordsDrugDealer.x, CoordsDrugDealer.y, CoordsDrugDealer.z,v[1],v[2],v[3])) then
                    heky_text("Press ~r~[E] ~w~for ~c~Harness")
                        DrawMarker(29, v[1],v[2],v[3] , 0, 0, 0, 0, 0, 0, 0.5001,0.5001,0.5001, 173, 22, 44, 255, 1, 0, 0, 1, 0, 0, 0)
                        if Distance < 1 then 
                            if IsControlJustPressed(0, 38) then
                                TriggerServerEvent('hekyharness')
                                TaskStartScenarioInPlace(DrugDealer, 'PROP_HUMAN_PARKING_METER', 0, true)
                                Wait(1000)
                                TriggerServerEvent('hekyreceivesharness')
                                ClearPedTasks(DrugDealer)
                            end
                        end
                    end
                end
            end
        end
    end)

local CoordsBenzoilmetilecgonina = {
    {1702.4156494141,3290.3952636719,48.92200088501}
}

Citizen.CreateThread(function()
    while true do 
        Wait(0)
        local DrugDealer = PlayerPedId(-1)
        local CoordsDrugDealer = GetEntityCoords(DrugDealer)
        for k,v in pairs (CoordsBenzoilmetilecgonina) do 
            local Distance = GetDistanceBetweenCoords(CoordsDrugDealer.x, CoordsDrugDealer.y, CoordsDrugDealer.z, v[1], v[2], v[3], true)
            if Distance < 1 then 
                if (Vdist(CoordsDrugDealer.x, CoordsDrugDealer.y, CoordsDrugDealer.z,v[1],v[2],v[3])) then
                    heky_text("Press ~r~[E] ~w~for ~c~Benzoilmetilecgonina")
                        DrawMarker(29, v[1],v[2],v[3] , 0, 0, 0, 0, 0, 0, 0.5001,0.5001,0.5001, 173, 22, 44, 255, 1, 0, 0, 1, 0, 0, 0)
                        if Distance < 1 then 
                            if IsControlJustPressed(0, 38) then
                                TriggerServerEvent('hekybenzoilmetilecgonina')
                                TaskStartScenarioInPlace(DrugDealer, 'PROP_HUMAN_PARKING_METER', 0, true)
                                Wait(1000)
                                TriggerServerEvent('hekyreceivesbenzoilmetilecgonina')
                                ClearPedTasks(DrugDealer)
                            end
                        end
                    end
                end
            end
        end
    end)

local TakeJob = {
    {1247.7005615234,-2916.1640625,26.456216812134}
}

Citizen.CreateThread(function()
    while true do
        Wait(0)
        local DrugDealer = PlayerPedId(-1)
        local CoordsDrugDealer = GetEntityCoords(DrugDealer)
        for k,v in pairs (TakeJob) do 
            local Distance = GetDistanceBetweenCoords(CoordsDrugDealer.x, CoordsDrugDealer.y, CoordsDrugDealer.z, v[1], v[2], v[3], true)
            if Distance < 1 then 
                if IsControlJustPressed(0, 38) then
                    TriggerServerEvent('hekydrugdealer')
                    Wait(5000)
                end
            end
        end
    end
end)

local createNPC = {
    {1247.5642089844,-2915.5270996094,25.448165893555,"",270.77,0x26A562B7,"ig_ortega"}
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
        local pos = GetEntityCoords(GetPlayerPed(-1), true)
        Citizen.Wait(0)
        for _,v in pairs(createNPC) do
            x = v[1]
            y = v[2]
            z = v[3]
            if(Vdist(pos.x, pos.y, pos.z, x, y, z) < 2.0)then
                heky_text("Press ~r~[E] ~w~to get ~c~Hired")
            end
        end
    end
end)

function heky_text(m_text, showtime)
    SetTextEntry_2("STRING")
    AddTextComponentString(m_text)
    DrawSubtitleTimed(showtime, 1)
  end
