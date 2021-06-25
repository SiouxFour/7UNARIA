﻿local Item_Var = 150 -- 저장된 아이템 고유번호 삽입할 변수
local Item_M_Var_1 = 151 -- 하락방지아이템 사용변수
local Item_M_Var_2 = 152 -- 파괴방지아이템 사용변수
local Addct_Item_1 = 122 -- 하락방지권 아이템 번호
local Addct_Item_2 = 179 -- 파괴방지권 아이템 번호

local Animation_Up = 14 -- 강화 성공시 재생 애니메이션 번호 -1 이면 없음
local Animation_Dw = 15 -- 하락시 재생 애니메이션 번호 -1 이면 없음
local Animation_Ds = 15 -- 파괴시 재생 애니메이션 번호 -1 이면 없음
local Animation_Fa = 15 -- 실패시 재생 애니메이션 번호 -1 이면 없음
local Animation_De1 = 15 -- 하락방어시 재생 애니메이션 번호 -1 이면 없음
local Animation_De2 = 15 -- 파괴방어시 재생 애니메이션 번호 -1 이면 없음

local Max_Upgrade = 9 -- 최대 강화수치 9강

local Item_Id = 0 -- 아이템 고유번호 수정 X
--------------------------------------------------
-- 아래부터 강화할 아이템 테이블
-- Upgrade_Item_Info_Table.item_info[여기에 강화할 대상 아이템 번호 입력].item_n1[여기는 해당 강화수치]
--------------------------------------------------
Upgrade_Item_Info_Table = {item_info = {}}

Upgrade_Item_Info_Table.item_info[401] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[401].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[401].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[401].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[401].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[401].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[401].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[401].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[401].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[401].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[401].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[401].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[401].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[401].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[401].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[401].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[401].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[401].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[401].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[401].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[401].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[401].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[401].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[401].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[401].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[401].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[401].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[401].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[401].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[401].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[401].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[401].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[401].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[401].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[401].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[401].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[401].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[401].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[401].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[401].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[401].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[401].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[401].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[401].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[401].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[401].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[401].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[401].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[402] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[402].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[402].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[402].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[402].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[402].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[402].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[402].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[402].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[402].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[402].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[402].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[402].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[402].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[402].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[402].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[402].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[402].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[402].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[402].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[402].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[402].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[402].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[402].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[402].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[402].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[402].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[402].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[402].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[402].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[402].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[402].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[402].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[402].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[402].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[402].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[402].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[402].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[402].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[402].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[402].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[402].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[402].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[402].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[402].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[402].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[402].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[402].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[403] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[403].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[403].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[403].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[403].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[403].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[403].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[403].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[403].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[403].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[403].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[403].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[403].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[403].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[403].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[403].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[403].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[403].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[403].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[403].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[403].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[403].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[403].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[403].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[403].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[403].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[403].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[403].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[403].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[403].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[403].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[403].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[403].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[403].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[403].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[403].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[403].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[403].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[403].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[403].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[403].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[403].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[403].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[403].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[403].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[403].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[403].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[403].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[404] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[404].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[404].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[404].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[404].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[404].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[404].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[404].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[404].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[404].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[404].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[404].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[404].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[404].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[404].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[404].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[404].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[404].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[404].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[404].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[404].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[404].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[404].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[404].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[404].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[404].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[404].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[404].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[404].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[404].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[404].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[404].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[404].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[404].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[404].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[404].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[404].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[404].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[404].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[404].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[404].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[404].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[404].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[404].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[404].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[404].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[404].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[404].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[405] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[405].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[405].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[405].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[405].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[405].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[405].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[405].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[405].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[405].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[405].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[405].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[405].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[405].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[405].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[405].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[405].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[405].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[405].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[405].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[405].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[405].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[405].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[405].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[405].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[405].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[405].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[405].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[405].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[405].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[405].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[405].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[405].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[405].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[405].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[405].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[405].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[405].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[405].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[405].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[405].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[405].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[405].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[405].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[405].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[405].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[405].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[405].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[406] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[406].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[406].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[406].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[406].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[406].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[406].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[406].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[406].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[406].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[406].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[406].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[406].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[406].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[406].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[406].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[406].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[406].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[406].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[406].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[406].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[406].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[406].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[406].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[406].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[406].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[406].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[406].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[406].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[406].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[406].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[406].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[406].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[406].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[406].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[406].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[406].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[406].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[406].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[406].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[406].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[406].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[406].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[406].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[406].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[406].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[406].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[406].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[407] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[407].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[407].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[407].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[407].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[407].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[407].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[407].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[407].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[407].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[407].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[407].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[407].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[407].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[407].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[407].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[407].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[407].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[407].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[407].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[407].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[407].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[407].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[407].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[407].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[407].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[407].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[407].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[407].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[407].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[407].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[407].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[407].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[407].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[407].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[407].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[407].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[407].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[407].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[407].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[407].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[407].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[407].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[407].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[407].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[407].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[407].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[407].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[408] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[408].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[408].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[408].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[408].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[408].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[408].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[408].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[408].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[408].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[408].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[408].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[408].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[408].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[408].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[408].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[408].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[408].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[408].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[408].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[408].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[408].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[408].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[408].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[408].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[408].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[408].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[408].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[408].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[408].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[408].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[408].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[408].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[408].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[408].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[408].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[408].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[408].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[408].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[408].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[408].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[408].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[408].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[408].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[408].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[408].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[408].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[408].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[409] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[409].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[409].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[409].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[409].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[409].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[409].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[409].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[409].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[409].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[409].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[409].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[409].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[409].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[409].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[409].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[409].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[409].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[409].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[409].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[409].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[409].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[409].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[409].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[409].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[409].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[409].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[409].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[409].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[409].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[409].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[409].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[409].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[409].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[409].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[409].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[409].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[409].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[409].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[409].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[409].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[409].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[409].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[409].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[409].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[409].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[409].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[409].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[410] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[410].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[410].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[410].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[410].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[410].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[410].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[410].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[410].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[410].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[410].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[410].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[410].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[410].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[410].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[410].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[410].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[410].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[410].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[410].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[410].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[410].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[410].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[410].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[410].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[410].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[410].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[410].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[410].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[410].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[410].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[410].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[410].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[410].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[410].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[410].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[410].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[410].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[410].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[410].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[410].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[410].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[410].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[410].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[410].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[410].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[410].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[410].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[411] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[411].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[411].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[411].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[411].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[411].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[411].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[411].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[411].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[411].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[411].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[411].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[411].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[411].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[411].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[411].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[411].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[411].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[411].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[411].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[411].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[411].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[411].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[411].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[411].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[411].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[411].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[411].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[411].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[411].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[411].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[411].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[411].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[411].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[411].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[411].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[411].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[411].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[411].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[411].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[411].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[411].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[411].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[411].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[411].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[411].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[411].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[411].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[412] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[412].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[412].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[412].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[412].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[412].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[412].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[412].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[412].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[412].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[412].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[412].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[412].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[412].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[412].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[412].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[412].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[412].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[412].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[412].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[412].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[412].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[412].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[412].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[412].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[412].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[412].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[412].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[412].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[412].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[412].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[412].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[412].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[412].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[412].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[412].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[412].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[412].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[412].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[412].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[412].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[412].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[412].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[412].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[412].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[412].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[412].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[412].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[413] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[413].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[413].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[413].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[413].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[413].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[413].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[413].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[413].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[413].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[413].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[413].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[413].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[413].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[413].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[413].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[413].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[413].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[413].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[413].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[413].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[413].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[413].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[413].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[413].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[413].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[413].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[413].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[413].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[413].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[413].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[413].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[413].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[413].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[413].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[413].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[413].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[413].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[413].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[413].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[413].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[413].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[413].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[413].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[413].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[413].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[413].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[413].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[414] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[414].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[414].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[414].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[414].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[414].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[414].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[414].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[414].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[414].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[414].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[414].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[414].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[414].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[414].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[414].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[414].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[414].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[414].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[414].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[414].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[414].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[414].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[414].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[414].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[414].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[414].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[414].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[414].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[414].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[414].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[414].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[414].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[414].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[414].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[414].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[414].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[414].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[414].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[414].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[414].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[414].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[414].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[414].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[414].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[414].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[414].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[414].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[415] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[415].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[415].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[415].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[415].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[415].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[415].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[415].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[415].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[415].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[415].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[415].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[415].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[415].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[415].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[415].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[415].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[415].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[415].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[415].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[415].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[415].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[415].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[415].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[415].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[415].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[415].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[415].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[415].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[415].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[415].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[415].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[415].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[415].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[415].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[415].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[415].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[415].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[415].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[415].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[415].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[415].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[415].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[415].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[415].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[415].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[415].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[415].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[416] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[416].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[416].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[416].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[416].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[416].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[416].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[416].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[416].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[416].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[416].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[416].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[416].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[416].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[416].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[416].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[416].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[416].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[416].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[416].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[416].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[416].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[416].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[416].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[416].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[416].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[416].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[416].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[416].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[416].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[416].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[416].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[416].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[416].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[416].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[416].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[416].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[416].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[416].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[416].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[416].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[416].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[416].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[416].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[416].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[416].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[416].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[416].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[417] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[417].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[417].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[417].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[417].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[417].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[417].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[417].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[417].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[417].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[417].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[417].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[417].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[417].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[417].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[417].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[417].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[417].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[417].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[417].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[417].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[417].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[417].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[417].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[417].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[417].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[417].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[417].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[417].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[417].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[417].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[417].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[417].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[417].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[417].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[417].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[417].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[417].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[417].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[417].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[417].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[417].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[417].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[417].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[417].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[417].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[417].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[417].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[418] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[418].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[418].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[418].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[418].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[418].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[418].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[418].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[418].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[418].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[418].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[418].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[418].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[418].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[418].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[418].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[418].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[418].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[418].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[418].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[418].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[418].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[418].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[418].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[418].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[418].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[418].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[418].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[418].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[418].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[418].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[418].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[418].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[418].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[418].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[418].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[418].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[418].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[418].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[418].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[418].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[418].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[418].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[418].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[418].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[418].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[418].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[418].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[419] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[419].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[419].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[419].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[419].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[419].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[419].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[419].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[419].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[419].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[419].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[419].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[419].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[419].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[419].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[419].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[419].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[419].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[419].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[419].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[419].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[419].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[419].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[419].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[419].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[419].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[419].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[419].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[419].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[419].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[419].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[419].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[419].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[419].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[419].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[419].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[419].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[419].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[419].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[419].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[419].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[419].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[419].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[419].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[419].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[419].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[419].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[419].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[420] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[420].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[420].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[420].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[420].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[420].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[420].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[420].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[420].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[420].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[420].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[420].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[420].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[420].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[420].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[420].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[420].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[420].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[420].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[420].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[420].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[420].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[420].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[420].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[420].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[420].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[420].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[420].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[420].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[420].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[420].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[420].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[420].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[420].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[420].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[420].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[420].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[420].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[420].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[420].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[420].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[420].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[420].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[420].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[420].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[420].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[420].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[420].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[421] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[421].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[421].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[421].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[421].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[421].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[421].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[421].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[421].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[421].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[421].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[421].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[421].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[421].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[421].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[421].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[421].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[421].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[421].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[421].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[421].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[421].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[421].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[421].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[421].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[421].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[421].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[421].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[421].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[421].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[421].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[421].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[421].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[421].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[421].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[421].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[421].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[421].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[421].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[421].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[421].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[421].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[421].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[421].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[421].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[421].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[421].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[421].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[422] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[422].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[422].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[422].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[422].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[422].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[422].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[422].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[422].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[422].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[422].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[422].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[422].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[422].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[422].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[422].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[422].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[422].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[422].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[422].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[422].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[422].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[422].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[422].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[422].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[422].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[422].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[422].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[422].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[422].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[422].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[422].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[422].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[422].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[422].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[422].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[422].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[422].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[422].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[422].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[422].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[422].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[422].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[422].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[422].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[422].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[422].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[422].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[423] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[423].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[423].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[423].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[423].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[423].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[423].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[423].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[423].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[423].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[423].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[423].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[423].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[423].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[423].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[423].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[423].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[423].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[423].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[423].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[423].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[423].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[423].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[423].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[423].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[423].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[423].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[423].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[423].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[423].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[423].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[423].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[423].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[423].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[423].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[423].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[423].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[423].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[423].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[423].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[423].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[423].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[423].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[423].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[423].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[423].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[423].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[423].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[424] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[424].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[424].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[424].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[424].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[424].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[424].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[424].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[424].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[424].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[424].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[424].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[424].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[424].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[424].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[424].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[424].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[424].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[424].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[424].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[424].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[424].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[424].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[424].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[424].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[424].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[424].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[424].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[424].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[424].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[424].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[424].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[424].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[424].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[424].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[424].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[424].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[424].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[424].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[424].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[424].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[424].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[424].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[424].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[424].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[424].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[424].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[424].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[425] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[425].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[425].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[425].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[425].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[425].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[425].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[425].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[425].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[425].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[425].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[425].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[425].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[425].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[425].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[425].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[425].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[425].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[425].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[425].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[425].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[425].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[425].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[425].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[425].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[425].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[425].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[425].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[425].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[425].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[425].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[425].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[425].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[425].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[425].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[425].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[425].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[425].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[425].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[425].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[425].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[425].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[425].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[425].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[425].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[425].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[425].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[425].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[426] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[426].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[426].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[426].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[426].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[426].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[426].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[426].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[426].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[426].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[426].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[426].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[426].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[426].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[426].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[426].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[426].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[426].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[426].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[426].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[426].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[426].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[426].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[426].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[426].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[426].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[426].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[426].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[426].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[426].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[426].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[426].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[426].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[426].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[426].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[426].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[426].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[426].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[426].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[426].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[426].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[426].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[426].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[426].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[426].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[426].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[426].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[426].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[427] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[427].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[427].item_c1[1] = 10 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[427].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[427].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[427].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[427].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[427].item_c1[2] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[427].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[427].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[427].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[427].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[427].item_c1[3] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[427].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[427].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[427].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[427].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[427].item_c1[4] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[427].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[427].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[427].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[427].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[427].item_c1[5] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[427].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[427].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[427].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[427].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[427].item_c1[6] = 120 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[427].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[427].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[427].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[427].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[427].item_c1[7] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[427].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[427].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[427].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[427].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[427].item_c1[8] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[427].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[427].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[427].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[427].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[427].item_c1[9] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[427].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[427].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[427].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[427].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[427].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[501] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[501].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[501].item_c1[1] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[501].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[501].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[501].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[501].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[501].item_c1[2] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[501].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[501].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[501].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[501].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[501].item_c1[3] = 80 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[501].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[501].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[501].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[501].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[501].item_c1[4] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[501].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[501].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[501].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[501].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[501].item_c1[5] = 130 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[501].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[501].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[501].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[501].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[501].item_c1[6] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[501].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[501].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[501].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[501].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[501].item_c1[7] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[501].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[501].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[501].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[501].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[501].item_c1[8] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[501].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[501].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[501].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[501].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[501].item_c1[9] = 300 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[501].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[501].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[501].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[501].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[501].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[502] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[502].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[502].item_c1[1] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[502].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[502].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[502].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[502].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[502].item_c1[2] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[502].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[502].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[502].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[502].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[502].item_c1[3] = 80 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[502].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[502].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[502].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[502].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[502].item_c1[4] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[502].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[502].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[502].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[502].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[502].item_c1[5] = 130 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[502].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[502].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[502].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[502].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[502].item_c1[6] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[502].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[502].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[502].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[502].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[502].item_c1[7] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[502].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[502].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[502].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[502].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[502].item_c1[8] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[502].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[502].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[502].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[502].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[502].item_c1[9] = 300 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[502].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[502].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[502].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[502].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[502].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[503] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[503].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[503].item_c1[1] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[503].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[503].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[503].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[503].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[503].item_c1[2] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[503].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[503].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[503].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[503].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[503].item_c1[3] = 80 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[503].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[503].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[503].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[503].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[503].item_c1[4] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[503].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[503].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[503].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[503].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[503].item_c1[5] = 130 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[503].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[503].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[503].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[503].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[503].item_c1[6] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[503].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[503].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[503].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[503].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[503].item_c1[7] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[503].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[503].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[503].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[503].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[503].item_c1[8] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[503].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[503].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[503].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[503].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[503].item_c1[9] = 300 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[503].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[503].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[503].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[503].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[503].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[504] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[504].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[504].item_c1[1] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[504].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[504].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[504].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[504].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[504].item_c1[2] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[504].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[504].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[504].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[504].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[504].item_c1[3] = 80 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[504].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[504].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[504].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[504].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[504].item_c1[4] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[504].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[504].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[504].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[504].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[504].item_c1[5] = 130 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[504].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[504].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[504].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[504].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[504].item_c1[6] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[504].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[504].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[504].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[504].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[504].item_c1[7] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[504].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[504].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[504].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[504].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[504].item_c1[8] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[504].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[504].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[504].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[504].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[504].item_c1[9] = 300 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[504].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[504].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[504].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[504].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[504].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[505] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[505].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[505].item_c1[1] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[505].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[505].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[505].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[505].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[505].item_c1[2] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[505].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[505].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[505].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[505].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[505].item_c1[3] = 80 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[505].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[505].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[505].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[505].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[505].item_c1[4] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[505].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[505].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[505].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[505].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[505].item_c1[5] = 130 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[505].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[505].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[505].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[505].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[505].item_c1[6] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[505].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[505].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[505].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[505].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[505].item_c1[7] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[505].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[505].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[505].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[505].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[505].item_c1[8] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[505].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[505].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[505].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[505].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[505].item_c1[9] = 300 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[505].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[505].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[505].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[505].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[505].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[506] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[506].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[506].item_c1[1] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[506].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[506].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[506].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[506].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[506].item_c1[2] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[506].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[506].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[506].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[506].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[506].item_c1[3] = 80 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[506].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[506].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[506].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[506].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[506].item_c1[4] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[506].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[506].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[506].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[506].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[506].item_c1[5] = 130 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[506].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[506].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[506].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[506].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[506].item_c1[6] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[506].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[506].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[506].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[506].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[506].item_c1[7] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[506].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[506].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[506].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[506].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[506].item_c1[8] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[506].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[506].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[506].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[506].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[506].item_c1[9] = 300 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[506].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[506].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[506].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[506].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[506].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[507] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[507].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[507].item_c1[1] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[507].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[507].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[507].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[507].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[507].item_c1[2] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[507].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[507].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[507].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[507].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[507].item_c1[3] = 80 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[507].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[507].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[507].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[507].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[507].item_c1[4] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[507].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[507].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[507].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[507].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[507].item_c1[5] = 130 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[507].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[507].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[507].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[507].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[507].item_c1[6] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[507].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[507].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[507].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[507].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[507].item_c1[7] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[507].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[507].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[507].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[507].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[507].item_c1[8] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[507].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[507].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[507].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[507].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[507].item_c1[9] = 300 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[507].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[507].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[507].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[507].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[507].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[508] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[508].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[508].item_c1[1] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[508].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[508].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[508].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[508].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[508].item_c1[2] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[508].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[508].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[508].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[508].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[508].item_c1[3] = 80 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[508].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[508].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[508].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[508].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[508].item_c1[4] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[508].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[508].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[508].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[508].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[508].item_c1[5] = 130 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[508].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[508].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[508].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[508].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[508].item_c1[6] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[508].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[508].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[508].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[508].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[508].item_c1[7] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[508].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[508].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[508].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[508].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[508].item_c1[8] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[508].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[508].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[508].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[508].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[508].item_c1[9] = 300 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[508].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[508].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[508].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[508].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[508].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[509] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[509].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[509].item_c1[1] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[509].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[509].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[509].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[509].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[509].item_c1[2] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[509].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[509].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[509].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[509].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[509].item_c1[3] = 80 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[509].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[509].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[509].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[509].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[509].item_c1[4] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[509].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[509].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[509].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[509].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[509].item_c1[5] = 130 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[509].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[509].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[509].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[509].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[509].item_c1[6] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[509].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[509].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[509].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[509].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[509].item_c1[7] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[509].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[509].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[509].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[509].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[509].item_c1[8] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[509].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[509].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[509].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[509].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[509].item_c1[9] = 300 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[509].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[509].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[509].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[509].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[509].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[510] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[510].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[510].item_c1[1] = 30 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_gold[1] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[510].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[510].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[510].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[510].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[510].item_c1[2] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_gold[2] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[510].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[510].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[510].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[510].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[510].item_c1[3] = 80 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_gold[3] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[510].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[510].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[510].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[510].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[510].item_c1[4] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_gold[4] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[510].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[510].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[510].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[510].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[510].item_c1[5] = 130 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_gold[5] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[510].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[510].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[510].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[510].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[510].item_c1[6] = 150 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_gold[6] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[510].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[510].percent_dw[6] = 15 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[510].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[510].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[510].item_c1[7] = 200 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_gold[7] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[510].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[510].percent_dw[7] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[510].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[510].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[510].item_c1[8] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_gold[8] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[510].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[510].percent_dw[8] = 20 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[510].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[510].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[510].item_c1[9] = 300 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[510].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[510].item_gold[9] = 0 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[510].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[510].percent_dw[9] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[510].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[511] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[511].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[511].item_c1[1] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_gold[1] = 70000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[511].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[511].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[511].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[511].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[511].item_c1[2] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_gold[2] = 120000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[511].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[511].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[511].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[511].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[511].item_c1[3] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_gold[3] = 170000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[511].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[511].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[511].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[511].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[511].item_c1[4] = 135 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_gold[4] = 220000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[511].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[511].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[511].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[511].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[511].item_c1[5] = 180 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_gold[5] = 270000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[511].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[511].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[511].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[511].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[511].item_c1[6] = 215 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_gold[6] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[511].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[511].percent_dw[6] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[511].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[511].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[511].item_c1[7] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_gold[7] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[511].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[511].percent_dw[7] = 19 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[511].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[511].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[511].item_c1[8] = 275 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_gold[8] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[511].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[511].percent_dw[8] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[511].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[511].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[511].item_c1[9] = 320 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[511].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[511].item_gold[9] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[511].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[511].percent_dw[9] = 25 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[511].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[512] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[512].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[512].item_c1[1] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_gold[1] = 70000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[512].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[512].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[512].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[512].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[512].item_c1[2] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_gold[2] = 120000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[512].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[512].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[512].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[512].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[512].item_c1[3] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_gold[3] = 170000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[512].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[512].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[512].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[512].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[512].item_c1[4] = 135 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_gold[4] = 220000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[512].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[512].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[512].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[512].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[512].item_c1[5] = 180 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_gold[5] = 270000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[512].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[512].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[512].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[512].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[512].item_c1[6] = 215 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_gold[6] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[512].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[512].percent_dw[6] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[512].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[512].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[512].item_c1[7] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_gold[7] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[512].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[512].percent_dw[7] = 19 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[512].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[512].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[512].item_c1[8] = 275 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_gold[8] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[512].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[512].percent_dw[8] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[512].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[512].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[512].item_c1[9] = 320 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[512].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[512].item_gold[9] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[512].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[512].percent_dw[9] = 25 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[512].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[513] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[513].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[513].item_c1[1] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_gold[1] = 70000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[513].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[513].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[513].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[513].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[513].item_c1[2] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_gold[2] = 120000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[513].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[513].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[513].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[513].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[513].item_c1[3] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_gold[3] = 170000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[513].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[513].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[513].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[513].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[513].item_c1[4] = 135 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_gold[4] = 220000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[513].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[513].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[513].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[513].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[513].item_c1[5] = 180 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_gold[5] = 270000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[513].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[513].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[513].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[513].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[513].item_c1[6] = 215 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_gold[6] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[513].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[513].percent_dw[6] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[513].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[513].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[513].item_c1[7] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_gold[7] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[513].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[513].percent_dw[7] = 19 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[513].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[513].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[513].item_c1[8] = 275 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_gold[8] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[513].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[513].percent_dw[8] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[513].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[513].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[513].item_c1[9] = 320 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[513].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[513].item_gold[9] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[513].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[513].percent_dw[9] = 25 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[513].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[514] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[514].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[514].item_c1[1] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_gold[1] = 70000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[514].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[514].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[514].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[514].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[514].item_c1[2] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_gold[2] = 120000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[514].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[514].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[514].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[514].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[514].item_c1[3] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_gold[3] = 170000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[514].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[514].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[514].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[514].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[514].item_c1[4] = 135 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_gold[4] = 220000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[514].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[514].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[514].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[514].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[514].item_c1[5] = 180 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_gold[5] = 270000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[514].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[514].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[514].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[514].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[514].item_c1[6] = 215 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_gold[6] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[514].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[514].percent_dw[6] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[514].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[514].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[514].item_c1[7] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_gold[7] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[514].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[514].percent_dw[7] = 19 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[514].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[514].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[514].item_c1[8] = 275 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_gold[8] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[514].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[514].percent_dw[8] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[514].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[514].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[514].item_c1[9] = 320 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[514].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[514].item_gold[9] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[514].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[514].percent_dw[9] = 25 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[514].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[515] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[515].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[515].item_c1[1] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_gold[1] = 70000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[515].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[515].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[515].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[515].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[515].item_c1[2] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_gold[2] = 120000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[515].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[515].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[515].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[515].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[515].item_c1[3] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_gold[3] = 170000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[515].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[515].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[515].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[515].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[515].item_c1[4] = 135 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_gold[4] = 220000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[515].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[515].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[515].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[515].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[515].item_c1[5] = 180 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_gold[5] = 270000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[515].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[515].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[515].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[515].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[515].item_c1[6] = 215 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_gold[6] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[515].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[515].percent_dw[6] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[515].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[515].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[515].item_c1[7] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_gold[7] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[515].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[515].percent_dw[7] = 19 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[515].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[515].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[515].item_c1[8] = 275 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_gold[8] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[515].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[515].percent_dw[8] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[515].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[515].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[515].item_c1[9] = 320 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[515].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[515].item_gold[9] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[515].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[515].percent_dw[9] = 25 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[515].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[516] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[516].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[516].item_c1[1] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_gold[1] = 70000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[516].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[516].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[516].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[516].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[516].item_c1[2] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_gold[2] = 120000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[516].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[516].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[516].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[516].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[516].item_c1[3] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_gold[3] = 170000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[516].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[516].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[516].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[516].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[516].item_c1[4] = 135 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_gold[4] = 220000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[516].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[516].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[516].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[516].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[516].item_c1[5] = 180 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_gold[5] = 270000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[516].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[516].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[516].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[516].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[516].item_c1[6] = 215 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_gold[6] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[516].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[516].percent_dw[6] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[516].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[516].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[516].item_c1[7] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_gold[7] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[516].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[516].percent_dw[7] = 19 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[516].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[516].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[516].item_c1[8] = 275 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_gold[8] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[516].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[516].percent_dw[8] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[516].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[516].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[516].item_c1[9] = 320 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[516].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[516].item_gold[9] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[516].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[516].percent_dw[9] = 25 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[516].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[517] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[517].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[517].item_c1[1] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_gold[1] = 70000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[517].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[517].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[517].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[517].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[517].item_c1[2] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_gold[2] = 120000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[517].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[517].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[517].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[517].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[517].item_c1[3] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_gold[3] = 170000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[517].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[517].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[517].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[517].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[517].item_c1[4] = 135 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_gold[4] = 220000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[517].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[517].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[517].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[517].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[517].item_c1[5] = 180 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_gold[5] = 270000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[517].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[517].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[517].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[517].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[517].item_c1[6] = 215 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_gold[6] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[517].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[517].percent_dw[6] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[517].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[517].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[517].item_c1[7] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_gold[7] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[517].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[517].percent_dw[7] = 19 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[517].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[517].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[517].item_c1[8] = 275 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_gold[8] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[517].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[517].percent_dw[8] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[517].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[517].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[517].item_c1[9] = 320 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[517].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[517].item_gold[9] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[517].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[517].percent_dw[9] = 25 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[517].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[520] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[520].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[520].item_c1[1] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_gold[1] = 70000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[520].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[520].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[520].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[520].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[520].item_c1[2] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_gold[2] = 120000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[520].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[520].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[520].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[520].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[520].item_c1[3] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_gold[3] = 170000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[520].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[520].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[520].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[520].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[520].item_c1[4] = 135 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_gold[4] = 220000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[520].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[520].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[520].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[520].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[520].item_c1[5] = 180 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_gold[5] = 270000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[520].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[520].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[520].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[520].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[520].item_c1[6] = 215 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_gold[6] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[520].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[520].percent_dw[6] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[520].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[520].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[520].item_c1[7] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_gold[7] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[520].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[520].percent_dw[7] = 19 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[520].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[520].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[520].item_c1[8] = 275 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_gold[8] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[520].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[520].percent_dw[8] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[520].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[520].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[520].item_c1[9] = 320 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[520].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[520].item_gold[9] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[520].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[520].percent_dw[9] = 25 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[520].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[523] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[523].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[523].item_c1[1] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_gold[1] = 70000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[523].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[523].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[523].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[523].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[523].item_c1[2] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_gold[2] = 120000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[523].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[523].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[523].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[523].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[523].item_c1[3] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_gold[3] = 170000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[523].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[523].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[523].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[523].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[523].item_c1[4] = 135 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_gold[4] = 220000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[523].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[523].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[523].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[523].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[523].item_c1[5] = 180 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_gold[5] = 270000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[523].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[523].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[523].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[523].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[523].item_c1[6] = 215 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_gold[6] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[523].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[523].percent_dw[6] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[523].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[523].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[523].item_c1[7] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_gold[7] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[523].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[523].percent_dw[7] = 19 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[523].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[523].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[523].item_c1[8] = 275 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_gold[8] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[523].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[523].percent_dw[8] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[523].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[523].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[523].item_c1[9] = 320 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[523].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[523].item_gold[9] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[523].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[523].percent_dw[9] = 25 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[523].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[524] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[524].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[524].item_c1[1] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_gold[1] = 70000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[524].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[524].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[524].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[524].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[524].item_c1[2] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_gold[2] = 120000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[524].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[524].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[524].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[524].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[524].item_c1[3] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_gold[3] = 170000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[524].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[524].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[524].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[524].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[524].item_c1[4] = 135 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_gold[4] = 220000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[524].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[524].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[524].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[524].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[524].item_c1[5] = 180 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_gold[5] = 270000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[524].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[524].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[524].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[524].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[524].item_c1[6] = 215 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_gold[6] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[524].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[524].percent_dw[6] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[524].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[524].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[524].item_c1[7] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_gold[7] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[524].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[524].percent_dw[7] = 19 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[524].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[524].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[524].item_c1[8] = 275 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_gold[8] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[524].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[524].percent_dw[8] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[524].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[524].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[524].item_c1[9] = 320 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[524].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[524].item_gold[9] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[524].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[524].percent_dw[9] = 25 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[524].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[525] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[525].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[525].item_c1[1] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_gold[1] = 70000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[525].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[525].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[525].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[525].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[525].item_c1[2] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_gold[2] = 120000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[525].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[525].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[525].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[525].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[525].item_c1[3] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_gold[3] = 170000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[525].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[525].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[525].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[525].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[525].item_c1[4] = 135 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_gold[4] = 220000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[525].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[525].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[525].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[525].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[525].item_c1[5] = 180 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_gold[5] = 270000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[525].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[525].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[525].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[525].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[525].item_c1[6] = 215 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_gold[6] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[525].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[525].percent_dw[6] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[525].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[525].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[525].item_c1[7] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_gold[7] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[525].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[525].percent_dw[7] = 19 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[525].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[525].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[525].item_c1[8] = 275 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_gold[8] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[525].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[525].percent_dw[8] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[525].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[525].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[525].item_c1[9] = 320 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[525].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[525].item_gold[9] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[525].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[525].percent_dw[9] = 25 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[525].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[526] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[526].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[526].item_c1[1] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n2[1] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c2[1] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n3[1] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c3[1] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_gold[1] = 70000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[526].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[526].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[526].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[526].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[526].item_c1[2] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n2[2] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c2[2] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n3[2] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c3[2] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_gold[2] = 120000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[526].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[526].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[526].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[526].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[526].item_c1[3] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n2[3] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c2[3] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n3[3] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c3[3] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_gold[3] = 170000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[526].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[526].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[526].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[526].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[526].item_c1[4] = 135 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n2[4] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c2[4] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n3[4] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c3[4] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_gold[4] = 220000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[526].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[526].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[526].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[526].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[526].item_c1[5] = 180 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n2[5] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c2[5] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n3[5] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c3[5] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_gold[5] = 270000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[526].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[526].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[526].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[526].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[526].item_c1[6] = 215 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n2[6] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c2[6] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n3[6] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c3[6] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_gold[6] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[526].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[526].percent_dw[6] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[526].percent_ds[6] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[526].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[526].item_c1[7] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n2[7] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c2[7] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n3[7] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c3[7] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_gold[7] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[526].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[526].percent_dw[7] = 19 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[526].percent_ds[7] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[526].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[526].item_c1[8] = 275 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n2[8] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c2[8] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n3[8] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c3[8] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_gold[8] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[526].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[526].percent_dw[8] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[526].percent_ds[8] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[526].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[526].item_c1[9] = 320 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n2[9] = -1 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n3[9] = -1 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[526].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[526].item_gold[9] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[526].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[526].percent_dw[9] = 25 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[526].percent_ds[9] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[518] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[518].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[518].item_c1[1] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n2[1] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c2[1] = 1 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n3[1] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c3[1] = 1 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_gold[1] = 70000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[518].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[518].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[518].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[518].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[518].item_c1[2] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n2[2] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c2[2] = 2 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n3[2] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c3[2] = 2 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_gold[2] = 120000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[518].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[518].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[518].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[518].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[518].item_c1[3] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n2[3] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c2[3] = 3 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n3[3] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c3[3] = 3 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_gold[3] = 170000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[518].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[518].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[518].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[518].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[518].item_c1[4] = 135 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n2[4] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c2[4] = 4 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n3[4] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c3[4] = 4 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_gold[4] = 220000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[518].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[518].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[518].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[518].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[518].item_c1[5] = 180 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n2[5] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c2[5] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n3[5] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c3[5] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_gold[5] = 270000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[518].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[518].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[518].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[518].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[518].item_c1[6] = 215 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n2[6] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c2[6] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n3[6] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c3[6] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_gold[6] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[518].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[518].percent_dw[6] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[518].percent_ds[6] = 1	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[518].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[518].item_c1[7] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n2[7] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c2[7] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n3[7] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c3[7] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_gold[7] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[518].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[518].percent_dw[7] = 19 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[518].percent_ds[7] = 1	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[518].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[518].item_c1[8] = 275 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n2[8] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c2[8] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n3[8] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c3[8] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_gold[8] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[518].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[518].percent_dw[8] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[518].percent_ds[8] = 1	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[518].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[518].item_c1[9] = 320 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n2[9] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c2[9] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n3[9] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c3[9] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[518].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[518].item_gold[9] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[518].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[518].percent_dw[9] = 25 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[518].percent_ds[9] = 1	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[519] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[519].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[519].item_c1[1] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n2[1] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c2[1] = 1 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n3[1] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c3[1] = 1 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_gold[1] = 70000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[519].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[519].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[519].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[519].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[519].item_c1[2] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n2[2] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c2[2] = 2 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n3[2] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c3[2] = 2 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_gold[2] = 120000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[519].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[519].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[519].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[519].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[519].item_c1[3] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n2[3] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c2[3] = 3 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n3[3] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c3[3] = 3 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_gold[3] = 170000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[519].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[519].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[519].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[519].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[519].item_c1[4] = 135 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n2[4] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c2[4] = 4 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n3[4] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c3[4] = 4 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_gold[4] = 220000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[519].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[519].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[519].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[519].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[519].item_c1[5] = 180 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n2[5] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c2[5] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n3[5] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c3[5] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_gold[5] = 270000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[519].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[519].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[519].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[519].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[519].item_c1[6] = 215 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n2[6] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c2[6] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n3[6] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c3[6] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_gold[6] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[519].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[519].percent_dw[6] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[519].percent_ds[6] = 1	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[519].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[519].item_c1[7] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n2[7] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c2[7] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n3[7] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c3[7] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_gold[7] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[519].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[519].percent_dw[7] = 19 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[519].percent_ds[7] = 1	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[519].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[519].item_c1[8] = 275 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n2[8] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c2[8] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n3[8] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c3[8] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_gold[8] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[519].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[519].percent_dw[8] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[519].percent_ds[8] = 1	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[519].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[519].item_c1[9] = 320 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n2[9] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c2[9] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n3[9] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c3[9] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[519].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[519].item_gold[9] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[519].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[519].percent_dw[9] = 25 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[519].percent_ds[9] = 1	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[521] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[521].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[521].item_c1[1] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n2[1] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c2[1] = 1 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n3[1] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c3[1] = 1 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_gold[1] = 70000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[521].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[521].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[521].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[521].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[521].item_c1[2] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n2[2] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c2[2] = 2 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n3[2] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c3[2] = 2 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_gold[2] = 120000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[521].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[521].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[521].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[521].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[521].item_c1[3] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n2[3] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c2[3] = 3 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n3[3] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c3[3] = 3 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_gold[3] = 170000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[521].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[521].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[521].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[521].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[521].item_c1[4] = 135 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n2[4] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c2[4] = 4 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n3[4] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c3[4] = 4 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_gold[4] = 220000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[521].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[521].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[521].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[521].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[521].item_c1[5] = 180 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n2[5] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c2[5] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n3[5] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c3[5] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_gold[5] = 270000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[521].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[521].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[521].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[521].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[521].item_c1[6] = 215 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n2[6] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c2[6] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n3[6] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c3[6] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_gold[6] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[521].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[521].percent_dw[6] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[521].percent_ds[6] = 1	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[521].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[521].item_c1[7] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n2[7] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c2[7] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n3[7] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c3[7] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_gold[7] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[521].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[521].percent_dw[7] = 19 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[521].percent_ds[7] = 1	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[521].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[521].item_c1[8] = 275 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n2[8] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c2[8] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n3[8] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c3[8] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_gold[8] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[521].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[521].percent_dw[8] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[521].percent_ds[8] = 1	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[521].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[521].item_c1[9] = 320 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n2[9] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c2[9] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n3[9] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c3[9] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[521].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[521].item_gold[9] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[521].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[521].percent_dw[9] = 25 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[521].percent_ds[9] = 1	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[522] = {item_n1 = {},item_c1 ={},item_n2 ={},item_c2 ={},item_n3 ={},item_c3 ={},item_n4 ={},item_c4 ={},item_n5 ={},item_c5 ={},item_gold ={},percent_up ={},percent_dw ={},percent_ds ={}}
Upgrade_Item_Info_Table.item_info[522].item_n1[1] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[522].item_c1[1] = 50 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n2[1] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c2[1] = 1 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n3[1] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c3[1] = 1 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n4[1] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c4[1] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n5[1] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c5[1] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_gold[1] = 70000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[522].percent_up[1] = 80 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[522].percent_dw[1] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[522].percent_ds[1] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[522].item_n1[2] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[522].item_c1[2] = 70 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n2[2] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c2[2] = 2 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n3[2] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c3[2] = 2 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n4[2] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c4[2] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n5[2] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c5[2] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_gold[2] = 120000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[522].percent_up[2] = 70 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[522].percent_dw[2] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[522].percent_ds[2] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[522].item_n1[3] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[522].item_c1[3] = 100 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n2[3] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c2[3] = 3 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n3[3] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c3[3] = 3 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n4[3] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c4[3] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n5[3] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c5[3] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_gold[3] = 170000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[522].percent_up[3] = 60 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[522].percent_dw[3] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[522].percent_ds[3] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[522].item_n1[4] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[522].item_c1[4] = 135 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n2[4] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c2[4] = 4 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n3[4] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c3[4] = 4 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n4[4] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c4[4] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n5[4] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c5[4] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_gold[4] = 220000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[522].percent_up[4] = 50 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[522].percent_dw[4] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[522].percent_ds[4] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[522].item_n1[5] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[522].item_c1[5] = 180 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n2[5] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c2[5] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n3[5] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c3[5] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n4[5] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c4[5] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n5[5] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c5[5] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_gold[5] = 270000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[522].percent_up[5] = 40 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[522].percent_dw[5] = 0 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[522].percent_ds[5] = 0	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[522].item_n1[6] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[522].item_c1[6] = 215 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n2[6] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c2[6] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n3[6] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c3[6] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n4[6] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c4[6] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n5[6] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c5[6] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_gold[6] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[522].percent_up[6] = 30 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[522].percent_dw[6] = 17 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[522].percent_ds[6] = 1	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[522].item_n1[7] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[522].item_c1[7] = 250 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n2[7] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c2[7] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n3[7] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c3[7] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n4[7] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c4[7] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n5[7] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c5[7] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_gold[7] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[522].percent_up[7] = 10 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[522].percent_dw[7] = 19 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[522].percent_ds[7] = 1	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[522].item_n1[8] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[522].item_c1[8] = 275 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n2[8] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c2[8] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n3[8] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c3[8] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n4[8] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c4[8] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n5[8] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c5[8] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_gold[8] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[522].percent_up[8] = 5 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[522].percent_dw[8] = 22 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[522].percent_ds[8] = 1	-- 파괴확률 1 ~ 100%

Upgrade_Item_Info_Table.item_info[522].item_n1[9] = 118 -- 강화에 필요한 아이템1 의 아이템번호
Upgrade_Item_Info_Table.item_info[522].item_c1[9] = 320 	-- 강화에 필요한 아이템1 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n2[9] = 235 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c2[9] = 5 	-- 강화에 필요한 아이템2 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n3[9] = 243 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c3[9] = 5 	-- 강화에 필요한 아이템3 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n4[9] = -1 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_n5[9] = -1 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
Upgrade_Item_Info_Table.item_info[522].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
Upgrade_Item_Info_Table.item_info[522].item_gold[9] = 300000 -- 강화에 필요한 골드
Upgrade_Item_Info_Table.item_info[522].percent_up[9] = 1 	-- 강화확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[522].percent_dw[9] = 25 	-- 하락확률 1 ~ 100%
Upgrade_Item_Info_Table.item_info[522].percent_ds[9] = 1	-- 파괴확률 1 ~ 100%



--------------------------------------------------







function Upgrade_Item_Info()
-- Upgrade_Item_Info_Table.item_info[1].item_n1[9] = 20 -- 강화에 필요한 아이템1 의 아이템번호
-- Upgrade_Item_Info_Table.item_info[1].item_c1[9] = 10 	-- 강화에 필요한 아이템1 의 갯수
-- Upgrade_Item_Info_Table.item_info[1].item_n2[9] = 21 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
-- Upgrade_Item_Info_Table.item_info[1].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
-- Upgrade_Item_Info_Table.item_info[1].item_n3[9] = 22 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
-- Upgrade_Item_Info_Table.item_info[1].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
-- Upgrade_Item_Info_Table.item_info[1].item_n4[9] = 23 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
-- Upgrade_Item_Info_Table.item_info[1].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
-- Upgrade_Item_Info_Table.item_info[1].item_n5[9] = 24 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
-- Upgrade_Item_Info_Table.item_info[1].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
-- Upgrade_Item_Info_Table.item_info[1].item_gold[9] = 1000 -- 강화에 필요한 골드
-- Upgrade_Item_Info_Table.item_info[1].percent_up[9] = 100 	-- 강화확률 1 ~ 100%
-- Upgrade_Item_Info_Table.item_info[1].percent_dw[9] = 30 	-- 하락확률 1 ~ 100%
-- Upgrade_Item_Info_Table.item_info[1].percent_ds[9] = 10 	-- 파괴확률 1 ~ 100%
local C_Item_Info

Item_Id = unit.GetVar(Item_Var)
if Item_Id == 0 then
	unit.FireEvent("PANEL_UPGRADE_VISIBLE",0)
	return
end

C_Item_Info = unit.player.GetItem(Item_Id)
if C_Item_Info == nil then
	unit.FireEvent("PANEL_UPGRADE_VISIBLE",0)
	return
end
local base_Id = C_Item_Info.dataID
local base_Info = Server.GetItem(base_Id)

if Upgrade_Item_Info_Table.item_info[base_Id] == nil then
	unit.FireEvent("PANEL_UPGRADE_VISIBLE",0)
	unit.SendCenterLabel("강화할 수 없는 장비 입니다.")
	return
end

local next_Level = C_Item_Info.level + 1 
local main_Name = "" 
local main_Name_D = base_Info.name


if next_Level == 10 then
	unit.FireEvent("PANEL_UPGRADE_VISIBLE",0)
	unit.SendCenterLabel("해당 장비는 최대 강화를 달성했습니다.")
	return
end


-- 아이템 이미지 갯수 스트링
local mainItem_Name = Server.GetItem(base_Id).name.." + "..C_Item_Info.level
local mainItem_Img = Server.GetItem(base_Id).imageID

local item_Img_1 = ""
local item_Img_2 = ""
local item_Img_3 = ""
local item_Img_4 = ""
local item_Img_5 = ""

local item_Str_1 = ""
local item_Str_2 = ""
local item_Str_3 = ""
local item_Str_4 = ""
local item_Str_5 = ""

local gold_Need = Upgrade_Item_Info_Table.item_info[base_Id].item_gold[next_Level]

local Img_Addct_Item_1 = Server.GetItem(Addct_Item_1).imageID
local Img_Addct_Item_2 = Server.GetItem(Addct_Item_2).imageID
local Str_Addct_Item_1 = Set_Count_Color_C(unit.CountItem(Addct_Item_1),1)
local Str_Addct_Item_2 = Set_Count_Color_C(unit.CountItem(Addct_Item_2),1)

local per_1 = Upgrade_Item_Info_Table.item_info[base_Id].percent_up[next_Level].."%"
local per_2 = Upgrade_Item_Info_Table.item_info[base_Id].percent_dw[next_Level].."%"
local per_3 = Upgrade_Item_Info_Table.item_info[base_Id].percent_ds[next_Level].."%"

if Upgrade_Item_Info_Table.item_info[base_Id].item_n1[next_Level] ~= -1 then
	item_Img_1 = Server.GetItem(Upgrade_Item_Info_Table.item_info[base_Id].item_n1[next_Level]).imageID
	item_Str_1 = Set_Count_Color_C(unit.CountItem(Upgrade_Item_Info_Table.item_info[base_Id].item_n1[next_Level]),Upgrade_Item_Info_Table.item_info[base_Id].item_c1[next_Level])
end
if Upgrade_Item_Info_Table.item_info[base_Id].item_n2[next_Level] ~= -1 then
	item_Img_2 = Server.GetItem(Upgrade_Item_Info_Table.item_info[base_Id].item_n2[next_Level]).imageID
	item_Str_2 = Set_Count_Color_C(unit.CountItem(Upgrade_Item_Info_Table.item_info[base_Id].item_n2[next_Level]),Upgrade_Item_Info_Table.item_info[base_Id].item_c2[next_Level])
end
if Upgrade_Item_Info_Table.item_info[base_Id].item_n3[next_Level] ~= -1 then
	item_Img_3 = Server.GetItem(Upgrade_Item_Info_Table.item_info[base_Id].item_n3[next_Level]).imageID
	item_Str_3 = Set_Count_Color_C(unit.CountItem(Upgrade_Item_Info_Table.item_info[base_Id].item_n3[next_Level]),Upgrade_Item_Info_Table.item_info[base_Id].item_c3[next_Level])
end
if Upgrade_Item_Info_Table.item_info[base_Id].item_n4[next_Level] ~= -1 then
	item_Img_4 = Server.GetItem(Upgrade_Item_Info_Table.item_info[base_Id].item_n4[next_Level]).imageID
	item_Str_4 = Set_Count_Color_C(unit.CountItem(Upgrade_Item_Info_Table.item_info[base_Id].item_n4[next_Level]),Upgrade_Item_Info_Table.item_info[base_Id].item_c4[next_Level])
end
if Upgrade_Item_Info_Table.item_info[base_Id].item_n5[next_Level] ~= -1 then
	item_Img_5 = Server.GetItem(Upgrade_Item_Info_Table.item_info[base_Id].item_n5[next_Level]).imageID
	item_Str_5 = Set_Count_Color_C(unit.CountItem(Upgrade_Item_Info_Table.item_info[base_Id].item_n5[next_Level]),Upgrade_Item_Info_Table.item_info[base_Id].item_c5[next_Level])
end
unit.FireEvent("CHECK_UPGRADE_ADC",1,Adc_Check_Mode_C(1))
unit.FireEvent("CHECK_UPGRADE_ADC",2,Adc_Check_Mode_C(2))
unit.FireEvent("STR_UPGRADE_PER",per_1,per_2,per_3)
unit.FireEvent("IMG_UPGRADE_SETTING_AD",Img_Addct_Item_1,Img_Addct_Item_2,Str_Addct_Item_1,Str_Addct_Item_2)
unit.FireEvent("IMG_UPGRADE_M_SETTING",mainItem_Name,mainItem_Img)
unit.FireEvent("GOLD_UPGRADE_SETTING",gold_Need)
unit.FireEvent("IMG_UPGRADE_SETTING",item_Img_1,item_Img_2,item_Img_3,item_Img_4,item_Img_5,item_Str_1,item_Str_2,item_Str_3,item_Str_4,item_Str_5)
unit.FireEvent("PANEL_UPGRADE_VISIBLE",1)
end
Server.GetTopic("UPGRADE_DO").Add(function(id)
	Upgrade_Item_Do()
end) 
function Upgrade_Item_Do()
-- Upgrade_Item_Info_Table.item_info[1].item_n1[9] = 20 -- 강화에 필요한 아이템1 의 아이템번호
-- Upgrade_Item_Info_Table.item_info[1].item_c1[9] = 10 	-- 강화에 필요한 아이템1 의 갯수
-- Upgrade_Item_Info_Table.item_info[1].item_n2[9] = 21 -- 강화에 필요한 아이템2 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
-- Upgrade_Item_Info_Table.item_info[1].item_c2[9] = 10 	-- 강화에 필요한 아이템2 의 갯수
-- Upgrade_Item_Info_Table.item_info[1].item_n3[9] = 22 -- 강화에 필요한 아이템3 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
-- Upgrade_Item_Info_Table.item_info[1].item_c3[9] = 10 	-- 강화에 필요한 아이템3 의 갯수
-- Upgrade_Item_Info_Table.item_info[1].item_n4[9] = 23 -- 강화에 필요한 아이템4 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
-- Upgrade_Item_Info_Table.item_info[1].item_c4[9] = 10 	-- 강화에 필요한 아이템4 의 갯수
-- Upgrade_Item_Info_Table.item_info[1].item_n5[9] = 24 -- 강화에 필요한 아이템5 의 아이템번호 , 만약 없다면 -1 값 넣어주세요.
-- Upgrade_Item_Info_Table.item_info[1].item_c5[9] = 10 	-- 강화에 필요한 아이템5 의 갯수
-- Upgrade_Item_Info_Table.item_info[1].item_gold[9] = 1000 -- 강화에 필요한 골드
-- Upgrade_Item_Info_Table.item_info[1].percent_up[9] = 100 	-- 강화확률 1 ~ 100%
-- Upgrade_Item_Info_Table.item_info[1].percent_dw[9] = 30 	-- 하락확률 1 ~ 100%
-- Upgrade_Item_Info_Table.item_info[1].percent_ds[9] = 10 	-- 파괴확률 1 ~ 100%
local C_Item_Info

Item_Id = unit.GetVar(Item_Var)
if Item_Id == 0 then
	unit.FireEvent("CHECK_UPGRADE_DELAY",0)
	return
end

C_Item_Info = unit.player.GetItem(Item_Id)
if C_Item_Info == nil then
	unit.FireEvent("CHECK_UPGRADE_DELAY",0)
	return
end
local base_Id = C_Item_Info.dataID
local base_Info = Server.GetItem(base_Id)

if Upgrade_Item_Info_Table.item_info[base_Id].item_n1[1] == nil then
	unit.SendCenterLabel("강화할 수 없는 장비 입니다.")
	unit.FireEvent("CHECK_UPGRADE_DELAY",0)
	return
end

local next_Level = C_Item_Info.level + 1 
local main_Name = "" 
local main_Name_D = base_Info.name

if next_Level == 10 then
	unit.SendCenterLabel("해당 장비는 최대 강화를 달성했습니다.")
	unit.FireEvent("CHECK_UPGRADE_DELAY",0)
	return
end

local need_Item_1 = Upgrade_Item_Info_Table.item_info[base_Id].item_n1[next_Level]
local need_Item_C_1 = Upgrade_Item_Info_Table.item_info[base_Id].item_c1[next_Level]
local need_Item_2 = Upgrade_Item_Info_Table.item_info[base_Id].item_n2[next_Level]
local need_Item_C_2 = Upgrade_Item_Info_Table.item_info[base_Id].item_c2[next_Level]
local need_Item_3 = Upgrade_Item_Info_Table.item_info[base_Id].item_n3[next_Level]
local need_Item_C_3 = Upgrade_Item_Info_Table.item_info[base_Id].item_c3[next_Level]
local need_Item_4 = Upgrade_Item_Info_Table.item_info[base_Id].item_n4[next_Level]
local need_Item_C_4 = Upgrade_Item_Info_Table.item_info[base_Id].item_c4[next_Level]
local need_Item_5 = Upgrade_Item_Info_Table.item_info[base_Id].item_n5[next_Level]
local need_Item_C_5 = Upgrade_Item_Info_Table.item_info[base_Id].item_c5[next_Level]
local need_Gold = Upgrade_Item_Info_Table.item_info[base_Id].item_gold[next_Level]

local check_1 = 0
local check_2 = 0
local check_3 = 0
local check_4 = 0
local check_5 = 0
local check_6 = 0

if need_Item_1 ~= -1 then
	if unit.CountItem(need_Item_1) >= need_Item_C_1 then
		check_1 = 1
	else
		unit.SendCenterLabel(Server.GetItem(need_Item_1).name.." 아이템이 부족합니다.")
		unit.FireEvent("CHECK_UPGRADE_DELAY",0)
		return
	end
end
if need_Item_2 ~= -1 then
	if unit.CountItem(need_Item_2) >= need_Item_C_2 then
		check_2 = 1
	else
		unit.SendCenterLabel(Server.GetItem(need_Item_2).name.." 아이템이 부족합니다.")
		unit.FireEvent("CHECK_UPGRADE_DELAY",0)
		return
	end
end
if need_Item_3 ~= -1 then
	if unit.CountItem(need_Item_3) >= need_Item_C_3 then
		check_3 = 1
	else
		unit.SendCenterLabel(Server.GetItem(need_Item_3).name.." 아이템이 부족합니다.")
		unit.FireEvent("CHECK_UPGRADE_DELAY",0)
		return
	end
end
if need_Item_4 ~= -1 then
	if unit.CountItem(need_Item_4) >= need_Item_C_4 then
		check_4 = 1
	else
		unit.SendCenterLabel(Server.GetItem(need_Item_4).name.." 아이템이 부족합니다.")
		unit.FireEvent("CHECK_UPGRADE_DELAY",0)
		return
	end
end
if need_Item_5 ~= -1 then
	if unit.CountItem(need_Item_5) >= need_Item_C_5 then
		check_5 = 1
	else
		unit.SendCenterLabel(Server.GetItem(need_Item_1).name.." 아이템이 부족합니다.")
		unit.FireEvent("CHECK_UPGRADE_DELAY",0)
		return
	end
end
if need_Item_6 ~= -1 then
	if unit.gameMoney >= need_Gold then
		check_6 = 1
	else
		unit.SendCenterLabel("골드가 부족합니다.")
		unit.FireEvent("CHECK_UPGRADE_DELAY",0)
		return
	end
end
if check_1 == 1 then
	unit.RemoveItem(need_Item_1,need_Item_C_1,false)
end
if check_2 == 1 then
	unit.RemoveItem(need_Item_2,need_Item_C_2,false)
end
if check_3 == 1 then
	unit.RemoveItem(need_Item_3,need_Item_C_3,false)
end
if check_4 == 1 then
	unit.RemoveItem(need_Item_4,need_Item_C_4,false)
end
if check_5 == 1 then
	unit.RemoveItem(need_Item_5,need_Item_C_5,false)
end
if check_6 == 1 then
	unit.UseGameMoney(need_Gold)
end

local percent_up = Upgrade_Item_Info_Table.item_info[base_Id].percent_up[next_Level]
local percent_dw = Upgrade_Item_Info_Table.item_info[base_Id].percent_dw[next_Level]
local percent_ds = Upgrade_Item_Info_Table.item_info[base_Id].percent_ds[next_Level]

local save_on = false
local protect_on = false

if unit.GetVar(Item_M_Var_1) == 1 then
	if unit.CountItem(Addct_Item_1) >= 1 then
		save_on = true
	else
		save_on = false
	end
else
	save_on = false
end
if save_on == true then
	unit.RemoveItem(Addct_Item_1,1,false)
end
if unit.GetVar(Item_M_Var_2) == 1 then
	if unit.CountItem(Addct_Item_2) >= 1 then
		protect_on = true
	else
		protect_on = false
	end
else
	protect_on = false
end
if protect_on == true then
	unit.RemoveItem(Addct_Item_2,1,false)
end

if rand(1,101) <= percent_up then
	unit.player.GetItem(Item_Id).level = unit.player.GetItem(Item_Id).level + 1
	unit.SendCenterLabel("<color=#0033ff>강화에 성공하였습니다.</color>")
Show_Animation(Animation_Up)
else

	-- 하락
	if rand(1,101) <= percent_dw then
		if save_on == false then
			if unit.player.GetItem(Item_Id).level ~= 0 then
				unit.player.GetItem(Item_Id).level = unit.player.GetItem(Item_Id).level - 1
				unit.SendCenterLabel("<color=#ff0000>강화에 실패하여 장비가 하락하였습니다.</color>")
				Show_Animation(Animation_Dw)
			end

		else
			unit.SendCenterLabel("<color=#cc00cc>장비하락을 보호하였습니다.</color>")
			Show_Animation(Animation_De1)
		end
	else
		--파괴

		if rand(1,101) <= percent_ds then
			if protect_on == false then
				unit.RemoveItemByID(Item_Id,1,false) 
				unit.SendCenterLabel("<color=#ff0000>강화에 실패하여 장비가 파괴되었습니다.</color>")
				Show_Animation(Animation_Ds)
			else
				unit.SendCenterLabel("<color=#cc00cc>장비파괴를 보호하였습니다.</color>")
				Show_Animation(Animation_De2)
			end
		else
			unit.SendCenterLabel("<color=#ff0000>강화에 실패하였습니다.</color>")
			Show_Animation(Animation_Fa)
		end
	end

end
unit.player.SendItemUpdated(item_Info)
Upgrade_Item_Info()
unit.FireEvent("CHECK_UPGRADE_DELAY",0)
end

Server.GetTopic("CHECK_ADC").Add(function(id)
	unit.FireEvent("CHECK_UPGRADE_ADC",id,Adc_Check_Mode(id))

end) 
function Adc_Check_Mode_C(var)
	if var == 1 then	
		if unit.GetVar(Item_M_Var_1) == 1 then
			if unit.CountItem(Addct_Item_1) < 1 then
				unit.SendCenterLabel(Server.GetItem(Addct_Item_1).name.." 아이템이 부족합니다.")
				unit.SerVar(Item_M_Var_1,0)
			end
		end
		return unit.GetVar(Item_M_Var_1)
	else 
		if unit.GetVar(Item_M_Var_2) == 1 then
			if unit.CountItem(Addct_Item_2) < 1 then
				unit.SendCenterLabel(Server.GetItem(Addct_Item_2).name.." 아이템이 부족합니다.")
				unit.SerVar(Item_M_Var_2,0)
			end
		end
		return unit.GetVar(Item_M_Var_2)
	end
end

function Adc_Check_Mode(var)
	if var == 1 then
		if unit.GetVar(Item_M_Var_1) == 0 then
			unit.SerVar(Item_M_Var_1,1)
		else
			unit.SerVar(Item_M_Var_1,0)
		end
		
		if unit.CountItem(Addct_Item_1) < 1 then
			unit.SendCenterLabel(Server.GetItem(Addct_Item_1).name.." 아이템이 부족합니다.")
			unit.SerVar(Item_M_Var_1,0)
		end
		print(unit.GetVar(Item_M_Var_1))
		return unit.GetVar(Item_M_Var_1)
	else 
		if unit.GetVar(Item_M_Var_2) == 0 then
			unit.SerVar(Item_M_Var_2,1)
		else
			unit.SerVar(Item_M_Var_2,0)
		end

		if unit.CountItem(Addct_Item_2) < 1 then
			unit.SendCenterLabel(Server.GetItem(Addct_Item_2).name.." 아이템이 부족합니다.")
			unit.SerVar(Item_M_Var_2,0)
		end
		print(unit.GetVar(Item_M_Var_2))
		return unit.GetVar(Item_M_Var_2)
	end
end

function Set_Count_Color_C(var1,var2)
	local str = ""
	if var1 >= var2 then
		str = "<color=#1a4d00>"..var1.."/"..var2.."</color>"
	else
		str = "<color=#c95f5f>"..var1.."/"..var2.."</color>"
	end
	return str
end

function Show_Animation(var)
	if var ~= -1 then
		unit.ShowAnimation(var)
	end
end
