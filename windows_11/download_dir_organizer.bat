@echo off
setlocal

:: Define the source directory (adjust to your actual Downloads directory)
set "source_dir=%C:\Users\iislamgom3a%\Downloads"

:: Create target directories based on file type
mkdir "%source_dir%\Images" "%source_dir%\Videos" "%source_dir%\Software" "%source_dir%\Archives" "%source_dir%\Docs" "%source_dir%\Audio" "%source_dir%\src"

:: Function to move files based on extension
call :move_files "Images" jpg jpeg png gif bmp tiff webp heic raw svg JPG
call :move_files "Videos" mp4 mkv mov avi flv webm mpeg 3gp ts wav
call :move_files "Software" exe
call :move_files "Docs" doc docx dot dotx xls xlsx xlsm xlt xltx ppt pptx pps ppsx pot potx mdb accdb pub one odt ods odp odg odf pdf xps txt rtf csv log md xml html htm json tex epub chm djvu
call :move_files "Archives" zip rar 7z tar gz bz2 xz iso cab arj lzh ace z arc jar war apk deb rpm pkg tar.gz tar.bz2 tar.xz tgz tbz txz
call :move_files "Audio" mp3 m4a
call :move_files "src" py cpp c java ipynp 
:: Clean up empty directories
for /d %%d in (%source_dir%\*) do rd "%%d" 2>nul


for /d %%d in (%source_dir%\*) do (
    if exist "%%d" (
        for /f "tokens=1,2" %%a in ('dir /s /a "%%d" ^| findstr /r "^ *[0-9]"') do (
        )
    )
)

exit /b

:move_files
set "folder=%1"
shift
for %%e in (%*) do (
    for %%f in ("%source_dir%\*.%%e") do (
        move "%%f" "%source_dir%\%folder%\" >nul
    )
)
exit /b
