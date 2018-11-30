#! /bin/bash
cat proxy.txt | while read LINE; do
    params="opt=0&url=$LINE"
    api="http://192.168.1.1/cgi-bin/luci/;stok=542550ab60f62ea55d9438c5fba291ac/api/misystem/smartvpn_url"
    echo $(curl -s -d $params $api) $params
done
