Public Class Form1
    Private Sub hola_click(Sender As Object, e As EventArgs) Handles Button1.Click
        Dim i As Integer
        Dim resultado As Integer
        resultado = 0
        For i = 0 To 100
            resultado = resultado + i
        Next i
        TextBox1.Text = resultado
    End Sub

    Private Sub Button1_click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim i As Integer
        Dim resultado As Integer
        resultado = 0
        i = 1
        Do While i <= 100
            If i Mod 2 = 0 Then
                resultado = resultado + i
            End If
            i = i + 1

        Loop
        TextBox1.Text = resultado
    End Sub
    Private Sub Button3_click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim i As Integer
        Dim resultado As Long
        resultado = 0
        i = 1
        While i <= 100
            If i Mod 2 = 0 Then
                resultado = resultado + (i * 2)
            Else
                If i Mod 5 = 0 Then
                    resultado = resultado - 5
                Else
                    resultado = resultado + i
                End If
            End If
            i = i + 1
        End While
        TextBox1.Text = resultado
    End Sub
End Class
