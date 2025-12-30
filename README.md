## 事前準備
空のmysqld.sloq.logを、実際のものと差し替える

## 実行方法
`docker-compose run --rm fluentd`
※停止するときは Ctrl+C

## 設定変更
- fluent.conf を編集して `docker-compose up` し直せば、変更が反映される
- mysqld.slow.log を書き換えても同様に反映される