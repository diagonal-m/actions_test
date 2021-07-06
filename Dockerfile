FROM python:3.8.2

# デフォルトの locale `C` を `C.UTF-8` に変更する
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# タイムゾーンを日本時間に変更
ENV TZ Asia/Tokyo

# 環境変数の設定
ARG test
ENV TEST=$test

# /tmpにappとdockerをコピー
COPY . /tmp

# 相対パスの基準ディレクトリ
WORKDIR /tmp

CMD ["python3", "app/app.py"]
