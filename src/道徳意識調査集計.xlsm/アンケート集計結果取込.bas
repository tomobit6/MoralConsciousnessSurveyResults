Attribute VB_Name = "アンケート集計結果取込"
Option Explicit

Sub 集計結果取り込み()
    Dim data_book As String
    Dim Grade As String
    Dim wb As Workbook
    Dim flag As Boolean
    Dim i As Long
    Dim C_row As Long
    Dim YC_row As Long
    Dim YB_row As Long
    Dim B_row As Long

     ' 道徳意識調査のブックを検索
     For Each wb In Workbooks
        If wb.Name Like "道徳意識調査（*" Then ' 名前が「道徳意識調査（」で始まるブックを選択。部分一致を判定する場合は「＝」ではなくLike演算子
            flag = True
            Exit For
        End If
     Next wb
     
     '対象ブックが見つかった場合
     If flag = True Then
        data_book = wb.Name
        Grade = Mid(data_book, 8, 8) ' ブック名からGradleを取得「道徳意識調査（」の後の8文字。mid関数はmid(文字列,切り出す開始文字,切り出す文字数）
        
        For i = 3 To wb.Worksheets(1).Cells(1, Columns.Count).End(xlToLeft).Column
            With wb.Worksheets(1)
                C_row = WorksheetFunction.CountIf(.Range(.Cells(2, i), .Cells(.Cells(Rows.Count, 1).End(xlUp).Row, i)), "そう思う（できている）") ' i問目のそう思うの数を数えてC_rowに代入
                YC_row = WorksheetFunction.CountIf(.Range(.Cells(2, i), .Cells(.Cells(Rows.Count, 1).End(xlUp).Row, i)), "どちらかといえばそう思う（できている）")
                YB_row = WorksheetFunction.CountIf(.Range(.Cells(2, i), .Cells(.Cells(Rows.Count, 1).End(xlUp).Row, i)), "どちらかといえばそう思わない（できていない）")
                B_row = WorksheetFunction.CountIf(.Range(.Cells(2, i), .Cells(.Cells(Rows.Count, 1).End(xlUp).Row, i)), "そう思わない（できていない）")
            End With
        
            With ThisWorkbook.Sheets(Grade)
                .Cells(i + 1, 4).Value = C_row
                .Cells(i + 1, 5).Value = YC_row
                .Cells(i + 1, 6).Value = YB_row
                .Cells(i + 1, 7).Value = B_row
            End With
        Next i
        
        ThisWorkbook.Sheets(Grade).Cells(1, 8).Value = WorksheetFunction.CountA(wb.Worksheets(1).Range("A:A")) - 1
            
        '作業処理を見せない
        Application.ScreenUpdating = False
        wb.Close
        
        MsgBox "データを正常に取り込みました。"
     Else
        MsgBox "道徳意識調査の結果データを開いてください。"
     End If
End Sub
