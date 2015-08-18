Public Class ProductList
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub


    Protected Sub btnFilter_ServerClick(sender As Object, e As EventArgs)

        Dim query = "SELECT * FROM [product]"
        If String.IsNullOrWhiteSpace(tbxProductName.Text.Trim) = False Or String.IsNullOrWhiteSpace(tbxPrice.Text.Trim) = False Or String.IsNullOrWhiteSpace(tbxQuantity.Text.Trim) = False Or ddlStatus.SelectedValue <> -1 Then
            query &= " WHERE "

            Dim first As Boolean = True

            If String.IsNullOrWhiteSpace(tbxProductName.Text.Trim) = False Then
                If first = False Then
                    query &= " AND "
                End If
                query &= "productName = '" & tbxProductName.Text.Trim & "'"
                first = False
            End If

            If String.IsNullOrWhiteSpace(tbxPrice.Text.Trim) = False Then
                If first = False Then
                    query &= " AND "
                End If
                query &= "unitPrice = " & tbxPrice.Text.Trim
                first = False
            End If

            If String.IsNullOrWhiteSpace(tbxQuantity.Text.Trim) = False Then
                If first = False Then
                    query &= " AND "
                End If
                query &= "Quantity = " & tbxQuantity.Text.Trim
                first = False
            End If

            If ddlStatus.SelectedValue <> -1 Then
                If first = False Then
                    query &= " AND "
                End If
                query &= "Status = " & ddlStatus.SelectedValue
                first = False
            End If
        End If


        Dim products As List(Of product) = SQLFunctions.P01(query)
        lvItemdisplay.DataSource = products
        lvItemdisplay.DataBind()

    End Sub

    Protected Sub cbxAll_CheckedChanged(sender As Object, e As EventArgs)
        Dim mainchk = CType(sender, CheckBox)

        If mainchk.Checked Then
            For Each lvi In lvItemdisplay.Items
                Dim selectedcb As CheckBox = CType(lvi.FindControl("cbxProducts"), CheckBox)
                selectedcb.Checked = True
            Next
        Else
            For Each lvi In lvItemdisplay.Items
                Dim selectedcb As CheckBox = CType(lvi.FindControl("cbxProducts"), CheckBox)
                selectedcb.Checked = False
            Next
        End If
    End Sub

    Shared Function ShowStatus(ByVal status As Boolean) As String
        If status = True Then
            Return "Enabled"
        Else
            Return "Disabled"
        End If
    End Function

    Private Sub btndelete_Click(sender As Object, e As EventArgs) Handles btndelete.Click
        If Page.IsPostBack Then
            Dim selectedproductID As List(Of Integer) = New List(Of Integer)

            For Each lvi In lvItemdisplay.Items
                Dim selectedcb As CheckBox = CType(lvi.FindControl("cbxProducts"), CheckBox)
                If selectedcb.Checked Then
                    Dim hfproducts = CType(CType(selectedcb.Parent, ListViewItem).FindControl("hfProductsHiddenvalue"), HiddenField)
                    selectedproductID.Add(CType(hfproducts.Value, Integer))
                End If
            Next


            If SQLFunctions.P02(selectedproductID) = False Then
                System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE = ""JavaScript"">alert(""Product Delete Failed"")</SCRIPT>")
            Else
                System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE = ""JavaScript"">alert(""Product Delete Successful"")</SCRIPT>")

                lvItemdisplay.DataSource = Nothing
                lvItemdisplay.DataBind()
            End If
        End If
    End Sub
End Class