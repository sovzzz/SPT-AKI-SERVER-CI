# 秋-塔科夫单机每日编译
## 运行状态

![example workflow](https://github.com/sovzzz/spt/actions/workflows/build.yml/badge.svg)

## 如何分辨编译的各个版本

查看文件名

> Aki.Server-b.**master**-v.**3.7.1**-t.**0.13.5.26535**-d.**2023.11.06**.zip

b-branch,分支名称（master是最主要分支，在其他开发分支开发完毕后会合并到这个分支等待发布为官方BE）

v-version,服务端版本号

t-tarkov,塔科夫客户端版本号

d-date,编译日期

## 如何获取编译？

### 方法1

（可能需要翻墙）

1. 注册并登录GitHub账户
2. 打开本仓库Action
3. 在左侧找到Build and Upload Artifacts
4. 在页面最底端下载

### 方法2

（免费用户[下载慢](https://www.ctfile.com/p/giftcard?uid=28273672&type=1&key=d09ee4)）

1. [注册城通网盘](https://www.ctfile.com/linker/28273672)
2. 前往[网盘发布页](https://url72.ctfile.com/d/28273672-58667611-79f16a)下载（提取码9684）

## 本地编译

下载本仓库的编译脚本会编译“秋”服务端代码仓库所有的分支。如果只想要编译特定分支，请使用[这个仓库](Build and Upload Artifacts)的脚本。

### 编译方法

1. 安装Git、Git LFS和AKI指定版本的Node.js
2. 运行ps1脚本
