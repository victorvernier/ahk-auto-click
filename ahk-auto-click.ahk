#Persistent
#NoEnv
SetBatchLines, -1
SetDefaultMouseSpeed, 0

toggle := false  ; Variable to toggle between enabled and disabled click loop

; Toggles the click loop on/off when pressing F6
F6::
    toggle := !toggle  ; Toggle the state between enabled (true) and disabled (false)
    
    if (toggle) {
        SetTimer, AutoClick, 25  ; Activates the click loop every 25ms
        ToolTip, Auto-click enabled. ; Displays a message indicating auto-click is enabled
    } else {
        SetTimer, AutoClick, Off  ; Deactivates the click loop
        ToolTip, Auto-click disabled. ; Displays a message indicating auto-click is disabled
    }
    SetTimer, RemoveToolTip, -1000  ; Removes the message after 1 second
return

AutoClick:
    Click  ; Performs the click
return

; Function to remove the ToolTip after 1 second
RemoveToolTip:
    ToolTip  ; Removes the message from the screen
return

F7::ExitApp  ; Press F7 to close the script
