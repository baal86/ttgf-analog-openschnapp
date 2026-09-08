Start-Process config.xlaunch
Start-Process wsl.exe `
    -ArgumentList "./run.sh" `
    -WindowStyle Hidden