set urlbase=https://raw.fastgit.org/dakerj/animeSearch/master/
set download=aria2\aria2c
echo ��ʼɾ�����ļ�...
del /f/q  html\rem\*.*
del /f openresty\conf\nginx.conf
del /f  html\lib\md5.js
echo ��ʼ����
%download% -d html\rem -Z "%urlbase%html/rem/index.html" "%urlbase%html/rem/version.json" "%urlbase%html/rem/uyume-core.js" "%urlbase%html/rem/my.css"
%download% -d openresty\conf "%urlbase%openresty/conf/nginx.conf"
%download% -d html\lib "%urlbase%html/lib/md5.js"
echo ���ؽ���...��������
openresty\nginx -s reload -c openresty\conf\nginx.conf