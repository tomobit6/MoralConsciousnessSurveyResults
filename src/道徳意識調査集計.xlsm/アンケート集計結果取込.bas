Attribute VB_Name = "�A���P�[�g�W�v���ʎ捞"
Option Explicit

Sub �W�v���ʎ�荞��()
    Dim data_book As String
    Dim Grade As String
    Dim wb As Workbook
    Dim flag As Boolean
    Dim i As Long
    Dim C_row As Long
    Dim YC_row As Long
    Dim YB_row As Long
    Dim B_row As Long

     ' �����ӎ������̃u�b�N������
     For Each wb In Workbooks
        If wb.Name Like "�����ӎ������i*" Then ' ���O���u�����ӎ������i�v�Ŏn�܂�u�b�N��I���B������v�𔻒肷��ꍇ�́u���v�ł͂Ȃ�Like���Z�q
            flag = True
            Exit For
        End If
     Next wb
     
     '�Ώۃu�b�N�����������ꍇ
     If flag = True Then
        data_book = wb.Name
        Grade = Mid(data_book, 8, 8) ' �u�b�N������Gradle���擾�u�����ӎ������i�v�̌��8�����Bmid�֐���mid(������,�؂�o���J�n����,�؂�o���������j
        
        For i = 3 To wb.Worksheets(1).Cells(1, Columns.Count).End(xlToLeft).Column
            With wb.Worksheets(1)
                C_row = WorksheetFunction.CountIf(.Range(.Cells(2, i), .Cells(.Cells(Rows.Count, 1).End(xlUp).Row, i)), "�����v���i�ł��Ă���j") ' i��ڂ̂����v���̐��𐔂���C_row�ɑ��
                YC_row = WorksheetFunction.CountIf(.Range(.Cells(2, i), .Cells(.Cells(Rows.Count, 1).End(xlUp).Row, i)), "�ǂ��炩�Ƃ����΂����v���i�ł��Ă���j")
                YB_row = WorksheetFunction.CountIf(.Range(.Cells(2, i), .Cells(.Cells(Rows.Count, 1).End(xlUp).Row, i)), "�ǂ��炩�Ƃ����΂����v��Ȃ��i�ł��Ă��Ȃ��j")
                B_row = WorksheetFunction.CountIf(.Range(.Cells(2, i), .Cells(.Cells(Rows.Count, 1).End(xlUp).Row, i)), "�����v��Ȃ��i�ł��Ă��Ȃ��j")
            End With
        
            With ThisWorkbook.Sheets(Grade)
                .Cells(i + 1, 4).Value = C_row
                .Cells(i + 1, 5).Value = YC_row
                .Cells(i + 1, 6).Value = YB_row
                .Cells(i + 1, 7).Value = B_row
            End With
        Next i
        
        ThisWorkbook.Sheets(Grade).Cells(1, 8).Value = WorksheetFunction.CountA(wb.Worksheets(1).Range("A:A")) - 1
            
        '��Ə����������Ȃ�
        Application.ScreenUpdating = False
        wb.Close
        
        MsgBox "�f�[�^�𐳏�Ɏ�荞�݂܂����B"
     Else
        MsgBox "�����ӎ������̌��ʃf�[�^���J���Ă��������B"
     End If
End Sub
