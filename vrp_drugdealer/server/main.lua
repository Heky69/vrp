local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_drugdealer")

local seeds = math.random(1, 3)

RegisterServerEvent('hekyseeds')
AddEventHandler('hekyseeds', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    if vRP.hasGroup({user_id, "Drug Dealer"}) then
    vRPclient.notify(player,{"You started picking ~c~Seeds"})
    end
end)

RegisterServerEvent('hekyreceivesseeds')
AddEventHandler('hekyreceivesseeds', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    if vRP.hasGroup({user_id, "Drug Dealer"}) then
    vRP.giveInventoryItem({user_id, 'seeds', seeds, true})
    vRPclient.notify(player,{"Received ~c~Seeds"})
    end
end)

local harness = math.random(1, 3)

RegisterServerEvent('hekyharness')
AddEventHandler('hekyharness', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    if vRP.hasGroup({user_id, "Drug Dealer"}) then
    vRPclient.notify(player,{"You started producing ~c~Harness"})
    end
end)

RegisterServerEvent('hekyreceivesharness')
AddEventHandler('hekyreceivesharness', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    if vRP.hasGroup({user_id, "Drug Dealer"}) then
    vRP.giveInventoryItem({user_id, 'harness', harness, true})
    vRPclient.notify(player,{"Received ~c~Harness"})
    end
end)

local benzoilmetilecgonina = math.random(1, 3)

RegisterServerEvent('hekybenzoilmetilecgonina')
AddEventHandler('hekybenzoilmetilecgonina', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    if vRP.hasGroup({user_id, "Drug Dealer "}) then
    vRPclient.notify(player,{"You started producing ~c~Benzoilmetilecgonina"})
    end
end)

RegisterServerEvent('hekyreceivesbenzoilmetilecgonina')
AddEventHandler('hekyreceivesbenzoilmetilecgonina', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    if vRP.hasGroup({user_id, "Drug Dealer"}) then
    vRP.giveInventoryItem({user_id, 'benzoilmetilecgonina', benzoilmetilecgonina, true})
    vRPclient.notify(player,{"Received ~c~Benzoilmetilecgonina"})
    end
end)

RegisterServerEvent('hekydrugdealer')
AddEventHandler('hekydrugdealer', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    vRP.addUserGroup({user_id, 'Drug Dealer'})
    vRPclient.notify(player,{"You got hired successfully ~c~Drug Dealer"})
end)