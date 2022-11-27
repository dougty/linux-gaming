Set config **before installing**:  
```
# PFX/drive_c/users/USER/AppData/Roaming/Battle.net/Battle.net.config

{
    "Client": {
        "HardwareAcceleration": "false",
        "Sound": {
                "Enabled": "false"
        },
        "SingleInstance": "false",
        "GameLaunchWindowBehavior": "2"
    }
}
```

Download battle.net setup:  
`wget "https://www.battle.net/download/getInstallerForGame?os=win&gameProgram=BATTLENET_APP&version=Live&id=undefined" -O Battle.net-Setup.exe`

Launch commands:  
```
#APP='wine Battle.net-Setup.exe'
#APP="wine $PFX/drive_c/users/Public/Desktop/Battle.net.lnk"
```

Kill stalled launcher:  
```
#!/bin/bash

killall Battle.net.exe
pgrep -f Battle.net.exe | xargs kill -9

killall Agent.exe
killall CrBrowserMain

pgrep exe | xargs kill -9
```
