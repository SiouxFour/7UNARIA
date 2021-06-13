function partyTick()

    local unitData = {}
    if unit.party == '' then
        return
    end

    for k, v in pairs(unit.party.players) do
        unitData[k] = {name = v.name, hp = v.unit.hp, maxHP = v.unit.maxHP, mp = v.unit.mp, maxMP = v.unit.maxMP}
    end
    
    local datas1 = Utility.JSONSerialize(unitData)
    unit.FireEvent('party', datas1)
end
Server.GetTopic('tickHP').Add(partyTick)

Server.playerJoinPartyCallback = function(roomPlayer,party)
    
    roomPlayer.unit.FireEvent('partyIn')    
    return true 
end

Server.playerLeavePartyCallback = function(roomPlayer,party)

    roomPlayer.unit.FireEvent('partyOut')
end
