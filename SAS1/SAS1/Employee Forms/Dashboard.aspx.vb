Public Class Dashboard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblTotalOrders.Text = SQLFunctions.ED01()
    End Sub

End Class