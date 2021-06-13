Server.onRefreshStats.Add(function(unit)
    RefreshSk(unit)
end)

function RefreshSk(unit)
	-- 쿨타임 감소할 스킬 범위 데이터아이디
	-- 1 에서 80 번 스킬의 쿨타임을 스텟비례로 감소시킵니다.
	local minSkillId = 1
	local maxSkillId = 80

	for k = minSkillId,maxSkillId do
		if unit.HasSkill(k) == true then
			-- 스킬의 액션이름이 1일때 쿨타임감소 대상에서 제외됩니다.
			if Server.GetSkill(k).actionName == '1' then
			else	
				-- unit.GetStat(101)에서 쿨타임감소로 사용할 스텟을 지정합니다.
				-- 예제 파일은 데이터베이스 시스템에서 Custom1이 쿨타임감소 입니다.
				unit.FireEvent("COOLSET",k,unit.GetStat(103),Server.GetSkill(k).coolTime)	
			end
		end
	end
end
