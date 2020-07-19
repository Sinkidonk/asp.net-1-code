
Partial Class Demos_Source
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Server.Transfer("Target.aspx?Test=SomeValue")
    End Sub
End Class
