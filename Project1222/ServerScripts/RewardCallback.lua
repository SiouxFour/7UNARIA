-- ATTACK = 0
-- DEFENSE = 1
-- MAGIC_ATTACK = 2
-- MAGIC_DEFENSE = 3
-- AGILITY = 4
-- LUCKY = 5
-- HP = 6
-- MP = 7
-- CUSTOM_1 = 101 
-- CUSTOM_32 = 132

-- 아래 local 변수들을 이용해 조절이 가능합니다.
local mainStat_Gold = 102 -- 경험치 및 골드를 변화시킬 메인 스텟을 정해주세요. 위의 주석 참고
local mainStat_Exp = 101 -- 경험치 및 골드를 변화시킬 메인 스텟을 정해주세요. 위의 주석 참고

local reward_System = true -- 스텟에 따른 경험치 및 골드 적용 기능을 사용하면 true 사용안하시면 false를 넣어주세요.
local reward_Gold = true -- 골드 지급 사용하면 true 사용안하시면 false를 넣어주세요.
local reward_Exp = true -- 경험치 지급 사용하면 true 사용안하시면 false를 넣어주세요.

local min_Give_Gold = -1 -- 지급할 최소 골드를 넣어주세요. -1 은 몬스터 최소 드랍 골드로 정해집니다.
local max_Give_Gold = -1 -- 지급할 최대 골드를 넣어주세요. -1 은 몬스터 최대 드랍 골드로 정해집니다.
local type_Give_Gold = 0 -- 지급할 골드의 타입. 0 은 최소 골드 기준, 1 은 최대 골드 기준, 2 는 최소와 최대 골드값 사이 랜덤

local def_Give_Exp = -1 -- 지급할 경험치를 넣어주세요. -1 은 몬스터 기본 드랍 경험치로 정해집니다.

-- 아래 수치 조절로 상세한 획득량 조절가능
-- 예) 스텟이 1이고 아래 수치가 100이면 100% 획득,
-- 예) 스텟이 10이고 아래 수치가 100이면 1,000% 획득,
-- 예) 스텟이 10이고 아래 수치가 500이면 5,000% 획득,
local multipl_Gold = 1 -- 스텟 1당 지급할 골드 배수를 정해주세요. 100당 100% , 1은 1%
local multipl_Exp = 1 -- 스텟 1당 지급할 경험치 배수를 정해주세요. 100당 100% , 1은 1%

-- 해당 스크립트는 몬스터 처치시 얻게되는 골드와 셩험치를 스텟에 따라 추가 지급합니다.
-- 몬스터를 잡게되면 기본 경험치나 골드를 얻고 추가로 얻습니다.
-- 예) 경험치 100 몬스터 처치시 100(몬스터처치시) + (스텟에따른 추가경험치)
-- 테스트시 서버창에 얻게된 경험치나 골드 기록확인이 가능합니다.

-- 데미지비례보상 관련 변수
local BossMonster = {
    dataID = {},
    AddItem = {}
}
local list = {}
BossMonster.dataID[1] = 55 -- 보스 몬스터 dataID
BossMonster.AddItem[1] = {dataID = {243, 243, 243, 243, 243, 243, 243, 243, 243, 243}, Count = {20, 15, 10, 7, 5, 5, 4, 3, 3, 3}} -- 보스 몬스터 처치시 획득할 아이템 dataID, Count 왼쪽부터 1, 2, 3, 4등  4등 초과시 아무 보상 획득 x

Server.rewardCallback = 
function(unit,monster,damage)
	Damage_Reward_Boss(unit,monster,damage)
	if reward_System == true then
		unit.AddGameMoney(GoldSystem(unit,monster))
		unit.AddEXP(ExpSystem(unit,monster))
	end
end
function Damage_Reward_Boss(unit,monster,damage)
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

function GoldSystem(unit,monster)
	if reward_Gold == false then
		return 0
	end
	local stat = unit.GetStat(mainStat_Gold)
	local multipl = stat/100*multipl_Gold
	local minGold = 0
	local maxGold = 0
	local finalGold = 0

	if min_Give_Gold == -1 then
		minGold = monster.monsterData.dropMinGameMoney
	else
		minGold = min_Give_Gold
	end
	if max_Give_Gold == -1 then
		maxGold = monster.monsterData.dropMaxGameMoney
	else
		maxGold = max_Give_Gold
	end
	if type_Give_Gold == 0 then
		finalGold = minGold
	elseif type_Give_Gold == 1 then
		finalGold = maxGold
	elseif type_Give_Gold == 2 then
		finalGold = rand(minGold,maxGold+1)
	end
	finalGold = finalGold*multipl
	print("추가 골드 : "..finalGold)
	return finalGold
end
function ExpSystem(unit,monster)
	if reward_Exp == false then
		return 0
	end
	local stat = unit.GetStat(mainStat_Exp)
	local multipl = stat/100*multipl_Exp
	local finalExp = 0

	if def_Give_Exp == -1 then
		finalExp = monster.monsterData.dropEXP
	else
		finalExp = def_Give_Exp
	end

	finalExp = finalExp*multipl
	print("추가 경험치 : "..finalExp)
	return finalExp
end