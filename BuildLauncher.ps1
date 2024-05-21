mkdir dist
git clone https://dev.sp-tarkov.com/SPT-AKI/Launcher.git
cd Launcher
#Launcher
git fetch --all
$branches = git branch -a | Select-String -Pattern "remotes/origin" | ForEach-Object { 
    $branch = $_.Line.Trim() -replace "remotes/origin/", ""
    if ($branch -notmatch "HEAD ->") {
        $branch
    }
}
foreach ($branch in $branches) {
    cd project
    #Launcher/project
    dotnet tool restore
    dotnet cake
    cd Build
    #Launcher/project/Build
    $date = Get-Date -Format "yyyy.MM.dd"
    $cleanBranch = $branch -replace '[\\/:"*?<>|]', '_'
    #$zipName = "Aki.Launcher-b.$cleanBranch-d.$date.zip"
    #Compress-Archive -Path * -DestinationPath ..\..\..\dist\$zipName
    $zipName = "Aki.Server-b.$cleanBranch-v.$($AkiMeta.akiVersion)-t.$($AkiMeta.compatibleTarkovVersion)-d.$date.zip"
    $sevenZipName = "Aki.Launcher-b.$cleanBranch-d.$date.7z"
    # 压缩build文件夹，命名为压缩包的名称，放在上上级目录的distr文件夹里
    #Compress-Archive -Path * -DestinationPath ..\..\..\distr\$zipName
    7z a -t7z "..\..\..\distr\$sevenZipName" * -mx=9
    cd ..
    cd ..
}
