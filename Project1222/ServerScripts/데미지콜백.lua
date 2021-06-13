Server.damageCallback = function(a, b, damage, SkillID)

if b.type == 2 then -- 공격당하는게 몬스터일시
   --치명타
   local pl = a.luk
   local pds = a.agi / 50
   local pr = rand(1,101)
   local plt = pl - pr
   local sk = SkillID
   local rands = rand(9,12) / 10

   local bnn = b.monsterData.name
   local bh = b.monsterData.maxHP
   local bhh = b.hp
   if b.agi >= 10 then
      bb = damage - b.defense
      eed = bhh - bb

      if eed > bhh then
         eed = bhh
      end

      if eed < 0 then
         eed = 0
      end

      a.FireEvent("bh", bh,eed,bnn)
   end

   --치명타 적용
   if plt > 0 then 
      return damage * pds * rands - b.def, true
   end
   return damage * rands - b.def, false
else -- 공격당하는게 몬스터가 아닐때 (유저)
   return damage - b.def
end



end