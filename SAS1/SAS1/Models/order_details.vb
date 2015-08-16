Public Class order_details
    Private _orderID As Integer
    Public Property orderID() As Integer
        Get
            Return _orderID
        End Get
        Set(ByVal value As Integer)
            _orderID = value
        End Set
    End Property

    Private _productID As Integer
    Public Property productID() As Integer
        Get
            Return _productID
        End Get
        Set(ByVal value As Integer)
            _productID = value
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

    Private _quantity As Integer
    Public Property quantity() As Integer
        Get
            Return _quantity
        End Get
        Set(ByVal value As Integer)
            _quantity = value
        End Set
    End Property

    Private _discount As Decimal
    Public Property discount() As Decimal
        Get
            Return _discount
        End Get
        Set(ByVal value As Decimal)
            _discount = value
        End Set
    End Property


End Class
