#!/bin/bash

# xmlファイルの保存先
hourlyDirname="/home/vagrant/workspace/html/bot/niconico-ranking-hourly-rss"
dailyDirname="/home/vagrant/workspace/html/bot/niconico-ranking-daily-rss"
mkdir -p $hourlyDirname
mkdir -p $dailyDirname

 # ファイル名指定
hourlyFilename="${hourlyDirname}/hourly-ranking-`date +'%Y%m%d%H%M'`.xml"
dailyFilename="${dailyDirname}/daily-ranking-`date +'%Y%m%d%H%M'`.xml"

# 取得
curl -s -o $hourlyFilename -H "User-Agent: CrawlBot; your@mail" http://www.nicovideo.jp/ranking/fav/hourly/all?rss=2.0&lang=ja-jp
curl -s -o $dailyFilename -H "User-Agent: CrawlBot; your@mail" http://www.nicovideo.jp/ranking/fav/daily/all?rss=2.0&lang=ja-jp
echo "Save to $hourlyFilename"
echo "Save to $dailyFilename"

