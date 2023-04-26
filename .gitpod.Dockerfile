# Ubuntuの公式コンテナを軸に環境構築
# 22.04ではaptからpython3.8が入っていなかったので20.04で固定する
FROM ubuntu:20.04

ENV ARCH amd64
ENV GOVERSION 1.15.6
# ENV HOME /root
ENV PATH $PATH:/usr/local/go/bin
ENV GOPATH /atcoder/src/work

# インタラクティブモードにならないようにする
ARG DEBIAN_FRONTEND=noninteractive
# タイムゾーンを日本に設定
ENV TZ=Asia/Tokyo

# インフラを整備
RUN apt-get update && \
    apt-get install -y time tzdata tree git curl expect zip
