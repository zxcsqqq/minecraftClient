@echo off&setlocal enabledelayedexpansion
title �ͻ����Զ�����ϵͳ
:menu 
 cls
 mode con lines=28 cols=65
 echo.
 echo.
 echo                       �q�������������������r
 echo     �q������������������  �ͻ��˸���ϵͳ  �����������������r
 echo     ��                �t�������������������s              ��
 echo     ��  1��ȷ����ʹ�õ���java8�����޷�ʹ���Զ����¿ͻ���  ��
 echo     ��  2���ͻ�����Ҫ����ʱ�ڴ򿪱�ϵͳ                   ��
 echo     ��                                                    ��
 echo     ��  ����������κ����������ϵ����         �X�[�X�[   ��
 echo     ��  QQȺ:343608796  ����QQ:571221204         �X�[     ��
 echo     ��  Ⱥ�ļ������¿ͻ��˺�java8�ṩ����                 ��
 echo     ��                                                    ��
 echo     �t�����������������������������������������������������s  
 echo        �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
 echo        �U                            �U
 echo        �U   1������                  �U
 echo        �U                            �U
 echo        �U   0���ر�                  �U
 echo        �U ��������������             �U
 echo        �U                            �U
 echo        �U                            �U
 echo        �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
 set input=
 echo.&set /p input=���������[0-1]:
 if "%input%" equ "0" goto Close
 if "%input%" equ "1" goto Update
 goto menu

:Close
 cls
 echo.&echo.
 echo        �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
 echo        �U        ��лʹ���ټ�        �U
 echo        �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
 for /l %%a in (3 -1 1) do (
 echo %%a���Զ��ر�
 ping -n 2 127.1>nul
 )
 exit


:Update
 cls
 echo.&echo.
 echo        �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
 echo        �U����ʾ �޷����ӵ�:Host:xxx,Port:xxx ���Ƿ���δ���U
 echo        �U�ø���ϵͳ,���������.                          �U
 echo        �U                                                �U
 echo        �U������ ���н������Ľ��� ˵�������ڸ���������, ֱ�U
 echo        �U���������ģ��ر�������ɸ���.                 �U
 echo        �U                                                �U
 echo        �U�� ����һ�� ���� ���κη�ӳ ���� ������� �����ǨU
 echo        �U�����ļ���С,���������                         �U
 echo        �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
 echo        �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
 echo        �U   ���� 1��ȷ�Ͽ�ʼ����     �U
 echo        �U   ���� 0���ر�             �U
 echo        �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
 echo.&set /p input=���������[0-1]:
 if "%input%" equ "0" exit
 if "%input%" equ "1" goto StartUpdate
:StartUpdate
 for /l %%a in (3 -1 1) do (
 echo %%a���ʼִ�и���ģ��
 ping -n 2 127.1>nul
 )
 echo ���ڴ򿪸���ģ���벻Ҫ�ر� 
 java -jar Update.jar
 pause