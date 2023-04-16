Attribute VB_Name = "M�dulo1"
Sub WordConversor_minuscula_MAIUSCULA()
' Define as letras min�sculas e suas correspondentes mai�sculas
    letrasMai = "A���BC�DE��FGHI��JKLMNO���PQRSTU���VWXYZ"
    letrasMin = "a���bc�de��fghi��jklmno���pqrstu���vwxyz"
    N = 1
    
' Desligando atualiza��o de tela para aumentar o desempenho
    Application.ScreenUpdating = False
    
' Loop para converter
    Do While lmin <> "z"
        LMAI = Right(Left(letrasMai, N), 1)
        lmin = Right(Left(letrasMin, N), 1)
        
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .Text = lmin
            .Replacement.Text = LMAI
            .Forward = True
            .Wrap = wdFindContinue
            .Format = False
            .MatchCase = True
            .MatchWholeWord = False
            .MatchWildcards = False
            .MatchSoundsLike = False
            .MatchAllWordForms = False
        End With
        Selection.Find.Execute Replace:=wdReplaceAll
                
        N = N + 1
    Loop
    
' Ligando ativa��o de tela novamente
    Application.ScreenUpdating = True
End Sub

Sub WordConversor_MAIUSCULA_minuscula()
' Define as letras min�sculas e suas correspondentes mai�sculas
    letrasMai = "A���BC�DE��FGHI��JKLMNO���PQRSTU���VWXYZ"
    letrasMin = "a���bc�de��fghi��jklmno���pqrstu���vwxyz"
    N = 1
    
' Desligando atualiza��o de tela para aumentar o desempenho
    Application.ScreenUpdating = False
    
' Loop para converter
    Do While lmin <> "z"
        LMAI = Right(Left(letrasMai, N), 1)
        lmin = Right(Left(letrasMin, N), 1)
        
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .Text = LMAI
            .Replacement.Text = lmin
            .Forward = True
            .Wrap = wdFindContinue
            .Format = False
            .MatchCase = True
            .MatchWholeWord = False
            .MatchWildcards = False
            .MatchSoundsLike = False
            .MatchAllWordForms = False
        End With
        Selection.Find.Execute Replace:=wdReplaceAll
                
        N = N + 1
    Loop
    
' Ligando ativa��o de tela novamente
    Application.ScreenUpdating = True
End Sub
