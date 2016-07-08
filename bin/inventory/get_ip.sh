#仕様
#引数にホスト名と所得したいネットワークアドレスを指定する
#取得したIPアドレスをjson形式で返す

#nova list --name test02 |grep -o ' 192.*'|cut -d ' ' -f2


#nova list --name $1 |grep -o "$2.*"|cut -d ' ' -f1|cut -d ';' -f1|cut -d ',' -f1

ipAddress=`nova list --name $1 |grep -o "$2.*"|cut -d ' ' -f1|cut -d ';' -f1|cut -d ',' -f1`

#echo $ipAddress
jsonReturn="  \"ipaddress\"  : \"${ipAddress}\""

echo "{"
echo "${jsonReturn}"
echo "}"
