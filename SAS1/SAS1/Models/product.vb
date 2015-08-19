Public Class product
    Private _productID As Integer
    Public Property productID() As Integer
        Get
            Return _productID
        End Get
        Set(ByVal value As Integer)
            _productID = value
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

    Private _supplierID As String
    Public Property supplierID() As String
        Get
            Return _supplierID
        End Get
        Set(ByVal value As String)
            _supplierID = value
        End Set
    End Property

    Private _productName As String
    Public Property productName() As String
        Get
            Return _productName
        End Get
        Set(ByVal value As String)
            _productName = value
        End Set
    End Property

    Private _productDescription As String
    Public Property productDescription() As String
        Get
            Return _productDescription
        End Get
        Set(ByVal value As String)
            _productDescription = value
        End Set
    End Property

    Private _Quantity As Integer
    Public Property Quantity() As Integer
        Get
            Return _Quantity
        End Get
        Set(ByVal value As Integer)
            _Quantity = value
        End Set
    End Property

    Private _unitPrice As Decimal
    Public Property unitPrice() As Decimal
        Get
            Return _unitPrice
        End Get
        Set(ByVal value As Decimal)
            _unitPrice = value
        End Set
    End Property

    Private _unitInStock As Integer
    Public Property unitInStock() As Integer
        Get
            Return _unitInStock
        End Get
        Set(ByVal value As Integer)
            _unitInStock = value
        End Set
    End Property

    Private _unitOnOrder As Integer
    Public Property unitOnOrder() As Integer
        Get
            Return _unitOnOrder
        End Get
        Set(ByVal value As Integer)
            _unitOnOrder = value
        End Set
    End Property

    Private _reorderLevel As Integer
    Public Property reorderLevel() As Integer
        Get
            Return _reorderLevel
        End Get
        Set(ByVal value As Integer)
            _reorderLevel = value
        End Set
    End Property

    Private _Status As Boolean
    Public Property Status() As Boolean
        Get
            Return _Status
        End Get
        Set(ByVal value As Boolean)
            _Status = value
        End Set
    End Property


    'extra property
    Private _DiscountedPrice As Decimal
    Public Property DiscountedPrice() As Decimal
        Get
            Return _DiscountedPrice
        End Get
        Set(ByVal value As Decimal)
            _DiscountedPrice = value
        End Set
    End Property

    Private _ImageUrl As String
    Public Property ImageUrl() As String
        Get
            Return _ImageUrl
        End Get
        Set(ByVal value As String)
            _ImageUrl = value
        End Set
    End Property




End Class
