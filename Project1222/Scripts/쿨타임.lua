Client.GetTopic("COOLSET").Add(function(i,stat,cool)
	
	-- 스텟이 900 이상일때 900으로 고정해줍니다.
	-- 쿨타임감소가 100%되면 0초가 되기때문에 최대치를 90%까지 설정.
	-- 아래 900 숫자를 바꾸면 최대치 설정 가능 900 = 90%, 500 = 50%
	if stat >= 40 then
		stat = 40
	end

	local cooltimeidx = cool - (cool/100*stat)
	-- 최소 쿨타임 0.5초
	local minCoolTime = 0.3
	-- 감소된 쿨타임이 0.5초 이하일때 0.5초로 고정해줍니다.
	if cooltimeidx <= minCoolTime then
		cooltimeidx = minCoolTime
	end
	-- 기존 스킬의 쿨타임이 0.5초 이하일때  0.5초로 고정해줍니다.
	if Client.GetSkill(i).coolTime <= minCoolTime then
		cooltimeidx = minCoolTime
	end
	Client.GetSkill(i).coolTime = cooltimeidx
end)
