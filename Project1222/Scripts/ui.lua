-------------------------UI

cw = Client.width
ch = Client.height

UItextImage1 = Image("Pictures/Item_900016.png", Rect(cw-187, 49, 35,35))
UItextImage2 = Image("Pictures/Icon_Tower.png", Rect(cw-146, 49, 35,35))
UItextImage3 = Image("Pictures/item_5009.png", Rect(cw-105, 49, 35,35))
UItextImage4 = Image("Pictures/출석.png", Rect(cw-64, 49, 35,35))
UItextImage5 = Image("Pictures/ic_calendar.png", Rect(cw-187, 89, 35,35))
UItextImage6 = Image("Pictures/item_30008.png", Rect(cw-146, 89, 35,35))
UItextImage7 = Image("Pictures/아이템.png", Rect(cw-105, 89, 35,35))
UItextImage8 = Image("Pictures/Item_41408.png", Rect(cw-64, 89, 35,35))


UItextname1 = "창고"
UItextname2 = "조합"
UItextname3 = "큐브"
UItextname4 = "장터"
UItextname5 = "일일"
UItextname6 = "상점"
UItextname7 = "시점"
UItextname8 = "랭킹"


UIvisiblepanelImage = Image("Pictures/pPanel.png", Rect(cw-26, 50, 18, 75))
UIvisibleImage = Image("Pictures/ArrowUI_b0002_Effects3.png", Rect(cw-34, 71, 31, 31))

UIname4 = Button("", Rect(cw-64, 49, 35,35))
UIname3 = Button("", Rect(cw-105, 49, 35,35))
UIname2 = Button("", Rect(cw-146, 49, 35,35))
UIname1 = Button("", Rect(cw-187, 49, 35,35))
UIname8 = Button("", Rect(cw-64, 89, 35,35))
UIname7 = Button("", Rect(cw-105, 89, 35,35))
UIname6 = Button("", Rect(cw-146, 89, 35,35))
UIname5 = Button("", Rect(cw-187, 89, 35,35))


UIvisible = Button("", Rect(cw-26, 51, 18,75))

UIname4.color = Color(0,0,0,0)
UIname3.color = Color(0,0,0,0)
UIname2.color = Color(0,0,0,0)
UIname1.color = Color(0,0,0,0)
UIname8.color = Color(0,0,0,0)
UIname7.color = Color(0,0,0,0)
UIname6.color = Color(0,0,0,0)
UIname5.color = Color(0,0,0,0)
UIvisible.color = Color(0,0,0,0)

UIvisiblepanelImage.SetOpacity(222)

UItextSize = 13

UIname1textout1 = Text()
UIname1textout1.rect = Rect(1, 11, 35, 35)
UIname1textout1.color = Color(0,0,0)
UIname1textout2 = Text()
UIname1textout2.rect = Rect(1, 9, 35, 35)
UIname1textout2.color = Color(0,0,0)
UIname1textout3 = Text()
UIname1textout3.rect = Rect(-1, 11, 35, 35)
UIname1textout3.color = Color(0,0,0)
UIname1textout4 = Text()
UIname1textout4.rect = Rect(-1, 9, 35, 35)
UIname1textout4.color = Color(0,0,0)
UIname1text = Text()
UIname1text.rect = Rect(0, 10, 35, 35)

UIname1textout1.text = UItextname1
UIname1textout1.textAlign = 4
UIname1textout1.textSize = UItextSize
UIname1.AddChild(UIname1textout1)

UIname1textout2.text = UItextname1
UIname1textout2.textAlign = 4
UIname1textout2.textSize = UItextSize
UIname1.AddChild(UIname1textout2)

UIname1textout3.text = UItextname1
UIname1textout3.textAlign = 4
UIname1textout3.textSize = UItextSize
UIname1.AddChild(UIname1textout3)

UIname1textout4.text = UItextname1
UIname1textout4.textAlign = 4
UIname1textout4.textSize = UItextSize
UIname1.AddChild(UIname1textout4)

UIname1text.text = UItextname1
UIname1text.textAlign = 4
UIname1text.textSize = UItextSize
UIname1.AddChild(UIname1text)


UIname6textout1 = Text()
UIname6textout1.rect = Rect(-1, 11, 35, 35)
UIname6textout1.color = Color(0,0,0)
UIname6textout2 = Text()
UIname6textout2.rect = Rect(-1, 9, 35, 35)
UIname6textout2.color = Color(0,0,0)
UIname6textout3 = Text()
UIname6textout3.rect = Rect(-3, 11, 35, 35)
UIname6textout3.color = Color(0,0,0)
UIname6textout4 = Text()
UIname6textout4.rect = Rect(-3, 9, 35, 35)
UIname6textout4.color = Color(0,0,0)
UIname6text = Text()
UIname6text.rect = Rect(-2, 10, 35, 35)

UIname6textout1.text = UItextname6
UIname6textout1.textAlign = 4
UIname6textout1.textSize = UItextSize
UIname6.AddChild(UIname6textout1)

UIname6textout2.text = UItextname6
UIname6textout2.textAlign = 4
UIname6textout2.textSize = UItextSize
UIname6.AddChild(UIname6textout2)

UIname6textout3.text = UItextname6
UIname6textout3.textAlign = 4
UIname6textout3.textSize = UItextSize
UIname6.AddChild(UIname6textout3)

UIname6textout4.text = UItextname6
UIname6textout4.textAlign = 4
UIname6textout4.textSize = UItextSize
UIname6.AddChild(UIname6textout4)

UIname6text.text = UItextname6
UIname6text.textAlign = 4
UIname6text.textSize = UItextSize
UIname6.AddChild(UIname6text)

UIname5textout1 = Text()
UIname5textout1.rect = Rect(1, 11, 35, 35)
UIname5textout1.color = Color(0,0,0)
UIname5textout2 = Text()
UIname5textout2.rect = Rect(1, 9, 35, 35)
UIname5textout2.color = Color(0,0,0)
UIname5textout3 = Text()
UIname5textout3.rect = Rect(-1, 11, 35, 35)
UIname5textout3.color = Color(0,0,0)
UIname5textout4 = Text()
UIname5textout4.rect = Rect(-1, 9, 35, 35)
UIname5textout4.color = Color(0,0,0)
UIname5text = Text()
UIname5text.rect = Rect(0, 10, 35, 35)

UIname5textout1.text = UItextname5
UIname5textout1.textAlign = 4
UIname5textout1.textSize = UItextSize
UIname5.AddChild(UIname5textout1)

UIname5textout2.text = UItextname5
UIname5textout2.textAlign = 4
UIname5textout2.textSize = UItextSize
UIname5.AddChild(UIname5textout2)

UIname5textout3.text = UItextname5
UIname5textout3.textAlign = 4
UIname5textout3.textSize = UItextSize
UIname5.AddChild(UIname5textout3)

UIname5textout4.text = UItextname5
UIname5textout4.textAlign = 4
UIname5textout4.textSize = UItextSize
UIname5.AddChild(UIname5textout4)

UIname5text.text = UItextname5
UIname5text.textAlign = 4
UIname5text.textSize = UItextSize
UIname5.AddChild(UIname5text)

UIname7textout1 = Text()
UIname7textout1.rect = Rect(1, 11, 40, 35)
UIname7textout1.color = Color(0,0,0)
UIname7textout2 = Text()
UIname7textout2.rect = Rect(1, 9, 40, 35)
UIname7textout2.color = Color(0,0,0)
UIname7textout3 = Text()
UIname7textout3.rect = Rect(-1, 11, 40, 35)
UIname7textout3.color = Color(0,0,0)
UIname7textout4 = Text()
UIname7textout4.rect = Rect(-1, 9, 40, 35)
UIname7textout4.color = Color(0,0,0)
UIname7text = Text()
UIname7text.rect = Rect(0, 10, 40, 35)

UIname7textout1.text = UItextname7
UIname7textout1.textAlign = 4
UIname7textout1.textSize = UItextSize
UIname7.AddChild(UIname7textout1)

UIname7textout2.text = UItextname7
UIname7textout2.textAlign = 4
UIname7textout2.textSize = UItextSize
UIname7.AddChild(UIname7textout2)

UIname7textout3.text = UItextname7
UIname7textout3.textAlign = 4
UIname7textout3.textSize = UItextSize
UIname7.AddChild(UIname7textout3)

UIname7textout4.text = UItextname7
UIname7textout4.textAlign = 4
UIname7textout4.textSize = UItextSize
UIname7.AddChild(UIname7textout4)

UIname7text.text = UItextname7
UIname7text.textAlign = 4
UIname7text.textSize = UItextSize
UIname7.AddChild(UIname7text)

UIname2textout1 = Text()
UIname2textout1.rect = Rect(1, 11, 35, 35)
UIname2textout1.color = Color(0,0,0)
UIname2textout2 = Text()
UIname2textout2.rect = Rect(1, 9, 35, 35)
UIname2textout2.color = Color(0,0,0)
UIname2textout3 = Text()
UIname2textout3.rect = Rect(-1, 11, 35, 35)
UIname2textout3.color = Color(0,0,0)
UIname2textout4 = Text()
UIname2textout4.rect = Rect(-1, 9, 35, 35)
UIname2textout4.color = Color(0,0,0)
UIname2text = Text()
UIname2text.rect = Rect(0, 10, 35, 35)

UIname2textout1.text = UItextname2
UIname2textout1.textAlign = 4
UIname2textout1.textSize = UItextSize
UIname2.AddChild(UIname2textout1)

UIname2textout2.text = UItextname2
UIname2textout2.textAlign = 4
UIname2textout2.textSize = UItextSize
UIname2.AddChild(UIname2textout2)

UIname2textout3.text = UItextname2
UIname2textout3.textAlign = 4
UIname2textout3.textSize = UItextSize
UIname2.AddChild(UIname2textout3)

UIname2textout4.text = UItextname2
UIname2textout4.textAlign = 4
UIname2textout4.textSize = UItextSize
UIname2.AddChild(UIname2textout4)

UIname2text.text = UItextname2
UIname2text.textAlign = 4
UIname2text.textSize = UItextSize
UIname2.AddChild(UIname2text)

UIname4textout1 = Text()
UIname4textout1.rect = Rect(1, 11, 35, 35)
UIname4textout1.color = Color(0,0,0)
UIname4textout2 = Text()
UIname4textout2.rect = Rect(1, 9, 35, 35)
UIname4textout2.color = Color(0,0,0)
UIname4textout3 = Text()
UIname4textout3.rect = Rect(-1, 11, 35, 35)
UIname4textout3.color = Color(0,0,0)
UIname4textout4 = Text()
UIname4textout4.rect = Rect(-1, 9, 35, 35)
UIname4textout4.color = Color(0,0,0)
UIname4text = Text()
UIname4text.rect = Rect(0, 10, 35, 35)

UIname4textout1.text = UItextname4
UIname4textout1.textAlign = 4
UIname4textout1.textSize = UItextSize
UIname4.AddChild(UIname4textout1)

UIname4textout2.text = UItextname4
UIname4textout2.textAlign = 4
UIname4textout2.textSize = UItextSize
UIname4.AddChild(UIname4textout2)

UIname4textout3.text = UItextname4
UIname4textout3.textAlign = 4
UIname4textout3.textSize = UItextSize
UIname4.AddChild(UIname4textout3)

UIname4textout4.text = UItextname4
UIname4textout4.textAlign = 4
UIname4textout4.textSize = UItextSize
UIname4.AddChild(UIname4textout4)

UIname4text.text = UItextname4
UIname4text.textAlign = 4
UIname4text.textSize = UItextSize
UIname4.AddChild(UIname4text)

UIname3textout1 = Text()
UIname3textout1.rect = Rect(1, 11, 35, 35)
UIname3textout1.color = Color(0,0,0)
UIname3textout2 = Text()
UIname3textout2.rect = Rect(1, 9, 35, 35)
UIname3textout2.color = Color(0,0,0)
UIname3textout3 = Text()
UIname3textout3.rect = Rect(-1, 11, 35, 35)
UIname3textout3.color = Color(0,0,0)
UIname3textout4 = Text()
UIname3textout4.rect = Rect(-1, 9, 35, 35)
UIname3textout4.color = Color(0,0,0)
UIname3text = Text()
UIname3text.rect = Rect(0, 10, 35, 35)

UIname3textout1.text = UItextname3
UIname3textout1.textAlign = 4
UIname3textout1.textSize = UItextSize
UIname3.AddChild(UIname3textout1)

UIname3textout2.text = UItextname3
UIname3textout2.textAlign = 4
UIname3textout2.textSize = UItextSize
UIname3.AddChild(UIname3textout2)

UIname3textout3.text = UItextname3
UIname3textout3.textAlign = 4
UIname3textout3.textSize = UItextSize
UIname3.AddChild(UIname3textout3)

UIname3textout4.text = UItextname3
UIname3textout4.textAlign = 4
UIname3textout4.textSize = UItextSize
UIname3.AddChild(UIname3textout4)

UIname3text.text = UItextname3
UIname3text.textAlign = 4
UIname3text.textSize = UItextSize
UIname3.AddChild(UIname3text)


UIname8textout1 = Text()
UIname8textout1.rect = Rect(1, 11, 35, 35)
UIname8textout1.color = Color(0,0,0)
UIname8textout2 = Text()
UIname8textout2.rect = Rect(1, 9, 35, 35)
UIname8textout2.color = Color(0,0,0)
UIname8textout3 = Text()
UIname8textout3.rect = Rect(-1, 11, 35, 35)
UIname8textout3.color = Color(0,0,0)
UIname8textout4 = Text()
UIname8textout4.rect = Rect(-1, 9, 35, 35)
UIname8textout4.color = Color(0,0,0)
UIname8text = Text()
UIname8text.rect = Rect(0, 10, 35, 35)

UIname8textout1.text = UItextname8
UIname8textout1.textAlign = 4
UIname8textout1.textSize = UItextSize
UIname8.AddChild(UIname8textout1)

UIname8textout2.text = UItextname8
UIname8textout2.textAlign = 4
UIname8textout2.textSize = UItextSize
UIname8.AddChild(UIname8textout2)

UIname8textout3.text = UItextname8
UIname8textout3.textAlign = 4
UIname8textout3.textSize = UItextSize
UIname8.AddChild(UIname8textout3)

UIname8textout4.text = UItextname8
UIname8textout4.textAlign = 4
UIname8textout4.textSize = UItextSize
UIname8.AddChild(UIname8textout4)

UIname8text.text = UItextname8
UIname8text.textAlign = 4
UIname8text.textSize = UItextSize
UIname8.AddChild(UIname8text)

UIvisibleor = 1

UIvisible.onClick.Add(function()
	if UIvisibleor == 1 then
		UIvisibleImage.SetImage("Pictures/ArrowUI_b0002_Effects4.png")
		UIvisibleor = 2
UIname8.DOMove(Point(cw-64+200, 89), 0.8)
UItextImage8.DOMove(Point(cw-64+200, 89), 0.8)
UIname4.DOMove(Point(cw-64+200, 49), 0.8)
UItextImage4.DOMove(Point(cw-64+200, 49), 0.8)
UIname3.DOMove(Point(cw-105+200, 49), 0.8)
UItextImage3.DOMove(Point(cw-105+200, 49), 0.8)
UIname2.DOMove(Point(cw-146+200, 49), 0.8)
UItextImage2.DOMove(Point(cw-146+200, 49), 0.8)
UIname1.DOMove(Point(cw-187+200, 49), 0.8)
UItextImage1.DOMove(Point(cw-187+200, 49), 0.8)
UIname7.DOMove(Point(cw-105+200, 89), 0.8)
UItextImage7.DOMove(Point(cw-105+200, 89), 0.8)
UIname6.DOMove(Point(cw-146+200, 89), 0.8)
UItextImage6.DOMove(Point(cw-146+200, 89), 0.8)
UIname5.DOMove(Point(cw-187+200, 89), 0.8)
UItextImage5.DOMove(Point(cw-187+200, 89), 0.8)
	else
		UIvisibleImage.SetImage("Pictures/ArrowUI_b0002_Effects3.png")
		UIvisibleor = 1
UIname8.DOMove(Point(cw-64, 89), 0.8)
UItextImage8.DOMove(Point(cw-64, 89), 0.8)
UIname4.DOMove(Point(cw-64, 49), 0.8)
UItextImage4.DOMove(Point(cw-64, 49), 0.8)
UIname3.DOMove(Point(cw-105, 49), 0.8)
UItextImage3.DOMove(Point(cw-105, 49), 0.8)
UIname2.DOMove(Point(cw-146, 49), 0.8)
UItextImage2.DOMove(Point(cw-146, 49), 0.8)
UIname1.DOMove(Point(cw-187, 49), 0.8)
UItextImage1.DOMove(Point(cw-187, 49), 0.8)
UIname7.DOMove(Point(cw-105, 89), 0.8)
UItextImage7.DOMove(Point(cw-105, 89), 0.8)
UIname6.DOMove(Point(cw-146, 89), 0.8)
UItextImage6.DOMove(Point(cw-146, 89), 0.8)
UIname5.DOMove(Point(cw-187, 89), 0.8)
UItextImage5.DOMove(Point(cw-187, 89), 0.8)


	end
end)








UIname1.onClick.Add(function()
	Client.FireEvent("GLOBAL_EVENT", 137) -- 숫자에 공용이벤트 번호 입력해주세요.
end)

UIname2.onClick.Add(function()
	Client.FireEvent("GLOBAL_EVENT", 135) -- 숫자에 공용이벤트 번호 입력해주세요.
end)

UIname3.onClick.Add(function()
	Client.FireEvent("GLOBAL_EVENT", 131) -- 숫자에 공용이벤트 번호 입력해주세요.
end)

UIname4.onClick.Add(function()
	Client.FireEvent("GLOBAL_EVENT", 132) -- 숫자에 공용이벤트 번호 입력해주세요.
end)

UIname5.onClick.Add(function()
	Client.FireEvent("GLOBAL_EVENT", 154) -- 숫자에 공용이벤트 번호 입력해주세요.
end)

UIname6.onClick.Add(function()
	Client.FireEvent("GLOBAL_EVENT", 133) -- 숫자에 공용이벤트 번호 입력해주세요.
end)

UIname7.onClick.Add(function()
	Client.FireEvent("GLOBAL_EVENT", 134) -- 숫자에 공용이벤트 번호 입력해주세요.
end)

UIname8.onClick.Add(function()
	Client.FireEvent("GLOBAL_EVENT", 130) -- 숫자에 공용이벤트 번호 입력해주세요.
end)