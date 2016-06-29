Imports System.Data
Imports System.Data.SqlClient
Partial Class ticketpaswd
    Inherits System.Web.UI.Page
    Dim cadmin As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db.mdf;Integrated Security=True;User Instance=True")
    Dim radmin As SqlDataAdapter
    Dim dadmin As New DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label.Visible = False
        If Session("cid") = "" Then
            Response.Redirect("Default3.aspx")
        End If
        Box1.Focus()
        radmin = New SqlDataAdapter("select id, pwd from register", cadmin)
        radmin.Fill(dadmin, "admin")
    End Sub
    Dim str As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        str = Box1.Text
        For i As Integer = 0 To dadmin.Tables("admin").Rows.Count - 1
            If str = dadmin.Tables("admin").Rows(i).Item(0).ToString Then
                If Box2.Text = dadmin.Tables("admin").Rows(i).Item(1).ToString Then
                    Session("id") = Box1.Text
                    MsgBox("Authentication Succeessful!!!")
                    Response.Redirect("ticket.aspx")

                End If
            Else

                Label.Text = "Wrong password...."
                Label.Visible = True

            End If
        Next
    End Sub

    Protected Sub box2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Box2.TextChanged

    End Sub
End Class
