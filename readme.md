## Basic project structure for SwiftGodot game on windows
Copy it to create your apps faster. 

This requires swift to be installed 
[*tip for installing swift also install visual studio as the winget version is missing deps*]

### Setup copy the binaries to a bin folder at the root and add a export/winclient dir
https://dj-dev.medium.com/low-effort-guide-to-swiftgodot-on-windows-b2ecc6919c17

### To test and run in debug run
- Build the swiftpackage in debug mode
    ```build-app-debug.bat```
- Reload godot and run

Or

- Build the swiftpackage in debug mode and run in a single command
    ```build-app-debug-and-run.bat```

### To release the app
- Build the swiftpackage in release mode
  ```build-app-release.bat``` 
- export the app from godot (idk why the headless version does not work)
- Move the dlls to the appropriate folder (this is optional but will cleanup the structure)
   ```move-release-dll-to-bin.bat``` 
- Run the game from export/winclient