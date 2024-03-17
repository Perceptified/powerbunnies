function restoreHostSettings {
    Param(
        $hostSettings,
        $hostBuffer
    )
    $Host.UI.RawUI.WindowSize = $hostSettings.WindowSize
    $Host.UI.RawUI.WindowPosition = $hostSettings.WindowPosition
    $Host.UI.RawUI.BufferSize = $hostSettings.BufferSize 
    $Host.UI.RawUI.WindowTitle = $hostSettings.WindowTitle
    $Host.UI.RawUI.BackgroundColor = $hostSettings.BackgroundColor
    $Host.UI.RawUI.ForegroundColor = $hostSettings.ForegroundColor
    $Host.UI.RawUI.CursorSize = $hostSettings.CursorSize
    $Host.UI.RawUI.CursorPosition = $hostSettings.CursorPosition

}

function getCurrentHostWindowSettings {
    $hostSettings = @{
        "WindowSize" = $Host.UI.RawUI.WindowSize
        "WindowPosition" = $Host.UI.RawUI.WindowPosition
        "BufferSize" = $Host.UI.RawUI.BufferSize
        "WindowTitle" = $Host.UI.RawUI.WindowTitle
        "BackgroundColor" = $Host.UI.RawUI.BackgroundColor
        "ForeGroundColor" = $Host.UI.RawUI.ForegroundColor
        "CursorSize" = $Host.UI.RawUI.CursorSize
        "CursorPosition" = $Host.UI.RawUI.CursorPosition
    }
    return $hostSettings
}
function storeFullBuffer {
    $rectClass = "System.Management.Automation.Host.Rectangle"
    $bufferRect = New-Object $rectClass 0, 0 $Global:Host.BufferSize.width, $Global:Host.BufferSize.height
    $hostBuffer = $host.UI.RawUI.GetBufferContents($bufferRect)
    return $hostBuffer
}