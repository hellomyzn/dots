FROM silex/emacs:latest

USER root
RUN mkdir /opt/org

# tzdata を apt でインストールして、Asia/Tokyo に設定
RUN apt-get update && apt-get install -y tzdata \
    && ln -snf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
    && echo "Asia/Tokyo" > /etc/timezone

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
ENV TZ=Asia/Tokyo
