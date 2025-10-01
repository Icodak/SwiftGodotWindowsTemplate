@echo off
swift build --package-path ../src -debug-info-format codeview
if %errorlevel% neq 0 exit /b %errorlevel%

xcopy /Y ..\src\.build\x86_64-unknown-windows-msvc\debug\App.dll ..\bin\
xcopy /Y ..\src\.build\x86_64-unknown-windows-msvc\debug\App.lib ..\bin\
xcopy /Y ..\src\.build\x86_64-unknown-windows-msvc\debug\App.pdb ..\bin\
xcopy /Y ..\src\.build\x86_64-unknown-windows-msvc\debug\SwiftGodot.dll ..\bin\
xcopy /Y ..\src\.build\x86_64-unknown-windows-msvc\debug\SwiftGodot.lib ..\bin\
xcopy /Y ..\src\.build\x86_64-unknown-windows-msvc\debug\SwiftGodot.pdb ..\bin\

echo Build and copy process completed!