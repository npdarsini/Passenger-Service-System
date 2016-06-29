Imports System.Data
Imports System.Data.SqlClient
Partial Class _def
    Inherits System.Web.UI.Page
    Dim cadmin As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db.mdf;Integrated Security=True;User Instance=True")
    Dim radmin As SqlDataAdapter
    Dim dadmin As New DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


End Class
