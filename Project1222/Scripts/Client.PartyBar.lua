RbgBar = {} RrnBar = {} RhpBar = {} RmpBar = {} Rname = {}
function partyBars()
    for i = 1, 4 do
    RbgBar[i] = Image("Pictures/BAR_HPMP3.png", Rect(Client.width-125, 51+(i*21), 120, 18))
    RbgBar[i].showOnTop = true
    RhpBar[i] = Image("Pictures/BAR_HP2.png", Rect(0, 0, 120, 18))
    RbgBar[i].AddChild(RhpBar[i])
    RmpBar[i] = Image("Pictures/BAR_MP2.png", Rect(0, 0, 120, 18))
    RbgBar[i].AddChild(RmpBar[i])
    RrnBar[i] = Image("Pictures/BAR_HPMP5.png", Rect(-5, -5, 130, 28))
    RbgBar[i].AddChild(RrnBar[i])

    Rname[i] = Text()
    Rname[i].rect = Rect(0,-1, 120, 20)
    Rname[i].textAlign = 4
    Rname[i].textSize = 12
    RbgBar[i].AddChild(Rname[i])

    RbgBar[i].visible = false
    end
end
Client.RunLater(function() partyBars() end, 0.5)

function RbgBars_Out()
    for i = 1, 4 do
        RbgBar[i].visible = false
    end
end

function RhpBars_DS(Rdatas)
    RbgBars_Out()

    for i = 1, #Rdatas do
        for i, v in pairs(Rdatas) do
    
            RhpBar[i].DOScale(Point(v.hp/v.maxHP, 1), 0.5)        
            RmpBar[i].DOScale(Point(v.mp/v.maxMP, 1), 0.5)
            Rname[i].text = v.name            
        end
        RbgBar[i].visible = true
    end
end

local count = 0
Client.onTick.Add(function(dt)
    if doscaleTick then        
        count = count + dt
        if count > 1 then
            count = 0            
            Client.FireEvent('tickHP')
        end
    end
end)

Client.GetTopic('party').Add(function(datas1)

    local datas2 = Utility.JSONParse(datas1)    
    RhpBars_DS(datas2)
end)

Client.GetTopic('partyIn').Add(function()
    doscaleTick = true
end)

Client.GetTopic('partyOut').Add(function()
    doscaleTick = false RbgBars_Out()
end)