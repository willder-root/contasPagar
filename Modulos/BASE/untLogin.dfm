inherited frmLogin: TfrmLogin
  Left = 755
  Top = 342
  Width = 392
  Height = 270
  Caption = 'Login'
  Position = poScreenCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object lblUsuario: TsLabel [0]
    Left = 90
    Top = 56
    Width = 54
    Height = 16
    Caption = 'Usu'#225'rio:'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object lblSenha: TsLabel [1]
    Left = 90
    Top = 106
    Width = 44
    Height = 16
    Caption = 'Senha:'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object edtUsuario: TsEdit [2]
    Left = 90
    Top = 72
    Width = 204
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtSenha: TsEdit [3]
    Left = 89
    Top = 120
    Width = 205
    Height = 21
    TabOrder = 1
  end
  object sBitBtn1: TsBitBtn [4]
    Left = 92
    Top = 168
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkOK
  end
  object sBitBtn2: TsBitBtn [5]
    Left = 218
    Top = 168
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkCancel
  end
  inherited sSkinManager1: TsSkinManager
    IsDefault = False
    Left = 8
    Top = 8
  end
end
