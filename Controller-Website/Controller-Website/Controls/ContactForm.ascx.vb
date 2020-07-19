
Partial Class Controls_ContactForm
    Inherits System.Web.UI.UserControl

    Protected Sub CustomValidator1_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        If Not String.IsNullOrEmpty(Phone.Text) Then
            args.IsValid = True
        Else
            args.IsValid = False
        End If
    End Sub
End Class
