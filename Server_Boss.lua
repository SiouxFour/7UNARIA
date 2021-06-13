local BossMonster = {
    dataID = {},
    AddItem = {}
}

local list = {}

BossMonster.dataID[1] = 55 -- 보스 몬스터 dataID

BossMonster.AddItem[1] = {dataID = {243, 243, 243, 243, 243, 243, 243, 243, 243, 243}, Count = {20, 15, 10, 7, 5, 5, 4, 3, 3, 3}} -- 보스 몬스터 처치시 획득할 아이템 dataID, Count 왼쪽부터 1, 2, 3, 4등  4등 초과시 아무 보상 획득 x

Server.rewardCallback = function(unit, monster, damage)
    if not unit or not monster then return end
    for i = 1, #BossMonster.dataID do
        if BossMonster.dataID[i] == monster.monsterID then
            list[#list+1] = {}
            list[#list].name = unit.player.name
            list[#list].damage = damage
            list[#list].id = unit.player.id
            unit.SendCenterLabel("잠시만 기다려 주십시오")
            Server.RunLater(function()
                table.sort(list, function(unit, monster) return unit.damage > monster.damage end)
                unit.FireEvent("Server_Boss", json.serialize(list))
                for b = 1, #list do
                    if unit.player.id == list[b].id then
                        if not BossMonster.AddItem[i].dataID[b] then
                            unit.SendCenterLabel("당신은 순위권에 들지 못하였습니다.")
                        else
                            --unit.SendCenterLabel('당신은'..b..'등')
                            unit.AddItem(BossMonster.AddItem[i].dataID[b], BossMonster.AddItem[i].Count[b])
                        end
                    end
                end
            end, 0.7)
            Server.RunLater(function()
                list = {}
            end, 1.7)
            break
        end
    end
end