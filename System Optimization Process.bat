
AAA@shift /0
mode 135,36
@echo off
title System Optimization
color 09
clS
chcp 65001 >nul 2>&1
cls
:: Color Codes
set w=[97m
set p=[96m
set b=[96m
set o=[1m
%B%
Reg add "HKCU\CONSOLE" /v "VirtualTerminalLevel" /t REG_DWORD /d "1" /f  > nul


:Menu
cls
color 4
echo.
echo                                            %p%██████╗ ██████╗  ██████╗  ██████╗███████╗███████╗███████╗
echo                                            %p%██╔══██╗██╔══██╗██╔═══██╗██╔════╝██╔════╝██╔════╝██╔════╝
echo                                            %p%██████╔╝██████╔╝██║   ██║██║     █████╗  ███████╗███████╗
echo                                            %p%██╔═══╝ ██╔══██╗██║   ██║██║     ██╔══╝  ╚════██║╚════██║
echo                                            %p%██║     ██║  ██║╚██████╔╝╚██████╗███████╗███████║███████║ %b%
echo                                            %p%╚═╝     ╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚══════╝╚══════╝╚══════╝
echo                                                             by: ManoLocka
echo                        [Lembre-se de criar um ponto de restauração para evitar problemas e executar o .bat como administrador]                                                                                                                                                                                                                                                                                         
echo.
echo                                                      ╔═════(1) Eliminação de processos             
echo                                                      ╠═════(2) Creditos
echo                                                      ╚═════(3) Sair
echo.
echo.
set /p option=Escolha uma opcao (1-3):

if "%option%"=="1" goto process
if "%option%"=="2" goto credits
if "%option%"=="3" goto goback

:credits
echo Abrindo Discord
start https://discord.gg/mBgnWZEeEw

:process
echo Aplicando ajustes no Registro...
reg add "HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f
reg add "HKCU\\Control Panel\\Desktop" /v MenuShowDelay /t REG_SZ /d 0 /f
reg add "HKCU\\Control Panel\\Desktop" /v WaitToKillAppTimeout /t REG_SZ /d 2000 /f
reg add "HKCU\\Control Panel\\Desktop" /v HungAppTimeout /t REG_SZ /d 2000 /f
reg add "HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows\\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f
reg add "HKCU\Control Panel\Desktop" /v WaitToKillAppTimeout /t REG_SZ /d 2000 /f
reg add "HKCU\Control Panel\Desktop" /v HungAppTimeout /t REG_SZ /d 2000 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RemoteRegistry" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v DODownloadMode /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TabletInputService" /v "Start" /t REG_DWORD /d 4 /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Fax" /v "Start" /t REG_DWORD /d 4 /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d 4 /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d 4 /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d 4 /f
cls
timeout /t 3 /nobreak
cls
goto memu
:memu
color 4
echo.
echo          ██████╗ ███████╗███████╗███████╗███╗   ██╗██████╗ ███████╗██████╗ 
echo          ██╔══██╗██╔════╝██╔════╝██╔════╝████╗  ██║██╔══██╗██╔════╝██╔══██╗
echo          ██║  ██║█████╗  █████╗  █████╗  ██╔██╗ ██║██║  ██║█████╗  ██████╔╝
echo          ██║  ██║██╔══╝  ██╔══╝  ██╔══╝  ██║╚██╗██║██║  ██║██╔══╝  ██╔══██╗
echo          ██████╔╝███████╗██║     ███████╗██║ ╚████║██████╔╝███████╗██║  ██║
echo          ╚═════╝ ╚══════╝╚═╝     ╚══════╝╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝  ╚═╝
echo.
echo         (Porque desativa-lo? O windows defender ocupa muito cpu e afeta muito o desempenho)
echo.
echo            (1) - Desativar Windows Defender e continuar Otimização
echo            (2) - Não Desativar e continuar a Otimização
ECHO.
echo.
echo.
SET /P M= Escolha uma opção (1-2):

if "%option%"=="1" goto desativardefender
if "%option%"=="2" goto naodesativar

:desativardefender
Reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d 1 /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v "Start" /t REG_DWORD /d 4 /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WerSvc" /v "Start" /t REG_DWORD /d 4 /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CscService" /v "Start" /t REG_DWORD /d 4 /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\seclogon" /v "Start" /t REG_DWORD /d 4 /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TabletInputService" /v "Start" /t REG_DWORD /d 4 /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BITS" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RetailDemo" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v MouseHoverTime /t REG_SZ /d 10 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v AutoEndTasks /t REG_SZ /d 1 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v ForegroundLockTimeout /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v LargeSystemCache /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnableSuperfetch /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisableThumbnailCache" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisableHardDrive" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "VerifyDriverSignature" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft.YourPhone" /v "SystemComponent" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\perceptionsimulation" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\StiSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\OneSyncSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DevicePickerUserSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WMPNetworkSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\autotimesvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CaptureService" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MessagingService" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DeviceAssociationBrokerSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\w32time" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotTrack" /t REG_DWORD /d 1 /f
bcdedit /set hibernation off
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v "QueueDepth" /t REG_DWORD /d "64" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\xbgm" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XblAuthManager" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XblGameSave" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XblAuthManager" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GamingServicesNet" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GamingServices" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bcastdvruserservice" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d 2 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d 1 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d 2 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoAutoClean" /t REG_DWORD /d 1 /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v "QueueDepth" /t REG_DWORD /d "64" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\xbgm" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XblAuthManager" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XblGameSave" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XblAuthManager" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GamingServicesNet" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GamingServices" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bcastdvruserservice" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UserManager" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKCU\Control Panel\Desktop" /v "VisualFXSetting" /t REG_SZ /d "2" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /v NtfsDisableLastAccessUpdate /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v TcpAckFrequency /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v TCPNoDelay /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\DWM" /v EnableUserDWM /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 0 /f

:naodesativar
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v "Start" /t REG_DWORD /d 4 /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WerSvc" /v "Start" /t REG_DWORD /d 4 /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CscService" /v "Start" /t REG_DWORD /d 4 /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\seclogon" /v "Start" /t REG_DWORD /d 4 /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TabletInputService" /v "Start" /t REG_DWORD /d 4 /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BITS" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RetailDemo" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v MouseHoverTime /t REG_SZ /d 10 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v AutoEndTasks /t REG_SZ /d 1 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v ForegroundLockTimeout /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v LargeSystemCache /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnableSuperfetch /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisableThumbnailCache" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisableHardDrive" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "VerifyDriverSignature" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft.YourPhone" /v "SystemComponent" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\perceptionsimulation" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\StiSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\OneSyncSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DevicePickerUserSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WMPNetworkSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\autotimesvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CaptureService" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MessagingService" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DeviceAssociationBrokerSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\w32time" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotTrack" /t REG_DWORD /d 1 /f
bcdedit /set hibernation off
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters" /v "QueueDepth" /t REG_DWORD /d "64" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\xbgm" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XblAuthManager" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XblGameSave" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XblAuthManager" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GamingServicesNet" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GamingServices" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bcastdvruserservice" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UserManager" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d 2 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d 1 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d 2 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoAutoClean" /t REG_DWORD /d 1 /f
reg add "HKCU\Control Panel\Desktop" /v "VisualFXSetting" /t REG_SZ /d "2" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /v NtfsDisableLastAccessUpdate /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v TcpAckFrequency /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v TCPNoDelay /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\DWM" /v EnableUserDWM /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 0 /f
cls
timeout /t 3 /nobreak
:microsoftstore
color 9
echo.
echo.
echo.
echo                         ███████╗████████╗ ██████╗ ██████╗ ███████╗
echo                         ██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗██╔════╝
echo                         ███████╗   ██║   ██║   ██║██████╔╝█████╗  
echo                         ╚════██║   ██║   ██║   ██║██╔══██╗██╔══╝  
echo                         ███████║   ██║   ╚██████╔╝██║  ██║███████╗
echo                         ╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝
echo.
echo   [Aviso: Estaremos desativando 3Dbuilder, Grovee, Mensaging, News, Officehub, OneDrive, People, Phone e outros serviços]
echo                                       [Link explicando oque cada um faz! ]
echo.
echo.
echo                                   (1) - Continuar Sem a loja da microsoft 
echo                                   (2) - Continuar Com a loja da microsoft
echo                                   (3) - Voltar pro Menu inicial e parar com a otimização
echo                                   (4) - Link Explicando tudo!
echo                                   (5) - Sair
echo.
echo.
set /p option=Escolha uma opcao (1-4):

if "%option%"=="1" goto continuarsemloja
if "%option%"=="2" goto Continuarcomloja
if "%option%"=="3" goto voltarpromenu
if "%option%"=="4" goto explicandolink

:explicandolink
echo Abrindo Notas
start https://pt.anotepad.com/notes/cf4rkkwy
timeout /t 3 /nobreak
goto microsoftstore

:voltarpromenu
goto Menu

:continuarsemloja
echo Pode demorar um pouco e aparecer uns erros na tela mais não se preocupe esta dando tudo certo!
powershell -Command "Get-AppxPackage *Microsoft.Store* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *3dbuilder* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *store* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *officehub* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *onedrive* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *people* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *messaging* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *music* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *news* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *maps* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *getstarted* | Remove-AppxPackage"
echo Quase lá!
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowCopilotButton /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Copilot" /v TurnOffWindowsCopilot /t REG_DWORD /d 1 /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v HideCopilotButton /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Schedule" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d 1 /f
echo Espere mais um pouco!
powershell -Command "Get-AppxPackage -Name Microsoft.ZuneMusic | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.ZuneVideo | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name EclipseManager | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name ActiproSoftwareLLC | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name AdobeSystemsIncorporated.AdobePhotoshopExpress | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Duolingo-LearnLanguagesforFree | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name PandoraMediaInc | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name CandyCrush | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name BubbleWitch3Saga | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Wunderlist | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Flipboard | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Twitter | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Facebook | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Spotify | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Minecraft | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Royal Revolt | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Sway | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Dolby | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.YourPhone | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.MicrosoftSolitaireCollection | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.NetworkSpeedTest | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.News | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Office.Lens | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Office.OneNote | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Office.Sway | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.OneConnect | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.People | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Print3D | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.RemoteDesktop | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.SkypeApp | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Office.Todo.List | Remove-AppxPackage"
net stop wuauserv
net stop UsoSvc
bcdedit /set linearaddress57 OptOut
bcdedit /set increaseuserva 268435328
bcdedit /set firstmegabytepolicy UseAll
bcdedit /set avoidlowmemory 0x8000000
bcdedit /set nolowmem Yes
: testar dps
powershell "ForEach($v in (Get-Command -Name \"Set-ProcessMitigation\").Parameters[\"Disable\"].Attributes.ValidValues){Set-ProcessMitigation -System -Disable $v.ToString() -ErrorAction SilentlyContinue}"
powershell "Remove-Item -Path \"HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\*\" -Recurse -ErrorAction SilentlyContinue"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d 0 /f
powershell "Disable-MMAgent -MemoryCompression"
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarViewMode" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "DisableWebSearch" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\PenWorkspace" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableUserTracking" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\OneDrive" /v "UserDMC" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\ErrorReporting" /v "Disabled" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\TabletInputService" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableOSUpgrade" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\BITS" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "ForceUpdatePeriod" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Schedule" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\TermService" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudStore" /v "DisableCloudStore" /t REG_DWORD /d 1 /f
bcdedit /set loadoptions DDISABLE_INTEGRITY_CHECKS
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudStore" /v "DisableCloudStore" /t REG_DWORD /d 1 /f
powershell -Command "Get-AppxPackage *Microsoft.3DViewer* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *Microsoft.Paint3D* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *microsoft.windowscommunicationsapps* | Remove-AppxPackage"
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribetoContent" /t REG_DWORD /d 0 /f
powershell -Command "Get-AppxPackage *Microsoft.MR* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *Microsoft.People* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage"
sc config TapiSrv start= disabled
sc stop TapiSrv
sc config wuauserv start= disabled
sc stop wuauserv
sc config XboxGipSvc start= disabled
sc stop XboxGipSvc
sc config ClipSVC start= disabled
sc stop ClipSVC
sc config WpcSvc start= disabled
sc stop WpcSvc
timeout /t 3 /nobreak
goto bluethoo


:Continuarcomloja
echo Pode demorar um pouco e aparecer uns erros na tela mais não se preocupe esta dando tudo certo!
powershell -Command "Get-AppxPackage *3dbuilder* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *store* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *officehub* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *onedrive* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *people* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *messaging* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *music* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *news* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *maps* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *getstarted* | Remove-AppxPackage"
echo Quase lá!
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowCopilotButton /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Copilot" /v TurnOffWindowsCopilot /t REG_DWORD /d 1 /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v HideCopilotButton /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Schedule" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d 1 /f
echo Espere mais um pouco!
powershell -Command "Get-AppxPackage -Name Microsoft.ZuneMusic | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.ZuneVideo | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name EclipseManager | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name ActiproSoftwareLLC | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name AdobeSystemsIncorporated.AdobePhotoshopExpress | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Duolingo-LearnLanguagesforFree | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name PandoraMediaInc | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name CandyCrush | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name BubbleWitch3Saga | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Wunderlist | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Flipboard | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Twitter | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Facebook | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Spotify | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Minecraft | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Royal Revolt | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Sway | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Dolby | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.YourPhone | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.MicrosoftSolitaireCollection | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.NetworkSpeedTest | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.News | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Office.Lens | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Office.OneNote | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Office.Sway | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.OneConnect | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.People | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Print3D | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.RemoteDesktop | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.SkypeApp | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Office.Todo.List | Remove-AppxPackage"
net stop wuauserv
net stop UsoSvc
powershell "ForEach($v in (Get-Command -Name \"Set-ProcessMitigation\").Parameters[\"Disable\"].Attributes.ValidValues){Set-ProcessMitigation -System -Disable $v.ToString() -ErrorAction SilentlyContinue}"
powershell "Remove-Item -Path \"HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\*\" -Recurse -ErrorAction SilentlyContinue"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d 0 /f
powershell "Disable-MMAgent -MemoryCompression"
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarViewMode" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "DisableWebSearch" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\PenWorkspace" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableUserTracking" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\OneDrive" /v "UserDMC" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\ErrorReporting" /v "Disabled" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\TabletInputService" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableOSUpgrade" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\BITS" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "ForceUpdatePeriod" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Schedule" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\TermService" /v "Start" /t REG_DWORD /d 4 /f
bcdedit /set loadoptions DDISABLE_INTEGRITY_CHECKS
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudStore" /v "DisableCloudStore" /t REG_DWORD /d 1 /f
powershell -Command "Get-AppxPackage *Microsoft.3DViewer* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *Microsoft.Paint3D* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *microsoft.windowscommunicationsapps* | Remove-AppxPackage"
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribetoContent" /t REG_DWORD /d 0 /f
powershell -Command "Get-AppxPackage *Microsoft.MR* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *Microsoft.People* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage"
sc config TapiSrv start= disabled
sc stop TapiSrv
sc config wuauserv start= disabled
sc stop wuauserv
sc config XboxGipSvc start= disabled
sc stop XboxGipSvc
sc config ClipSVC start= disabled
sc stop ClipSVC
sc config WpcSvc start= disabled
sc stop WpcSvc
timeout /t 3 /nobreak
cls
goto bluethoo
:bluethoo
color 7
cls
echo.
echo.
echo   ██████╗ ██╗     ██╗   ██╗███████╗████████╗ ██████╗  ██████╗ ████████╗██╗  ██╗
echo   ██╔══██╗██║     ██║   ██║██╔════╝╚══██╔══╝██╔═══██╗██╔═══██╗╚══██╔══╝██║  ██║
echo   ██████╔╝██║     ██║   ██║█████╗     ██║   ██║   ██║██║   ██║   ██║   ███████║
echo   ██╔══██╗██║     ██║   ██║██╔══╝     ██║   ██║   ██║██║   ██║   ██║   ██╔══██║
echo   ██████╔╝███████╗╚██████╔╝███████╗   ██║   ╚██████╔╝╚██████╔╝   ██║   ██║  ██║
echo   ╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝   ╚═╝    ╚═════╝  ╚═════╝    ╚═╝   ╚═╝  ╚═╝
echo.
echo                       (1) - Desativar bluetooth e continuar com a otimização
echo                       (2) - Não desativar e continuar com a otimização
echo                       (3) - Voltar pro Menu
echo                       (4) - Encerrar por aqui
echo
set /p option=Escolha uma opcao (1-4):

if "%option%"=="1" goto desativarbluetooth
if "%option%"=="2" goto naodesativarbluetooth
if "%option%"=="3" goto voltarpromenudnv
if "%option%"=="4" goto sairgotobackk

:desativarbluetooth
Echo otimizando...
sc config wuauserv start= disabled
sc stop wuauserv
sc config UsoSvc start= disabled
sc stop UsoSvc
sc config WaaSMedicSvc start= disabled
sc stop WaaSMedicSvc
: bluethoo ai em cima
sc config DiagTrack start= disabled
sc stop DiagTrack
sc config DiagTrack start= disabled
sc stop DiagTrack
sc config TermService start= disabled
sc stop TermService
sc config RetailDemo start= disabled
sc stop RetailDemo
sc config seclogon start= disabled
sc stop seclogon
sc config CscService start= disabled
sc stop CscService
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Fax" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DiagTrack" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TermService" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RetailDemo" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\seclogon" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CscService" /v Start /t REG_DWORD /d 4 /f
powershell -Command "Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Holographic" /v FirstRunSucceeded /t REG_DWORD /d 0 /f
powershell -Command "Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AeLookupSvc" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WerSvc" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v PowerThrottlingOff /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WbioSrvc" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v PromptOnSecureDesktop /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v HibernateEnabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v EnergyEstimationEnabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v CsEnabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v PerfCalculateActualUtilization /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v SleepReliabilityDetailedDiagnostics /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v EventProcessorEnabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v QosManagesIdleProcessors /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v DeepIoCoalescingEnabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v AwayModeEnabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v EnergyEstimationDisabled /t REG_DWORD /d 1 /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "00000000" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableBoottrace" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DynamicMemory" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePageCombining" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Telnetsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc" /v "Start" /t REG_DWORD /d "4" /f
goto bluethoo

:naodesativarbluetooth
sc config DiagTrack start= disabled
sc stop DiagTrack
sc config DiagTrack start= disabled
sc stop DiagTrack
sc config TermService start= disabled
sc stop TermService
sc config RetailDemo start= disabled
sc stop RetailDemo
sc config seclogon start= disabled
sc stop seclogon
sc config CscService start= disabled
sc stop CscService
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Fax" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DiagTrack" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TermService" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RetailDemo" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\seclogon" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CscService" /v Start /t REG_DWORD /d 4 /f
powershell -Command "Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Holographic" /v FirstRunSucceeded /t REG_DWORD /d 0 /f
powershell -Command "Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage"
powershell -Command "Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AeLookupSvc" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WerSvc" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WbioSrvc" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v PowerThrottlingOff /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v PromptOnSecureDesktop /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v HibernateEnabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v EnergyEstimationEnabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v CsEnabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v PerfCalculateActualUtilization /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v SleepReliabilityDetailedDiagnostics /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v EventProcessorEnabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v QosManagesIdleProcessors /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v DeepIoCoalescingEnabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v AwayModeEnabled /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v EnergyEstimationDisabled /t REG_DWORD /d 1 /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "00000000" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableBoottrace" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DynamicMemory" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePageCombining" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Telnetsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc" /v "Start" /t REG_DWORD /d "4" /f
goto bluethoo

:voltarpromenudnv
cls
goto Menu