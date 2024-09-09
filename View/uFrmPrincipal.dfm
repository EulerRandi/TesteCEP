object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Teste - Euler Randi Coelho'
  ClientHeight = 306
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LblCEP: TLabel
    Left = 16
    Top = 22
    Width = 21
    Height = 15
    Caption = 'CEP'
  end
  object LblLogradouro: TLabel
    Left = 17
    Top = 80
    Width = 62
    Height = 15
    Caption = 'Logradouro'
  end
  object LblComplemento: TLabel
    Left = 17
    Top = 138
    Width = 77
    Height = 15
    Caption = 'Complemento'
  end
  object LblBairro: TLabel
    Left = 271
    Top = 138
    Width = 31
    Height = 15
    Caption = 'Bairro'
  end
  object LblCidade: TLabel
    Left = 17
    Top = 201
    Width = 37
    Height = 15
    Caption = 'Cidade'
  end
  object LblEstado: TLabel
    Left = 345
    Top = 201
    Width = 35
    Height = 15
    Caption = 'Estado'
  end
  object SBtnPesqCEP: TSpeedButton
    Left = 112
    Top = 42
    Width = 25
    Height = 25
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000EEECE8CCC3B7
      F7F5F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCDC3B8D5C7B5C2B6A8F8F7F6FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F5F4C4B7A9
      D4C6B3C2B7A7FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF9F8F7C3B8A9D2C5B2C3B9A9FBFAF9FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FBFAF9C5B9ACD1C4B1C5BAAAFCFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFBC5BAABCDC0AEC6BAADFA
      F9F9DAD2C8D7CABAD7CAB8D6C9BAE0DAD1FFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDFCFCC6BBAFC8BBA8C6B6A0F8E6CBFFEDD1FFEDD1FFEDD1F0DF
      C4CFC1B1FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAF8C7B5A2FF
      EDD1FFEDD1FFEDD1FFEDD1FFEDD1FFEDD1FCEACED0C3B4FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFDAD1C7F8E6CBFFEDD1FFEDD1FFEDD1FFEDD1FFEDD1FFED
      D1FFEDD1E7D7BFEAE6E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7CABBFFEDD1FF
      EDD1FFEDD1FFEDD1FFEDD1FFEDD1FFEDD1FFEDD1FFEDD0D7CDC0FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFD7CAB8FFEDD1FFEDD1FFEDD1FFEDD1FFEDD1FFEDD1FFED
      D1FFEDD1FFEDD1D7CBBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5CAB9FFEDD1FF
      EDD1FFEDD1FFEDD1FFEDD1FFEDD1FFEDD1FFEDD1FDEBD0D8CEC2FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFE0D9D0F2E0C6FFEDD1FFEDD1FFEDD1FFEDD1FFEDD1FFED
      D1FFEDD1E1D1B9F1EFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFECEC2B2FC
      EACEFFEDD1FFEDD1FFEDD1FFEDD1FFEDD1F5E3CAD5CBBEFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF9F8F7D0C4B3EAD8BFFFEDD1FFEDD1FEECD0E1D1
      B9D5CBBEFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE9E5E0D7CDC0D7CCBED7CEC1F1EEEAFFFFFFFFFFFFFFFFFF}
    OnClick = SBtnPesqCEPClick
  end
  object EdtCEP: TMaskEdit
    Left = 17
    Top = 43
    Width = 96
    Height = 23
    EditMask = '99\.999\-999;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '  .   -   '
  end
  object EdtLogradouro: TEdit
    Left = 16
    Top = 101
    Width = 527
    Height = 23
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 1
  end
  object EdtComplemento: TEdit
    Left = 17
    Top = 159
    Width = 248
    Height = 23
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 2
  end
  object EdtBairro: TEdit
    Left = 271
    Top = 159
    Width = 272
    Height = 23
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 3
  end
  object EdtCidade: TEdit
    Left = 17
    Top = 222
    Width = 314
    Height = 23
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 4
  end
  object EdtEstado: TEdit
    Left = 345
    Top = 222
    Width = 198
    Height = 23
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 5
  end
  object PnlAction: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 262
    Width = 601
    Height = 41
    Align = alBottom
    Padding.Left = 8
    Padding.Top = 8
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 6
    object BtnFechar: TButton
      Left = 521
      Top = 9
      Width = 75
      Height = 27
      Align = alRight
      Cancel = True
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = BtnFecharClick
    end
  end
end
