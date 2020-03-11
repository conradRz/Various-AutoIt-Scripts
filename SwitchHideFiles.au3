Func RefreshDesktop()

	ControlSend('Program Manager', '', '', '{F5}')

EndFunc   ;==>RefreshDesktop

Switch RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced", "hidden")
	Case 1
		Switch MsgBox(68, "Hidden files", "Hidden files disabled" & @CR & "Enable?")
			Case 6
				RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced", "hidden", "REG_DWORD", 2)
		EndSwitch
	Case 2
		MsgBox(64, "Hidden files", "Hidden files enabled")
EndSwitch
RefreshDesktop()