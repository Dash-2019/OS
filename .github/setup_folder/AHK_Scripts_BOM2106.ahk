/*
.UTF8-BOM付
*/



/*
.IfWinActive
*/


/*---------------------
..RLoginSSH
*/
#IfWinActive ahk_exe RLoginSSH.exe


/*
...Ctrl+V = Paste
*/
^v::send,!ep





#IfWinActive
;============================



/*
..MPC-BE media
*/

#IfWinActive ahk_exe mpc-be64.exe

/*
...F = Full Screen
...M = Mute
*/


f::send,^{enter}
m::send,^m








#IfWinActive




























/*
..Excel
*/


#IfWinActive ahk_class XLMAIN

/*
...[Ctrl + \ ] 書式クリア
*/
^sc073::send,!hef


/*
...無 + d = Freeze
*/
vk1D & d::send,!wff


/*
...無 + f = Filter
*/
vk1D & f::
Send,^{left}
Send,^+{right}
Send,^+l
Send,^{left}
Return



/*
...Shift+Ctrl+V 値貼付
*/
^+v::send,!hvv





#IfWinActive
;=========================






































/*
..Libre
*/

#IfWinActive ahk_class SALFRAME

/*
...[Ctrl+:] 時刻挿入
*/
^sc028::^+.


/*
...[Ctrl + \ ] 書式クリア
*/
^sc073::send,^m






#IfWinActive
;================================







































/*
..Google SpreadSheet
*/
#IfWinActive ahk_class Chrome_WidgetWin_1

/*
...[Ctrl+;]=日付挿入
*/
^;::Send,^:

/*
...[Ctrl+:]=時刻挿入
*/
^sc028::^+:

/*
...[Ctrl+NumpadAdd]=行挿入
*/

^NumpadAdd::Send,!^.


/*
...[Ctrl+NumpadSub]=行削除
*/
^NumpadSub::Send,!^-




#IfWinActive
;===========================





/*
.Run Scripts or Program
*/








/*
..Ctrl+Win+P = PowerShell ShutDown All
*/

;Msgbox改行 `n

^#p::
MsgBox, 4,, ShutDown all PC`n Would you like to continue? (press Yes or No)


IfMsgBox Yes
   ; MsgBox You pressed Yes.
	Run, powershell.exe C:\Users\tsuyu\shutdown_All.ps1

Return














/*
..無 + z = ScreenKey
*/

vk1D & z::Run, %windir%\system32\osk.exe



/*
..無+F8 = Reload
*/

vk1D & F8::Reload


vk1D & s::

Send,{vkF2}
Send,{vkF3}
Run,C:\Program Files\AutoHotkey\WindowSpy.ahk
Return




/*
.MsgBox
*/

vk1D & 0::MsgBox 4,だいあろぐ,Hello





vk1D & 1::
MsgBox, 4, , This is the 3-param method, non-escaped commas ok.`n`nContinue?
Send,Yes
IfMsgBox, No

Send,No
  Return




/*
..inputbox
*/


;AutoHotkey の条件分岐
;IfTest.ahk
;2008-12-30T00:13:34+09:00

vk1D & 2::

InputBox, inNum , InputNumber     ;入力ウィンドウを表示。入力された値は変数 inNum へ格納。ウィンドウのタイトルは InputNumber

if inNum is number                ;変数 inNum の型が 数値 である場合
{
  if (inNum==0) {                 ;変数 inNum の値が 0 である場合
    MsgBox, 入力した数値はゼロ    ;メッセージダイアログで "入力した数値はゼロ" と表示する
  }else if (inNum>0) {            ;変数 inNum の値が 0 より大きい場合
    MsgBox, 入力した数値は正      ;メッセージダイアログで "入力した数値は正" と表示する
  }else{                          ;変数 inNum の値が 0 より小さい場合
    MsgBox, 入力した数値は負      ;メッセージダイアログで "入力した数値は負" と表示する
  }
}else{                            ;変数 inNum の型が 数値 でない場合
  MsgBox, 数値を入力してください  ;メッセージダイアログで "数値を入力してください" と表示する
}



vk1D & 3::

MsgBox, 4,Shutdown All PC , Would you like to continue? (press Yes or No)

IfMsgBox Yes
    MsgBox You pressed Yes.

else
    MsgBox You pressed No.
    
Return





    
    
    
    
;EOF
