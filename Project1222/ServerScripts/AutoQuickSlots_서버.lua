-- 공용이벤트에 이벤트 작성 시, 예시로 첨부한 사진을 참고하여 조건에 충족하지 않을 경우 'AUTO_ON = false'의 내용도 넣어주어야 합니다.
-- 서버로 과도한 토픽 발송 시 렉이 걸릴 수 있기 때문에 해당 부분을 고려하여 스크립트 작성 부탁드립니다.
-- 스크립트 작성 도중 문의사항이 있는 경우 리소스마켓의 오픈채팅을 이용해주세요

function onJoinPlayer(scriptRoomPlayer) 
    scriptRoomPlayer.unit.StartGlobalEvent(39) --플레이어 접속 시 1번 공용이벤트 실행
    end 
    Server.onJoinPlayer.Add(onJoinPlayer) 

Server.GetTopic("auto").Add(function(text) --자동사냥 시작
    unit.StartGlobalEvent(40) --괄호 안에 오토 사냥이 시작될 공용이벤트 번호 설정!
end)

Server.GetTopic("autostop").Add(function(text) --자동사냥 종료
    unit.StartGlobalEvent(41) --괄호 안에 오토 사냥이 종료될 공용이벤트 번호 설정!
end)

Server.GetTopic("hppotion").Add(function(text) --HP포션
    unit.StartGlobalEvent(37) --괄호 안에 HP포션 먹는 공용이벤트 번호 설정!
end)

Server.GetTopic("mppotion").Add(function(text) --MP포션
    unit.StartGlobalEvent(38) --괄호 안에 MP포션 먹는 공용이벤트 번호 설정!
end)