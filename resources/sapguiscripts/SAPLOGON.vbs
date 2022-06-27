If Not IsObject(application) Then
   Set SapGuiAuto  = GetObject("SAPGUI")
   Set application = SapGuiAuto.GetScriptingEngine
End If
If Not IsObject(connection) Then
   Set connection = application.Children(0)
End If
If Not IsObject(session) Then
   Set session    = connection.Children(0)
End If
If IsObject(WScript) Then
   WScript.ConnectObject session,     "on"
   WScript.ConnectObject application, "on"
End If
session.findById("wnd[0]").maximize
session.findById("wnd[0]/usr/txtRSYST-BNAME").text = "DEVELOPER"
session.findById("wnd[0]/usr/pwdRSYST-BCODE").text = "********"
session.findById("wnd[0]/usr/txtRSYST-LANGU").text = "EN"
session.findById("wnd[0]/usr/txtRSYST-LANGU").setFocus
session.findById("wnd[0]/usr/txtRSYST-LANGU").caretPosition = 2
session.findById("wnd[0]").sendVKey 0
