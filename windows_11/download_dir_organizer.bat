@echo off
setlocal

:: Define the source directory (adjust to your actual Downloads directory)
set "source_dir=%C:\Users\win11%\Downloads"

:: Create a log file to track the process
set "log_file=%source_dir%\organization_log.log"
echo Organization started at %date% %time% >> "%log_file%"

:: Create target directories based on file type
mkdir "%source_dir%\Images" "%source_dir%\Videos" "%source_dir%\Software" "%source_dir%\Archives" "%source_dir%\Docs" 

:: Function to move files based on extension
call :move_files "Images" jpg jpeg png gif bmp tiff webp heic raw svg JPG
call :move_files "Videos" mp4 mkv mov avi flv webm mpeg 3gp ts
call :move_files "Software" exe
call :move_files "Docs" doc docx dot dotx xls xlsx xlsm xlt xltx ppt pptx pps ppsx pot potx mdb accdb pub one odt ods odp odg odf pdf xps txt rtf csv log md xml html htm json tex epub chm djvu
call :move_files "Archives" zip rar 7z tar gz bz2 xz iso cab arj lzh ace z arc jar war apk deb rpm pkg tar.gz tar.bz2 tar.xz tgz tbz txz

:: Clean up empty directories
for /d %%d in (%source_dir%\*) do rd "%%d" 2>nul

:: Provide a summary of the organization process
echo Files have been organized successfully!
echo Summary: >> "%log_file%"
for /d %%d in (%source_dir%\*) do (
    if exist "%%d" (
        for /f "tokens=1,2" %%a in ('dir /s /a "%%d" ^| findstr /r "^ *[0-9]"') do (
            echo %%b >> "%log_file%"
        )
    )
)

echo Organization completed at %date% %time% >> "%log_file%"
echo ---------------------------------------------------------------- >> "%log_file%"
echo ---------------------------------------------------------------- >> "%log_file%"

exit /b

:move_files
set "folder=%1"
shift
for %%e in (%*) do (
    for %%f in ("%source_dir%\*.%%e") do (
        move "%%f" "%source_dir%\%folder%\" >nul
        echo Moved %%e files to %folder% >> "%log_file%"
    )
)
exit /b
