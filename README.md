# ys-bot/Adachi-BOT Docker
# 中文
这是Adachi-BOT的docker自动构建推送程序，你可以在这里看到它 

https://hub.docker.com/repository/docker/zwnes/ys-bot

如果你想部署在自己的机器上
> `docker run -itd --name=ys-bot -v /root/ys-bot/config:/app/Adachi-BOT/config kimikkorow/adachi-bot`

这是你在部署后需要的额外操作

> 初始化：`docker exec -it ys-bot npm run init`

> 启动：`docker exec -it ys-bot npm run start`

配置请参[原项目](https://github.com/Arondight/Adachi-BOT)

# English version
This is an auto program to build the Adachi-BOT dockerfiles and push it to Docker Hub.
You can check it on  https://hub.docker.com/repository/docker/zwnes/ys-bot

command :
> `docker exec -it ys-bot npm run init`

> `docker exec -it ys-bot npm run start`
