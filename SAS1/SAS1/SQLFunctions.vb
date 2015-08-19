Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class SQLFunctions
    Shared connectionString As String = WebConfigurationManager.ConnectionStrings("DefaultConnection").ConnectionString
    Shared cn As SqlConnection = New SqlConnection(connectionString)
    Shared cmd As SqlCommand = New SqlCommand()
    Shared dr As SqlDataReader

#Region "Data Controls"
    Shared Function OpenConnection() As Boolean
        Try
            If cn.State = ConnectionState.Closed Then
                cn.Open()
            Else
                cn.Close()
                OpenConnection()
            End If
            Return True
        Catch ex As Exception
            ExceptionHandling(ex)
            Return False
        End Try
    End Function

    Shared Sub ExceptionHandling(ByRef ex As Exception)
        If TypeOf (ex) Is SqlException Then
            If ex.Message.StartsWith("Timout") Then
                System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE = ""JavaScript"">alert(""Disconnected"")</SCRIPT>")
            Else
                System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE = ""JavaScript"">alert(" & ex.Message & ")</SCRIPT>")
            End If
        Else
            System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE = ""JavaScript"">alert(" & ex.ToString & ")</SCRIPT>")
        End If

    End Sub

    Shared Sub HandleDataReader()
        If dr Is Nothing = False Then
            If dr.IsClosed = False Then
                dr.Close()
            End If
        End If
    End Sub
#End Region
 

    Public Shared Function SiteMaster01() As List(Of String)
        'retrieve categoryName
        Try
            OpenConnection()
            Dim categoryname As New List(Of String)
            cmd.Connection = cn
            Dim q1 As String = "SELECT categoryName FROM [category]"
            cmd.CommandText = q1
            dr = cmd.ExecuteReader()

            If dr.HasRows Then
                While dr.Read()
                    categoryname.Add(dr("categoryName").ToString)
                End While
            End If

            dr.Close()

            Return categoryname
        Catch ex As Exception
            ExceptionHandling(ex)
            Return Nothing
        Finally
            If IsNothing(dr) Then
                If dr.IsClosed = False Then
                    dr.Close()
                End If
            End If
            cn.Close()
        End Try


    End Function

    Public Shared Function EmployeeLogin01(ByVal username As String, ByVal password As String) As Integer()
        Dim result(2) As Integer
        Try
            If OpenConnection() = False Then
                result(0) = -2
                Return result
            End If
            cmd.Connection = cn
            Dim situation As Integer
            'find username
            Dim userID As Integer
            Dim password1 As String = ""
            Dim q1 As String = "SELECT UserID, Password FROM [User] WHERE UserName = '" & username & "'"
            cmd.CommandText = q1
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                While dr.Read()
                    userID = CType(dr("UserID").ToString, Integer)
                    password1 = dr("Password").ToString
                End While

                'check if password is correct
                If password1 = password Then
                    'password match 
                    situation = 1
                ElseIf password1 <> password Then
                    'password not correct
                    situation = 0
                End If
            Else
                'no username found
                situation = -1
            End If

            result(0) = situation

            If situation = 1 Then
                result(1) = userID
            End If

            Return result
        Catch ex As Exception
            ExceptionHandling(ex)
            result(0) = -2
            Return result
        Finally
            If IsNothing(dr) = False Then
                If dr.IsClosed = False Then
                    dr.Close()
                End If
            End If
            cn.Close()
        End Try
    End Function

#Region "EmployeeDashboard.aspx"

    Public Shared Function ED01() As Integer
        Try
            If OpenConnection() = False Then
                Return Nothing
            End If
            cmd.Connection = cn
            Dim numorders As Integer
            Dim q1 As String = "SELECT * FROM OrderT"
            cmd.CommandText = q1
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                numorders += 1
            Else
                numorders = 0
            End If
            Return numorders
        Catch ex As Exception
            ExceptionHandling(ex)
            Return Nothing
        Finally
            HandleDataReader()
            cn.Close()
        End Try
    End Function

    Public Shared Function ED02() As Integer
        Try
            If OpenConnection() = False Then
                Return Nothing
            End If
            cmd.Connection = cn
            Dim numsales As Integer = 0
            Dim q1 As String = "SELECT * FROM Sales"
            cmd.CommandText = q1
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                While dr.Read
                    numsales += 1
                End While
            Else
                numsales = 0
            End If
            Return numsales
        Catch ex As Exception
            ExceptionHandling(ex)
            Return Nothing
        Finally
            HandleDataReader()
            cn.Close()
        End Try
    End Function

    Public Shared Function ED03() As Integer
        Try
            If OpenConnection() = False Then
                Return Nothing
            End If
            cmd.Connection = cn
            Dim numcustomer As Integer
            Dim q1 As String = "SELECT * FROM [customer]"
            cmd.CommandText = q1
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                While dr.Read

                    numcustomer += 1
                End While
            Else
                numcustomer = 0
            End If
            Return numcustomer
        Catch ex As Exception
            ExceptionHandling(ex)
            Return Nothing
        Finally
            HandleDataReader()
            cn.Close()
        End Try
    End Function

    Public Shared Function ED04() As List(Of OrderT)
        Try
            If OpenConnection() = False Then
                Return Nothing
            End If
            cmd.Connection = cn
            Dim orderts As List(Of OrderT) = New List(Of OrderT)
            Dim q1 = "SELECT TOP (5) * FROM [OrderT] ORDER BY orderID DESC"
            cmd.CommandText = q1
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                While dr.Read
                    Dim ot As OrderT = New OrderT
                    ot.orderID = CType(dr("orderID"), Integer)
                    ot.customerID = CType(dr("customerID"), Integer)
                    ot.Status = dr("Status").ToString
                    ot.orderDate = CType(dr("orderDate"), Date)
                    orderts.Add(ot)
                End While
            End If
            dr.Close()

            For Each ot In orderts
                Dim q2 = "SELECT firstName, lastName FROM [customer] WHERE customerID = " & ot.customerID
                cmd.CommandText = q2
                dr = cmd.ExecuteReader
                If dr.HasRows Then
                    While dr.Read
                        ot.CustomerName = dr("firstName").ToString & " " & dr("lastName").ToString
                    End While
                End If
                dr.Close()

                Dim q3 = "SELECT unitPrice FROM [order_details] WHERE orderID = " & ot.orderID
                cmd.CommandText = q3
                dr = cmd.ExecuteReader
                If dr.HasRows Then
                    While dr.Read
                        ot.UnitPrice = CType(dr("unitPrice"), Decimal)
                    End While
                End If
            Next

            Return orderts
        Catch ex As Exception
            ExceptionHandling(ex)
            Return Nothing
        Finally
            HandleDataReader()
            cn.Close()
        End Try
    End Function

    Public Shared Function ED05() As List(Of ActivityLog)
        Try
            If OpenConnection() = False Then
                Return Nothing
            End If
            cmd.Connection = cn
            Dim activity As List(Of ActivityLog) = New List(Of ActivityLog)
            Dim q1 = "SELECT TOP (5) * FROM ActivityLog"
            cmd.CommandText = q1
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                While dr.Read
                    Dim act As ActivityLog = New ActivityLog
                    act.Act_ID = CType(dr("Act_ID"), Integer)
                    act.DateTime = CType(dr("DateTime"), Date)
                    act.Description = dr("Description").ToString

                    activity.Add(act)
                End While
            End If
            dr.Close()

            Return activity
        Catch ex As Exception
            ExceptionHandling(ex)
            Return Nothing
        Finally
            HandleDataReader()
            cn.Close()
        End Try
    End Function
#End Region

#Region "Product.aspx"
    Public Shared Function P01(ByVal query As String) As List(Of product)
        Try
            If OpenConnection() = False Then
                Return Nothing
            End If
            cmd.Connection = cn
            Dim products As List(Of product) = New List(Of product)
            cmd.CommandText = query
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                While dr.Read
                    Dim product As product = New product
                    product.productID = CType(dr("productID"), Integer)
                    product.ImageUrl = dr("productName").ToString & ".jpg"
                    product.productName = dr("productName").ToString
                    product.unitPrice = CType(dr("unitPrice"), Decimal)
                    product.Quantity = CType(dr("Quantity"), Integer)
                    Dim s = dr("Status").ToString
                    If CType(dr("Status"), Boolean) = True Then
                        product.Status = True
                    ElseIf CType(dr("Status"), Boolean) = False Then
                        product.Status = False
                    End If

                    product.DiscountedPrice = Format(product.unitPrice * (1 - CType(dr("discountRate"), Decimal)), "0.00")

                    products.Add(product)
                End While
            End If

            Return products
        Catch ex As Exception
            ExceptionHandling(ex)
            Return Nothing
        Finally
            HandleDataReader()
            cn.Close()
        End Try
    End Function

    Public Shared Function P02(ByVal producIDs As List(Of Integer))
        Try
            If OpenConnection() = False Then
                Return False
            End If
            cmd.Connection = cn
            For Each product In producIDs
                Dim q1 = "DELETE FROM [product] WHERE productID = " & product
                cmd.CommandText = q1
                cmd.ExecuteNonQuery()
            Next

            Return True
        Catch ex As Exception
            ExceptionHandling(ex)
            Return False
        Finally
            cn.Close()
        End Try
    End Function
#End Region

End Class
