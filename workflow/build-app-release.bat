@echo off
@REM swift build --package-path ../src --configuration release
swift build --package-path ../src --configuration release -debug-info-format codeview
if %errorlevel% neq 0 exit /b %errorlevel%

xcopy /Y ..\src\.build\x86_64-unknown-windows-msvc\release\App.dll ..\bin\
xcopy /Y ..\src\.build\x86_64-unknown-windows-msvc\release\App.lib ..\bin\
xcopy /Y ..\src\.build\x86_64-unknown-windows-msvc\release\App.pdb ..\bin\
xcopy /Y ..\src\.build\x86_64-unknown-windows-msvc\release\SwiftGodot.dll ..\bin\
xcopy /Y ..\src\.build\x86_64-unknown-windows-msvc\release\SwiftGodot.lib ..\bin\
xcopy /Y ..\src\.build\x86_64-unknown-windows-msvc\release\SwiftGodot.pdb ..\bin\

echo Build and copy process completed!