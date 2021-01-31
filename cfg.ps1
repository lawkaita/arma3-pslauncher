$global:game_dir = "C:\Program Files (x86)\Steam\steamapps\common\Arma 3"
$global:moddir = "$game_dir\!Workshop"
$global:use_filePatching = "no"
$global:nomods = "no"

function params-player {
  $global:game_exe = "arma3_x64.exe"

  $global:launchParams = @(
    "-nosplash",
    "-noPause",
    "$filePatching"
  )
}

function params-server {
  $global:game_exe = "arma3server_x64.exe"
  
  $tokens_server = @(
    "-port=2302",
    #"-config=<path\to\config>\config.cfg",
    #"-cfg=<path\to\cfg>\cfg.cfg",
    #"-profiles=<path\to\profiles>",
    #"-name=<name>",
    "-filePatching",
    "-netlog"
  )
}

