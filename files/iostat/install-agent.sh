yum install sysstat -y
curl https://raw.githubusercontent.com/EamonZhang/zabbix-extensions/master/files/iostat/iostat.conf -o /etc/zabbix/zabbix_agentd.d/iostat.conf
mkdir -p /usr/lib/zabbix-extensions/scripts/

curl https://raw.githubusercontent.com/EamonZhang/zabbix-extensions/master/files/iostat/scripts/iostat-collect.sh -o /usr/lib/zabbix-extensions/scripts/iostat-collect.sh
curl https://raw.githubusercontent.com/EamonZhang/zabbix-extensions/master/files/iostat/scripts/iostat-parse.sh -o /usr/lib/zabbix-extensions/scripts/iostat-parse.sh

chmod 755 /usr/lib/zabbix-extensions/scripts/iostat-collect.sh
chmod 755 /usr/lib/zabbix-extensions/scripts/iostat-parse.sh

systemctl restart zabbix-agent
