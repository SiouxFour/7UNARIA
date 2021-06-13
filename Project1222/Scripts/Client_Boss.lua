local cw, ch = Client.width, Client.height


Client.GetTopic("Server_Boss").Add(function(text)
    Client_damage(json.parse(text))
end)

function comma(n) -- 
    local left,num,right = string.match(n,'^([^%d]*%d)(%d*)(.-)$')
    return left..(num:reverse():gsub('(%d%d%d)','%1,'):reverse())..right
 end

function Client_damage(list)
    local data = {}

    data.MainPanel = Panel(Rect(cw/2 - 125, ch/2 - 175, 250, 350))
    data.MainPanel.AddChild(Image('Pictures/큐브상점 이미지.PNG', Rect(0, 0, 250, 350)))
    data.MainPanel.AddChild(Image('Pictures/내부1.png', Rect(10, 40, 230, 300)))

    data.MainPanel.showOnTop = true

    data.Scroll = ScrollPanel(Rect(10, 40, 230, 300))
    data.Scroll.SetOpacity(0)

    
    data.Panel2 = Panel(Rect(0, 0, 240, 35*#list))
    data.Panel2.SetOpacity(0)
    data.Scroll.AddChild(data.Panel2)


    data.Panel3 = Panel(Rect(0, 5, 0, 0))
    data.Panel3.SetOpacity(0)
    data.Panel2.AddChild(data.Panel3)

    data.Scroll.horizontal = false
	data.Scroll.showVerticalScrollbar = true
	data.Scroll.content = data.Panel2




    data.MainPanel.AddChild(data.Scroll)

    for i = 1, #list do
        local aa = Panel(Rect(5, ((i-1)*30)+((i-1)*5), 220, 30))
        aa.AddChild(Image('Pictures/플레이어3.png', Rect(0, 0, 220, 30)))
        aa.SetOpacity(100)

        local b = Text(i..'등:'..list[i].name..', 데미지:'..comma(list[i].damage), Rect(5, 7, 230, 30))
        b.textAlign = 0
        aa.AddChild(b)
        data.Panel3.AddChild(aa)
    end

    data.CloseButtonImg = Image('Pictures/취소.PNG', Rect(180, 5, 60, 30))

    data.CloseButton = Button('닫기', Rect(0, 0, 60, 30))
    data.CloseButton.SetOpacity(0)

    data.CloseButtonImg.AddChild(data.CloseButton)


    data.CloseButton.onClick.Add(function()
        data.MainPanel.Destroy()
    end)


    data.MainPanel.AddChild(data.CloseButtonImg)

end