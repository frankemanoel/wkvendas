object SDIAppForm: TSDIAppForm
  Left = 197
  Top = 111
  Caption = 'SDI Application'
  ClientHeight = 541
  ClientWidth = 904
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 16
  object StatusBar: TStatusBar
    Left = 0
    Top = 522
    Width = 904
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    AutoHint = True
    Panels = <>
    SimplePanel = True
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 152
    object File1: TMenuItem
      Caption = '&Vendas'
      Hint = 'File related commands'
      object FileNewItem: TMenuItem
        Caption = '&Pedidos'
        Hint = 'New|Create a new file'
        ImageIndex = 6
        ShortCut = 16462
        OnClick = FileNew1Execute
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object FileExitItem: TMenuItem
        Caption = 'E&xit'
        Hint = 'Exit|Exit application'
        OnClick = FileExit1Execute
      end
    end
  end
end
