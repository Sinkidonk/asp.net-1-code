Imports System.Web.Services

Partial Class Demos_WebServices
    Inherits BasePage

    <WebMethod()>
    Public Shared Function HelloWorld(name As String) As String
        Return String.Format("Hello {0}", name)
    End Function
End Class
