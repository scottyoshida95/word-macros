Sub Macro1()
'
' Macro1 Macro
'
'
    Selection.WholeStory
    With ActiveDocument.Styles(wdStyleNormal).Font
        If .NameFarEast = .NameAscii Then
            .NameAscii = ""
        End If
        .NameFarEast = ""
    End With
    With ActiveDocument.PageSetup
        .LineNumbering.Active = False
        .Orientation = wdOrientPortrait
        .TopMargin = InchesToPoints(0.75)
        .BottomMargin = InchesToPoints(1)
        .LeftMargin = InchesToPoints(0.62)
        .RightMargin = InchesToPoints(0.62)
        .Gutter = InchesToPoints(0)
        .HeaderDistance = InchesToPoints(0.5)
        .FooterDistance = InchesToPoints(0.5)
        .PageWidth = InchesToPoints(8.5)
        .PageHeight = InchesToPoints(11)
        .FirstPageTray = wdPrinterDefaultBin
        .OtherPagesTray = wdPrinterDefaultBin
        .SectionStart = wdSectionNewPage
        .OddAndEvenPagesHeaderFooter = False
        .DifferentFirstPageHeaderFooter = False
        .VerticalAlignment = wdAlignVerticalTop
        .SuppressEndnotes = False
        .MirrorMargins = False
        .TwoPagesOnOne = False
        .BookFoldPrinting = False
        .BookFoldRevPrinting = False
        .BookFoldPrintingSheets = 1
        .GutterPos = wdGutterPosLeft
    End With
    With Selection.ParagraphFormat
        .LeftIndent = InchesToPoints(0)
        .RightIndent = InchesToPoints(0)
        .SpaceBefore = 0
        .SpaceBeforeAuto = False
        .SpaceAfter = 6
        .SpaceAfterAuto = False
        .LineSpacingRule = wdLineSpaceSingle
        .Alignment = wdAlignParagraphLeft
        .WidowControl = True
        .KeepWithNext = False
        .KeepTogether = False
        .PageBreakBefore = False
        .NoLineNumber = False
        .Hyphenation = True
        .FirstLineIndent = InchesToPoints(0)
        .OutlineLevel = wdOutlineLevelBodyText
        .CharacterUnitLeftIndent = 0
        .CharacterUnitRightIndent = 0
        .CharacterUnitFirstLineIndent = 0
        .LineUnitBefore = 0
        .LineUnitAfter = 0
        .MirrorIndents = False
        .TextboxTightWrap = wdTightNone
        .CollapsedByDefault = False
    End With
    Selection.WholeStory
    If ActiveWindow.View.SplitSpecial <> wdPaneNone Then
        ActiveWindow.Panes(2).Close
    End If
    If ActiveWindow.ActivePane.View.Type <> wdPrintView Then
        ActiveWindow.ActivePane.View.Type = wdPrintView
    End If
    With ActiveDocument.PageSetup.TextColumns
        .SetCount NumColumns:=2
        .EvenlySpaced = True
        .LineBetween = False
        .Width = InchesToPoints(3.26)
        .Spacing = InchesToPoints(0.74)
    End With
    Selection.WholeStory
    Selection.ParagraphFormat.Alignment = wdAlignParagraphJustify
    Selection.Font.Name = "Times New Roman"
    Selection.Font.Size = 10
End Sub
Sub AuthNames()
'
' AuthNames Macro
'
'
    Selection.MoveDown Unit:=wdLine, Count:=1
    Selection.MoveUp Unit:=wdLine, Count:=1
    Selection.MoveLeft Unit:=wdCharacter, Count:=2
    Selection.MoveUp Unit:=wdLine, Count:=6
    Selection.MoveDown Unit:=wdLine, Count:=2
    Selection.MoveLeft Unit:=wdCharacter, Count:=44
    Selection.MoveUp Unit:=wdLine, Count:=3
    Selection.MoveRight Unit:=wdWord, Count:=10, Extend:=wdExtend
    Selection.Font.Size = 11
    Selection.MoveDown Unit:=wdParagraph, Count:=1, Extend:=wdExtend
    Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
    Selection.MoveLeft Unit:=wdCharacter, Count:=1
    Selection.MoveDown Unit:=wdLine, Count:=1
    Selection.MoveRight Unit:=wdCharacter, Count:=6
    Selection.MoveDown Unit:=wdParagraph, Count:=1, Extend:=wdExtend
    Selection.Font.Size = 10
End Sub
