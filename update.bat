set urlbase=https://raw.fastgit.org/dakerj/animeSearch/master/
set download=aria2\aria2c
echo ���ڻ�ȡ��������...
del /f updateValue.bat
%download% "%urlbase%updateValue.bat"
call updateValue.bat