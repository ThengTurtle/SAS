Public Class category
    Private _categoryID As Integer
    Public Property categoryID() As Integer
        Get
            Return _categoryID
        End Get
        Set(ByVal value As Integer)
            _categoryID = value
        End Set
    End Property

    Private _categoryName As String
    Public Property categoryName() As String
        Get
            Return _categoryName
        End Get
        Set(ByVal value As String)
            _categoryName = value
        End Set
    End Property

    Private _description As String
    Public Property description() As String
        Get
            Return _description
        End Get
        Set(ByVal value As String)
            _description = value
        End Set
    End Property



End Class
