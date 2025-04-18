object demo_singlemove: Tdemo_singlemove
  Left = 769
  Top = 162
  Width = 534
  Height = 359
  Caption = #23450#38271#36816#21160
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 24
    Top = 9
    Width = 89
    Height = 20
    AutoSize = False
    Caption = #30446#26631#20301#32622
  end
  object Label2: TLabel
    Left = 27
    Top = 44
    Width = 89
    Height = 20
    AutoSize = False
    Caption = #36215#22987#36895#24230
  end
  object Label3: TLabel
    Left = 27
    Top = 82
    Width = 89
    Height = 20
    AutoSize = False
    Caption = #36816#34892#36895#24230
  end
  object Label4: TLabel
    Left = 27
    Top = 120
    Width = 89
    Height = 20
    AutoSize = False
    Caption = #21152#36895#26102#38388
  end
  object Label5: TLabel
    Left = 27
    Top = 196
    Width = 89
    Height = 20
    AutoSize = False
    Caption = #24403#21069#20301#32622
  end
  object Label6: TLabel
    Left = 27
    Top = 232
    Width = 89
    Height = 20
    AutoSize = False
    Caption = #24403#21069#36895#24230
  end
  object Label7: TLabel
    Left = 27
    Top = 272
    Width = 89
    Height = 20
    AutoSize = False
    Caption = #24403#21069#29366#24577
  end
  object Label8: TLabel
    Left = 19
    Top = 160
    Width = 102
    Height = 20
    AutoSize = False
    Caption = 'S'#27573#26102#38388'ms'
  end
  object GroupBox1: TGroupBox
    Left = 232
    Top = 24
    Width = 249
    Height = 57
    Caption = #36724#21495#36873#25321
    TabOrder = 4
    object RadioX: TRadioButton
      Left = 16
      Top = 24
      Width = 33
      Height = 25
      Caption = 'X'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadioU: TRadioButton
      Left = 184
      Top = 24
      Width = 33
      Height = 25
      Caption = 'U'
      TabOrder = 1
    end
    object RadioZ: TRadioButton
      Left = 128
      Top = 24
      Width = 33
      Height = 25
      Caption = 'Z'
      TabOrder = 2
    end
    object RadioY: TRadioButton
      Left = 72
      Top = 24
      Width = 33
      Height = 25
      Caption = 'Y'
      TabOrder = 3
    end
  end
  object Stop: TButton
    Left = 328
    Top = 112
    Width = 73
    Height = 49
    Caption = #20572#27490
    TabOrder = 0
    OnClick = StopClick
  end
  object Run: TButton
    Left = 232
    Top = 112
    Width = 73
    Height = 49
    Caption = #21551#21160
    TabOrder = 1
    OnClick = RunClick
  end
  object PositionSeting: TEdit
    Left = 122
    Top = 8
    Width = 81
    Height = 28
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    TabOrder = 2
    Text = '2000'
  end
  object StartSpeed: TEdit
    Left = 122
    Top = 42
    Width = 81
    Height = 28
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    TabOrder = 3
    Text = '500'
  end
  object RunSpeed: TEdit
    Left = 122
    Top = 80
    Width = 81
    Height = 28
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    TabOrder = 5
    Text = '1000'
  end
  object AccTime: TEdit
    Left = 122
    Top = 120
    Width = 81
    Height = 28
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    TabOrder = 6
    Text = '0.5'
  end
  object CurrentPosX: TEdit
    Left = 122
    Top = 192
    Width = 81
    Height = 28
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    TabOrder = 7
    Text = '0'
  end
  object CurrentPosY: TEdit
    Left = 216
    Top = 192
    Width = 81
    Height = 28
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    TabOrder = 8
    Text = '0'
  end
  object CurrentPosZ: TEdit
    Left = 312
    Top = 192
    Width = 81
    Height = 28
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    TabOrder = 9
    Text = '0'
  end
  object CurrentPosU: TEdit
    Left = 408
    Top = 192
    Width = 81
    Height = 28
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    TabOrder = 10
    Text = '0'
  end
  object CurrentSpdX: TEdit
    Left = 122
    Top = 232
    Width = 81
    Height = 28
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    TabOrder = 11
    Text = '0'
  end
  object CurrentSpdY: TEdit
    Left = 216
    Top = 232
    Width = 81
    Height = 28
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    TabOrder = 12
    Text = '0'
  end
  object CurrentSpdZ: TEdit
    Left = 312
    Top = 232
    Width = 81
    Height = 28
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    TabOrder = 13
    Text = '0'
  end
  object CurrentSpdU: TEdit
    Left = 408
    Top = 232
    Width = 81
    Height = 28
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    TabOrder = 14
    Text = '0'
  end
  object Button1: TButton
    Left = 424
    Top = 112
    Width = 73
    Height = 49
    Caption = #28165#38646
    TabOrder = 15
    OnClick = Button1Click
  end
  object CHECKX: TEdit
    Left = 120
    Top = 272
    Width = 81
    Height = 28
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    TabOrder = 16
    Text = '0'
  end
  object CHECKY: TEdit
    Left = 216
    Top = 272
    Width = 81
    Height = 28
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    TabOrder = 17
    Text = '0'
  end
  object CHECKZ: TEdit
    Left = 312
    Top = 272
    Width = 81
    Height = 28
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    TabOrder = 18
    Text = '0'
  end
  object CHECKU: TEdit
    Left = 408
    Top = 272
    Width = 81
    Height = 28
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    TabOrder = 19
    Text = '0'
  end
  object SMTIME: TEdit
    Left = 120
    Top = 152
    Width = 81
    Height = 28
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    TabOrder = 20
    Text = '0'
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 632
    Top = 112
  end
end
