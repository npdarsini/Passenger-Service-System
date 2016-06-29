Imports System.Data
Imports System.Data.SqlClient
Partial Class bon_voyage
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db.mdf;Integrated Security=True;User Instance=True")
    Dim rs As New SqlDataAdapter
    Dim rs1 As New SqlDataAdapter
    Dim dr As New DataSet
    Dim dr1 As New DataSet
    Dim cmd As New SqlCommand

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("id") = ""
        MsgBox("logged out Succefully!!!")
        Response.Redirect("default3.aspx")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click

    End Sub

    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("compreg") = "c"
        If Session("cid") = "" Then
            Response.Redirect("Default3.aspx")
        End If
    End Sub
End Class
