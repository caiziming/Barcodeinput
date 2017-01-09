object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #26465#30721#24405#20837
  ClientHeight = 573
  ClientWidth = 939
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 10
  Padding.Top = 10
  Padding.Right = 10
  Padding.Bottom = 10
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnDblClick = FormDblClick
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 10
    Top = 10
    Width = 919
    Height = 171
    Align = alTop
    Caption = #22522#26412#20449#24687
    TabOrder = 0
    OnClick = GroupBox1Click
    DesignSize = (
      919
      171)
    object Label10: TLabel
      Left = 35
      Top = 79
      Width = 24
      Height = 13
      Align = alCustom
      Caption = #36827#20215
    end
    object Label5: TLabel
      Left = 11
      Top = 52
      Width = 48
      Height = 13
      Align = alCustom
      Caption = #20135#21697#22823#31867
    end
    object Label1: TLabel
      Left = 23
      Top = 25
      Width = 36
      Height = 13
      Align = alCustom
      Caption = #26465#24418#30721
    end
    object Label2: TLabel
      Left = 216
      Top = 25
      Width = 48
      Height = 13
      Align = alCustom
      Caption = #20013#25991#21517#31216
    end
    object Label6: TLabel
      Left = 216
      Top = 52
      Width = 48
      Height = 13
      Align = alCustom
      Caption = #20135#21697#23567#31867
    end
    object Label3: TLabel
      Left = 420
      Top = 25
      Width = 48
      Height = 13
      Align = alCustom
      Caption = #25340#38899#20195#30721
    end
    object Label7: TLabel
      Left = 420
      Top = 52
      Width = 48
      Height = 13
      Align = alCustom
      Caption = #38144#21806#20215#26684
    end
    object Label4: TLabel
      Left = 654
      Top = 25
      Width = 24
      Height = 13
      Align = alCustom
      Caption = #21333#20301
    end
    object Label8: TLabel
      Left = 642
      Top = 52
      Width = 36
      Height = 13
      Align = alCustom
      Caption = #25209#21457#20215
    end
    object btnSave: TBitBtn
      Left = 800
      Top = 22
      Width = 106
      Height = 46
      Align = alCustom
      Caption = #20445#23384
      TabOrder = 0
      OnClick = btnSaveClick
    end
    object btnSync: TBitBtn
      Left = 800
      Top = 69
      Width = 106
      Height = 46
      Align = alCustom
      Caption = #21516#27493#21040#38144#21806#31995#32479
      TabOrder = 1
      OnClick = btnSyncClick
    end
    object GroupBox2: TGroupBox
      Left = 11
      Top = 123
      Width = 773
      Height = 42
      Caption = #26597#35810
      TabOrder = 2
      DesignSize = (
        773
        42)
      object Label11: TLabel
        Left = 12
        Top = 17
        Width = 36
        Height = 13
        Align = alCustom
        Caption = #26465#24418#30721
      end
      object Label12: TLabel
        Left = 205
        Top = 17
        Width = 48
        Height = 13
        Align = alCustom
        Caption = #20013#25991#21517#31216
      end
      object Label13: TLabel
        Left = 409
        Top = 17
        Width = 48
        Height = 13
        Align = alCustom
        Caption = #25340#38899#20195#30721
      end
      object edtBarcodeQ: TEdit
        Left = 54
        Top = 13
        Width = 134
        Height = 21
        Anchors = []
        TabOrder = 0
      end
      object edtChsQ: TEdit
        Left = 263
        Top = 13
        Width = 132
        Height = 21
        Anchors = []
        TabOrder = 1
      end
      object edtPinyinQ: TEdit
        Left = 463
        Top = 13
        Width = 153
        Height = 21
        Anchors = []
        CharCase = ecUpperCase
        TabOrder = 2
      end
      object btnQuery: TBitBtn
        Left = 622
        Top = 11
        Width = 58
        Height = 28
        Align = alCustom
        Caption = #26597#35810
        TabOrder = 3
        OnClick = btnQueryClick
      end
      object btnCancelQuery: TBitBtn
        Left = 686
        Top = 11
        Width = 84
        Height = 28
        Align = alCustom
        Caption = #21462#28040#26597#35810
        TabOrder = 4
        OnClick = btnCancelQueryClick
      end
    end
    object btnPrint: TBitBtn
      Left = 800
      Top = 116
      Width = 106
      Height = 46
      Align = alCustom
      Caption = #25171#21360#26631#31614
      TabOrder = 3
      OnClick = btnPrintClick
    end
    object cbOnLine: TCheckBox
      Left = 684
      Top = 76
      Width = 75
      Height = 17
      Caption = #32852#32447#27169#24335
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object cbPrintAll: TCheckBox
      Left = 684
      Top = 106
      Width = 97
      Height = 17
      Caption = #20840#37096#25171#21360
      TabOrder = 5
    end
    object cmbStuff: TComboBox
      Left = 274
      Top = 49
      Width = 132
      Height = 21
      ItemIndex = 0
      TabOrder = 6
      Text = #40524#40529#34507
      Items.Strings = (
        #40524#40529#34507
        #24052#26086#26408#31867
        #30333#22993#40060
        #30333#32993#23376#30340#20320
        #21253#35013#26448#26009#31867
        #36125#31867
        #28953#28900#31867
        #20912#28103#28107
        #20912#31958#31867
        #39292#24178#31867
        #33760#33821#31867
        #33609#33683#31867
        #28818#36135'   '#20854#20182#31867
        #28818#36135#31867
        #28818#36135#20854#20182#31867
        #27225#23376#31867
        #20914#35843#31867
        #32431#20928#27700#31867
        #32431#21487#21487#33026#31867
        #37255#39321#21654#21857
        #22823#35910#35843#21644#27833
        #20195#21487#21487#33026#31867
        #20195#21487#21487#33026#21046#21697#31867
        #24102#40060#31867
        #34507#31957#31867
        #28783#31665#31867
        #30005#23376#35774#22791
        #35910#24178#31867
        #35910#31867
        #35910#21046#21697#20854#20182#31867
        #30058#33540#31867
        #26041#20415#36895#39135
        #26381#35013#26381#39280#31867
        #22797#21512#35910#24178#31867
        #27204#27012#31867
        #24178#34507#31867
        #31957#28857#31867
        #31957#28857#20854#20182#31867
        #29916#23376#31867
        #32592#22836#31867
        #24191#21578#31867
        #40863#33491#33167
        #26524#20923#31867
        #26524#20923#31867' '
        #26524#28982#22909#33590
        #26524#34092#20854#20182#31867
        #26524#21619#39278#26009
        #26524#27713#31867
        #21704#23494#29916#31867
        #28023#24102#31867
        #28023#22530#26524#31867
        #28023#40092#20877#21046#21697#31867
        #28023#34299#31867
        #26680#26691#31867
        #40657#31958#31867
        #28888#28953#31867
        #28888#28900#31867
        #32418#31958#31867
        #33457#26524#33590#31867
        #33457#29983#31867
        #40644#26691#31867
        #40644#40060#31867
        #36135#26550#31867
        #40481#21046#21697#31867
        #26708#23376#31867
        #27224#23376#31867
        #33740#33735#31867
        #21654#21857#31867
        #24320#24515#26524#31867
        #21487#23572#24517#24605
        #21487#38144#36741#26009
        #21475#39321#31958#31867
        #21400#23376#31867
        #31036#30418#31867
        #26446#23376#31867
        #34746#32905#31867
        #33426#26524#31867
        #26757#23376#31867
        #29461#29492#26691#31867
        #31859#20083
        #34588#39279#26524#33071#31867
        #34588#39279#20854#20182#31867
        #26408#29916#31867
        #22902#33590#31867
        #22902#33590#29956#36873
        #26592#27308#31867
        #20957#33014#31958#31867
        #29275#20083#39278#21697
        #29275#21046#21697#31867
        #34261#31867
        #33192#21270#31867
        #33192#21270#27833#28856#31867
        #33529#26524#31867
        #33889#33796#31867
        #20854#20182
        #20854#20182#31867
        #20854#23427#31867#22411#65288#31859#37247#31867#65289
        #24039#20811#21147#31867
        #38738#29916#31867
        #32905#21046#21697#31867
        #20083#26524#31867
        #20083#37240#31867
        #20083#39278#21697#31867
        #36719#31958#31867
        #23665#26946#31867
        #35774#22791#31867
        #29983#23004#31867
        #26623#23376#31867
        #34092#33756#31867
        #29087#31881#31867
        #34223#31867
        #27700#21543#21407#26009
        #27700#20135#21697#31867
        #27700#26524#31867
        #26494#23376#31867
        #33487#25171#27700
        #32032#32905#31867
        #22609#26009#31867
        #31499#31867
        #31958#26524#31867
        #31958#26524#20854#20182#31867
        #26691#32905#31867
        #26691#23376#31867
        #25552#23376#31867
        #28155#21152#26009
        #30000#34746#31867
        #29609#20855#31958#26524#31867
        #26080#33457#26524#31867
        #22075#25171#22075#25171
        #34430#31867
        #22799#23041#22839#26524#31867
        #39321#27047#31867
        #34809#32905#31867
        #26447#33071#31867
        #26447#20161#31867
        #26447#23376#31867
        #40149#40060#31867
        #21387#29255#31958#26524
        #40493#21046#21697#31867
        #26472#26757#31867
        #33136#26524#31867
        #38134#40060#31867
        #39278#26009#31867
        #39278#26009#20854#23427#31867
        #39278#29992#27700#31867
        #21360#21047#31867
        #27185#26691#31867
        #30828#31958#31867
        #27833#28856#31867
        #40063#40060#31867
        #26586#23376#31867
        #40060#31867
        #29577#31859#31867
        #26376#39292#31867
        #36816#21160#22411#39278#26009
        #20877#21046#31867
        #26531#23376#31867
        #31456#40060#31867
        #33976#29038#31867
        #29482#21046#21697#31867)
    end
    object cmbStyle: TComboBox
      Left = 65
      Top = 49
      Width = 134
      Height = 21
      ItemIndex = 0
      TabOrder = 7
      Text = #28818#36135#31867
      Items.Strings = (
        #28818#36135#31867
        #34507#21046#21697#31867
        #35910#21046#21697#31867
        #31957#28857#31867
        #26524#34092#31867
        #36827#21475#21830#21697
        #21487#38144#36741#26009
        #34588#39279#26524#33071#31867
        #33192#21270#31867
        #24039#20811#21147#31867
        #32905#21046#21697#31867
        #27700#21543#36741#26009
        #27700#21543#39278#21697
        #27700#21543#21407#26009
        #31958#26524'\'#26524#20923#31867
        #39278#26009#31867
        #27833#28856#31867
        #36192#21697)
    end
    object edtBarcode: TEdit
      Left = 65
      Top = 22
      Width = 134
      Height = 21
      Anchors = []
      TabOrder = 8
    end
    object edtChs: TEdit
      Left = 274
      Top = 22
      Width = 132
      Height = 21
      Anchors = []
      TabOrder = 9
    end
    object edtCost: TEdit
      Left = 65
      Top = 76
      Width = 134
      Height = 21
      Anchors = []
      TabOrder = 10
    end
    object edtDprice: TEdit
      Left = 684
      Top = 49
      Width = 100
      Height = 21
      Anchors = []
      TabOrder = 11
    end
    object edtPinyin: TEdit
      Left = 480
      Top = 22
      Width = 153
      Height = 21
      Anchors = []
      TabOrder = 12
    end
    object edtPrice: TEdit
      Left = 480
      Top = 49
      Width = 153
      Height = 21
      Anchors = []
      TabOrder = 13
    end
    object edtUnit: TComboBox
      Left = 684
      Top = 22
      Width = 100
      Height = 21
      TabOrder = 14
      Text = #26020
      Items.Strings = (
        #26020
        #25226
        #21253
        #26479
        #26412
        #34955
        #39030
        #23545
        #20010
        #26681
        #32592
        #30418
        #20214
        #21367
        #22359
        #26522
        #31859
        #29942
        #21488
        #22871
        #26465
        #26742
        #31570
        #31665
        #24352
        #25903
        #25903' '
        #21482
        #32452)
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 10
    Top = 479
    Width = 919
    Height = 48
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit, nbPost, nbCancel]
    Align = alBottom
    TabOrder = 1
  end
  object ProgressBar1: TProgressBar
    Left = 10
    Top = 527
    Width = 919
    Height = 17
    Align = alBottom
    TabOrder = 2
    Visible = False
  end
  object StatusBar1: TStatusBar
    Left = 10
    Top = 544
    Width = 919
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 200
      end
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object cxGrid1: TcxGrid
    Left = 10
    Top = 181
    Width = 919
    Height = 298
    Align = alClient
    TabOrder = 4
    object grd: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'DocEntry'
          Column = grdColumn1
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object grdColumn1: TcxGridDBColumn
        Caption = #24207#21495
        DataBinding.FieldName = 'DocEntry'
      end
      object grdColumn2: TcxGridDBColumn
        Caption = #26465#24418#30721
        DataBinding.FieldName = 'ItemCode'
      end
      object grdColumn3: TcxGridDBColumn
        Caption = #20013#25991#21517#31216
        DataBinding.FieldName = 'ItemName'
      end
      object grdColumn4: TcxGridDBColumn
        Caption = #25340#38899#20195#30721
        DataBinding.FieldName = 'PCode'
      end
      object colMsrUnit: TcxGridDBColumn
        Caption = #21333#20301
        DataBinding.FieldName = 'MsrUnit'
        PropertiesClassName = 'TcxComboBoxProperties'
      end
      object grdColumn6: TcxGridDBColumn
        Caption = #20135#21697#22823#31867
        DataBinding.FieldName = 'Style'
        PropertiesClassName = 'TcxComboBoxProperties'
      end
      object grdColumn7: TcxGridDBColumn
        Caption = #20135#21697#23567#31867
        DataBinding.FieldName = 'Stuff'
        PropertiesClassName = 'TcxComboBoxProperties'
      end
      object grdColumn8: TcxGridDBColumn
        Caption = #38646#21806#20215
        DataBinding.FieldName = 'Price'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object grdColumn9: TcxGridDBColumn
        Caption = #25209#21457#20215
        DataBinding.FieldName = 'Dprice'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object grdColumn10: TcxGridDBColumn
        Caption = #36827#20215
        DataBinding.FieldName = 'Cost'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = grd
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    OnDataChange = DataSource1DataChange
    Left = 448
    Top = 216
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 512
    Top = 216
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  * from OITM')
    Left = 388
    Top = 216
  end
  object ADOConnection2: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 508
    Top = 280
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    OnDataChange = DataSource1DataChange
    Left = 444
    Top = 280
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  * from OITM')
    Left = 384
    Top = 280
  end
  object aqPASS: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  * from PASS')
    Left = 280
    Top = 224
  end
  object Timer1: TTimer
    Interval = 3600000
    OnTimer = Timer1Timer
    Left = 132
    Top = 272
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42668.892590196760000000
    ReportOptions.LastChange = 42679.719449884260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 840
    Top = 224
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 40.000000000000000000
      PaperHeight = 80.000000000000000000
      PaperSize = 256
      object Memo1: TfrxMemoView
        Left = 81.826840000000000000
        Top = 10.897650000000000000
        Width = 18.897650000000000000
        Height = 41.574830000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #21697#21517':')
        ParentFont = False
        Rotation = 270
      end
      object Memo2: TfrxMemoView
        Left = 75.267780000000000000
        Top = 52.157480310000000000
        Width = 37.795300000000000000
        Height = 128.504020000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft]
        Memo.UTF8W = (
          #21830#21697#21517#31216':')
        ParentFont = False
        Rotation = 270
        VAlign = vaCenter
      end
      object Memo3: TfrxMemoView
        Left = 47.811070000000000000
        Top = 10.897650000000000000
        Width = 26.456710000000000000
        Height = 41.574830000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #36135#21495':')
        ParentFont = False
        Rotation = 270
      end
      object Memo4: TfrxMemoView
        Left = 64.472455590000000000
        Top = 188.976500000000000000
        Width = 37.795300000000000000
        Height = 105.826840000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #20215#26684':')
        ParentFont = False
        Rotation = 270
      end
      object Memo5: TfrxMemoView
        Left = 13.236240000000000000
        Top = 10.897650000000000000
        Width = 22.677180000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #31561#32423':')
        ParentFont = False
        Rotation = 270
      end
      object Memo6: TfrxMemoView
        Left = 48.811070000000000000
        Top = 52.252010000000000000
        Width = 26.456710000000000000
        Height = 109.606370000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft]
        Memo.UTF8W = (
          #36135#21495':')
        ParentFont = False
        Rotation = 270
        VAlign = vaBottom
      end
      object Memo7: TfrxMemoView
        Left = 14.236240000000000000
        Top = 52.252010000000000000
        Width = 22.677180000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft]
        Memo.UTF8W = (
          #21512'  '#26684)
        ParentFont = False
        Rotation = 270
        VAlign = vaBottom
      end
      object Memo8: TfrxMemoView
        Left = 107.826840000000000000
        Top = 214.315090000000000000
        Width = 22.677180000000000000
        Height = 60.472480000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #38646#21806#20215)
        ParentFont = False
        Rotation = 270
      end
      object Memo9: TfrxMemoView
        Left = 14.236240000000000000
        Top = 100.385900000000000000
        Width = 22.677180000000000000
        Height = 60.472480000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #35745#37327#21333#20301':')
        ParentFont = False
        Rotation = 270
      end
      object Memo10: TfrxMemoView
        Left = 15.236240000000000000
        Top = 165.078850000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft]
        Memo.UTF8W = (
          #21512'      '#26684)
        ParentFont = False
        Rotation = 270
        VAlign = vaBottom
      end
    end
  end
end
