object ProductLevelFrm: TProductLevelFrm
  Left = 89
  Top = 59
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Set Reordering Levels'
  ClientHeight = 706
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 656
    Width = 964
    Height = 50
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 10
      Top = 10
      Width = 92
      Height = 31
      TabOrder = 0
      Kind = bkOK
    end
    object Btn_Reject: TBitBtn
      Left = 111
      Top = 10
      Width = 97
      Height = 31
      Cancel = True
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
      OnClick = Btn_RejectClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object pnlRequisitionListBackground: TPanel
    Left = 0
    Top = 0
    Width = 964
    Height = 656
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 1
    object shpRequisitionList: TShape
      Left = 0
      Top = 0
      Width = 964
      Height = 656
      Align = alClient
      Brush.Color = clWindow
      Pen.Color = clHighlight
      Pen.Style = psInsideFrame
    end
    object Grp_DrugID: TGroupBox
      Left = 10
      Top = 10
      Width = 945
      Height = 52
      Caption = 'Product Description'
      Color = cl3DLight
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        945
        52)
      object DBEdt_PackSize: TDBEdit
        Left = 92
        Top = 17
        Width = 843
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        Color = clMoneyGreen
        DataField = 'Description_str'
        DataSource = dsProductStore
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdt_Code: TDBEdit
        Left = 15
        Top = 17
        Width = 71
        Height = 24
        Color = clMoneyGreen
        DataField = 'ProductCode_str'
        DataSource = dsProductStore
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        OnKeyPress = Edt_Con_SAvgKeyPress
      end
    end
    object dxPageControl1: TdxPageControl
      Left = 11
      Top = 69
      Width = 943
      Height = 572
      ActivePage = dxTabSheet1
      HideButtons = False
      HotTrack = False
      MultiLine = False
      OwnerDraw = False
      RaggedRight = False
      ScrollOpposite = False
      TabHeight = 0
      TabOrder = 1
      TabPosition = dxtpTop
      TabWidth = 0
      object dxTabSheet1: TdxTabSheet
        Caption = 'Stock Levels Manager'
        object Panel3: TPanel
          Left = 513
          Top = 0
          Width = 430
          Height = 546
          Align = alClient
          Caption = 'Panel3'
          TabOrder = 0
          object Grp_LevelShow: TGroupBox
            Left = 1
            Top = 1
            Width = 428
            Height = 128
            Align = alTop
            Caption = 'Current Stock Levels'
            Color = cl3DLight
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object Lbl_SSDb: TLabel
              Left = 10
              Top = 28
              Width = 73
              Height = 16
              Caption = 'Safety stock'
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlight
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_MinDb: TLabel
              Left = 138
              Top = 28
              Width = 88
              Height = 16
              Caption = 'Minimum stock'
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlight
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_MaxDb: TLabel
              Left = 266
              Top = 28
              Width = 92
              Height = 16
              Caption = 'Maximum stock'
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlight
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_LastReview: TLabel
              Left = 175
              Top = 84
              Width = 119
              Height = 16
              Caption = 'Date of Last Review'
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlight
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object SS_Unt: TLabel
              Left = 95
              Top = 52
              Width = 27
              Height = 16
              Caption = 'units'
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlight
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_SizeUnt: TLabel
              Left = 10
              Top = 85
              Width = 42
              Height = 16
              Caption = 'A unit ='
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlight
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBTxt_SizeUnt: TDBText
              Left = 71
              Top = 85
              Width = 80
              Height = 21
              DataField = 'PackDescription_Str'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label28: TLabel
              Left = 225
              Top = 52
              Width = 27
              Height = 16
              Caption = 'units'
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlight
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label29: TLabel
              Left = 358
              Top = 52
              Width = 27
              Height = 16
              Caption = 'units'
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlight
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBEdt_SS: TDBEdit
              Left = 10
              Top = 48
              Width = 80
              Height = 24
              Color = clMoneyGreen
              DataField = 'SafetyStockSet_int'
              DataSource = dsProductStore
              ReadOnly = True
              TabOrder = 0
              OnKeyPress = Edt_Con_SAvgKeyPress
            end
            object DBEdt_Min: TDBEdit
              Left = 276
              Top = 48
              Width = 80
              Height = 24
              Color = clMoneyGreen
              DataField = 'MaxStockSet_int'
              DataSource = dsProductStore
              ReadOnly = True
              TabOrder = 1
              OnKeyPress = Edt_Con_SAvgKeyPress
            end
            object DBEdt_Max: TDBEdit
              Left = 143
              Top = 48
              Width = 80
              Height = 24
              Color = clMoneyGreen
              DataField = 'MinStockSet_int'
              DataSource = dsProductStore
              ReadOnly = True
              TabOrder = 2
              OnKeyPress = Edt_Con_SAvgKeyPress
            end
            object DBEdt_LastReview: TDBEdit
              Left = 322
              Top = 80
              Width = 96
              Height = 24
              Color = clMoneyGreen
              DataField = 'LastReview_dat'
              DataSource = dsProductStore
              ReadOnly = True
              TabOrder = 3
            end
          end
          object Grp_ProcurmentData: TGroupBox
            Left = 1
            Top = 129
            Width = 428
            Height = 168
            Align = alTop
            Caption = 'Procurement Data'
            Color = cl3DLight
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            object Lbl_PP: TLabel
              Left = 30
              Top = 33
              Width = 118
              Height = 16
              Caption = 'Procurement period'
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlight
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_UntPP: TLabel
              Left = 250
              Top = 33
              Width = 35
              Height = 16
              Caption = 'days'
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlight
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Lbl_OrdPack: TLabel
              Left = 78
              Top = 62
              Width = 77
              Height = 16
              Caption = 'Order pack ='
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlight
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_UntOrdPack: TLabel
              Left = 251
              Top = 59
              Width = 33
              Height = 16
              Caption = 'units'
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlight
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Lbl_Supplier: TLabel
              Left = 139
              Top = 90
              Width = 50
              Height = 16
              Caption = 'Supplier'
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlight
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_DeliveryPeriod: TLabel
              Left = 9
              Top = 119
              Width = 142
              Height = 16
              Caption = 'Contract delivery period'
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlight
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_UntDeliveryPeriod: TLabel
              Left = 236
              Top = 89
              Width = 30
              Height = 16
              Caption = 'days'
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlight
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edt_PP: TEdit
              Left = 206
              Top = 31
              Width = 40
              Height = 24
              TabOrder = 0
              Text = 'Edt_PP'
              OnKeyPress = Edt_Con_SAvgKeyPress
            end
            object Edt_OrdPck: TEdit
              Left = 206
              Top = 58
              Width = 43
              Height = 24
              TabOrder = 1
              Text = 'Edt_OrdPck'
            end
            object DBEdt_Supplier: TDBEdit
              Left = 207
              Top = 86
              Width = 187
              Height = 24
              Color = clMoneyGreen
              DataField = 'SupplierCode_str'
              DataSource = dsTender
              TabOrder = 2
            end
            object DBEdt_DeliveryPeriod: TDBEdit
              Left = 207
              Top = 116
              Width = 70
              Height = 24
              Color = clMoneyGreen
              DataSource = dsTender
              TabOrder = 3
            end
          end
          object GroupBox2: TGroupBox
            Left = 1
            Top = 297
            Width = 428
            Height = 248
            Align = alClient
            Caption = 'Lag Time'
            TabOrder = 2
            object Label21: TLabel
              Left = 17
              Top = 25
              Width = 52
              Height = 16
              Caption = 'Average'
            end
            object Label22: TLabel
              Left = 106
              Top = 25
              Width = 19
              Height = 16
              Caption = 'SD'
            end
            object Stat_Lag_n_Lbl: TLabel
              Left = 185
              Top = 44
              Width = 17
              Height = 16
              Caption = 'n ='
            end
            object Label36: TLabel
              Left = 256
              Top = 25
              Width = 114
              Height = 16
              Caption = 'Confidence Interval'
            end
            object Label23: TLabel
              Left = 7
              Top = 84
              Width = 87
              Height = 16
              Caption = 'Review period'
            end
            object Label24: TLabel
              Left = 262
              Top = 84
              Width = 11
              Height = 16
              Caption = 'to'
            end
            object Label31: TLabel
              Left = 7
              Top = 149
              Width = 97
              Height = 16
              Caption = 'Review period ='
            end
            object L_Review_days_Vw: TLabel
              Left = 134
              Top = 149
              Width = 41
              Height = 16
              AutoSize = False
              Caption = 'L_Review_days_Vw'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label32: TLabel
              Left = 181
              Top = 149
              Width = 30
              Height = 16
              Caption = 'days'
            end
            object L_Review_Mnth_Vw: TLabel
              Left = 226
              Top = 149
              Width = 41
              Height = 16
              AutoSize = False
              Caption = 'L_Review_Mnth_Vw'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label33: TLabel
              Left = 271
              Top = 149
              Width = 43
              Height = 16
              Caption = 'months'
            end
            object L_Review_Yr_Vw: TLabel
              Left = 315
              Top = 149
              Width = 41
              Height = 16
              AutoSize = False
              Caption = 'L_Review_Yr_Vw'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label1: TLabel
              Left = 361
              Top = 149
              Width = 46
              Height = 16
              Caption = 'Ann'#233'es'
            end
            object Label2: TLabel
              Left = 9
              Top = 121
              Width = 55
              Height = 16
              Caption = 'Progress'
            end
            object Vw_Lag_Avg: TEdit
              Left = 17
              Top = 44
              Width = 70
              Height = 24
              TabOrder = 0
              Text = '0'
              OnKeyPress = Edt_Con_SAvgKeyPress
            end
            object Vw_Lag_SD: TEdit
              Left = 106
              Top = 44
              Width = 70
              Height = 24
              TabOrder = 1
              Text = '0'
              OnKeyPress = Edt_Con_SAvgKeyPress
            end
            object Vw_Lag_n: TEdit
              Left = 214
              Top = 44
              Width = 60
              Height = 24
              TabOrder = 2
              Text = 'Vw_Lag_n'
            end
            object Vw_Lag_CI: TEdit
              Left = 293
              Top = 44
              Width = 70
              Height = 24
              TabOrder = 3
              Text = '0'
            end
            object Vw_L_St: TDateTimePicker
              Left = 133
              Top = 80
              Width = 122
              Height = 24
              CalAlignment = dtaLeft
              Date = 36903
              Time = 36903
              DateFormat = dfShort
              DateMode = dmComboBox
              Kind = dtkDate
              ParseInput = False
              TabOrder = 4
              OnChange = Vw_L_StChange
            end
            object Vw_L_End: TDateTimePicker
              Left = 286
              Top = 79
              Width = 116
              Height = 24
              CalAlignment = dtaLeft
              Date = 36903
              Time = 36903
              DateFormat = dfShort
              DateMode = dmComboBox
              Kind = dtkDate
              ParseInput = False
              TabOrder = 5
              OnChange = Vw_L_StChange
            end
            object ProgressBar2: TProgressBar
              Left = 68
              Top = 119
              Width = 227
              Height = 20
              Min = 0
              Max = 100
              TabOrder = 6
            end
            object Btn_CollectLag: TBitBtn
              Left = 212
              Top = 193
              Width = 206
              Height = 31
              Caption = 'Collect Stats'
              TabOrder = 7
              OnClick = Btn_CollectLagClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333333333333333333333333FFFFFFFFFFF33330000000000
                03333377777777777F33333003333330033333377FF333377F33333300333333
                0333333377FF33337F3333333003333303333333377FF3337333333333003333
                333333333377FF3333333333333003333333333333377FF33333333333330033
                3333333333337733333333333330033333333333333773333333333333003333
                33333333337733333F3333333003333303333333377333337F33333300333333
                03333333773333337F33333003333330033333377FFFFFF77F33330000000000
                0333337777777777733333333333333333333333333333333333}
              NumGlyphs = 2
            end
            object L_Stats_Radio: TRadioGroup
              Left = 7
              Top = 185
              Width = 189
              Height = 50
              Caption = 'Stats Mode'
              Columns = 2
              Items.Strings = (
                'Compute'
                'Capture')
              TabOrder = 8
              OnClick = L_Stats_RadioClick
            end
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 513
          Height = 546
          Align = alLeft
          Caption = 'Panel2'
          TabOrder = 1
          object Grp_LevelCalc: TGroupBox
            Left = 1
            Top = 1
            Width = 511
            Height = 216
            Align = alTop
            Caption = 'Stock level calculations'
            Color = cl3DLight
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object Lbl_SS: TLabel
              Left = 10
              Top = 43
              Width = 73
              Height = 16
              Caption = 'Safety stock'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_Min: TLabel
              Left = 27
              Top = 79
              Width = 88
              Height = 16
              Caption = 'Minimum stock'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_Max: TLabel
              Left = 22
              Top = 114
              Width = 92
              Height = 16
              Caption = 'Maximum stock'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_Calc: TLabel
              Left = 132
              Top = 20
              Width = 64
              Height = 16
              Caption = 'Calculated'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_Prop: TLabel
              Left = 220
              Top = 20
              Width = 60
              Height = 16
              Caption = 'Proposed'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_Final: TLabel
              Left = 405
              Top = 20
              Width = 29
              Height = 16
              Caption = 'Final'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_value: TLabel
              Left = 309
              Top = 20
              Width = 35
              Height = 16
              Caption = 'Value'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Test: TLabel
              Left = 313
              Top = 192
              Width = 60
              Height = 16
              Caption = 'OS days'
              Visible = False
            end
            object Edt_SSCalc: TEdit
              Left = 119
              Top = 39
              Width = 69
              Height = 24
              TabStop = False
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 6
              Text = 'Edt_SSCalc'
            end
            object Edt_SSProp: TEdit
              Left = 203
              Top = 39
              Width = 74
              Height = 24
              TabStop = False
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 7
              Text = 'Edt_SSProp'
            end
            object Edt_MaxCalc: TEdit
              Left = 119
              Top = 108
              Width = 69
              Height = 24
              TabStop = False
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 8
              Text = 'Edt_MaxCalc'
            end
            object Edt_MaxProp: TEdit
              Left = 203
              Top = 108
              Width = 74
              Height = 24
              TabStop = False
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 9
              Text = 'Edt_MaxProp'
            end
            object Edt_MinCalc: TEdit
              Left = 119
              Top = 74
              Width = 69
              Height = 24
              TabStop = False
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 10
              Text = 'Edt_MinCalc'
            end
            object Edt_MinProp: TEdit
              Left = 203
              Top = 74
              Width = 74
              Height = 24
              TabStop = False
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 11
              Text = 'Edt_MinProp'
            end
            object Btn_Calc: TBitBtn
              Left = 303
              Top = 143
              Width = 92
              Height = 31
              Caption = 'Evaluate'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = Btn_CalcClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
                73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
                0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
                0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
                0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
                0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
                0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
                0333337F777777737F333308888888880333337F333333337F33330888888888
                03333373FFFFFFFF733333700000000073333337777777773333}
              NumGlyphs = 2
            end
            object Grp_SSMode: TGroupBox
              Left = 10
              Top = 137
              Width = 287
              Height = 70
              Caption = 'Safety Stock Mode'
              Font.Charset = ANSI_CHARSET
              Font.Color = clActiveCaption
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object Radio_SSLead: TRadioGroup
                Left = 148
                Top = 20
                Width = 129
                Height = 40
                Caption = 'Lead'
                Columns = 2
                Font.Charset = ANSI_CHARSET
                Font.Color = clHighlight
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                Items.Strings = (
                  'Avg'
                  'CI')
                ParentFont = False
                TabOrder = 1
                TabStop = True
                OnClick = Radio_SSLeadClick
              end
              object Radio_SSCon: TRadioGroup
                Left = 10
                Top = 20
                Width = 129
                Height = 40
                Caption = 'Consumption'
                Columns = 2
                Font.Charset = ANSI_CHARSET
                Font.Color = clHighlight
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                Items.Strings = (
                  'Avg'
                  'CI')
                ParentFont = False
                TabOrder = 0
                TabStop = True
                OnClick = Radio_SSConClick
              end
            end
            object Edt_SSFinal: TEdit
              Left = 404
              Top = 39
              Width = 80
              Height = 24
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = 'Edt_SSFinal'
              OnChange = Edt_SSFinalChange
              OnKeyPress = Edt_Con_SAvgKeyPress
            end
            object Edt_MinFinal: TEdit
              Left = 404
              Top = 74
              Width = 80
              Height = 24
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              Text = 'Edt_MinFinal'
              OnChange = Edt_MinFinalChange
              OnKeyPress = Edt_Con_SAvgKeyPress
            end
            object Edt_MaxFinal: TEdit
              Left = 404
              Top = 108
              Width = 80
              Height = 24
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Text = 'Edt_MaxFinal'
              OnKeyPress = Edt_Con_SAvgKeyPress
            end
            object Edt_SSMon: TEdit
              Left = 286
              Top = 39
              Width = 109
              Height = 24
              TabStop = False
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 12
              Text = 'Edt_SSMon'
            end
            object Edt_MinMon: TEdit
              Left = 286
              Top = 74
              Width = 109
              Height = 24
              TabStop = False
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 13
              Text = 'Edt_MinMon'
            end
            object Edt_MaxMon: TEdit
              Left = 286
              Top = 108
              Width = 109
              Height = 24
              TabStop = False
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 14
              Text = 'Edt_MaxMon'
            end
            object Btn_Keep: TBitBtn
              Left = 407
              Top = 143
              Width = 93
              Height = 31
              Caption = 'Accept'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnClick = Btn_KeepClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333333333333333333333333333333FFF333333333333000333333333
                3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
                3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
                0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
                BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
                33337777773FF733333333333300033333333333337773333333333333333333
                3333333333333333333333333333333333333333333333333333333333333333
                3333333333333333333333333333333333333333333333333333}
              NumGlyphs = 2
            end
          end
          object dxPageControl3: TdxPageControl
            Left = 1
            Top = 217
            Width = 511
            Height = 328
            ActivePage = dxTabSheet4
            Align = alClient
            HideButtons = False
            HotTrack = False
            MultiLine = False
            OwnerDraw = False
            RaggedRight = False
            ScrollOpposite = False
            TabHeight = 0
            TabOrder = 1
            TabPosition = dxtpTop
            TabWidth = 0
            object dxTabSheet3: TdxTabSheet
              Caption = 'Consumption'
              object Label30: TLabel
                Left = 10
                Top = 4
                Width = 90
                Height = 16
                Caption = 'Consumption'
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 81
                Top = 26
                Width = 42
                Height = 16
                Caption = 'Simple'
              end
              object Label14: TLabel
                Left = 10
                Top = 55
                Width = 104
                Height = 16
                Caption = 'Linear regression'
              end
              object Stat_CL_r_Lbl: TLabel
                Left = 10
                Top = 82
                Width = 14
                Height = 16
                Caption = 'r ='
              end
              object Vw_Stat_CL_r: TLabel
                Left = 39
                Top = 82
                Width = 82
                Height = 16
                Caption = 'Vw_Stat_CL_r'
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label9: TLabel
                Left = 7
                Top = 111
                Width = 87
                Height = 16
                Caption = 'Review period'
              end
              object C_Review_Lbl: TLabel
                Left = 7
                Top = 143
                Width = 97
                Height = 16
                Caption = 'Review period ='
              end
              object C_Review_days_Vw: TLabel
                Left = 129
                Top = 143
                Width = 43
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'C_Review_days_Vw'
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label7: TLabel
                Left = 128
                Top = 4
                Width = 52
                Height = 16
                Caption = 'Average'
              end
              object Label8: TLabel
                Left = 217
                Top = 4
                Width = 19
                Height = 16
                Caption = 'SD'
              end
              object Stat_CL_n_Lbl: TLabel
                Left = 295
                Top = 52
                Width = 17
                Height = 16
                Caption = 'n ='
              end
              object Stat_CS_n_Lbl: TLabel
                Left = 295
                Top = 23
                Width = 17
                Height = 16
                Caption = 'n ='
              end
              object Label20: TLabel
                Left = 345
                Top = 4
                Width = 114
                Height = 16
                Caption = 'Confidence Interval'
              end
              object Label10: TLabel
                Left = 236
                Top = 111
                Width = 11
                Height = 16
                Caption = 'to'
              end
              object C_Review_Days_Unt: TLabel
                Left = 177
                Top = 143
                Width = 30
                Height = 16
                Caption = 'days'
              end
              object C_Review_Mnth_Vw: TLabel
                Left = 219
                Top = 143
                Width = 52
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'C_Review_Mnth_Vw'
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object C_Review_Mnth_Unts: TLabel
                Left = 276
                Top = 143
                Width = 43
                Height = 16
                Caption = 'months'
              end
              object C_Review_Yr_Vw: TLabel
                Left = 278
                Top = 143
                Width = 106
                Height = 16
                Alignment = taRightJustify
                Caption = 'C_Review_Yr_Vw'
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object C_Review_Yrs_Unts: TLabel
                Left = 393
                Top = 143
                Width = 18
                Height = 16
                Caption = 'yrs'
              end
              object Vw_C_St: TDateTimePicker
                Left = 128
                Top = 107
                Width = 100
                Height = 24
                CalAlignment = dtaLeft
                Date = 36903
                Time = 36903
                DateFormat = dfShort
                DateMode = dmComboBox
                Kind = dtkDate
                ParseInput = False
                TabOrder = 0
                OnCloseUp = Vw_C_StChange
                OnChange = Vw_C_StChange
              end
              object Vw_Con_LAvg: TEdit
                Left = 128
                Top = 52
                Width = 70
                Height = 21
                TabOrder = 1
                Text = '0'
                OnKeyPress = Edt_Con_SAvgKeyPress
              end
              object Edt_Con_SAvg: TEdit
                Left = 128
                Top = 23
                Width = 70
                Height = 21
                TabOrder = 2
                Text = '0'
                OnKeyPress = Edt_Con_SAvgKeyPress
              end
              object Vw_Con_SSD: TEdit
                Left = 217
                Top = 23
                Width = 70
                Height = 21
                TabOrder = 3
                Text = '0'
                OnKeyPress = Edt_Con_SAvgKeyPress
              end
              object Vw_Con_LSD: TEdit
                Left = 217
                Top = 52
                Width = 70
                Height = 21
                TabOrder = 4
                Text = '0'
                OnKeyPress = Edt_Con_SAvgKeyPress
              end
              object Vw_Stat_CS_n: TEdit
                Left = 325
                Top = 23
                Width = 41
                Height = 21
                TabOrder = 5
                Text = 'Vw_Stat_CS_n'
                OnKeyPress = Edt_Con_SAvgKeyPress
              end
              object Vw_Con_SCI: TEdit
                Left = 384
                Top = 23
                Width = 70
                Height = 21
                TabOrder = 6
                Text = '0'
              end
              object Vw_Con_LCI: TEdit
                Left = 384
                Top = 52
                Width = 70
                Height = 21
                TabOrder = 7
                Text = '0'
              end
              object Vw_Stat_CL_n: TEdit
                Left = 325
                Top = 52
                Width = 41
                Height = 21
                TabOrder = 8
                Text = 'Vw_Stat_CL_n'
                OnKeyPress = Edt_Con_SAvgKeyPress
              end
              object Btn_CollectCon: TBitBtn
                Left = 10
                Top = 251
                Width = 207
                Height = 31
                Caption = 'Collect Stats'
                TabOrder = 9
                OnClick = Btn_CollectConClick
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  333333333333333333333333333333333333333FFFFFFFFFFF33330000000000
                  03333377777777777F33333003333330033333377FF333377F33333300333333
                  0333333377FF33337F3333333003333303333333377FF3337333333333003333
                  333333333377FF3333333333333003333333333333377FF33333333333330033
                  3333333333337733333333333330033333333333333773333333333333003333
                  33333333337733333F3333333003333303333333377333337F33333300333333
                  03333333773333337F33333003333330033333377FFFFFF77F33330000000000
                  0333337777777777733333333333333333333333333333333333}
                NumGlyphs = 2
              end
              object Vw_C_End: TDateTimePicker
                Left = 262
                Top = 107
                Width = 100
                Height = 24
                CalAlignment = dtaLeft
                Date = 36903
                Time = 36903
                DateFormat = dfShort
                DateMode = dmComboBox
                Kind = dtkDate
                ParseInput = False
                TabOrder = 10
                OnChange = Vw_C_StChange
              end
              object C_Stats_Radio: TRadioGroup
                Left = 10
                Top = 166
                Width = 129
                Height = 70
                Caption = 'Stats Mode'
                Items.Strings = (
                  'Compute'
                  'Capture')
                TabOrder = 11
                OnClick = C_Stats_RadioClick
              end
              object Radio_ConAvg: TRadioGroup
                Left = 149
                Top = 166
                Width = 157
                Height = 70
                Caption = 'Consumption mode'
                Items.Strings = (
                  'Simple'
                  'Linear regression')
                TabOrder = 12
                OnClick = Radio_ConAvgClick
              end
              object RadioGroup1: TRadioGroup
                Left = 321
                Top = 166
                Width = 184
                Height = 70
                Caption = 'Consumption is'
                Enabled = False
                Items.Strings = (
                  'Issue based'
                  'Order based')
                TabOrder = 13
              end
            end
            object dxTabSheet4: TdxTabSheet
              Caption = 'Epidemiological'
              object Label35: TLabel
                Left = 10
                Top = 10
                Width = 270
                Height = 16
                Caption = 'Epidemiologicaly derived consumption'
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Lbl_DDD: TLabel
                Left = 10
                Top = 34
                Width = 115
                Height = 16
                Caption = 'Daily defined Dose'
              end
              object Lbl_COT: TLabel
                Left = 37
                Top = 64
                Width = 111
                Height = 16
                Caption = 'Course of Therapy'
              end
              object Lbl_Epi: TLabel
                Left = 27
                Top = 92
                Width = 113
                Height = 16
                Caption = 'Number of Patients'
              end
              object Lbl_EstAvgHead: TLabel
                Left = 10
                Top = 126
                Width = 196
                Height = 16
                Caption = 'Estimated Average Consumption'
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Lbl_EstExpHead: TLabel
                Left = 26
                Top = 149
                Width = 185
                Height = 16
                Caption = 'Estimated Annual Expenditures'
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Lbl_EstExp: TLabel
                Left = 207
                Top = 148
                Width = 67
                Height = 16
                Caption = 'Lbl_EstExp'
              end
              object Lbl_EstAvg: TLabel
                Left = 207
                Top = 128
                Width = 80
                Height = 16
                AutoSize = False
                Caption = 'Lbl_EstAvg'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Lbl_EstAvgUnt: TLabel
                Left = 295
                Top = 128
                Width = 76
                Height = 16
                Caption = 'units per day'
              end
              object Unt_Epi: TLabel
                Left = 220
                Top = 95
                Width = 50
                Height = 16
                Caption = 'per year'
              end
              object Unt_COT: TLabel
                Left = 220
                Top = 64
                Width = 30
                Height = 16
                Caption = 'days'
              end
              object DBText_DDDUnt: TDBText
                Left = 220
                Top = 33
                Width = 41
                Height = 21
                DataField = 'DDDUnit_str'
                DataSource = dsProductStore
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Lbl_DDD_Day: TLabel
                Left = 268
                Top = 33
                Width = 46
                Height = 16
                Caption = 'per day'
              end
              object Btn_EpiCalc: TBitBtn
                Left = 331
                Top = 167
                Width = 90
                Height = 31
                Caption = 'Estimate'
                TabOrder = 0
                OnClick = Btn_EpiCalcClick
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
                  73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
                  0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
                  0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
                  0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
                  0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
                  0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
                  0333337F777777737F333308888888880333337F333333337F33330888888888
                  03333373FFFFFFFF733333700000000073333337777777773333}
                NumGlyphs = 2
              end
              object Radio_Epi: TRadioGroup
                Left = 325
                Top = 10
                Width = 169
                Height = 90
                Caption = 'Mode'
                Items.Strings = (
                  'Chronic Therapy'
                  'Course of Therapy'
                  'Single Dose')
                TabOrder = 1
                OnClick = Radio_EpiClick
              end
              object Edt_DDD: TEdit
                Left = 156
                Top = 31
                Width = 61
                Height = 24
                TabOrder = 2
                Text = 'Edt_DDD'
                OnKeyPress = Edt_Con_SAvgKeyPress
              end
              object Edt_COT: TEdit
                Left = 156
                Top = 60
                Width = 59
                Height = 24
                TabOrder = 3
                Text = 'Edt_COT'
                OnKeyPress = Edt_Con_SAvgKeyPress
              end
              object Edt_Epi: TEdit
                Left = 156
                Top = 90
                Width = 59
                Height = 24
                TabOrder = 4
                Text = 'Edt_Epi'
                OnKeyPress = Edt_Con_SAvgKeyPress
              end
            end
          end
        end
      end
      object dxTabSheet2: TdxTabSheet
        Caption = 'Review History'
        object DBChrt_History: TDBChart
          Left = 0
          Top = 258
          Width = 943
          Height = 288
          AutoRefresh = False
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Title.Text.Strings = (
            'Consumption Profile')
          BottomAxis.DateTimeFormat = 'dd/mm/yy'
          BottomAxis.Increment = 30
          BottomAxis.Title.Caption = 'Date'
          LeftAxis.Title.Caption = 'Consumption'
          Legend.LegendStyle = lsSeries
          Legend.Visible = False
          RightAxis.Title.Caption = 'Accumulative'
          View3D = False
          Align = alClient
          TabOrder = 0
          Locked = True
          object Series2: TPointSeries
            Marks.ArrowLength = 20
            Marks.Visible = True
            SeriesColor = clGreen
            Title = 'Daily Consumption'
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = True
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Multiplier = 1
            XValues.Order = loAscending
            XValues.ValueSource = 'Date_dat'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1
            YValues.Order = loNone
            YValues.ValueSource = 'DayQuantity_int'
          end
          object Series1: TLineSeries
            Active = False
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = clRed
            Title = 'Accumulative Consumption'
            XLabelsSource = 'Date_dat'
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Multiplier = 1
            XValues.Order = loAscending
            XValues.ValueSource = 'Date_dat'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1
            YValues.Order = loNone
            YValues.ValueSource = 'AccumDayQuantity_int'
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 943
          Height = 258
          Align = alTop
          Caption = 'Panel4'
          TabOrder = 1
          object Grp_HistoryCntrls: TGroupBox
            Left = 1
            Top = 1
            Width = 159
            Height = 256
            Align = alLeft
            Caption = 'History'
            TabOrder = 0
            object Lbl_Graph: TLabel
              Left = 9
              Top = 20
              Width = 44
              Height = 16
              Caption = 'Graphs'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Btn_Actual: TBitBtn
              Left = 11
              Top = 39
              Width = 138
              Height = 31
              Caption = 'Actual'
              TabOrder = 0
              OnClick = Btn_ActualClick
            end
            object Btn_GrphAcc_Full: TBitBtn
              Left = 11
              Top = 69
              Width = 138
              Height = 31
              Caption = 'Accumulative Full'
              TabOrder = 1
              OnClick = Btn_GrphAcc_FullClick
            end
            object Btn_GrphAcc_Period: TBitBtn
              Left = 11
              Top = 98
              Width = 138
              Height = 31
              Caption = 'Accumulative Period'
              TabOrder = 2
              OnClick = Btn_GrphAcc_PeriodClick
            end
          end
          object dxPageControl2: TdxPageControl
            Left = 160
            Top = 1
            Width = 782
            Height = 256
            ActivePage = TbshConsumption
            Align = alClient
            HideButtons = False
            HotTrack = False
            MultiLine = False
            OwnerDraw = False
            RaggedRight = False
            ScrollOpposite = False
            TabHeight = 0
            TabOrder = 1
            TabPosition = dxtpTop
            TabWidth = 0
            object TbshConsumption: TdxTabSheet
              Caption = 'Consumption'
              object dxDBGrid1: TdxDBGrid
                Left = 0
                Top = 0
                Width = 228
                Height = 228
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'ProductCode_ID'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alLeft
                TabOrder = 0
                DataSource = dsConsumption
                Filter.Criteria = {00000000}
                LookAndFeel = lfFlat
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
                object dxDBGrid1Date_dat: TdxDBGridDateColumn
                  Caption = 'Date'
                  DisableEditor = True
                  Width = 108
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Date_dat'
                  SummaryFooterType = cstCount
                  SummaryFooterField = 'Date_dat'
                end
                object dxDBGrid1DayQuantity_int: TdxDBGridMaskColumn
                  Caption = 'Issues'
                  DisableEditor = True
                  Width = 58
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DayQuantity_int'
                  SummaryFooterType = cstSum
                  SummaryFooterField = 'DayQuantity_int'
                end
              end
              object dxDBGrid2: TdxDBGrid
                Left = 228
                Top = 0
                Width = 554
                Height = 228
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'Audit_ID'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alClient
                TabOrder = 1
                DataSource = ProductDm.dstblProductLedger
                Filter.Criteria = {00000000}
                LookAndFeel = lfFlat
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
                object dxDBGrid2Date_dat: TdxDBGridDateColumn
                  Caption = 'Date'
                  DisableEditor = True
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Date_dat'
                end
                object dxDBGrid2Order_Qnt_Int: TdxDBGridCurrencyColumn
                  Alignment = taRightJustify
                  Caption = 'Ordered'
                  DisableEditor = True
                  HeaderAlignment = taRightJustify
                  Width = 55
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Order_Qnt_Int'
                  Nullable = False
                end
                object dxDBGrid2Issue_Qnt_Int: TdxDBGridCurrencyColumn
                  Alignment = taRightJustify
                  Caption = 'Issued'
                  DisableEditor = True
                  HeaderAlignment = taRightJustify
                  Width = 55
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Issue_Qnt_Int'
                  Nullable = False
                end
                object dxDBGrid2Rec_Qnt_Int: TdxDBGridCurrencyColumn
                  Alignment = taRightJustify
                  Caption = 'Received'
                  DisableEditor = True
                  HeaderAlignment = taRightJustify
                  Width = 55
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Rec_Qnt_Int'
                  Nullable = False
                end
                object dxDBGrid2QuantityOnHand_int: TdxDBGridMaskColumn
                  Alignment = taRightJustify
                  Caption = 'QoH'
                  DisableEditor = True
                  HeaderAlignment = taRightJustify
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'QuantityOnHand_int'
                end
              end
            end
            object TbshLeadTime: TdxTabSheet
              Caption = 'Lead Time'
              object dxDBGrid3: TdxDBGrid
                Left = 0
                Top = 0
                Width = 267
                Height = 228
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'ProductCode_ID'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alLeft
                TabOrder = 0
                DataSource = dsLeadTime
                Filter.Criteria = {00000000}
                LookAndFeel = lfFlat
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
                object dxDBGrid3ReceiptNo_str: TdxDBGridMaskColumn
                  Caption = 'No'
                  Width = 106
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'ReceiptNo_str'
                end
                object dxDBGrid3LeadTime_int: TdxDBGridMaskColumn
                  Caption = 'LT'
                  Width = 42
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'LeadTime_int'
                end
                object dxDBGrid3Received_dat: TdxDBGridDateColumn
                  Caption = 'Date'
                  Width = 67
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Received_dat'
                end
              end
              object dxDBGrid4: TdxDBGrid
                Left = 267
                Top = 0
                Width = 515
                Height = 228
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'Audit_ID'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alClient
                TabOrder = 1
                DataSource = ProductDm.dstblProductLedger
                Filter.Criteria = {00000000}
                LookAndFeel = lfFlat
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
                object dxDBGridDateColumn2: TdxDBGridDateColumn
                  Caption = 'Date'
                  DisableEditor = True
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Date_dat'
                end
                object dxDBGridCurrencyColumn1: TdxDBGridCurrencyColumn
                  Alignment = taRightJustify
                  Caption = 'Ordered'
                  DisableEditor = True
                  HeaderAlignment = taRightJustify
                  Width = 55
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Order_Qnt_Int'
                  Nullable = False
                end
                object dxDBGridCurrencyColumn2: TdxDBGridCurrencyColumn
                  Alignment = taRightJustify
                  Caption = 'Issued'
                  DisableEditor = True
                  HeaderAlignment = taRightJustify
                  Width = 55
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Issue_Qnt_Int'
                  Nullable = False
                end
                object dxDBGridCurrencyColumn3: TdxDBGridCurrencyColumn
                  Alignment = taRightJustify
                  Caption = 'Received'
                  DisableEditor = True
                  HeaderAlignment = taRightJustify
                  Width = 55
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Rec_Qnt_Int'
                  Nullable = False
                end
                object dxDBGridMaskColumn2: TdxDBGridMaskColumn
                  Alignment = taRightJustify
                  Caption = 'QoH'
                  DisableEditor = True
                  HeaderAlignment = taRightJustify
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'QuantityOnHand_int'
                end
              end
            end
            object TbshOrders: TdxTabSheet
              Caption = 'Orders'
              object dxDBGrid5: TdxDBGrid
                Left = 0
                Top = 0
                Width = 782
                Height = 228
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'Audit_ID'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alClient
                TabOrder = 0
                DataSource = ProductDm.dstblProductLedger
                Filter.Criteria = {00000000}
                LookAndFeel = lfFlat
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
                object dxDBGrid5Date_dat: TdxDBGridDateColumn
                  Caption = 'Date'
                  Width = 154
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Date_dat'
                end
                object dxDBGrid5Quantity_int: TdxDBGridCurrencyColumn
                  Caption = 'Ordered'
                  HeaderAlignment = taRightJustify
                  Width = 147
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Quantity_int'
                  Nullable = False
                end
                object dxDBGrid5QuantityOnHand_int: TdxDBGridMaskColumn
                  Caption = 'QoH'
                  Width = 101
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'QuantityOnHand_int'
                end
                object dxDBGrid5MaxStockSet_int: TdxDBGridMaskColumn
                  Caption = 'Max Stock'
                  Width = 101
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'MaxStockSet_int'
                end
                object dxDBGrid5Value_mon: TdxDBGridCurrencyColumn
                  Caption = 'Cost'
                  Width = 93
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Value_mon'
                  Nullable = False
                end
              end
            end
          end
        end
      end
    end
  end
  object dsConsumption: TDataSource
    DataSet = ProductDm.stpProductConsumption
    Left = 408
    Top = 16
  end
  object dsLeadTime: TDataSource
    DataSet = ProductDm.stpProductLeadTime
    Left = 372
    Top = 16
  end
  object dsProductStore: TDataSource
    DataSet = ProductDm.tblProductCatalog
    Left = 444
    Top = 16
  end
  object dsTender: TDataSource
    Left = 340
    Top = 16
  end
  object dsOrder: TDataSource
    DataSet = ProductDm.stpProductLedger
    Left = 476
    Top = 12
  end
  object dxEditStyleController1: TdxEditStyleController
    BorderStyle = xbsFlat
    Left = 520
    Top = 8
  end
end
