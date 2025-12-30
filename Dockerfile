FROM fluent/fluentd:v1.16-debian-1

USER root

# ログファイルを配置するディレクトリを作成
RUN mkdir -p /fio/log /var/log/fluent && \
    chown -R fluent:fluent /fio /var/log/fluent

# 設定ファイルとログファイルをコピー
COPY fluent.conf /fluentd/etc/fluent.conf
COPY mysqld.slow.log /fio/log/mysqld.slow.log

# 権限の付与
RUN chmod 644 /fio/log/mysqld.slow.log

USER fluent