mkdir distr
git clone https://dev.sp-tarkov.com/SPT-AKI/Server.git
# 进入Server文件夹
cd Server
# 获取所有分支的信息
git fetch --all
# 获取所有分支的名称
$branches = git branch -a | Select-String -Pattern "remotes/origin" | ForEach-Object { $_.Line.Trim() -replace "remotes/origin/", "" }
# 遍历每个分支
foreach ($branch in $branches) {
    # 切换到当前分支
    git checkout $branch
    # 使用git lfs fetch和git lfs pull补全大文件
    git lfs fetch
    git lfs pull
    # 进入project目录
    cd project
    # 运行npm install和npm run build:debug来编译源码
    npm install
    npm run build:debug
    # 获取当前日期，格式为yyyy-MM-dd
    $date = Get-Date -Format "yyyy-MM-dd"
    $AkiMeta = (Get-Content ./build/Aki_Data/Server/configs/core.json |  ConvertFrom-Json -AsHashtable)
    # 拼接压缩包的名称，包含分支名和当前日期
    $zipName = "Aki.Server-v.$($akimeta.akiVersion)-b.$branch-$date.zip"
    # 压缩build文件夹，命名为压缩包的名称，放在上上级目录的distr文件夹里
    Compress-Archive -Path build -DestinationPath ..\..\distr\$zipName
    # 返回上一级目录
    cd ..
}
