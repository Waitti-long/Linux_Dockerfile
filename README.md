# Linux_Dockerfile
 搭建了一些逆向基础工具的dockerfile

* ubuntu换源（清华源）
* pip换源（清华源）
* pwntools
* radare2
* python3
* netcat
* nasm

# Fasted Start

先安装docker，移步官网：
```http
https://www.docker.com/
```
运行docker。

进入到有dockerfile的文件夹，打开终端。（注意最后的 **.** ）
```sh
docker build -t re-linux .
```
经过一段时间的等待，build完成。

运行（一次性）
```sh
docker run -it re-linux /bin/bash
```

运行（后台运行）
```sh
docker run -dit re-linux /bin/bash
```

列出一些可能用到的docker命令：
```sh
docker images # 列出镜像
docker ps -a # 列出所有 conrainer
docker container ls # 列出所有 conrainer
docker exec -it <container id> /bin/bash # 进入已经运行的 container
docker stop $(docker ps -a -q) # 停止所有容器
docker rm $(docker ps -a -q) # 删除所有容器
docker rmi <image id> # 删除指定image（需要先停止对应的容器）
```