
# 获取metasverse原生代币教程

## 1.安装docker

自行google安装教程

## 2.下载程序

``
https://github.com/metasverse/Mining.git
``

## 3.初始化文件夹
``
cd Mining
``

``
mkdir chain && ethash
``

## 4.修改配置文件miner.ini


```ini

coinBase=0xaB54aBAD3E3087E276c68B305261cdd57b29e695 //修改为你的挖矿地址
minerThreads=4 //启动的挖矿线程
enode=enode://cb1e85fa581c7bb4ac6606e3f5eb51f8231c859444a8b393f2f4b8e9b1533abf9c0bf5b2bb2c9bc78468aac855718f9faab81ea8fe6ea0112bf2aa81021d2f63@106.52.241.128:8087

```

## 5.开启挖矿
``
./run.sh
``
