set urlbase=https://raw.fastgit.org/dakerj/animeSearch/master/
set download=aria2\aria2c
echo ��ʼɾ�����ļ�...
del /f html\rem\.*?
del /f openresty\conf\nginx.conf
echo ��ʼ����
%download% -d html\rem -Z "%urlbase%html/index.html" "%urlbase%html/version.json" "%urlbase%html/js/uyume-parse.js" "%urlbase%html/css/my.css"
%download% -d openresty\conf "%urlbase%openresty/conf/nginx.conf"
echo ���ؽ���...��������
openresty\nginx -s reload -c openresty\conf\nginx.conf