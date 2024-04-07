#!/bin/bash
echo "host scouter execute"
# host.sh 스크립트 실행
cd ./scouter/agent.host

./host.sh &


cd /app

echo "java scouter execute"

# Java 애플리케이션을 백그라운드로 실행
java -javaagent:scouter/agent.java/scouter.agent.jar -jar ./builds/jpashop-0.0.1-SNAPSHOT.jar &


# 모든 백그라운드 작업이 종료될 때까지 기다림
wait
