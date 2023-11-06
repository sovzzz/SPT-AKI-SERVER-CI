# 秋-塔科夫单机每日编译脚本
## 运行状态

![example workflow](https://github.com/sovzzz/SPT-AKI-SERVER-CI/actions/workflows/build.yml/badge.svg)

## 如何分辨编译的各个版本

查看文件名

 Aki.Server-b.***master***-v.***3.7.1***-t.***0.13.5.26535***-d.***2023.11.06***.zip

b-branch,分支名称（master是最主要分支，在其他开发分支开发完毕后会合并到这个分支等待发布为官方BE）

v-version,服务端版本号

t-tarkov,塔科夫客户端版本号

d-date,编译日期

## 如何获取编译？

### 方法1

（可能需要翻墙）

1. 注册并登录GitHub账户
2. 打开本仓库Action
3. 在左侧找到Build and Upload
4. 在页面最底端下载

### 方法2

（免费用户[下载慢](https://www.ctfile.com/p/giftcard?uid=28273672&type=1&key=d09ee4)）

1. [注册城通网盘](https://www.ctfile.com/linker/28273672)
2. 前往[网盘发布页](https://url72.ctfile.com/d/28273672-58667611-79f16a)下载（提取码9684）

## 如何本地运行脚本

定时编译依赖于GitHub的工作流，你可以使用类似的功能比如Windows的计划任务代替。

编译脚本本身（BuildServer.ps1）则需要自行安装环境依赖。

本仓库的编译脚本会编译“秋”服务端代码仓库所有的分支。如果只想要编译特定分支，请使用[这个仓库](https://github.com/qe201020335/SPT-AKI_CI)的脚本。

### 编译方法

1. 安装Git、Git LFS和AKI指定版本的Node.js
2. 运行ps1脚本

# 关于启动器
另一个ps1脚本是编译启动器，由于更新不频繁，没有设置定时运行。你可以fork到你的仓库自己运行一遍然后下载构件。

如果你没有设置网盘WebDav，会报错，但是构件是正常的。

启动器的网盘下载在[这里](https://github.com/sovzzz/SPT-AKI-SERVER-CI/actions/runs/6771135719)（提取码9684）

# 声明
该项目不属于Battle State或者SPT-AKI。

所有编译结果均未经测试，下载即代表你愿意承担相应风险，本人不对其负任何责任。

网盘属于付费空间，随时可能停用。如果想要支持，请到[这里](https://afdian.net/a/Ubisoviet)支持我。
