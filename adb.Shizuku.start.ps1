####adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh;

adb tcpip 5555 && `
adb kill-server && `
adb `
    shell sh '/storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh'
