# lantern
Dockerfile for lantern(https://github.com/getlantern/lantern-binaries)

Lastest verified version for Lantern 5.8.1. @ 2020.2.14

Default ports for docker image:
3128 tcp  Http(s) proxy port
3129 tcp  Socks5 proxy port
8080 tcp  Lantern UI

Pull from dockerhub:
docker pull xiaoqingfeng999/lantern

Build yourself :
docker build -t xiaoqingfeng999/lantern https://raw.githubusercontent.com/xiaoqingfengATGH/lantern/master/Dockerfile

Run：
docker run -itd --restart=always --name lantern -p 3128:3128 -p 3129:3129 -p 8080:8080 xiaoqingfeng999/lantern

Use http://127.0.0.1:8080/lantern to get access to lantern UI (to monitor lantern status and upgrade to PRO version).