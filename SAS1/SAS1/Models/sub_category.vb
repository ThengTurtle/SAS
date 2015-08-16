Public Class sub_category
    Private _subCategoryID As Integer
    Public Property subCategoryID() As Integer
        Get
            Return _subCategoryID
        End Get
        Set(ByVal value As Integer)
            _subCategoryID = value
        End Set
    End Property

    Private _Name As String
    Public Property Name() As String
        Get
            Return _Name
        End Get
        Set(ByVal value As String)
            _Name = value
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

    Private _categoryID As Integer
    Public Property categoryID() As Integer
        Get
            Return _categoryID
        End Get
        Set(ByVal value As Integer)
            _categoryID = value
        End Set
    End Property



End Class
