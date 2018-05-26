@REM Author: lixizhi@yeah.net  Date:2015.3.22
@REM this is where to find the *.so and *.pkg etc files
@Set paraengine_dir=D:\lxzsrc\ParaEngine\ParaWorld\
@Set paraenginemobile_dir=D:\lxzsrc\ParaEngineGit\
@Set NPL_ANDROID_BIN=D:\lxzsrc\NPLRuntimeDev\bin\android2015
@Set paraengine_so_filename=%NPL_ANDROID_BIN%\bin\Release\libParacraft.so
@Set paraengine_class_filename=%NPL_ANDROID_BIN%\Platform\Android\Paracraft.dir\Release\bin\classes.dex
@Set main_full_filename=%paraengine_dir%main_full.pkg



@if exist "%paraengine_so_filename%" (xcopy %paraengine_so_filename% lib\armeabi-v7a\ /Y)
@if exist "%main_full_filename%" (xcopy %main_full_filename% assets\ /Y)
@if exist "%paraengine_class_filename%" (xcopy %paraengine_class_filename% .\ /Y)

xcopy %~dp0..\..\..\redist\assets_manifest.txt  assets\ /Y
xcopy %~dp0..\..\..\redist\database\*.mem  assets\database\ /Y
xcopy %~dp0..\..\..\redist\database\characters.db  assets\database\ /Y
xcopy %~dp0..\..\..\redist\config\gameclient.config.xml  assets\config\ /Y
