#!/bin/zsh

# 标记当天各时段是否已执行
LAST_DATE_6=""
LAST_DATE_11=""
LAST_DATE_16=""
LAST_DATE_21=""

while true; do
  NOW=$(date +"%H%M")
  TODAY=$(date +"%Y-%m-%d")

  # 06点任务
  if [[ "$NOW" -ge "0600" && "$NOW" -le "0610" && "$LAST_DATE_6" != "$TODAY" ]]; then
    claude -p "What day is it today?"
    echo "执行时间: $(date +'%Y-%m-%d %H:%M:%S') - 06点任务执行"
    LAST_DATE_6="$TODAY"
  fi

  # 11点任务
  if [[ "$NOW" -ge "1100" && "$NOW" -le "1110" && "$LAST_DATE_11" != "$TODAY" ]]; then
    claude -p "What time is it now?"
    echo "执行时间: $(date +'%Y-%m-%d %H:%M:%S') - 11点任务执行"
    LAST_DATE_11="$TODAY"
  fi

  # 16点任务
  if [[ "$NOW" -ge "1600" && "$NOW" -le "1610" && "$LAST_DATE_16" != "$TODAY" ]]; then
    claude -p "What's the weather like outside now?"
    echo "执行时间: $(date +'%Y-%m-%d %H:%M:%S') - 16点任务执行"
    LAST_DATE_16="$TODAY"
  fi

  # 21点任务
  if [[ "$NOW" -ge "2100" && "$NOW" -le "2110" && "$LAST_DATE_21" != "$TODAY" ]]; then
    claude -p "What's your name?"
    echo "执行时间: $(date +'%Y-%m-%d %H:%M:%S') - 21点任务执行"
    LAST_DATE_21="$TODAY"
  fi

  sleep 30
done
