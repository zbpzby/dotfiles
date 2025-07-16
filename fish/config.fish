
function onproxy
    set -gx http_proxy "http://localhost:20171"
    set -gx https_proxy "http://localhost:20171"
    set -gx socks5_proxy "socks5://127.0.0.1:20170"
    echo "代理已开启"
end

function unproxy
    set -e http_proxy
    set -e https_proxy
    set -e socks5_proxy
    echo "代理已关闭"
end
function wal
    command wal $argv
    if test -e ~/.cache/wal/colors.fish
        source ~/.cache/wal/colors.fish
    end
end
