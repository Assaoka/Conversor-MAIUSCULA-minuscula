Attribute VB_Name = "M�dulo11"
Sub ExcelConversor_minuscula_MAIUSCULA()
' Define as letras min�sculas e suas correspondentes mai�sculas
    letrasMai = "A���BC�DE��FGHI��JKLMNO���PQRSTU���VWXYZ"
    letrasMin = "a���bc�de��fghi��jklmno���pqrstu���vwxyz"
    N = 1
    
' Desligando outros processos para aumentar o desempenho
    Application.Calculation = xlCalculationManual
    Application.ScreenUpdating = False
    
' Loop para converter
    Do While lmin <> "z"
        LMAI = Right(Left(letrasMai, N), 1)
        lmin = Right(Left(letrasMin, N), 1)
        Cells.Replace What:=lmin, Replacement:=LMAI, LookAt:=xlPart, SearchOrder:=xlByRows, MatchCase:=False, SearchFormat:=False, ReplaceFormat:=False
        N = N + 1
    Loop
    
' Ligando processos novamente
    Application.Calculation = xlCalculationAutomatic
    Application.ScreenUpdating = True
End Sub

Sub ExcelConversor_MAIUSCULA_minuscula()
' Define as letras min�sculas e suas correspondentes mai�sculas
    letrasMai = "A���BC�DE��FGHI��JKLMNO���PQRSTU���VWXYZ"
    letrasMin = "a���bc�de��fghi��jklmno���pqrstu���vwxyz"
    N = 1
    
' Desligando outros processos para aumentar o desempenho
    Application.Calculation = xlCalculationManual
    Application.ScreenUpdating = False
    
' Loop para converter
    Do While lmin <> "z"
        LMAI = Right(Left(letrasMai, N), 1)
        lmin = Right(Left(letrasMin, N), 1)
        Cells.Replace What:=LMAI, Replacement:=lmin, LookAt:=xlPart, SearchOrder:=xlByRows, MatchCase:=False, SearchFormat:=False, ReplaceFormat:=False
        N = N + 1
    Loop
    
' Ligando processos novamente
    Application.Calculation = xlCalculationAutomatic
    Application.ScreenUpdating = True
End Sub
