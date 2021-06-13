Server.GetTopic("AUTO_MODE_SERVER").Add(function(id)
    local Auto_Mode = true
    -- 아래 직업 번호 조건분기로 직업간 자동사냥 범위
    -- true 근접사냥
    -- false 원거리사냥
    if unit.job == 2 then
        Auto_Mode = true
    elseif unit.job == 3 then
        Auto_Mode = false
    end
    unit.FireEvent("AUTO_MODE",Auto_Mode)
end) -- 

Server.GetTopic("GLOBAL_EVENT").Add(function(id)
    unit.StartGlobalEvent(id)
end) 