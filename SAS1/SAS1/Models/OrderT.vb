Public Class OrderT
    Private _orderID As Integer
    Public Property orderID() As Integer
        Get
            Return _orderID
        End Get
        Set(ByVal value As Integer)
            _orderID = value
        End Set
    End Property

    Private _customerID As Integer
    Public Property customerID() As Integer
        Get
            Return _customerID
        End Get
        Set(ByVal value As Integer)
            _customerID = value
        End Set
    End Property

    Private _employeeID As Integer
    Public Property employeeID() As Integer
        Get
            Return _employeeID
        End Get
        Set(ByVal value As Integer)
            _employeeID = value
        End Set
    End Property

    Private _orderDate As Date
    Public Property orderDate() As Date
        Get
            Return _orderDate
        End Get
        Set(ByVal value As Date)
            _orderDate = value
        End Set
    End Property

    Private _Status As String
    Public Property Status() As String
        Get
            Return _Status
        End Get
        Set(ByVal value As String)
            _Status = value
        End Set
    End Property


    'extra properties
    Private _CustomerName As String
    Public Property CustomerName() As String
        Get
            Return _CustomerName
        End Get
        Set(ByVal value As String)
            _CustomerName = value
        End Set
    End Property

    Private _UnitPrice As Decimal
    Public Property UnitPrice() As Decimal
        Get
            Return _UnitPrice
        End Get
        Set(ByVal value As Decimal)
            _UnitPrice = value
        End Set
    End Property



End Class
