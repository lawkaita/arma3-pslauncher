# loadmod-foo functions serve as your presets.
# you can build large presets from smaller ones with this setup.
# usemod "@modname" loads a mod from !Workshop\@modname
# the categories here are arbitary
#
# this file must provide the function loadmod, found here at the end of this file.
# the loadmod function is called to load all mods.

function loadmods-style {
  usemod "@Blastcore Edited (standalone version)"
  usemod "@Vanilla smoke (for Blastcore Edited)"
  #usemod "@Extended fire (for Blastcore Edited)"
  #usemod "@JSRS SOUNDMOD"
}

function loadmods-campaing {
  usemod "@[SP-Campaign] The Rabid Rat"
  usemod "@[SP-Campaign] The Rabid Rat 2"
  #usemod "@The Pacific War - Gilbert and Marshall Islands Campaign"
  #usemod "@Vietnam 1966 - Song Cu (SP-MP Campaign)"
  #usemod "@Battle of Normandy - Overlord and Perch"
}

function loadmods-unsung {
  usemod "@Drongo's Map Population"
  usemod "@Drongo's AI Fire Support"
  usemod "@MGI ADVANCED MODULES"
  usemod "@Unsung"
  usemod "@Vietnam 1968 - The River (SP-MP Campaign)"
  usemod "@RHSPKL"
  usemod "@Anrop Unsung JSRS"
}

function loadmods-general {
  usemod "@CBA_A3"
  #usemod "@CH View Distance"
  usemod "@Vcom AI V3.4.0"
  #usemod "@Drongo's Config Generator"
  usemod "@Simple Single Player Cheat Menu"
  #usemod "@VileHUD"
  #usemod "@Drongo's Command Enhancement"
  usemod "@Zombies and Demons"
  usemod "@GGE- Weapon Swap"
  #usemod "@Project injury Reaction (PiR)"
  #usemod "@Improved Melee System"

  usemod "@PackForGuide_Music"

  # local-arma-mods is a dir in, for example, user profile dir.
  usemod-withPath "local-arma-mods\@devel"  
  usemod-withPath "local-arma-mods\@cfgRiotShield"
}

function loadmods-zeus {
  usemod "@Achilles"
  #usemod "@ZEI - Zeus and Eden Interiors"
  #usemod "@Zeus Enhanced"
  #usemod "@Zeus Enhanced - ACE3 Compatibility"
}
function loadmods-rhs {
  usemod "@RHSAFRF"
  usemod "@RHSGREF"
  usemod "@RHSPKL"
  usemod "@RHSSAF"
  usemod "@RHSUSAF"
}
function loadmods-map {
  #usemod "@Ruha"
  #usemod "@Summa"
  #usemod "@Virolahti - Valtatie 7"
  #usemod "@Beketov"
  #usemod "@Chernarus 2035"

  #usemod "@Kunduz, Afghanistan"
  #usemod "@Kunduz Afghanistan - Fixed Doors"
  #usemod "@Fallujah V1.2"
  #usemod "@Hellanmaa"
  #usemod "@Kujari"
}

function loadmods-aceRhsCompat {
  usemod "@ACE Compat - RHS- GREF"
  usemod "@ACE Compat - RHS- SAF"
  usemod "@ACE Compat - RHS Armed Forces of the Russian Federation"
  usemod "@ACE Compat - RHS United States Armed Forces"
}
function loadmods-aceCupCompat {
  usemod "@CUP ACE3 Compatibility Addon - Terrains"
  usemod "@CUP ACE3 Compatibility Addon - Weapons"
}
function loadmods-ace {
  usemod "@ace"
  loadmods-aceRhsCompat
  loadmods-aceCupCompat

  #usemod "@ACEX"
}

function loadmods-cup {
  usemod "@CUP Terrains - Core"
  usemod "@CUP Terrains - Maps"
  usemod "@CUP Terrains - Maps 2.0"
  usemod "@CUP Units"
  usemod "@CUP Weapons"
  usemod "@CUP Vehicles"
}

function loadmods {
  loadmods-style
  loadmods-general
  loadmods-zeus
  #loadmods-unsung
  loadmods-rhs
  loadmods-map
  loadmods-ace
  loadmods-cup
  #loadmods-campaing
}
