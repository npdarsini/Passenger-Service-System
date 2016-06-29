Imports System.Data
Imports System.Data.SqlClient
Partial Class payment
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db.mdf;Integrated Security=True;User Instance=True")
    Dim radmin As SqlDataAdapter
    Dim dadmin As New DataSet
    Dim cmd As New SqlCommand

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        cmd = New SqlCommand("insert into card values('" & TextBox1.Text & "','" & TextBox2.Text & "', '" & TextBox3.Text & "')", con)
        con.Open()
        Try
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox("Invalid Entry Or Character")
            Exit Sub
        End Try
        con.Close()
        MsgBox(" :)  Payment Succefully!!!")
        Response.Redirect("bon voyage.aspx")
    End Sub
    

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("compreg") = "c"
        If Session("cid") = "" Then
            Response.Redirect("Default3.aspx")
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("cid") = ""
        MsgBox("logged out Succefully!!!")
        Response.Redirect("default3.aspx")
    End Sub
End Class
