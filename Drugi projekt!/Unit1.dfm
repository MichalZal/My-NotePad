object Form1: TForm1
  Left = 514
  Top = 119
  Width = 418
  Height = 344
  Caption = 'Muj notatnik'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Tresc: TMemo
    Left = 0
    Top = 0
    Width = 402
    Height = 285
    Align = alClient
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Noto Mono'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    OnKeyDown = TrescKeyDown
  end
  object MainMenu1: TMainMenu
    Left = 432
    Top = 24
    object Plik1: TMenuItem
      Caption = '&Plik'
      object Nowy1: TMenuItem
        Caption = '&Nowy'
        OnClick = Nowy1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Otwrz1: TMenuItem
        Caption = '&Otw'#243'rz'
        OnClick = Otwrz1Click
      end
      object N2: TMenuItem
        Caption = 'Za&pisz   Ctrl+S'
        OnClick = N2Click
      end
      object Zapiszjako1: TMenuItem
        Caption = 'Zapi&sz jako'
        OnClick = Zapiszjako1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Zakocz1: TMenuItem
        Caption = 'Zako'#324'&cz'
        OnClick = Zakocz1Click
      end
    end
    object Edycja1: TMenuItem
      Caption = '&Edycja'
      object WytnijCtrlx1: TMenuItem
        Caption = '&Wytnij   Ctrl+x'
        OnClick = WytnijCtrlx1Click
      end
      object KopiujCtrlc1: TMenuItem
        Caption = '&Kopiuj   Ctrl+c'
        OnClick = KopiujCtrlc1Click
      end
      object WklejCtrlv1: TMenuItem
        Caption = '&Wklej    Ctrl+v'
        OnClick = WklejCtrlv1Click
      end
      object ZaznaczCtrlA1: TMenuItem
        Caption = 'Zaznacz Ctrl+A'
        OnClick = ZaznaczCtrlA1Click
      end
    end
    object Fromat1: TMenuItem
      Caption = '&Fromat'
      object Zawijaniewierszy1: TMenuItem
        Caption = '&Zawijanie wierszy'
        Checked = True
        OnClick = Zawijaniewierszy1Click
      end
      object Czcionka1: TMenuItem
        Caption = '&Czcionka'
        OnClick = Czcionka1Click
      end
    end
    object Pomoc1: TMenuItem
      Caption = 'P&omoc'
      object Informacje1: TMenuItem
        Caption = 'I&nformacje'
        object Oprogramie1: TMenuItem
          Caption = 'O p&rogramie'
          OnClick = Oprogramie1Click
        end
        object Zapraszammojomstrone1: TMenuItem
          Caption = 'Zapraszam na strone'
          OnClick = Zapraszammojomstrone1Click
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Pliki tekstowe .txt|*.txt|Wszystkie pliki|*.*'
    Left = 400
    Top = 24
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Plik tekstowy (,txt)|*.txt|Wszystkie pliki |*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 368
    Top = 24
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 336
    Top = 24
  end
end
