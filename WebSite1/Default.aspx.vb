
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("cid") = "" Then
            Response.Redirect("Default3.aspx")
        End If

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("cid") = ""
        MsgBox("logged out Succefully!!!")
        Response.Redirect("default2.aspx")
    End Sub
End Class
