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
            Dim q1 As String = "SELECT COUNT(*) FROM OrderT"
            cmd.CommandText = q1
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                numorders = CType(dr("COUNT(*)"), Integer)
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

#End Region

End Class
