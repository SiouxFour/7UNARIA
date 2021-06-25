local check_delay = true


Panel_Upgrade = Panel()
Panel_Upgrade.rect = Rect(70, 30, Client.width-140, Client.height-60)
Panel_Upgrade.color = Color(0, 0, 0, 0)
Panel_Upgrade.showOnTop = true
Panel_Upgrade.visible = false
Img_Panel_Upgrade= Image("Pictures/패널.png", Rect(0, 0, Panel_Upgrade.width, Panel_Upgrade.height))

Img_Upgrade_Name = Image("Pictures/아이템박스.png", Rect(Panel_Upgrade.width/2-25, 30, 50, 50))

Panel_Upgrade_Name = Text("아이템이름", Rect(0, 80, Panel_Upgrade.width, 40))
Panel_Upgrade_Name.color = Color(255, 255, 255, 255)
Panel_Upgrade_Name.textSize = 20
Panel_Upgrade_Name.textAlign = 4

Client.GetTopic("IMG_UPGRADE_M_SETTING").Add(function(mainItem_Name,mainItem_Img)
	Panel_Upgrade_Name.text = mainItem_Name
	Img_Upgrade_Name.SetImageID(mainItem_Img)
end)

Img_Upgrade_Desc_1 = Image("Pictures/확률패널.png", Rect(Panel_Upgrade.width/2-175, 130, 100, 90))
Text_Upgrade_Desc_1 = Text("성공확률", Rect(0, 3, Img_Upgrade_Desc_1.width, 20))
Text_Upgrade_Desc_1.color = Color(115, 201, 95, 255)
Text_Upgrade_Desc_1.textSize = 15
Text_Upgrade_Desc_1.textAlign = 4
Text_Upgrade_Per_1 = Text("60%", Rect(0, 23, Img_Upgrade_Desc_1.width, Img_Upgrade_Desc_1.height-Text_Upgrade_Desc_1.height))
Text_Upgrade_Per_1.color = Color(115, 201, 95, 255)
Text_Upgrade_Per_1.textSize = 30
Text_Upgrade_Per_1.textAlign = 4
Img_Upgrade_Desc_1_Icon = Image("Pictures/성공.png", Rect(Img_Upgrade_Desc_1.width/2-15, -10, 30, 15))
Img_Upgrade_Desc_1.AddChild(Text_Upgrade_Desc_1)
Img_Upgrade_Desc_1.AddChild(Text_Upgrade_Per_1)
Img_Upgrade_Desc_1.AddChild(Img_Upgrade_Desc_1_Icon)

Img_Upgrade_Desc_2 = Image("Pictures/확률패널.png", Rect(Panel_Upgrade.width/2-50, 130, 100, 90))
Text_Upgrade_Desc_2 = Text("하락확률", Rect(0, 3, Img_Upgrade_Desc_1.width, 20))
Text_Upgrade_Desc_2.color = Color(201, 95, 95, 255)
Text_Upgrade_Desc_2.textSize = 15
Text_Upgrade_Desc_2.textAlign = 4
Text_Upgrade_Per_2 = Text("20%", Rect(0, 23, Img_Upgrade_Desc_2.width, Img_Upgrade_Desc_2.height-Text_Upgrade_Desc_2.height))
Text_Upgrade_Per_2.color = Color(201, 95, 95, 255)
Text_Upgrade_Per_2.textSize = 30
Text_Upgrade_Per_2.textAlign = 4
Img_Upgrade_Desc_2_Icon = Image("Pictures/하락.png", Rect(Img_Upgrade_Desc_2.width/2-15, -10, 30, 15))
Img_Upgrade_Desc_2.AddChild(Text_Upgrade_Desc_2)
Img_Upgrade_Desc_2.AddChild(Text_Upgrade_Per_2)
Img_Upgrade_Desc_2.AddChild(Img_Upgrade_Desc_2_Icon)

Img_Upgrade_Desc_3 = Image("Pictures/확률패널.png", Rect(Panel_Upgrade.width/2+75, 130, 100, 90))
Text_Upgrade_Desc_3 = Text("파괴확률", Rect(0, 3, Img_Upgrade_Desc_1.width, 20))
Text_Upgrade_Desc_3.color = Color(120, 0, 255, 255)
Text_Upgrade_Desc_3.textSize = 15
Text_Upgrade_Desc_3.textAlign = 4
Text_Upgrade_Per_3 = Text("1%", Rect(0, 23, Img_Upgrade_Desc_3.width, Img_Upgrade_Desc_3.height-Text_Upgrade_Desc_3.height))
Text_Upgrade_Per_3.color = Color(120, 0, 255, 255)
Text_Upgrade_Per_3.textSize = 30
Text_Upgrade_Per_3.textAlign = 4
Img_Upgrade_Desc_3_Icon = Image("Pictures/파괴.png", Rect(Img_Upgrade_Desc_3.width/2-15, -10, 30, 15))
Img_Upgrade_Desc_3.AddChild(Text_Upgrade_Desc_3)
Img_Upgrade_Desc_3.AddChild(Text_Upgrade_Per_3)
Img_Upgrade_Desc_3.AddChild(Img_Upgrade_Desc_3_Icon)

Client.GetTopic("STR_UPGRADE_PER").Add(function(per_1,per_2,per_3)
	Text_Upgrade_Per_1.text = per_1
	Text_Upgrade_Per_2.text = per_2
	Text_Upgrade_Per_3.text = per_3
end)

Panel_Upgrade_Sub = Panel()
Panel_Upgrade_Sub.rect = Rect(40, 240, Panel_Upgrade.width-80, 100)
Panel_Upgrade_Sub.color = Color(195, 195, 195, 255)
Panel_Upgrade_Sub.showOnTop = true
--Img_Upgrade_Sub = Image("Pictures/뒷배경.png", Rect(0, 0, Panel_Upgrade_Sub.width, Panel_Upgrade_Sub.height))

Img_Upgrade_Sub_P1 = Image("Pictures/소모재료보조제패널.png", Rect(0, 0, 80, Panel_Upgrade_Sub.height))
Text_Upgrade_Sub_P1 = Text("소모재료", Rect(0, 0, Img_Upgrade_Sub_P1.width, Img_Upgrade_Sub_P1.height))
Text_Upgrade_Sub_P1.color = Color(255, 255, 255, 255)
Text_Upgrade_Sub_P1.textSize = 15
Text_Upgrade_Sub_P1.textAlign = 4

local item_box_x = 50
local item_box_y = 50
local item_str_size = 13

Img_Upgrade_Sub_Item_1_M = Image("Pictures/아이템박스.png", Rect(85, 5, item_box_x, item_box_y))
Img_Upgrade_Sub_Item_1 = Image("Pictures/아이템박스.png", Rect(0, 0, item_box_x, item_box_y))
Text_Upgrade_Sub_Item_1 = Text("30/30", Rect(-Img_Upgrade_Sub_Item_1.width/2, Img_Upgrade_Sub_Item_1.height-10, Img_Upgrade_Sub_Item_1.width*2, item_box_y/2))
Text_Upgrade_Sub_Item_1.color = Color(255, 255, 255, 255)
Text_Upgrade_Sub_Item_1.textSize = item_str_size
Text_Upgrade_Sub_Item_1.textAlign = 4
Img_Upgrade_Sub_Item_1.AddChild(Text_Upgrade_Sub_Item_1)

Img_Upgrade_Sub_Item_2_M = Image("Pictures/아이템박스.png", Rect(140, 5, item_box_x, item_box_y))
Img_Upgrade_Sub_Item_2 = Image("Pictures/아이템박스.png", Rect(0, 0, item_box_x, item_box_y))
Text_Upgrade_Sub_Item_2 = Text("30/30", Rect(-Img_Upgrade_Sub_Item_2.width/2, Img_Upgrade_Sub_Item_2.height-10, Img_Upgrade_Sub_Item_2.width*2, item_box_y/2))
Text_Upgrade_Sub_Item_2.color = Color(255, 255, 255, 255)
Text_Upgrade_Sub_Item_2.textSize = item_str_size
Text_Upgrade_Sub_Item_2.textAlign = 4
Img_Upgrade_Sub_Item_2.AddChild(Text_Upgrade_Sub_Item_2)

Img_Upgrade_Sub_Item_3_M = Image("Pictures/아이템박스.png", Rect(195, 5, item_box_x, item_box_y))
Img_Upgrade_Sub_Item_3 = Image("Pictures/아이템박스.png", Rect(0, 0, item_box_x, item_box_y))
Text_Upgrade_Sub_Item_3 = Text("30/30", Rect(-Img_Upgrade_Sub_Item_3.width/2, Img_Upgrade_Sub_Item_3.height-10, Img_Upgrade_Sub_Item_3.width*2, item_box_y/2))
Text_Upgrade_Sub_Item_3.color = Color(255, 255, 255, 255)
Text_Upgrade_Sub_Item_3.textSize = item_str_size
Text_Upgrade_Sub_Item_3.textAlign = 4
Img_Upgrade_Sub_Item_3.AddChild(Text_Upgrade_Sub_Item_3)

Img_Upgrade_Sub_Item_4_M = Image("Pictures/아이템박스.png", Rect(250, 5, item_box_x, item_box_y))
Img_Upgrade_Sub_Item_4 = Image("Pictures/아이템박스.png", Rect(0, 0, item_box_x, item_box_y))
Text_Upgrade_Sub_Item_4 = Text("30/30", Rect(-Img_Upgrade_Sub_Item_4.width/2, Img_Upgrade_Sub_Item_4.height-10, Img_Upgrade_Sub_Item_4.width*2, item_box_y/2))
Text_Upgrade_Sub_Item_4.color = Color(255, 255, 255, 255)
Text_Upgrade_Sub_Item_4.textSize = item_str_size
Text_Upgrade_Sub_Item_4.textAlign = 4
Img_Upgrade_Sub_Item_4.AddChild(Text_Upgrade_Sub_Item_4)

Img_Upgrade_Sub_Item_5_M = Image("Pictures/아이템박스.png", Rect(305, 5, item_box_x, item_box_y))
Img_Upgrade_Sub_Item_5 = Image("Pictures/아이템박스.png", Rect(0, 0, item_box_x, item_box_y))
Text_Upgrade_Sub_Item_5 = Text("30/30", Rect(-Img_Upgrade_Sub_Item_5.width/2, Img_Upgrade_Sub_Item_5.height-10, Img_Upgrade_Sub_Item_5.width*2, item_box_y/2))
Text_Upgrade_Sub_Item_5.color = Color(255, 255, 255, 255)
Text_Upgrade_Sub_Item_5.textSize = item_str_size
Text_Upgrade_Sub_Item_5.textAlign = 4
Img_Upgrade_Sub_Item_5.AddChild(Text_Upgrade_Sub_Item_5)

Client.GetTopic("IMG_UPGRADE_SETTING").Add(function(item_Img_1,item_Img_2,item_Img_3,item_Img_4,item_Img_5,item_Str_1,item_Str_2,item_Str_3,item_Str_4,item_Str_5)
	if item_Img_1 ~= "" then
		Img_Upgrade_Sub_Item_1.SetImageID(item_Img_1)
		Text_Upgrade_Sub_Item_1.text = item_Str_1
	else
		Img_Upgrade_Sub_Item_1.SetImage("Pictures/아이템박스.png")
		Text_Upgrade_Sub_Item_1.text = "0/0"
	end
	if item_Img_2 ~= "" then
		Img_Upgrade_Sub_Item_2.SetImageID(item_Img_2)
		Text_Upgrade_Sub_Item_2.text = item_Str_2
	else
		Img_Upgrade_Sub_Item_2.SetImage("Pictures/아이템박스.png")
		Text_Upgrade_Sub_Item_2.text = "0/0"
	end
	if item_Img_3 ~= "" then
		Img_Upgrade_Sub_Item_3.SetImageID(item_Img_3)
		Text_Upgrade_Sub_Item_3.text = item_Str_3
	else
		Img_Upgrade_Sub_Item_3.SetImage("Pictures/아이템박스.png")
		Text_Upgrade_Sub_Item_3.text = "0/0"
	end
	if item_Img_4 ~= "" then
		Img_Upgrade_Sub_Item_4.SetImageID(item_Img_4)
		Text_Upgrade_Sub_Item_4.text = item_Str_4
	else
		Img_Upgrade_Sub_Item_4.SetImage("Pictures/아이템박스.png")
		Text_Upgrade_Sub_Item_4.text = "0/0"
	end
	if item_Img_5 ~= "" then
		Img_Upgrade_Sub_Item_5.SetImageID(item_Img_5)
		Text_Upgrade_Sub_Item_5.text = item_Str_5
	else
		Img_Upgrade_Sub_Item_5.SetImage("Pictures/아이템박스.png")
		Text_Upgrade_Sub_Item_5.text = "0/0"
	end
end)


Img_Upgrade_Sub_P2 = Image("Pictures/소모재료보조제패널.png", Rect(360, 0, 80, Panel_Upgrade_Sub.height))
Text_Upgrade_Sub_P2 = Text("보조제", Rect(0, 0, Img_Upgrade_Sub_P1.width, Img_Upgrade_Sub_P1.height))
Text_Upgrade_Sub_P2.color = Color(255, 255, 255, 255)
Text_Upgrade_Sub_P2.textSize = 15
Text_Upgrade_Sub_P2.textAlign = 4

Img_Upgrade_Sub_AItem_1_M = Image("Pictures/아이템박스.png", Rect(90, 5, item_box_x, item_box_y))
Img_Upgrade_Sub_AItem_1 = Image("Pictures/아이템박스.png", Rect(0, 0, item_box_x, item_box_y))
Text_Upgrade_Sub_AItem_1 = Text("30/30", Rect(-Img_Upgrade_Sub_AItem_1.width/2, Img_Upgrade_Sub_Item_1.height-10, Img_Upgrade_Sub_Item_1.width*2, item_box_y/2))
Text_Upgrade_Sub_AItem_1.color = Color(255, 255, 255, 255)
Text_Upgrade_Sub_AItem_1.textSize = item_str_size
Text_Upgrade_Sub_AItem_1.textAlign = 4
Img_Upgrade_Sub_AItem_1_CheckBox= Image("Pictures/체크박스.png", Rect(Img_Upgrade_Sub_AItem_1.width/4, Img_Upgrade_Sub_AItem_1.height+13,25,25))
Img_Upgrade_Sub_AItem_1_CheckBox_On= Image("Pictures/체크표시.png", Rect(0, 0,25,25))
Btn_Upgrade_Sub_AItem_1_CheckBox = Button("", Rect(Img_Upgrade_Sub_AItem_1.width/4, Img_Upgrade_Sub_AItem_1.height+13,25,25))
Btn_Upgrade_Sub_AItem_1_CheckBox.color = Color(255, 255, 255, 0)
Btn_Upgrade_Sub_AItem_1_CheckBox.SetOrderIndex(0)
Btn_Upgrade_Sub_AItem_1_CheckBox.onClick.Add(function() 
	Client.FireEvent("CHECK_ADC", 1)
end) 
Img_Upgrade_Sub_AItem_1_M.AddChild(Img_Upgrade_Sub_AItem_1)
Img_Upgrade_Sub_AItem_1.AddChild(Text_Upgrade_Sub_AItem_1)
Img_Upgrade_Sub_AItem_1.AddChild(Img_Upgrade_Sub_AItem_1_CheckBox)
Img_Upgrade_Sub_AItem_1_CheckBox.AddChild(Img_Upgrade_Sub_AItem_1_CheckBox_On)
Img_Upgrade_Sub_AItem_1_M.AddChild(Btn_Upgrade_Sub_AItem_1_CheckBox)

Img_Upgrade_Sub_AItem_2_M = Image("Pictures/아이템박스.png", Rect(150, 5, item_box_x, item_box_y))
Img_Upgrade_Sub_AItem_2 = Image("Pictures/아이템박스.png", Rect(0, 0, item_box_x, item_box_y))
Text_Upgrade_Sub_AItem_2 = Text("30/30", Rect(-Img_Upgrade_Sub_AItem_2.width/2, Img_Upgrade_Sub_Item_1.height-10, Img_Upgrade_Sub_Item_1.width*2, item_box_y/2))
Text_Upgrade_Sub_AItem_2.color = Color(255, 255, 255, 255)
Text_Upgrade_Sub_AItem_2.textSize = item_str_size
Text_Upgrade_Sub_AItem_2.textAlign = 4
Img_Upgrade_Sub_AItem_2_CheckBox= Image("Pictures/체크박스.png", Rect(Img_Upgrade_Sub_AItem_2.width/4, Img_Upgrade_Sub_AItem_2.height+13,25,25))
Img_Upgrade_Sub_AItem_2_CheckBox_On= Image("Pictures/체크표시.png", Rect(0, 0,25,25))
Btn_Upgrade_Sub_AItem_2_CheckBox = Button("", Rect(Img_Upgrade_Sub_AItem_2.width/4, Img_Upgrade_Sub_AItem_2.height+13,25,25))
Btn_Upgrade_Sub_AItem_2_CheckBox.color = Color(255, 255, 255, 0)
Btn_Upgrade_Sub_AItem_2_CheckBox.SetOrderIndex(0)
Btn_Upgrade_Sub_AItem_2_CheckBox.onClick.Add(function() 
	Client.FireEvent("CHECK_ADC", 2)
end) 

Client.GetTopic("IMG_UPGRADE_SETTING_AD").Add(function(Img_Addct_Item_1,Img_Addct_Item_2,Str_Addct_Item_1,Str_Addct_Item_2)
	Img_Upgrade_Sub_AItem_1.SetImageID(Img_Addct_Item_1)
	Img_Upgrade_Sub_AItem_2.SetImageID(Img_Addct_Item_2)
	Text_Upgrade_Sub_AItem_1.text = Str_Addct_Item_1
	Text_Upgrade_Sub_AItem_2.text = Str_Addct_Item_2
end)
Img_Upgrade_Sub_AItem_2_M.AddChild(Img_Upgrade_Sub_AItem_2)
Img_Upgrade_Sub_AItem_2.AddChild(Text_Upgrade_Sub_AItem_2)
Img_Upgrade_Sub_AItem_2.AddChild(Img_Upgrade_Sub_AItem_2_CheckBox)
Img_Upgrade_Sub_AItem_2_CheckBox.AddChild(Img_Upgrade_Sub_AItem_2_CheckBox_On)
Img_Upgrade_Sub_AItem_2_M.AddChild(Btn_Upgrade_Sub_AItem_2_CheckBox)

Img_Upgrade_Sub_Gold = Image("Pictures/골드아이콘.png", Rect(85, Panel_Upgrade_Sub.height-28, 20, 23))
Text_Upgrade_Sub_Gold = Text("1000Gold", Rect(20, 0, 200, 20))
Text_Upgrade_Sub_Gold.color = Color(255, 255, 255, 255)
Text_Upgrade_Sub_Gold.textSize = 15
Text_Upgrade_Sub_Gold.textAlign = 4
Img_Upgrade_Sub_Gold.AddChild(Text_Upgrade_Sub_Gold)

Text_Upgrade_Sub_Gold_Str = Text("골드 소모", Rect(280, Panel_Upgrade_Sub.height-25, 80, 20))
Text_Upgrade_Sub_Gold_Str.color = Color(255, 0, 0, 255)
Text_Upgrade_Sub_Gold_Str.textSize = 15

Client.GetTopic("GOLD_UPGRADE_SETTING").Add(function(var)
	if var ~= "" then
		Text_Upgrade_Sub_Gold.text = "<color=#ffd200>"..var.."</color>"
	else
		Text_Upgrade_Sub_Gold.text = "<color=#ffd200>0</color>"
	end

end)

Client.GetTopic("CHECK_UPGRADE_ADC").Add(function(var1,var2)
	Set_Adc_Mode(var1,var2)
end)
function Set_Adc_Mode(var1,var2)
	if var1 == 1 then
		if var2 == 0 then
			Img_Upgrade_Sub_AItem_1_CheckBox_On.visible = false
		else
			Img_Upgrade_Sub_AItem_1_CheckBox_On.visible = true
		end
	else
		if var2 == 0 then
			Img_Upgrade_Sub_AItem_2_CheckBox_On.visible = false
		else
			Img_Upgrade_Sub_AItem_2_CheckBox_On.visible = true
		end
	end
	
end
Img_Upgrade_Sub_Item_1_M.AddChild(Img_Upgrade_Sub_Item_1)
Img_Upgrade_Sub_Item_2_M.AddChild(Img_Upgrade_Sub_Item_2)
Img_Upgrade_Sub_Item_3_M.AddChild(Img_Upgrade_Sub_Item_3)
Img_Upgrade_Sub_Item_4_M.AddChild(Img_Upgrade_Sub_Item_4)
Img_Upgrade_Sub_Item_5_M.AddChild(Img_Upgrade_Sub_Item_5)

Img_Upgrade_Sub_P1.AddChild(Text_Upgrade_Sub_P1)
Img_Upgrade_Sub_P1.AddChild(Img_Upgrade_Sub_Item_1_M)
Img_Upgrade_Sub_P1.AddChild(Img_Upgrade_Sub_Item_2_M)
Img_Upgrade_Sub_P1.AddChild(Img_Upgrade_Sub_Item_3_M)
Img_Upgrade_Sub_P1.AddChild(Img_Upgrade_Sub_Item_4_M)
Img_Upgrade_Sub_P1.AddChild(Img_Upgrade_Sub_Item_5_M)
Img_Upgrade_Sub_P2.AddChild(Text_Upgrade_Sub_P2)
Img_Upgrade_Sub_P2.AddChild(Img_Upgrade_Sub_AItem_1_M)
Img_Upgrade_Sub_P2.AddChild(Img_Upgrade_Sub_AItem_2_M)

Panel_Upgrade_Sub.AddChild(Img_Upgrade_Sub_P1)
Panel_Upgrade_Sub.AddChild(Img_Upgrade_Sub_P2)
Panel_Upgrade_Sub.AddChild(Img_Upgrade_Sub_Gold)
Panel_Upgrade_Sub.AddChild(Text_Upgrade_Sub_Gold_Str)

Panel_Upgrade_Exit = Button("X", Rect(Panel_Upgrade.width-45, 5,40,35))
Panel_Upgrade_Exit.color = Color(255, 255, 255, 0)
Panel_Upgrade_Exit.textColor = Color(255, 255, 255, 255)
Panel_Upgrade_Exit.SetOrderIndex(0)
Panel_Upgrade_Exit.onClick.Add(function() 
	Panel_Upgrade.visible = false
end) 
Img_Panel_Upgrade_Exit= Image("Pictures/X버튼.png", Rect(Panel_Upgrade.width-45, 5,40,35))

Btn_Upgrade_Do = Button("강화하기", Rect(Panel_Upgrade.width/2-75, Panel_Upgrade.height-60 ,150,40))
Btn_Upgrade_Do.color = Color(255, 255, 255, 0)
Btn_Upgrade_Do.textColor = Color(255, 255, 255, 255)
Btn_Upgrade_Do.SetOrderIndex(0)
Btn_Upgrade_Do.onClick.Add(function() 
	if check_delay == true then
		check_delay = false
		Client.FireEvent("UPGRADE_DO", 0)
	end
end) 
Img_Btn_Upgrade_Do = Image("Pictures/강화하기버튼.png", Rect(Panel_Upgrade.width/2-75, Panel_Upgrade.height-60 ,150,40))

Panel_Upgrade.AddChild(Img_Panel_Upgrade)
Panel_Upgrade.AddChild(Panel_Upgrade_Name)
Panel_Upgrade.AddChild(Img_Upgrade_Name)

Panel_Upgrade.AddChild(Img_Upgrade_Desc_1)
Panel_Upgrade.AddChild(Img_Upgrade_Desc_2)
Panel_Upgrade.AddChild(Img_Upgrade_Desc_3)

Panel_Upgrade.AddChild(Img_Panel_Upgrade_Exit)
Panel_Upgrade.AddChild(Panel_Upgrade_Exit)

Panel_Upgrade.AddChild(Img_Btn_Upgrade_Do)
Panel_Upgrade.AddChild(Btn_Upgrade_Do)

Panel_Upgrade.AddChild(Panel_Upgrade_Sub)

Client.GetTopic("PANEL_UPGRADE_VISIBLE").Add(function(var)
	if var == 1 then
		Panel_Upgrade.visible = true
	else
		Panel_Upgrade.visible = false
	end
	
end)

Client.GetTopic("CHECK_UPGRADE_DELAY").Add(function(var)
	check_delay = true
	
end)