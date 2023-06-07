---@param name string
---@return boolean
local function hasResource(name)
	return GetResourceState(name):find('start') ~= nil
end

server = {
	core = (hasResource('es_extended') and 'esx') or (hasResource('qb-core') and 'qb') or (hasResource('ox_core') and 'ox') or '',
	voice = exports['saltychat'],
	players = {}
}



if server.core == 'esx' then
	local ESX = exports.es_extended:getSharedObject()
	server.getPlayers = ESX.GetExtendedPlayers

	if not ac.useCommand and not hasResource('ox_inventory') then
		ESX.RegisterUsableItem('radio', function(source)
			TriggerClientEvent('ac_radio:openRadio', source)
		end)

		if ac.noRadioDisconnect then
			AddEventHandler('esx:onRemoveInventoryItem', function(source, name, count)
				if name == 'radio' and count < 1 then
					TriggerClientEvent('ac_radio:disableRadio', source)
					server.voice:SetPlayerRadioChannel(source, '', true)
				end
			end)
		end
	end

elseif server.core == 'qb' then
	local QB = exports['qb-core']:GetCoreObject()
	server.getPlayers = QB.Functions.GetQBPlayers

	if not ac.useCommand and not hasResource('ox_inventory') then
		QB.Functions.CreateUseableItem('radio', function(source)
			TriggerClientEvent('ac_radio:openRadio', source)
		end)
	end
end