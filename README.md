# これは何ですか？
docker上で動作するrailsサンプルアプリです。
AWS ECSで動作するtaskファイルも添付しています。

# 対象
OS X ユーザ

# 事前準備
* Docker
https://www.docker.com/docker-mac

* virtualbox
https://www.virtualbox.org/

* docker-compose
* docker-machine


```
$ brew install docker-compose
$ brew install docker-machine
```

# 利用手順
* cloneしたディレクトリに移動。

* docker用仮想マシンをローカルで起動
```
$ docker-machine create --driver virtualbox MACHINE_NAME
$ docker-machine ls # MACHINE_NAMEのipアドレスを確認（192.168.99.100 など）
$ docker-machine env MACHINE_NAME # 仮想マシンのIPアドレスなどが出力されればok.
$ eval $(docker-machine env MACHINE_NAME) # 仮想マシンへコマンドのパスを通す.
$ ./docker.sh # dockerコンテナのビルド、起動をまとめて実行
```

ブラウザを立ち上げ、以下が確認できれば動作ok.
* ipアドレスで「Yay! You’re on Rails!」が出力.
* /users にてCRUDが動作していること.
