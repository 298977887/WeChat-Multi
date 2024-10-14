@echo off

rem 设置控制台编码为 UTF-8
chcp 65001 >nul

rem 多开之前先关闭所有微信进程
taskkill /F /IM WeChat.exe /T >nul 2>nul
set programName=wechat.exe

rem 获取当前日期和时间
for /f "tokens=1-4 delims=/ " %%a in ('date /t') do set DATE=%%a-%%b-%%c
for /f "tokens=1-2 delims=:. " %%a in ('time /t') do set TIME=%%a:%%b

echo  ---------------------------------------------------------------------------------------------
echo          %DATE% %TIME%      By 阿瑞  
echo                                           多开之前确认已经安装好了微信
echo  ---------------------------------------------------------------------------------------------
echo 
echo.
for /f "skip=2 tokens=1,2*" %%A in ('reg query "HKEY_CURRENT_USER\Software\Tencent\WeChat" /v InstallPath') do (
	set "InstallPath=%%C"
)
 
if "%InstallPath%"=="" (
	goto inputFilePath
) else (
	set InstallPath=%InstallPath%\%programName%
    goto inputNumber
)
 
:inputFilePath
echo 未检测到微信安装路径。如果更改了微信安装路径请直接输入快捷方式链接或者wechat.exe软件路径
echo 例:C:\Program Files\Tencent\WeChat\WeChat.exe 或 C:\Users\Public\Desktop\微信.lnk
echo.
set /p InstallPath=请输入:

:inputNumber
echo.
set /p numWeChat=请输入要开启的微信数量:
 
:startProgram
echo 正在启动微信...
rem echo 软件安装路径是 %InstallPath%
echo 启动数量： %numWeChat%
rem 根据用户输入的数量开启微信
for /L %%i in (1,1,%numWeChat%) do (
	start "" "%InstallPath%"
)
 
:program_exit
pause
