# sandboxプロジェクト (Docker版)

## 概要

Python開発用のDockerイメージのサンプルです．

## インストール

Dockerを以下に従ってインストールしてください．
* https://docs.docker.com/install/linux/docker-ce/ubuntu/

docker-composeを使うため，以下のコマンドを実行してください．
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
