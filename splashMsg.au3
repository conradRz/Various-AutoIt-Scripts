#include <Misc.au3>
#include <Clipboard.au3>

;compiles to exe just fine

$text = "Alex, please could you reconsider changing attributes to folders/files that you don't own? Did I change anything with the ""apps"" that you're using while at work? The ones which happen to have modified files in them after you finish your shift, and which were installed during your shift as correlated with old rotas? Please don’t bring this up when speaking face to face, don’t make it awkward. Thank you. Press printScreen key to close this msg."

$handle = SplashTextOn("", $text, @DesktopWidth, 50, 0, 0, 5, -1, 8)
While 1
	If _IsPressed("2c") Then
		ClipPut("")
		SplashOff()
		Exit
	EndIf
	Sleep(100)
WEnd

