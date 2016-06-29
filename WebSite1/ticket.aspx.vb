Imports System.Data
Imports System.Data.SqlClient
Partial Class ticket
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db.mdf;Integrated Security=True;User Instance=True")
    Dim rs As New SqlDataAdapter
    Dim rs1 As New SqlDataAdapter
    Dim dr As New DataSet
    Dim dr1 As New DataSet
    Dim cmd As New SqlCommand
    Dim str As String
    Dim str1 As String

   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("compreg") = "c"
        If Session("id") = "" Then
            Response.Redirect("register.aspx")
        End If

    
        rs1 = New SqlDataAdapter("select * from register where id='" & Session("id").ToString() & "'", con)
        rs1.Fill(dr1, "profile1")

        Label2.Text = dr1.Tables("profile1").Rows(0)(2).ToString()
        Label3.Text = dr1.Tables("profile1").Rows(0)(3).ToString()
        Label4.Text = dr1.Tables("profile1").Rows(0)(4).ToString()
        Label5.Text = dr1.Tables("profile1").Rows(0)(5).ToString()
        Label6.Text = dr1.Tables("profile1").Rows(0)(6).ToString()
        Label7.Text = dr1.Tables("profile1").Rows(0)(7).ToString()
        Label8.Text = dr1.Tables("profile1").Rows(0)(8).ToString()
        Label9.Text = dr1.Tables("profile1").Rows(0)(9).ToString()
        Label11.Text = dr1.Tables("profile1").Rows(0)(2).ToString()
        Label10.Text = dr1.Tables("profile1").Rows(0)(5).ToString()
        Label12.Text = dr1.Tables("profile1").Rows(0)(6).ToString()
        Label13.Text = dr1.Tables("profile1").Rows(0)(9).ToString()


    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("id") = ""
        Response.Redirect("Default.aspx")

    End Sub
End Class
