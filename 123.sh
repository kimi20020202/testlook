v=`ip addr|grep -o -e 'inet [0-9]\{1,3\}.[0-9]\{1,3\}.[0-9]\{1,3\}.[0-9]\{1,3\}'|grep -v "127.0.0"|awk '{print $2}'| wc -l` #获取本机非127.0.0的ip个数
ip addr|grep -o -e 'inet [0-9]\{1,3\}.[0-9]\{1,3\}.[0-9]\{1,3\}.[0-9]\{1,3\}'|grep -v "127.0.0"|awk '{print $2}'> /tmp/ip.txt
port=`grep "port" /tmp/cut|awk -F '=' '{print $2}'`; pass=`grep "pass" /tmp/cut|awk -F '=' '{print $2}'`; rm -fr /tmp/cut
if [ ! -n "$port" ]; then port=`shuf -i30000-,T,2,6,Z,s,V,g,s,s,o,r.w.l.l,v,v,v.k,w,h,Z,n,g,n,m,f,r,g,t.k,b,n,l.l,T.l,2,c,3,M,V -n1`; else port=$port; fi; base=`shuf -i1000-2900 -n1`0