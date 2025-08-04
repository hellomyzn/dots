FROM silex/emacs:latest
RUN mkdir /opt/org

# myzn ユーザーとグループを追加し、ホームディレクトリを作成
RUN addgroup --system myzn \
    && adduser --system --ingroup myzn --home /home/myzn myzn \
    && mkdir -p /opt/org \
    && chown -R myzn:myzn /opt/org

# 以降のコマンドを myzn ユーザーで実行
USER myzn
WORKDIR /home/myzn

ENV LANG ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8