
. .\cfg.ps1


$global:mods = '"'
$global:mods += "-mod="

function short-name {
  param (
    $_path
  )
  $cmdOutput = cmd.exe /C '@ECHO OFF && for %I in ("'"$_path"'") do echo %~sI'
  $shorted = $cmdOutput[1]
  "$shorted"
}

function usemod {
  param (
    $_mod
  )
  $shorted = short-name "$global:moddir\$_mod"
  $global:mods += "$shorted;"
  write-host "$_mod `t $shorted"
}

function usemod-withPath {
  # arma searches mods from arma root and user profile directories
  param (
    $_modWithPath
  )
  $shorted = short-name "$_modWithPath"
  $global:mods += "$shorted;"
  write-host "$_modWithPath `t $shorted"
}

. .\loadmods.ps1

function mk-cmdline {
  param (
    $paramsName
  ) 

  if ( "$global:use_filePatching" -eq "yes" ) {
    $filePatching = "-filePatching"
  }

  if ( -not ( "$global:nomods" -eq "yes") ) {
    loadmods
  }
  $global:mods += '"'

  $presetFunction = "params-$paramsName"
  Get-Command "$presetFunction" -errorAction Stop
  &$presetFunction

  $game_cmd = "cd $global:game_dir && $global:game_exe"
  $global:cmd = "$game_cmd " + ($global:launchParams -join " ") + " $global:mods"

}

mk-cmdline $args[0]
write-host "cmd:"
write-host $cmd
cmd.exe /C "$cmd" 
sleep 10
exit
