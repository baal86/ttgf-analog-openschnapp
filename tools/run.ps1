if (-not (Get-Process -Name "vcxsrv" -ErrorAction SilentlyContinue)) {
    Start-Process config.xlaunch
        -WindowStyle Hidden
}
Start-Process wsl.exe `
    -ArgumentList "./run.sh" `
    -WindowStyle Hidden