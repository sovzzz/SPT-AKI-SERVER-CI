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
    $zipName = "Aki.Launcher-b.$cleanBranch-d.$date.zip"
    Compress-Archive -Path * -DestinationPath ..\..\..\dist\$zipName
    cd ..
    cd ..
}
