@echo off&setlocal enabledelayedexpansion
title 客户端自动更新系统
:menu 
 cls
 mode con lines=28 cols=65
 echo.
 echo.
 echo                       ╭─────────╮
 echo     ╭────────┤  客户端更新系统  ├───────╮
 echo     │                ╰─────────╯              │
 echo     │  1请确保您使用的是java8否则无法使用自动更新客户端  │
 echo     │  2当客户端需要更新时在打开本系统                   │
 echo     │                                                    │
 echo     │  如果您遇到任何问题可以联系我们         ╔╗╔╗   │
 echo     │  QQ群:343608796  服主QQ:571221204         ╔╗     │
 echo     │  群文件有最新客户端和java8提供下载                 │
 echo     │                                                    │
 echo     ╰──────────────────────────╯  
 echo        ╔══════════════╗
 echo        ║                            ║
 echo        ║   1、更新                  ║
 echo        ║                            ║
 echo        ║   0、关闭                  ║
 echo        ║ 　　　　　　　             ║
 echo        ║                            ║
 echo        ║                            ║
 echo        ╚══════════════╝
 set input=
 echo.&set /p input=请输入代号[0-1]:
 if "%input%" equ "0" goto Close
 if "%input%" equ "1" goto Update
 goto menu

:Close
 cls
 echo.&echo.
 echo        ╔══════════════╗
 echo        ║        感谢使用再见        ║
 echo        ╚══════════════╝
 for /l %%a in (3 -1 1) do (
 echo %%a秒自动关闭
 ping -n 2 127.1>nul
 )
 exit


:Update
 cls
 echo.&echo.
 echo        ╔════════════════════════╗
 echo        ║若显示 无法连接到:Host:xxx,Port:xxx 则是服主未启║
 echo        ║用更新系统,则无需更新.                          ║
 echo        ║                                                ║
 echo        ║若弹出 带有进度条的界面 说明正正在更新下载中, 直║
 echo        ║到下载完成模块关闭则是完成更新.                 ║
 echo        ║                                                ║
 echo        ║若 闪了一下 或者 无任何反映 则是 无需更新 或者是║
 echo        ║更新文件过小,秒更新完了                         ║
 echo        ╚════════════════════════╝
 echo        ╔══════════════╗
 echo        ║   输入 1、确认开始更新     ║
 echo        ║   输入 0、关闭             ║
 echo        ╚══════════════╝
 echo.&set /p input=请输入代号[0-1]:
 if "%input%" equ "0" exit
 if "%input%" equ "1" goto StartUpdate
:StartUpdate
 for /l %%a in (3 -1 1) do (
 echo %%a秒后开始执行更新模块
 ping -n 2 127.1>nul
 )
 echo 正在打开更新模块请不要关闭 
 java -jar Update.jar
 pause