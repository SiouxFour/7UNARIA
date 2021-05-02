
----------------------사용자 정의 설정-------------------

--레벨 텍스트 위치 및 크기 설정
lv_x_pos = 15            --기본 250
lv_y_pos = 0            --기본 335
lv_text_size = 20         --기본 25


--체력 텍스트 위치 및 크기 설정
hp_text_x_pos = 75       --기본 330
hp_text_y_pos = 13       --기본 375
hp_text_size = 12         --기본 15


--마력 텍스트 위치 및 크기 설정
mp_text_x_pos = 175       --기본 330
mp_text_y_pos = 13       --기본 405
mp_text_size = 12         --기본 15


--경험치 텍스트 위치 및 크기 설정
xp_x_pos = 0              --기본 0
xp_y_pos = 444            --기본 435
xp_text_size = 12         --기본 15


--게이지 위치 설정
gauge_hp_x_pos = 75      --체력 게이지의 가로 위치 기본240
gauge_hp_y_pos = 15      --체력 게이지의 세로 위치 기본375

gauge_mp_x_pos = 175      --마력 게이지의 가로 위치 기본240
gauge_mp_y_pos = 15      --마력 게이지의 세로 위치 기본405
 
gauge_xp_x_pos = 0        --경험치 게이지의 가로 위치 기본0
gauge_xp_y_pos = 476      --경험치 게이지의 세로 위치 기본470


--체력 투명도 설정
hpop = 255                --기본값 255

--마력 투명도 설정
mpop = 255                --기본값 255

--경험치 투명도 설정
xpop = 255                --기본값 255

--구름 투명도 설정
clop = 255                --기본값 255



--게이지 크기 설정
gauge_hp_x_size = 90      --체력 게이지의 가로 길이 기본260
gauge_hp_y_size = 16       --체력 게이지의 세로 길이 기본25

gauge_mp_x_size = 90      --마력 게이지의 가로 길이 기본260
gauge_mp_y_size = 16       --마력 게이지의 세로 길이 기본25

gauge_xp_x_size = Client.width      --경험치 게이지의 가로 길이
gauge_xp_y_size = 4       --경험치 게이지의 세로 길이 기본10





--구름 위치 설정
cloud_x_pos = 0           --기본 0
cloud_y_pos = 0           --기본 0

--구름 크기 설정
cloud_x_size = 860        --기본860
cloud_y_size = 538        --기본538

----------------------------------------------------------



move_flag = 0

exp_text1 = Text("",Rect(xp_x_pos-1, xp_y_pos, 300, 50))
exp_text2 = Text("",Rect(xp_x_pos, xp_y_pos-1, 300, 50))
exp_text3 = Text("",Rect(xp_x_pos+1, xp_y_pos, 300, 50))
exp_text4 = Text("",Rect(xp_x_pos, xp_y_pos+1, 300, 50))
exp_text5 = Text("",Rect(xp_x_pos, xp_y_pos, 300, 50))

level_text1 = Text("",Rect(lv_x_pos-1, lv_y_pos, 300, 50))
level_text2 = Text("",Rect(lv_x_pos, lv_y_pos-1, 300, 50))
level_text3 = Text("",Rect(lv_x_pos+1, lv_y_pos, 300, 50))
level_text4 = Text("",Rect(lv_x_pos, lv_y_pos+1, 300, 50))
level_text5 = Text("",Rect(lv_x_pos, lv_y_pos, 300, 50))

level_text1.textSize = lv_text_size
level_text2.textSize = lv_text_size
level_text3.textSize = lv_text_size
level_text4.textSize = lv_text_size
level_text5.textSize = lv_text_size

level_text1.color = Color(0,0,0)
level_text2.color = Color(0,0,0)
level_text3.color = Color(0,0,0)
level_text4.color = Color(0,0,0)


exp_text1.textSize = xp_text_size
exp_text2.textSize = xp_text_size
exp_text3.textSize = xp_text_size
exp_text4.textSize = xp_text_size
exp_text5.textSize = xp_text_size

exp_text1.color = Color(0,0,0) 
exp_text2.color = Color(0,0,0)
exp_text3.color = Color(0,0,0) 
exp_text4.color = Color(0,0,0) 

hp_text1 = Text("",Rect(hp_text_x_pos, hp_text_y_pos, 250, 20))
hp_text2 = Text("",Rect(hp_text_x_pos, hp_text_y_pos-1, 250, 20))
hp_text3 = Text("",Rect(hp_text_x_pos+1, hp_text_y_pos, 250, 20))
hp_text4 = Text("",Rect(hp_text_x_pos, hp_text_y_pos+1, 250, 20))
hp_text5 = Text("",Rect(hp_text_x_pos, hp_text_y_pos, 250, 20))

mp_text1 = Text("",Rect(mp_text_x_pos-1, mp_text_y_pos, 250, 20))
mp_text2 = Text("",Rect(mp_text_x_pos, mp_text_y_pos-1, 250, 20))
mp_text3 = Text("",Rect(mp_text_x_pos+1, mp_text_y_pos, 250, 20))
mp_text4 = Text("",Rect(mp_text_x_pos, mp_text_y_pos+1, 250, 20))
mp_text5 = Text("",Rect(mp_text_x_pos, mp_text_y_pos, 250, 20))

hp_text1.textSize = hp_text_size 
hp_text2.textSize = hp_text_size 
hp_text3.textSize = hp_text_size  
hp_text4.textSize = hp_text_size  
hp_text5.textSize = hp_text_size 

hp_text1.color = Color(255,120,170) 
hp_text2.color = Color(255,120,170) 
hp_text3.color = Color(255,120,170) 
hp_text4.color = Color(255,120,170)


mp_text1.textSize = mp_text_size
mp_text2.textSize = mp_text_size 
mp_text3.textSize = mp_text_size 
mp_text4.textSize = mp_text_size 
mp_text5.textSize = mp_text_size

mp_text1.color = Color(100,200,255) 
mp_text2.color = Color(100,200,255) 
mp_text3.color = Color(100,200,255) 
mp_text4.color = Color(100,200,255) 

s_point = Point(0,-200)
e_point = Point(0,0)
x_point = Point(800,0)
xe_point = Point(-800,0)

cloud_init_point = Point(-125,-300)
cloud_init2_point = Point(-700,-300)
cloud_end_point = Point(800,-300)

hp = Panel()
hp.rect = Rect(0, 0, gauge_hp_x_size, gauge_hp_y_size)
hp.masked = true
hp.setOpacity(0)



mp = Panel()
mp.rect = Rect(0, 0, gauge_mp_x_size, gauge_mp_y_size)
mp.masked = true
mp.setOpacity(0)



xp = Panel()
xp.rect = Rect(0, 470, gauge_xp_x_size, gauge_xp_y_size)
xp.masked = true
xp.setOpacity(0)




hp_orb_bot = Image("Pictures/Health_bar_bot.png", Rect(gauge_hp_x_pos, gauge_hp_y_pos, gauge_hp_x_size, gauge_hp_y_size))
hp_orb3 = Image("Pictures/dot.png", Rect(gauge_hp_x_pos, gauge_hp_y_pos, gauge_hp_x_size, 500))
hp_orb = Image("Pictures/Health_glass_bar.png", Rect(gauge_hp_x_pos, gauge_hp_y_pos, gauge_hp_x_size, gauge_hp_y_size))
hp_orb2 = Image("Pictures/Health_bar.png", Rect(0, 0, gauge_hp_x_size, gauge_hp_y_size))
hp_orb_bot.SetOpacity(xpop)
hp_orb2.SetOpacity(hpop)


mp_orb_bot = Image("Pictures/Mana_bar_bot.png", Rect(gauge_mp_x_pos, gauge_mp_y_pos, gauge_mp_x_size, gauge_mp_y_size))
mp_orb3 = Image("Pictures/dot2.png", Rect(gauge_mp_x_pos, gauge_mp_y_pos, gauge_mp_x_size, 500))
mp_orb = Image("Pictures/Mana_glass_bar.png", Rect(gauge_mp_x_pos, gauge_mp_y_pos, gauge_mp_x_size, gauge_mp_y_size))
mp_orb2 = Image("Pictures/Mana_bar.png", Rect(0, 0, gauge_mp_x_size, gauge_mp_y_size))
mp_orb_bot.SetOpacity(xpop)
mp_orb2.SetOpacity(mpop)

xp_orb_bot = Image("Pictures/exp_bar_bot.png", Rect(gauge_xp_x_pos, gauge_xp_y_pos, gauge_xp_x_size, gauge_xp_y_size))
xp_orb3 = Image("Pictures/exp_bar_dot.png", Rect(0, 0, gauge_xp_x_size, 500))
xp_orb2 = Image("Pictures/exp_bar.png", Rect(0, 0, gauge_xp_x_size, gauge_xp_y_size))
xp_orb22 = Image("Pictures/exp_bar.png", Rect(0, 0, gauge_xp_x_size, gauge_xp_y_size))
xp_orb_bot.SetOpacity(xpop)
xp_orb2.SetOpacity(xpop)
xp_orb22.SetOpacity(xpop)

cloud = Image("Pictures/cloud.png", Rect(cloud_x_pos, cloud_y_pos, cloud_x_size, cloud_y_size))
cloud2 = Image("Pictures/cloud.png", Rect(cloud_x_pos, cloud_y_pos, cloud_x_size, cloud_y_size))
cloud.SetOpacity(clop)
cloud2.SetOpacity(clop)

cloud3 = Image("Pictures/cloud2.png", Rect(cloud_x_pos, cloud_y_pos, cloud_x_size, cloud_y_size))
cloud4 = Image("Pictures/cloud2.png", Rect(cloud_x_pos, cloud_y_pos, cloud_x_size, cloud_y_size))
cloud3.SetOpacity(clop)
cloud4.SetOpacity(clop)

cloud5 = Image("Pictures/cloud3.png", Rect(cloud_x_pos, cloud_y_pos, cloud_x_size, cloud_y_size))
cloud6 = Image("Pictures/cloud3.png", Rect(cloud_x_pos, cloud_y_pos, cloud_x_size, cloud_y_size))
cloud5.SetOpacity(clop)
cloud6.SetOpacity(clop)

hp.AddChild(hp_orb2)
hp.AddChild(hp_orb3)
hp.AddChild(cloud)
hp.AddChild(cloud2)

mp.AddChild(mp_orb2)
mp.AddChild(mp_orb3)
mp.AddChild(cloud3)
mp.AddChild(cloud4)

xp.AddChild(xp_orb2)
xp.AddChild(xp_orb22)
xp.AddChild(xp_orb3)
xp.AddChild(cloud5)
xp.AddChild(cloud6)


hp_orb_bot.showOnTop = true
hp.showOnTop = true
hp_orb.showOnTop = true





mp_orb_bot.showOnTop = true
mp.showOnTop = true
mp_orb.showOnTop = true

xp_orb_bot.showOnTop = true
xp.showOnTop = true


level_text1.showOnTop = true
level_text2.showOnTop = true
level_text3.showOnTop = true
level_text4.showOnTop = true
level_text5.showOnTop = true

hp_text1.showOnTop = true
hp_text2.showOnTop = true
hp_text3.showOnTop = true
hp_text4.showOnTop = true
hp_text5.showOnTop = true

mp_text1.showOnTop = true
mp_text2.showOnTop = true
mp_text3.showOnTop = true
mp_text4.showOnTop = true
mp_text5.showOnTop = true


exp_text1.showOnTop = true
exp_text2.showOnTop = true
exp_text3.showOnTop = true
exp_text4.showOnTop = true
exp_text5.showOnTop = true


function OrbMoveDelay(n) 
if n == 0 then
 move_flag = 1
else
move_flag = 0
end
end


function ExpOrbMove() 
xp_orb2.DOMove(e_point,0)
xp_orb2.DOMove(x_point,9)

cloud.DOMove(cloud_init_point,0)
cloud.DOMove(cloud_end_point,10)
cloud2.DOMove(cloud_init2_point,0)
cloud2.DOMove(cloud_end_point,28)

cloud3.DOMove(cloud_init_point,0)
cloud3.DOMove(cloud_end_point,10)
cloud4.DOMove(cloud_init2_point,0)
cloud4.DOMove(cloud_end_point,28)

cloud5.DOMove(cloud_init_point,0)
cloud5.DOMove(cloud_end_point,18)
cloud6.DOMove(cloud_init2_point,0)
cloud6.DOMove(cloud_end_point,18)

xp_orb22.DOMove(xe_point,0)
xp_orb22.DOMove(x_point,18)
end

function OrbMove() 
if move_flag == 0 then
hp_orb3.DOMove(s_point,10)
mp_orb3.DOMove(s_point,10)
xp_orb3.DOMove(s_point,10)
else
hp_orb3.DOMove(e_point,10)
mp_orb3.DOMove(e_point,10)
xp_orb3.DOMove(e_point,10)

end
end


function Orb() 

 hp_text1.text = Client.myPlayerUnit.hp.."/"..Client.myPlayerUnit.maxHP
 hp_text2.text = Client.myPlayerUnit.hp.."/"..Client.myPlayerUnit.maxHP
 hp_text3.text = Client.myPlayerUnit.hp.."/"..Client.myPlayerUnit.maxHP
 hp_text4.text = Client.myPlayerUnit.hp.."/"..Client.myPlayerUnit.maxHP
 hp_text5.text = Client.myPlayerUnit.hp.."/"..Client.myPlayerUnit.maxHP

 mp_text1.text = Client.myPlayerUnit.mp.."/"..Client.myPlayerUnit.maxMP
 mp_text2.text = Client.myPlayerUnit.mp.."/"..Client.myPlayerUnit.maxMP
 mp_text3.text = Client.myPlayerUnit.mp.."/"..Client.myPlayerUnit.maxMP
 mp_text4.text = Client.myPlayerUnit.mp.."/"..Client.myPlayerUnit.maxMP
 mp_text5.text = Client.myPlayerUnit.mp.."/"..Client.myPlayerUnit.maxMP


 mhp = Client.myPlayerUnit.hp / Client.myPlayerUnit.maxHP * 100
 Thp = gauge_hp_x_size * mhp / 100
 hp.rect = Rect(gauge_hp_x_pos, gauge_hp_y_pos, Thp, gauge_hp_y_size)


 mmp = Client.myPlayerUnit.mp / Client.myPlayerUnit.maxMP * 100
 Tmp = gauge_mp_x_size * mmp / 100
 mp.rect = Rect(gauge_mp_x_pos, gauge_mp_y_pos, Tmp, gauge_mp_y_size)


 mxp = Client.myPlayerUnit.exp / Client.myPlayerUnit.maxEXP * 100
 Txp = gauge_xp_x_size * mxp / 100
 xp.rect = Rect(gauge_xp_x_pos, gauge_xp_y_pos, Txp, gauge_xp_y_size)


 per = string.format("%.2f",Client.myPlayerUnit.exp / Client.myPlayerUnit.maxEXP * 100)

 level_text1.text = "Lv"..Client.myPlayerUnit.level
 level_text2.text = "Lv"..Client.myPlayerUnit.level
 level_text3.text = "Lv"..Client.myPlayerUnit.level
 level_text4.text = "Lv"..Client.myPlayerUnit.level
 level_text5.text = "Lv"..Client.myPlayerUnit.level

if Client.myPlayerUnit.maxEXP == 0 then
 exp_text1.text = "최대 레벨 달성" 
 exp_text2.text = "최대 레벨 달성"
 exp_text3.text = "최대 레벨 달성" 
 exp_text4.text = "최대 레벨 달성" 
 exp_text5.text = "최대 레벨 달성"
else
 exp_text1.text = Client.myPlayerUnit.exp.."/"..Client.myPlayerUnit.maxEXP.." ("..per.."%)"
 exp_text2.text = Client.myPlayerUnit.exp.."/"..Client.myPlayerUnit.maxEXP.." ("..per.."%)" 
 exp_text3.text = Client.myPlayerUnit.exp.."/"..Client.myPlayerUnit.maxEXP.." ("..per.."%)"
 exp_text4.text = Client.myPlayerUnit.exp.."/"..Client.myPlayerUnit.maxEXP.." ("..per.."%)" 
 exp_text5.text = Client.myPlayerUnit.exp.."/"..Client.myPlayerUnit.maxEXP.." ("..per.."%)" 
end

end



Client.onTick.Add(Orb)
Client.onTick.Add(OrbMove)

