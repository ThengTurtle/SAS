Public Class employeeLogin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
    End Sub

    Private Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim username As String = tbxUsername.Text.Trim
        Dim password As String = tbxPassword.Text.Trim

        Dim result As Integer() = SQLFunctions.EmployeeLogin01(username, password)

        If result(0) = -1 Then
            lblLoginMessage.Text = "User Name not found ! New User Please register"
        ElseIf result(0) = 0 Then
            lblLoginMessage.Text = "Password incorrect"
        ElseIf result(0) = 1 Then
            Response.Redirect("Dashboard.aspx")
        End If
    End Sub
End Class