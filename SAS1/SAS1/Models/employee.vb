Public Class employees
    Private _employeeID As Integer
    Public Property employeeID() As Integer
        Get
            Return _employeeID
        End Get
        Set(ByVal value As Integer)
            _employeeID = value
        End Set
    End Property

    Private _lastName As String
    Public Property lastName() As String
        Get
            Return _lastName
        End Get
        Set(ByVal value As String)
            _lastName = value
        End Set
    End Property

    Private _firstName As String
    Public Property firstName() As String
        Get
            Return _firstName
        End Get
        Set(ByVal value As String)
            _firstName = value
        End Set
    End Property

    Private _birthDate As Date
    Public Property birthDate() As Date
        Get
            Return _birthDate
        End Get
        Set(ByVal value As Date)
            _birthDate = value
        End Set
    End Property

    Private _title As String
    Public Property title() As String
        Get
            Return _title
        End Get
        Set(ByVal value As String)
            _title = value
        End Set
    End Property

    Private _hireDate As Date
    Public Property hireDate() As Date
        Get
            Return _hireDate
        End Get
        Set(ByVal value As Date)
            _hireDate = value
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

    Private _homeNumber As Integer
    Public Property homeNumber() As Integer
        Get
            Return _homeNumber
        End Get
        Set(ByVal value As Integer)
            _homeNumber = value
        End Set
    End Property

    Private _email As String
    Public Property email() As String
        Get
            Return _email
        End Get
        Set(ByVal value As String)
            _email = value
        End Set
    End Property

    Private _notes As String
    Public Property notes() As String
        Get
            Return _notes
        End Get
        Set(ByVal value As String)
            _notes = value
        End Set
    End Property

    Private _UserID As String
    Public Property UserID() As String
        Get
            Return _UserID
        End Get
        Set(ByVal value As String)
            _UserID = value
        End Set
    End Property


End Class
