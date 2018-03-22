Sub rgbColorTable()

Dim A, B, C As Integer
Dim Rng1, Rng2 As Range

Set Rng1 = Range("A1")
Set Rng2 = Range("A1")

For A = 0 To 255:
    For B = 0 To 255:
        For C = 0 To 255:
            Rng2.Value = A & ", " & B & ", " & C
            Rng2.Interior.Color = RGB(A, B, C)
            Set Rng2 = Rng2.Offset(1, 0)
        Next C
    Next B
    Set Rng1 = Rng1.Offset(0, 1)
    Set Rng2 = Rng1
Next A
End Sub
