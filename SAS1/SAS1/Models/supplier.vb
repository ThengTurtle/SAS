Public Class supplier
    Private _supplierID As Integer
    Public Property supplierID() As Integer
        Get
            Return _supplierID
        End Get
        Set(ByVal value As Integer)
            _supplierID = value
        End Set
    End Property

    Private _companyName As String
    Public Property companyName() As String
        Get
            Return _companyName
        End Get
        Set(ByVal value As String)
            _companyName = value
        End Set
    End Property

    Private _contactName As String
    Public Property contactName() As String
        Get
            Return _contactName
        End Get
        Set(ByVal value As String)
            _contactName = value
        End Set
    End Property

    Private _contactTitle As String
    Public Property contactTitle() As String
        Get
            Return _contactTitle
        End Get
        Set(ByVal value As String)
            _contactTitle = value
        End Set
    End Property

    Private _address As String
    Public Property address() As String
        Get
            Return _address
        End Get
        Set(ByVal value As String)
            _address = value
        End Set
    End Property

    Private _city As String
    Public Property city() As String
        Get
            Return _city
        End Get
        Set(ByVal value As String)
            _city = value
        End Set
    End Property

    Private _state As String
    Public Property state() As String
        Get
            Return _state
        End Get
        Set(ByVal value As String)
            _state = value
        End Set
    End Property

    Private _postalCode As Integer
    Public Property postalCode() As Integer
        Get
            Return _postalCode
        End Get
        Set(ByVal value As Integer)
            _postalCode = value
        End Set
    End Property

    Private _phoneNumber As Integer
    Public Property phoneNumber() As Integer
        Get
            Return _phoneNumber
        End Get
        Set(ByVal value As Integer)
            _phoneNumber = value
        End Set
    End Property

    Private _fax As Integer
    Public Property fax() As Integer
        Get
            Return _fax
        End Get
        Set(ByVal value As Integer)
            _fax = value
        End Set
    End Property



End Class
