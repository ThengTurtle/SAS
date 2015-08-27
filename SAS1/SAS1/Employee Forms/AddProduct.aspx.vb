Imports System.IO
Imports System.Collections.Generic

Public Class AddProduct
    Inherits System.Web.UI.Page

    Private Shared imagepath As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            imgProductImage.ImageUrl = imagepath
        End If
    End Sub

    Protected Sub btnSave_ServerClick(sender As Object, e As EventArgs)
        Dim newproduct As product = New product

        Dim productName = tbxProductName.Text.Trim
        Dim productDescription = tbxDescription.Text.Trim

        newproduct.productName = productName
        newproduct.productDescription = productDescription
    End Sub

    Protected Sub btnUpload_Click(sender As Object, e As EventArgs)
        If fuProductImage.HasFile Then
            Dim filename = Path.GetFileName(fuProductImage.PostedFile.FileName)

            fuProductImage.PostedFile.SaveAs(Server.MapPath("~/ImageSource/") + filename)
            imagepath = "~/ImageSource/" + filename
            Response.Redirect(Request.Url.AbsoluteUri)
        End If
    End Sub

    Private Sub upload(sender As Object, e As EventArgs)
        If fuProductImage.HasFile Then
            Dim filename = Path.GetFileName(fuProductImage.PostedFile.FileName)

            fuProductImage.PostedFile.SaveAs(Server.MapPath("~/ImageSource/") + filename)
            imagepath = "~/ImageSource/" + filename
            Response.Redirect(Request.Url.AbsoluteUri)
        End If
    End Sub
End Class