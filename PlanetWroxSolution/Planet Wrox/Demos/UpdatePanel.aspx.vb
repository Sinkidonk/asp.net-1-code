
Partial Class Demos_UpdatePanel_Demo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = System.DateTime.Now.ToString()
    End Sub
End Class
