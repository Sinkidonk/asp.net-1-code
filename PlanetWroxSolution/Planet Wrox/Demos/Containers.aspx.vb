﻿
Partial Class Demos_Default
    Inherits BasePage

    Protected Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs)
        Panel1.Visible = CheckBox1.Checked
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Result.Text = "Your name is " & YourName.Text
        Result.Text &= "<br />Your favorite language is " &
        FavoriteLanguage.SelectedValue
    End Sub
End Class
