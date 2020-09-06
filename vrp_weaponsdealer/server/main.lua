local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_weaponsdealer")

local attachments = math.random(1, 4)

RegisterServerEvent('hekyattachments')
AddEventHandler('hekyattachments', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    if vRP.hasGroup({user_id, "Weapons Dealer"}) then
    vRPclient.notify(player,{"~w~You started producing ~c~Attachments"})
    end
end)

RegisterServerEvent('hekyproductionattachments')
AddEventHandler('hekyproductionattachments', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    if vRP.hasGroup({user_id, "Weapons Dealer"}) then
    vRP.giveInventoryItem({user_id, 'attachments', attachments, true})
    vRPclient.notify(player,{"~w~You produced ~c~Attachments"})
    end
end)

local ak47 = math.random(1, 3)

RegisterServerEvent('hekyak47')
AddEventHandler('hekyak47', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    if vRP.hasGroup({user_id, "Weapons Dealer"}) then
    vRPclient.notify(player,{"~w~You started producing ~c~Ak47"})
    end
end)

RegisterServerEvent('hekyak47craft')
AddEventHandler('hekyak47craft', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    if vRP.hasGroup({user_id, "Weapons Dealer"}) then
    vRP.giveInventoryItem({user_id, 'AK47', ak47, true})
    vRPclient.notify(player,{"~w~You produced ~c~Ak47"})
    end
end)

local m4a1 = math.random(1, 3)

RegisterServerEvent('hekym4a1')
AddEventHandler('hekym4a1', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    if vRP.hasGroup({user_id, "Weapons Dealer"}) then
    vRPclient.notify(player,{"~w~You started producing ~c~M4A1"})
    end
end)

RegisterServerEvent('hekym4a1craft')
AddEventHandler('hekym4a1craft', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    if vRP.hasGroup({user_id, "Weapons Dealer"}) then
    vRP.giveInventoryItem({user_id, 'M4A1', m4a1, true})
    vRPclient.notify(player,{"~w~You produced ~c~M4A1"})
    end
end)

RegisterServerEvent('hekyweaponsdealer')
AddEventHandler('hekyweaponsdealer', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    vRP.addUserGroup({user_id, 'Weapons Dealer'})
    vRPclient.notify(player,{"~w~You took a job ~c~Weapons Dealer"})
end)