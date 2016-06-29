
Imports System.Data
Imports System.Data.SqlClient
Partial Class signup
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db.mdf;Integrated Security=True;User Instance=True")
    Dim radmin As SqlDataAdapter
    Dim dadmin As New DataSet
    Dim cmd As New SqlCommand
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        cmd = New SqlCommand("insert into signup values('" & TextBox1.Text & "','" & TextBox2.Text & "', '" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & DropDownList1.Text & "','" & TextBox6.Text & "','" & TextBox7.Text & "','" & TextBox8.Text & "')", con)
        con.Open()
        Try
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox("Invalid Entry Or Character")
            Exit Sub
        End Try
        con.Close()
        MsgBox("Registered Succefully!!!")
        Response.Redirect("Default2.aspx")
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
