#!/bin/sh
# 맥에서 두 번 눌러 엽니다. 이 창을 닫으면 꺼집니다.
cd "$(dirname "$0")"
echo "연구 도우미를 이 컴퓨터에서 엽니다. 이 창은 그대로 두십시오."
( sleep 1; open "http://localhost:8765/" ) &
python3 -m http.server 8765 --bind 127.0.0.1
