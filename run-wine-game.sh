#!/bin/bash

PFX=~/winepfx

#APP=winecfg
#APP='setup_dxvk install'
#APP='winetricks arial'

#APP='wine setup.exe'
#APP="wine $PFX/drive_c/game.exe"


mkdir -p $PFX/GLCache

export WINEARCH=win64
export WINEPREFIX=$PFX
export DXVK_CONFIG_FILE=~/dxvk.conf
export DXVK_STATE_CACHE=1
export DXVK_STATE_CACHE_PATH=$PFX/DXVKCache
export __GL_SHADER_DISK_CACHE=1
export __GL_SHADER_DISK_CACHE_PATH=$PFX/GLCache
export __GL_SHADER_DISK_CACHE_SKIP_CLEANUP=1
export __GL_DXVK_OPTIMIZATIONS=1
export __GL_SYNC_TO_VBLANK=0
export vblank_mode=0
export STAGING_SHARED_MEMORY=1
export WINEESYNC=1
export WINEFSYNC=1
export WINEDLLOVERRIDES="windows.networking=d"
export WINEDEBUG=-all

$APP \
&& sleep 5 && pgrep tabtip | xargs kill -9
