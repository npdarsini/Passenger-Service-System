Imports System.Data
Imports System.Data.SqlClient
Partial Class admlogin
    Inherits System.Web.UI.Page
    Dim cadmin As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db.mdf;Integrated Security=True;User Instance=True")
    Dim radmin As SqlDataAdapter
    Dim dadmin As New DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label.Visible = False
        box1.Focus()
        radmin = New SqlDataAdapter("select aid, apwd from alogin", cadmin)
        radmin.Fill(dadmin, "admin")
    End Sub
    Dim str As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        str = box1.Text
        For i As Integer = 0 To dadmin.Tables("admin").Rows.Count - 1
            If str = dadmin.Tables("admin").Rows(i).Item(0).ToString Then
                If box2.Text = dadmin.Tables("admin").Rows(i).Item(1).ToString Then
                    Session("aid") = box1.Text
                    MsgBox("login Succefully!!!")
                    Response.Redirect("admoptions.aspx")

                End If
            Else
                MsgBox("Wrong entry")
                Label.Text = "Wrong password...."
                Label.Visible = True

            End If
        Next
    End Sub

    
End Class
