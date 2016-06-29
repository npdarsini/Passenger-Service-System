Imports System.Data
Imports System.Data.SqlClient
Partial Class _def
    Inherits System.Web.UI.Page
    Dim ccon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db.mdf;Integrated Security=True;User Instance=True")
    Dim rcreg As New SqlDataAdapter
    Dim ds As New DataSet


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Calendar1.Visible = False
        lbl_msg.Visible = False
        Session("compreg") = "c"
        If Session("cid") = "" Then
            Response.Redirect("Default3.aspx")
        End If
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Calendar1.Visible = True
    End Sub
    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        If Calendar1.SelectedDate >= Calendar1.TodaysDate Then
            TextBox3.Text = Calendar1.SelectedDate
            Calendar1.Visible = False
            lbl_msg.Visible = False
        Else
            lbl_msg.Visible = True
            lbl_msg.Text = "Please Dont Enter Previous Dates"
        End If

    End Sub
    Dim c As Integer
    Dim str As String
 
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        c = 0
        str = txt_cid.Text
        rcreg = New SqlDataAdapter("select id from register", ccon)
        rcreg.Fill(ds, "cid")
        For i As Integer = 0 To ds.Tables("cid").Rows.Count - 1
            If str = ds.Tables("cid").Rows(i)(0).ToString Then
                c = 1
            End If
        Next
        If c = 0 Then
            MsgBox(":) AVAILABLE")
        Else
            MsgBox("SORRY NOT AVAILABLE")
            txt_cid.Text = ""
        End If
    End Sub
    Dim cmd As New SqlCommand
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        c = 0
        str = txt_cid.Text
        rcreg = New SqlDataAdapter("select id from register", ccon)
        rcreg.Fill(ds, "cid")
        For i As Integer = 0 To ds.Tables("cid").Rows.Count - 1
            If str = ds.Tables("cid").Rows(i)(0).ToString Then
                c = 1
            End If
        Next
        If c = 0 Then

            cmd = New SqlCommand("insert into register values('" & txt_cid.Text & "','" & txt_pwd.Text & "', '" & TextBox1.Text & "','" & TextBox2.Text & "','" & DropDownList1.Text & "','" & TextBox3.Text & "','" & DropDownList2.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & DropDownList3.Text & "','" & TextBox6.Text & "')", ccon)
            ccon.Open()
            Try
                cmd.ExecuteNonQuery()
            Catch ex As Exception
                MsgBox("Invalid Entry Or Character")
                Exit Sub
            End Try
            ccon.Close()
            MsgBox("Regestered Succefully!!!")
            Response.Redirect("payment.aspx")
            Session("compreg") = ""



        Else
            MsgBox("Company Already Exist")
            txt_cid.Text = ""
        End If
    End Sub

    Protected Sub logout_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles logout.Click
        Session("cid") = ""
        MsgBox("logged out Succefully!!!")
        Response.Redirect("default3.aspx")
    End Sub
End Class
