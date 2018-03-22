Sub rgbColorTable()

Dim A, B, C As Integer
Dim Rng1, Rng2, Rng3 As Range

Range("A1").Value = "R"
Range("B1").Value = "G"
Range("C1").Value = "B"

Set Rng1 = Range("A2")
Set Rng2 = Range("B2")
Set Rng3 = Range("C2")

For A = 0 To 255:
    For B = 0 To 255:
        For C = 0 To 255:
            Rng1.Value = A
            Rng2.Value = B
            Rng3.Value = C
            Set Rng1 = Rng1.Offset(1, 0)
            Set Rng2 = Rng2.Offset(1, 0)
            Set Rng3 = Rng3.Offset(1, 0)
        Next C
    Next B
    Set Rng1 = Rng1.Offset(-250, 3)
    Set Rng2 = Rng2.Offset(-250, 3)
    Set Rng3 = Rng3.Offset(-250, 3)
Next A


End Sub
