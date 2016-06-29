Imports System.Data
Imports System.Data.SqlClient
Partial Class forgot
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db.mdf;Integrated Security=True;User Instance=True")
    Dim rs As New SqlDataAdapter
    Dim rs1 As New SqlDataAdapter
    Dim dr As New DataSet
    Dim dr2 As New DataSet
    Dim cmd As New SqlCommand
    Dim str As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Visible = False
        Label3.Visible = False
        Label4.Visible = False
        Label5.Visible = False
        txt_newpwd.Visible = False
        txt_conpwd.Visible = False
        Button3.Visible = False



    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        rs1 = New SqlDataAdapter("select * from signup where cid='" & TextBox1.Text & "'", con)
        rs1.Fill(dr2, "profile2")
        Label1.Text = dr2.Tables("profile2").Rows(0)(7).ToString()
        Label1.Visible = True
        Label3.Visible = True
        MultiView1.SetActiveView(View2)
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        rs = New SqlDataAdapter("select * from signup where cid='" & TextBox1.Text & "'", con)
        rs.Fill(dr, "profile")
        Str = dr.Tables("profile").Rows(0)(8).ToString()
        If TextBox2.Text = str Then
            Label4.Visible = True
            Label5.Visible = True
            txt_newpwd.Visible = True
            txt_conpwd.Visible = True
            Button3.Visible = True

            

            con.Open()
            Try
                cmd.ExecuteNonQuery()
            Catch ex As Exception

            End Try
            con.Close()


        Else
            MsgBox("answr Incorrect")

        End If

    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        cmd = New SqlCommand("update signup set pwd='" & txt_newpwd.Text & "' where cid='" & TextBox1.Text & "'", con)
        con.Open()
        Try
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox("Invalid Entry Or Character")
        End Try
        con.Close()
        MsgBox(" Password Updated Successfully!!!")
        Response.Redirect("Default.aspx")
    End Sub
End Class
