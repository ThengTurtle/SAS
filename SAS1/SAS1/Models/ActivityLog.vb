Public Class ActivityLog

    Private _Act_ID As Integer
    Public Property Act_ID() As Integer
        Get
            Return _Act_ID
        End Get
        Set(ByVal value As Integer)
            _Act_ID = value
        End Set
    End Property

    Private _Description As String
    Public Property Description() As String
        Get
            Return _Description
        End Get
        Set(ByVal value As String)
            _Description = value
        End Set
    End Property

    Private _DateTime As Date
    Public Property DateTime() As Date
        Get
            Return _DateTime
        End Get
        Set(ByVal value As Date)
            _DateTime = value
        End Set
    End Property


End Class
