#!/usr/bin/env pwsh

. ./src/characterStuff.ps1

$currentHostSettings = getCurrentHostWindowSettings

$player = @{
    "CharacterSymbol" = "@";
    "MoveSpeed" = 1;
}


while($userInput -ne "q") {
    $userInput = Read-Host
    $totalInput = $totalInput + $userInput
}

Write-Output $totalInput
foreach($item in $hostData.Keys) {
    Write-Host $item
    Write-Host $hostData[$item]
}

restoreHostSettings -hostsettings $currentHostSettings