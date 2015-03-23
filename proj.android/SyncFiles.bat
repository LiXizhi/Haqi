@REM Author: lixizhi@yeah.net  Date:2015.3.22
@REM this is where to find the *.so and *.pkg etc files
@Set paraengine_dir=D:\lxzsrc\ParaEngine\ParaWorld\
@Set paraenginemobile_dir=D:\lxzsrc\ParaEngineGit\
@Set paraengine_so_filename=%paraenginemobile_dir%Mobile\trunk\ParaCraftMobile\frameworks\runtime-src\proj.android\libs\armeabi\libparaenginemobile.so
@Set main_full_filename=%paraengine_dir%main_full.pkg

@if exist "%paraengine_so_filename%" (xcopy %paraengine_so_filename% lib\armeabi\ /Y)
@if exist "%main_full_filename%" (xcopy %main_full_filename% assets\res\ /Y)
