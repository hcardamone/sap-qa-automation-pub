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
session.findById("wnd[0]/tbar[0]/okcd").text = "/nZXCAD03"
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/tbar[1]/btn[25]").press
session.findById("wnd[0]/tbar[1]/btn[5]").press
session.findById("wnd[0]/usr/tblSAPLZF0003TCTRL_ZT0003/txtZT0003-CODCT[0,0]").text = "00004"
session.findById("wnd[0]/usr/tblSAPLZF0003TCTRL_ZT0003/txtZT0003-DENOM[1,0]").text = "ACCESSORIES"
session.findById("wnd[0]/usr/tblSAPLZF0003TCTRL_ZT0003/txtZT0003-DENOM[1,0]").setFocus
session.findById("wnd[0]/usr/tblSAPLZF0003TCTRL_ZT0003/txtZT0003-DENOM[1,0]").caretPosition = 11
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/tbar[0]/btn[11]").press
