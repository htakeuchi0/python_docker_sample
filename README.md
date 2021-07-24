# sandboxプロジェクト (Docker版)

## 概要

Python開発用のDockerイメージのサンプルです．    
実行環境 (ホスト側) は以下のとおりです．
* OS: Linux (Ubuntu 18.04.3 LTS)

Dockerを利用することで，venvを使う場合と異なり    
Pythonのバージョンを指定した環境を作成できる特長があります．    

ここでは，Python 3.8.1の環境を作成します．    
Docker コンテナ作成の練習のため Docker コンテナ内にユーザを作成していますが，    
単に Python の実行環境を作成したい用途では不要と思います．

## インストール

Dockerを以下に従ってインストールしてください．
* https://docs.docker.com/install/linux/docker-ce/ubuntu/

docker-composeを使うため，以下のコマンドを実行してインストールしてください．
```
$ sudo apt install docker-compose
```

## 使い方

以下の手順でPython開発用のDockerイメージを作成できます．

```
$ make
```

単体テストは以下のコマンドで実行できます．
```
$ make test
```
