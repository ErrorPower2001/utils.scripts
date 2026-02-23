param (
    [Parameter(Mandatory=$true)]
    [string]$Tag
)

$repo = "linux-surface/linux-surface"
$url = "https://api.github.com/repos/$repo/releases/tags/$Tag"

try {
    $assets = (Invoke-RestMethod -Uri $url).assets.browser_download_url
    
    foreach ($link in $assets) {
        # 使用 wget 下载，安静模式可添加 -q 参数
        wget $link
    }
}
catch {
    Write-Error "获取失败，请检查网络或 Tag 名称。"
}
