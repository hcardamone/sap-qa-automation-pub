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
session.findById("wnd[0]/tbar[0]/okcd").text = "/nZXCAD04"
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/tbar[1]/btn[5]").press
session.findById("wnd[0]/usr/tblSAPLZF0004TCTRL_ZT0004/ctxtZT0004-MATNR[0,0]").text = "MAT005"
session.findById("wnd[0]/usr/tblSAPLZF0004TCTRL_ZT0004/txtZT0004-DENOM[1,0]").text = "TECLADO MECANICO"
session.findById("wnd[0]/usr/tblSAPLZF0004TCTRL_ZT0004/ctxtZT0004-CODCT[2,0]").text = "00004"
session.findById("wnd[0]/usr/tblSAPLZF0004TCTRL_ZT0004/cmbZT0004-ORIGE[3,0]").key = "I"
session.findById("wnd[0]/usr/tblSAPLZF0004TCTRL_ZT0004/txtZT0004-VALOR[4,0]").text = "350,00"
session.findById("wnd[0]/usr/tblSAPLZF0004TCTRL_ZT0004/txtZT0004-WAERS[5,0]").text = "BRL"
session.findById("wnd[0]/usr/tblSAPLZF0004TCTRL_ZT0004/txtZT0004-WAERS[5,0]").setFocus
session.findById("wnd[0]/usr/tblSAPLZF0004TCTRL_ZT0004/txtZT0004-WAERS[5,0]").caretPosition = 3
session.findById("wnd[0]/tbar[0]/btn[11]").press
