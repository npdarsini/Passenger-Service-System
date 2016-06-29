Imports System.Data
Imports System.Data.SqlClient
Partial Class feedback
    Inherits System.Web.UI.Page
    Dim ccon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db.mdf;Integrated Security=True;User Instance=True")
    Dim rcreg As New SqlDataAdapter
    Dim ds As New DataSet
    Dim cmd As New SqlCommand


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("cid") = "" Then
            Response.Redirect("Default3.aspx")
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        cmd = New SqlCommand("insert into feedback values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "')", ccon)
        ccon.Open()
        Try
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox("Invalid Entry Or Character")
            Exit Sub
        End Try
        ccon.Close()
        MsgBox("Feedback Posted Succefully!!!")
        Response.Redirect("Default.aspx")
    End Sub
End Class
