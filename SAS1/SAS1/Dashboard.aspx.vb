Public Class Dashboard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        lblTotalSales.Text = SQLFunctions.ED02
        lbltotalcustomers.Text = SQLFunctions.ED03

        Dim TotalOrders As List(Of OrderT) = SQLFunctions.ED04
        lvTotalOrders.DataSource = TotalOrders
        lvTotalOrders.DataBind()

        lblTotalOrders.Text = TotalOrders.Count

        Dim Activitylogs As List(Of ActivityLog) = SQLFunctions.ED05
        dlRecentActivity.DataSource = Activitylogs
        dlRecentActivity.DataBind()

    End Sub

End Class