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


End Class
