param (
    [Parameter(Mandatory=$true)]
    [string]$Tag
)

$repo = "linux-surface/linux-surface"
$url = "https://api.github.com/repos/$repo/releases/tags/$Tag"

try {
    # 获取 Asset 列表并提取下载链接
    $assets = (Invoke-RestMethod -Uri $url).assets.browser_download_url
    
    if ($assets) {
        # 将所有链接传给 aria2c
        # -j 5 表示同时下载5个文件，-x 16 表示每个文件开启16个线程
        aria2c -j 5 -x 16 $assets
    }
}
catch {
    Write-Error "获取失败，请确认 Tag: $Tag 是否正确。"
}
