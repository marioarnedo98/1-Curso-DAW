Public Class Form1
    Private resultado As Double
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If TextBox1.Text <> "" And TextBox2.Text <> "" Then
            resultado = CDbl(TextBox1.Text) + CDbl(TextBox2.Text)
            TextBox3.Text = resultado
        Else
            MsgBox("Introducir números antes de operar", MsgBoxStyle.Exclamation, "Aviso")
        End If
    End Sub
    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        If TextBox1.Text <> "" And TextBox2.Text <> "" Then
            resultado = CDbl(TextBox1.Text) - CDbl(TextBox2.Text)
            TextBox3.Text = resultado
        Else
            MsgBox("Introducir números antes de operar", MsgBoxStyle.Exclamation, "Aviso")
        End If
    End Sub
    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        If TextBox1.Text <> "" And TextBox2.Text <> "" Then
            resultado = CDbl(TextBox1.Text) * CDbl(TextBox2.Text)
            TextBox3.Text = resultado
        Else
            MsgBox("Introducir números antes de operar", MsgBoxStyle.Exclamation, "Aviso")
        End If
    End Sub
    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        If TextBox1.Text <> "" And TextBox2.Text <> "" Then
            If TextBox2.Text <> 0 Then
                resultado = CDbl(TextBox1.Text) / CDbl(TextBox2.Text)
                TextBox3.Text = resultado
            Else
                MsgBox("El dividendo debe ser distinto de cero", MsgBoxStyle.Exclamation, "Aviso")
                TextBox2.Text = ""
            End If
        Else
            MsgBox("Introducir números antes de operar", MsgBoxStyle.Exclamation, "Aviso")
        End If
    End Sub
    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        If TextBox1.Text <> "" And TextBox2.Text <> "" Then
            resultado = (CDbl(TextBox1.Text) * CDbl(TextBox2.Text)) / 100
            TextBox3.Text = resultado
        Else
            MsgBox("Introducir números antes de operar", MsgBoxStyle.Exclamation, "Aviso")
        End If
    End Sub
    Private Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox1.Focus()
    End Sub
    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        If Button6.BackColor = Color.Red Then
            Button6.BackColor = Color.Green
            TextBox1.Enabled = True
            TextBox2.Enabled = True
            TextBox3.Enabled = True
            Button1.Enabled = True
            Button2.Enabled = True
            Button3.Enabled = True
            Button4.Enabled = True
            Button5.Enabled = True
            TextBox1.Focus()
            Button6.Text = "ON"
        Else
            Button6.BackColor = Color.Red
            TextBox1.Enabled = False
            TextBox2.Enabled = False
            TextBox3.Enabled = False
            Button1.Enabled = False
            Button2.Enabled = False
            Button3.Enabled = False
            Button4.Enabled = False
            Button5.Enabled = False
            Button6.Text = "OFF"
        End If
    End Sub
    Private Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        Me.Close()
    End Sub
End Class
