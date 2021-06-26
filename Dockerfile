FROM ruby:2.7.3-alpine3.13

# ロケール環境変数をセット
ENV LANG C.UTF-8

# 利用可能なパッケージとbundlerを更新
RUN apk update && \
    gem update bundler

RUN apk add --no-cache --virtual build-deps \
        build-base && \
    apk add --no-cache \
        linux-headers \
        libxml2-dev \
        make \
        gcc \
        libc-dev \
        mariadb-dev \
        tzdata \
        nodejs~=14 \
        yarn~=1.22.10 \
        imagemagick6-dev \
        git \
        less && \
    rm -rf /usr/lib/libmysqld* && \
    rm -rf /usr/bin/mysql*

# 作業ディレクトリの作成
RUN mkdir /tasks_manager_server
ENV API_ROOT /tasks_manager_server
WORKDIR $API_ROOT

# ローカルの Gemfile, Gemfile.lock を作業ßディレクトリにコピーする
COPY ./Gemfile* $API_ROOT/

# bundle install
RUN bundle install --jobs=4
RUN apk del build-deps

# ローカルのプロジェクトを作業ディレクトリにコピーする
COPY . $API_ROOT
