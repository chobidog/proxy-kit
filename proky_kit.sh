function set_proxy {
    local ssid=$(networksetup -getairportnetwork en0 | awk -F: '{print $2}' | sed -e 's/^[[:space:]]*//')
    
    if [[ "$ssid" == "KIT-WLAP2" ]]; then
        export http_proxy="***************:****" #*** のところは適宜設定しなければいけない
        export https_proxy="***************:****"
    else
        unset http_proxy
        unset https_proxy
    fi
}
# Zshが起動したときにプロキシを設定する
set_proxy
