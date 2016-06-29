Imports System.Data
Imports System.Data.SqlClient
Partial Class changepwd
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db.mdf;Integrated Security=True;User Instance=True")
    Dim rs As New SqlDataAdapter
    Dim rs1 As New SqlDataAdapter
    Dim dr As New DataSet
    Dim dr1 As New DataSet
    Dim cmd As New SqlCommand
    Dim str As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("cid") = "" Then
            Response.Redirect("Default3.aspx")
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        rs = New SqlDataAdapter("select * from signup where cid='" & Session("cid").ToString() & "'", con)
        rs.Fill(dr, "profile")
        str = dr.Tables("profile").Rows(0)(4).ToString()
        If txt_oldpwd.Text = str Then
            cmd = New SqlCommand("update signup set pwd='" & txt_newpwd.Text & "' where cid='" & Session("cid").ToString & "'", con)
            con.Open()
            Try
                cmd.ExecuteNonQuery()
            Catch ex As Exception
                MsgBox("Invalid Entry Or Character")
            End Try
            con.Close()
            MsgBox(" Password Updated Successfully!!!")
            Response.Redirect("Default.aspx")

        Else
            MsgBox("Password Incorrect")
            txt_oldpwd.Text = " "
            txt_newpwd.Text = " "
            txt_conpwd.Text = " "
        End If
    End Sub
End Class
