# automatically install LNMP environment in debian 8 on the tencent cloud
![通过测试](https://img.shields.io/badge/build-passing-green.svg)
![系统需要debian8.2 64位](https://img.shields.io/badge/debian-8.2(64%20bit)-orange.svg)
![python2.7](https://img.shields.io/badge/python-2.7-blue.svg)

>一个在Debian系统上自动周期性爬取大乐透、双色球彩票开奖数据的脚本。<br>
>A script that automatically crawls the data of DaLeTou and ShuangSeQiu lottery on Debian system.

## 1. 如何使用？
1) 首先在服务器上安装**debian 8.2(64位)**操作系统
2) 用FTP上传*lotterygraber*或者用wget的方式，把脚本文件传到服务器上：
```sh
wget "https://github.com/BEWINDOWEB/lotterygrabber/archive/master.zip"
```
3) 运行脚本
```sh
chmod +x bwb_lottery_main.sh
./bwb_lottery_main.sh
```

## 2. 我怎么知道运行成功了？
1) 如果安装顺利，会在lotterygrabber目录下生成`lotterydata`目录。
2) 脚本会在星期1、3、6晚上23:00爬取中国体育彩票超级大乐透开奖号码，在星期2、4、7晚上23:00爬取中国福利彩票双色球开奖号码。数据存放在`lotterydata`目录下，样例：

```
2018-03-14:18028,04,19,25,30,35,04,07
2018-03-15:18029,03,09,21,25,29,01,08
2018-03-17:18030,05,18,21,28,32,09,11
2018-03-19:18031,03,08,13,17,23,05,11
2018-03-21:18032,07,10,17,32,35,05,12
2018-03-23:18032,07,10,17,32,35,05,12
```
## 3.其他
想要用机器学习去研究彩票，发现很多网站只提供近500期的数据，那么从现在开始，每天都爬取一下以后万一想用了呢。<br>
欢迎提交issues,个人网站[www.bewindoweb.com](http://www.bewindoweb.com) 或者 [www.bewindoweb.cn](http://www.bewindoweb.cn)

		
## 1. HOW TO USE?
1) First, install the *Debian 8.2 (64 bit)* operating system on the server.
2) Upload the *lotterygraber* with FTP OR use
```sh
wget "https://github.com/BEWINDOWEB/lotterygrabber.git"
```
3) run the shell
```sh
chmod +x bwb_lottery_main.sh
./bwb_lottery_main.sh
```

## 2. HOW CAN I KOWN THAT I HAVE INSTALLED LNMP SUCCESSFULLY?
1) If the installation is successful, the `lotterydata` directory will be generated under the lotterygrabber directory.
2) The script will climb the Chinese sports lottery super lottery number at 23:00 on 1, 3, and 6 nights, and crawl the Chinese welfare lottery double color ball award number on week 2, 4 and 7 at 23:00 p.m. The data is stored in the `lotterydata` directory, sample:
```
2018-03-14:18028,04,19,25,30,35,04,07
2018-03-15:18029,03,09,21,25,29,01,08
2018-03-17:18030,05,18,21,28,32,09,11
2018-03-19:18031,03,08,13,17,23,05,11
2018-03-21:18032,07,10,17,32,35,05,12
2018-03-23:18032,07,10,17,32,35,05,12
```
## 3.at last
I want to study the lottery by machine learning, and find that many websites offer only 500 periods of data. so from now on, crawling it every day in case i want to use it in the future. <br>
welcome to propose issues, and forgive me for poor English, my website is [www.bewindoweb.com](http://www.bewindoweb.com) or [www.bewindoweb.cn](http://www.bewindoweb.cn)
