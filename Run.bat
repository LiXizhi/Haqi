@echo off 
pushd "D:\lxzsrc\ParaCraftSDKGit\bin\..\redist\" 
call "log.txt" 
call "ParaEngineClient.exe" bootstrapper="script/apps/Aries/bootstrapper.xml" single="false" noupdate="true" dev="%~dp0"  
popd 
