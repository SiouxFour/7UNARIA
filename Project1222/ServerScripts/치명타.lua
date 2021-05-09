Server.damageCallback = function(a, b, damage, SkillID)
    local pl = a.luk
    local pds = a.agi
    local pr = rand(1,101)
    local plt = pl - pr
    local sk = SkillID
    local rands = rand(9,12) / 10

    if plt > 0 then 
        return damage * pds * rands - b.def, true
    end

    return damage * rands - b.def, false
end