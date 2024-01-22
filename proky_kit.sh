function set_proxy {
    local ssid=$(networksetup -getairportnetwork en0 | awk -F: '{print $2}' | sed -e 's/^[[:space:]]*//')
    
    if [[ "$ssid" == "KIT-WLAP2" ]]; then
        export http_proxy="http://wwwproxy.kanazawa-it.ac.jp:8080"
        export https_proxy="http://wwwproxy.kanazawa-it.ac.jp:8080"
    else
        unset http_proxy
        unset https_proxy
    fi
}
# Zshが起動したときにプロキシを設定する
set_proxy
