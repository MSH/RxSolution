object HealthCareRegisterfrm: THealthCareRegisterfrm
  Left = 95
  Top = 121
  Width = 1246
  Height = 650
  Caption = 'Health Care Register'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object RzGroupBox1: TRzGroupBox
    Left = 0
    Top = 0
    Width = 1238
    Height = 616
    Align = alClient
    TabOrder = 0
    object RzGroupBox22: TRzGroupBox
      Left = 1
      Top = 39
      Width = 1236
      Height = 47
      Align = alTop
      Caption = '...'
      TabOrder = 0
      object RzLabel3: TRzLabel
        Left = 5
        Top = 19
        Width = 78
        Height = 13
        Caption = 'Consulting room:'
      end
      object RzDBEdit3: TRzDBEdit
        Left = 95
        Top = 17
        Width = 226
        Height = 21
        DataSource = dmPatient.dsqryHealthCareReg
        DataField = 'ConsultingRoom_str'
        TabOrder = 0
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 86
      Width = 1236
      Height = 515
      ActivePage = TabSheet20
      Align = alTop
      RaggedRight = True
      TabIndex = 5
      TabOrder = 1
      object TabSheet15: TTabSheet
        Caption = 'Headcount'
        object RzGroupBox2: TRzGroupBox
          Left = 0
          Top = 0
          Width = 1228
          Height = 487
          Align = alClient
          TabOrder = 0
          object RzDBCheckBox4: TRzDBCheckBox
            Left = 4
            Top = 32
            Width = 84
            Height = 17
            DataField = 'HeadCountUnder5_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Under 5 yrs'
            TabOrder = 0
          end
          object RzDBCheckBox5: TRzDBCheckBox
            Left = 4
            Top = 56
            Width = 102
            Height = 17
            DataField = 'HeadCountOver5_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = '5 years and older'
            TabOrder = 1
          end
          object RzDBCheckBox6: TRzDBCheckBox
            Left = 4
            Top = 80
            Width = 221
            Height = 46
            DataField = 'HeadCountPHCAllDay_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'PHC headcount seen from 7pm-7am'
            TabOrder = 2
          end
        end
      end
      object TabSheet16: TTabSheet
        Caption = 'Service Points'
        ImageIndex = 1
        object RzGroupBox3: TRzGroupBox
          Left = 0
          Top = 0
          Width = 1228
          Height = 487
          Align = alClient
          Caption = 'Service Points'
          TabOrder = 0
          object RzGroupBox13: TRzGroupBox
            Left = 3
            Top = 14
            Width = 118
            Caption = 'PHC'
            TabOrder = 0
            object RzDBCheckBox2: TRzDBCheckBox
              Left = 4
              Top = 36
              Width = 109
              Height = 17
              DataField = 'ServPtPHCChronicVisit_bol'
              DataSource = dmPatient.dsqryHealthCareReg
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Chronic care visit'
              TabOrder = 0
            end
            object RzDBCheckBox3: TRzDBCheckBox
              Left = 4
              Top = 17
              Width = 112
              Height = 17
              DataField = 'ServPtPHCCurativeVisit_bol'
              DataSource = dmPatient.dsqryHealthCareReg
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Curative care visit'
              TabOrder = 1
            end
            object RzDBCheckBox10: TRzDBCheckBox
              Left = 4
              Top = 54
              Width = 109
              Height = 16
              DataField = 'ServPtPHCPrevantVisit_bol'
              DataSource = dmPatient.dsqryHealthCareReg
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Prevantative care visit'
              TabOrder = 2
            end
            object RzDBCheckBox11: TRzDBCheckBox
              Left = 4
              Top = 73
              Width = 109
              Height = 17
              DataField = 'ServPtPHCHomeVisit_bol'
              DataSource = dmPatient.dsqryHealthCareReg
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Home visits'
              TabOrder = 3
            end
          end
          object RzDBCheckBox1: TRzDBCheckBox
            Left = 7
            Top = 124
            Width = 115
            Height = 17
            DataField = 'ServtHASTServVisit_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'HAST Service visit'
            TabOrder = 1
          end
        end
      end
      object TabSheet17: TTabSheet
        Caption = 'Seen by doctor'
        ImageIndex = 2
        object RzGroupBox4: TRzGroupBox
          Left = 0
          Top = 0
          Width = 1228
          Height = 487
          Align = alClient
          TabOrder = 0
          object RzDBCheckBox7: TRzDBCheckBox
            Left = 7
            Top = 32
            Width = 186
            Height = 33
            DataField = 'DoctorSeenPHCDrRef_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'PHC cases seen by - Dr referred'
            TabOrder = 0
          end
          object RzDBCheckBox8: TRzDBCheckBox
            Left = 8
            Top = 72
            Width = 179
            Height = 33
            DataField = 'DoctorSeenPHCDrNotRef_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'PHC cases seen by Dr - not referred'
            TabOrder = 1
          end
          object RzDBCheckBox9: TRzDBCheckBox
            Left = 8
            Top = 112
            Width = 179
            Height = 33
            DataField = 'SeenByProfNurse_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Seen by Professional Nurse'
            TabOrder = 2
          end
        end
      end
      object TabSheet18: TTabSheet
        Caption = 'CURATIVE SERVICES'
        ImageIndex = 3
        object RzGroupBox5: TRzGroupBox
          Left = 0
          Top = 0
          Width = 1228
          Height = 487
          Align = alClient
          TabOrder = 0
          object v: TRzPageControl
            Left = 1
            Top = 14
            Width = 1226
            Height = 472
            ActivePage = TabSheet2
            Align = alClient
            TabIndex = 1
            TabOrder = 0
            object TabSheet1: TRzTabSheet
              Caption = 'Child Health && IMCI'
              object RzDBCheckBox12: TRzDBCheckBox
                Left = 4
                Top = 17
                Width = 115
                Height = 17
                DataField = 'ServPtPHCCurativeVisit_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Curative care visit'
                TabOrder = 0
              end
              object RzDBCheckBox13: TRzDBCheckBox
                Left = 4
                Top = 36
                Width = 115
                Height = 17
                DataField = 'ServPtPHCChronicVisit_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Chronic care visit'
                TabOrder = 1
              end
              object RzTabSheet1: TRzTabSheet
                Caption = 'Child Health && IMCI'
                object RzDBCheckBox14: TRzDBCheckBox
                  Left = 4
                  Top = 17
                  Width = 115
                  Height = 17
                  DataField = 'ServPtPHCCurativeVisit_bol'
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'Curative care visit'
                  TabOrder = 0
                end
                object RzDBCheckBox15: TRzDBCheckBox
                  Left = 4
                  Top = 44
                  Width = 115
                  Height = 17
                  DataField = 'ServPtPHCChronicVisit_bol'
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'Chronic care visit'
                  TabOrder = 1
                end
                object RzTabSheet3: TRzTabSheet
                  Caption = 'Child Health && IMCI'
                  object RzDBCheckBox18: TRzDBCheckBox
                    Left = 4
                    Top = 1
                    Width = 115
                    Height = 17
                    DataField = 'ServPtPHCCurativeVisit_bol'
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'Pneumonia under 5 years'
                    TabOrder = 0
                  end
                  object RzDBCheckBox19: TRzDBCheckBox
                    Left = 4
                    Top = 20
                    Width = 141
                    Height = 17
                    DataField = 'ServPtPHCChronicVisit_bol'
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'Child < 5 years weighed'
                    TabOrder = 1
                  end
                  object RzDBCheckBox20: TRzDBCheckBox
                    Left = 4
                    Top = 38
                    Width = 173
                    Height = 16
                    DataField = 'ServPtPHCPrevantVisit_bol'
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'Underweight for age < 5 years'
                    TabOrder = 2
                  end
                  object RzDBCheckBox21: TRzDBCheckBox
                    Left = 4
                    Top = 57
                    Width = 173
                    Height = 17
                    DataField = 'ServPtPHCHomeVisit_bol'
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'Not gaining weight < 5 years'
                    TabOrder = 3
                  end
                  object RzDBCheckBox22: TRzDBCheckBox
                    Left = 4
                    Top = 77
                    Width = 205
                    Height = 16
                    DataField = 'ServPtPHCPrevantVisit_bol'
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'Severe malnutrition < 5 years - new'
                    TabOrder = 4
                  end
                  object RzDBCheckBox23: TRzDBCheckBox
                    Left = 4
                    Top = 96
                    Width = 221
                    Height = 17
                    DataField = 'ServPtPHCHomeVisit_bol'
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'Diarrhoe with dehydration < 5 years - new'
                    TabOrder = 5
                  end
                  object RzDBCheckBox24: TRzDBCheckBox
                    Left = 4
                    Top = 114
                    Width = 213
                    Height = 31
                    DataField = 'ServPtPHCHomeVisit_bol'
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'Diarrhoe with no dehydration < 5 years - new'
                    TabOrder = 6
                  end
                end
              end
            end
            object TabSheet2: TRzTabSheet
              Caption = 'Mental Health'
              object RzTabSheet2: TRzTabSheet
                Caption = 'Child Health && IMCI'
                object RzDBCheckBox16: TRzDBCheckBox
                  Left = 4
                  Top = 17
                  Width = 115
                  Height = 17
                  DataField = 'ServPtPHCCurativeVisit_bol'
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'Mental health client - new'
                  TabOrder = 0
                end
                object RzDBCheckBox17: TRzDBCheckBox
                  Left = 4
                  Top = 36
                  Width = 181
                  Height = 17
                  DataField = 'ServPtPHCChronicVisit_bol'
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'Mental health visit - follow up'
                  TabOrder = 1
                end
              end
              object RzDBCheckBox104: TRzDBCheckBox
                Left = 4
                Top = 17
                Width = 115
                Height = 17
                DataField = 'CurServMentalClientNew_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Mental health client - new'
                TabOrder = 1
              end
              object RzDBCheckBox105: TRzDBCheckBox
                Left = 4
                Top = 36
                Width = 115
                Height = 17
                DataField = 'CurServMentalVisitFollowUp_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Mental health client - follow up'
                TabOrder = 2
              end
            end
          end
        end
      end
      object TabSheet19: TTabSheet
        Caption = 'CHRONIC DISEASES'
        ImageIndex = 4
        object RzGroupBox15: TRzGroupBox
          Left = 0
          Top = 0
          Width = 1228
          Height = 487
          Align = alClient
          TabOrder = 0
          object RzDBCheckBox25: TRzDBCheckBox
            Left = 7
            Top = 27
            Width = 235
            Height = 30
            DataField = 'ChronicHyperCaseNew_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Hypertension case put on Rx - new'
            TabOrder = 0
          end
          object RzDBCheckBox26: TRzDBCheckBox
            Left = 8
            Top = 54
            Width = 238
            Height = 16
            DataField = 'ChronicHyperFollowUp_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Hypertension follow-up visit'
            TabOrder = 1
          end
          object RzDBCheckBox27: TRzDBCheckBox
            Left = 8
            Top = 74
            Width = 234
            Height = 26
            DataField = 'ChronicDiabetesCaseNew_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Diabetis mellitus case put on Rx - new'
            TabOrder = 2
          end
          object RzDBCheckBox28: TRzDBCheckBox
            Left = 8
            Top = 102
            Width = 218
            Height = 17
            DataField = 'ChronicEpilepsyVisit_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Epilepsy visit'
            TabOrder = 3
          end
          object RzDBCheckBox29: TRzDBCheckBox
            Left = 8
            Top = 122
            Width = 218
            Height = 28
            DataField = 'ChronicAsthmaUnder18_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Asthma visit under 18 years'
            TabOrder = 4
          end
          object RzDBCheckBox30: TRzDBCheckBox
            Left = 8
            Top = 150
            Width = 218
            Height = 17
            DataField = 'ChronicAsthmaOver18_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Asthma visit above 18 years'
            TabOrder = 5
          end
        end
      end
      object TabSheet20: TTabSheet
        Caption = 'PREVENTATIVE SERVICES'
        ImageIndex = 5
        object RzGroupBox12: TRzGroupBox
          Left = 0
          Top = 0
          Width = 1228
          Height = 487
          Align = alClient
          TabOrder = 0
          object RzPageControl2: TRzPageControl
            Left = 1
            Top = 14
            Width = 1226
            Height = 472
            ActivePage = TabSheet7
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabIndex = 4
            TabOrder = 0
            TabStyle = tsCutCorner
            object TabSheet3: TRzTabSheet
              Caption = 'EPI'
              object RzPageControl3: TRzPageControl
                Left = 0
                Top = 0
                Width = 429
                Height = 199
                ActivePage = TabSheet9
                Align = alCustom
                TabIndex = 1
                TabOrder = 0
                object TabSheet8: TRzTabSheet
                  Caption = 'Primary Schedule'
                  object RzDBCheckBox32: TRzDBCheckBox
                    Left = 4
                    Top = 1
                    Width = 115
                    Height = 17
                    DataField = 'PrevEPIPrimaryBCGDose_bol'
                    DataSource = dmPatient.dsqryHealthCareReg
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'BCG Dose'
                    TabOrder = 0
                  end
                  object RzDBCheckBox33: TRzDBCheckBox
                    Left = 4
                    Top = 20
                    Width = 141
                    Height = 17
                    DataField = 'PrevEPIPrimaryOPVFirstDose_bol'
                    DataSource = dmPatient.dsqryHealthCareReg
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'OPV First Dose'
                    TabOrder = 1
                  end
                  object RzDBCheckBox34: TRzDBCheckBox
                    Left = 4
                    Top = 38
                    Width = 173
                    Height = 16
                    DataField = 'PrevEPIPrimaryDPTHibFirstDose_bol'
                    DataSource = dmPatient.dsqryHealthCareReg
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'DTP-Hib First Dose'
                    TabOrder = 2
                  end
                  object RzDBCheckBox35: TRzDBCheckBox
                    Left = 4
                    Top = 60
                    Width = 173
                    Height = 17
                    DataField = 'PrevEPIPrimaryHepBFirstDose_bol'
                    DataSource = dmPatient.dsqryHealthCareReg
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'Hep B First Dose'
                    TabOrder = 3
                  end
                  object RzDBCheckBox36: TRzDBCheckBox
                    Left = 4
                    Top = 80
                    Width = 205
                    Height = 16
                    DataField = 'PrevEPIPrimaryOPVThirdDose_bol'
                    DataSource = dmPatient.dsqryHealthCareReg
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'OPV Third Dose'
                    TabOrder = 4
                  end
                  object RzDBCheckBox37: TRzDBCheckBox
                    Left = 4
                    Top = 99
                    Width = 237
                    Height = 17
                    DataField = 'PrevEPIPrimaryDTPHibThirdDose_bol'
                    DataSource = dmPatient.dsqryHealthCareReg
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'DPT-Hib Third Dose'
                    TabOrder = 5
                  end
                  object RzDBCheckBox38: TRzDBCheckBox
                    Left = 4
                    Top = 120
                    Width = 237
                    Height = 17
                    DataField = 'PrevEPIPrimaryHepBThirdDose_bol'
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'Hep B Third Dose'
                    TabOrder = 6
                  end
                  object RzDBCheckBox39: TRzDBCheckBox
                    Left = 4
                    Top = 138
                    Width = 237
                    Height = 17
                    DataField = 'PrevEPIPrimaryVitA6To11MntInfant_bol'
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'Vit A 6-11 months infant'
                    TabOrder = 7
                  end
                  object RzDBCheckBox40: TRzDBCheckBox
                    Left = 4
                    Top = 156
                    Width = 237
                    Height = 17
                    DataField = 'PrevEPIPrimaryMeaslesFirstDoseAt9_bol'
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'Measles First Dose at 9 months'
                    TabOrder = 8
                  end
                end
                object TabSheet9: TRzTabSheet
                  Caption = 'Boosters'
                  object RzDBCheckBox41: TRzDBCheckBox
                    Left = 4
                    Top = 10
                    Width = 115
                    Height = 17
                    DataField = 'PrevEPIBoosterVitA12To60Mnt_bol'
                    DataSource = dmPatient.dsqryHealthCareReg
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'Vit A 12 - 60 months child'
                    TabOrder = 0
                  end
                  object RzDBCheckBox42: TRzDBCheckBox
                    Left = 4
                    Top = 37
                    Width = 229
                    Height = 17
                    DataField = 'PrevEPIBoosterMeaslesSecAt18Mnt_bol'
                    DataSource = dmPatient.dsqryHealthCareReg
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'Measles Second Dose at 18 months'
                    TabOrder = 1
                  end
                  object RzDBCheckBox43: TRzDBCheckBox
                    Left = 4
                    Top = 63
                    Width = 229
                    Height = 16
                    DataField = 'PrevEPIBoosterDT5yr'
                    DataSource = dmPatient.dsqryHealthCareReg
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    Caption = 'DT Dose at 5 years'
                    TabOrder = 2
                  end
                end
              end
              object RzDBCheckBox31: TRzDBCheckBox
                Left = 6
                Top = 201
                Width = 315
                Height = 17
                DataField = 'PrevEPIImmunisedFullyU1yrNew_bol'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Immunised fully under 1 yr - new'
                TabOrder = 1
              end
            end
            object TabSheet4: TRzTabSheet
              Caption = 'Supplementary Feeding'
              object RzGroupBox6: TRzGroupBox
                Left = 3
                Top = 7
                Width = 142
                Height = 210
                Caption = 'Breast Milk Supplements'
                TabOrder = 0
                object RzDBCheckBox44: TRzDBCheckBox
                  Left = 4
                  Top = 32
                  Width = 115
                  Height = 17
                  DataField = 'PrevSuppBreastMilkU6Mnt_bol'
                  DataSource = dmPatient.dsqryHealthCareReg
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'Infants < 6 months'
                  TabOrder = 0
                end
                object RzDBCheckBox45: TRzDBCheckBox
                  Left = 4
                  Top = 63
                  Width = 115
                  Height = 17
                  DataField = 'PrevSuppBreastMilk6To11Mnt_bol'
                  DataSource = dmPatient.dsqryHealthCareReg
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'Infant 6 - 11 months'
                  TabOrder = 1
                end
              end
              object RzGroupBox7: TRzGroupBox
                Left = 150
                Top = 7
                Width = 151
                Height = 210
                Caption = 'Supplements'
                TabOrder = 1
                object RzDBCheckBox46: TRzDBCheckBox
                  Left = 4
                  Top = 32
                  Width = 124
                  Height = 17
                  DataField = 'PrevSupp12To35Mtn_bol'
                  DataSource = dmPatient.dsqryHealthCareReg
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'Children 12-35 months'
                  TabOrder = 0
                end
                object RzDBCheckBox47: TRzDBCheckBox
                  Left = 4
                  Top = 63
                  Width = 132
                  Height = 17
                  DataField = 'PrevSupp36T59Mtn_bol'
                  DataSource = dmPatient.dsqryHealthCareReg
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'Children 36-59 months'
                  TabOrder = 1
                end
              end
            end
            object TabSheet5: TRzTabSheet
              Caption = 'Maternal Health'
              object RzGroupBox8: TRzGroupBox
                Left = 3
                Top = 7
                Width = 154
                Height = 75
                Caption = '< 18 years'
                TabOrder = 0
                object RzDBCheckBox48: TRzDBCheckBox
                  Left = 4
                  Top = 24
                  Width = 148
                  Height = 17
                  DataField = 'PrevMatU18yrANCFirstUnder20Wks'
                  DataSource = dmPatient.dsqryHealthCareReg
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'ANC First visit < 20 weeks'
                  TabOrder = 0
                end
                object RzDBCheckBox49: TRzDBCheckBox
                  Left = 4
                  Top = 52
                  Width = 149
                  Height = 15
                  DataField = 'PrevMatU18yrANCFirstOver20Wks'
                  DataSource = dmPatient.dsqryHealthCareReg
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'ANC First visit > 20 weeks'
                  TabOrder = 1
                end
              end
              object RzGroupBox9: TRzGroupBox
                Left = 160
                Top = 7
                Width = 155
                Height = 75
                Caption = '18 years +'
                TabOrder = 1
                object RzDBCheckBox50: TRzDBCheckBox
                  Left = 4
                  Top = 23
                  Width = 147
                  Height = 17
                  DataField = 'PrevMatO18yrANCFirstUnder20Wks'
                  DataSource = dmPatient.dsqryHealthCareReg
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'ANC First visit < 20 weeks'
                  TabOrder = 0
                end
                object RzDBCheckBox51: TRzDBCheckBox
                  Left = 4
                  Top = 52
                  Width = 145
                  Height = 17
                  DataField = 'PrevMatO18yrANCFirstOver20Wks'
                  DataSource = dmPatient.dsqryHealthCareReg
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'ANC First visit > 20 weeks'
                  TabOrder = 1
                end
              end
              object RzDBCheckBox52: TRzDBCheckBox
                Left = 7
                Top = 95
                Width = 146
                Height = 17
                DataField = 'PrevMatANCFollowUp_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'ANC follow-up visit'
                TabOrder = 2
              end
              object RzDBCheckBox53: TRzDBCheckBox
                Left = 7
                Top = 123
                Width = 202
                Height = 28
                DataField = 'PrevMatBoosterPregWoman_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Tet Tox Second / Booster dose to pregnant woman'
                TabOrder = 3
              end
              object RzDBCheckBox54: TRzDBCheckBox
                Left = 7
                Top = 153
                Width = 178
                Height = 31
                DataField = 'PrevMatClientTestedSyphilisPos_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Antenatal client tested for syphylis - positive'
                TabOrder = 4
              end
              object RzDBCheckBox55: TRzDBCheckBox
                Left = 7
                Top = 184
                Width = 186
                Height = 33
                DataField = 'PrevMatVitA8WeeksDelivery_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Vit A to women within 8 weeks after delivery'
                TabOrder = 5
              end
            end
            object TabSheet6: TRzTabSheet
              Caption = 'Family Planning'
              object RzDBCheckBox56: TRzDBCheckBox
                Left = 7
                Top = 15
                Width = 146
                Height = 17
                DataField = 'PrevFamPlanNurInj_bol'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Nur-isterate injection'
                TabOrder = 0
              end
              object RzDBCheckBox57: TRzDBCheckBox
                Left = 7
                Top = 43
                Width = 202
                Height = 22
                DataField = 'PrevFamPlanPetoInj_bol'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Petogen injection'
                TabOrder = 1
              end
              object RzDBCheckBox58: TRzDBCheckBox
                Left = 7
                Top = 73
                Width = 178
                Height = 18
                DataField = 'PrevFamPlanIUCDInserted_bol'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'IUCD inserted'
                TabOrder = 2
              end
              object RzDBCheckBox59: TRzDBCheckBox
                Left = 7
                Top = 104
                Width = 186
                Height = 25
                DataField = 'PrevFamPlanOralPill_bol'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Oral pill cycle'
                TabOrder = 3
              end
            end
            object TabSheet7: TRzTabSheet
              Caption = 'Pap Smear'
              object RzDBCheckBox60: TRzDBCheckBox
                Left = 7
                Top = 15
                Width = 194
                Height = 17
                DataField = 'PrevPapSmrCervSmr30To59yr_bol'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Cervical smear 30 -59 years'
                TabOrder = 0
              end
              object RzDBCheckBox61: TRzDBCheckBox
                Left = 7
                Top = 43
                Width = 242
                Height = 30
                DataField = 'PrevPapSmrCervSmr30T059yr'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Cervical smear 30 - 59 ...'
                TabOrder = 1
              end
            end
          end
        end
      end
      object TabSheet21: TTabSheet
        Caption = 'HAST Service'
        ImageIndex = 6
        object RzGroupBox10: TRzGroupBox
          Left = 5
          Top = 4
          Width = 183
          Height = 257
          TabOrder = 0
          object RzDBCheckBox62: TRzDBCheckBox
            Left = 4
            Top = 25
            Width = 115
            Height = 17
            DataField = 'HASTServSTIVisit_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'STI visit (HAST)'
            TabOrder = 0
          end
          object RzDBCheckBox63: TRzDBCheckBox
            Left = 4
            Top = 44
            Width = 141
            Height = 17
            DataField = 'HASTServVCTVisit_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'VCT visit (HAST)'
            TabOrder = 1
          end
          object RzDBCheckBox64: TRzDBCheckBox
            Left = 4
            Top = 62
            Width = 173
            Height = 16
            DataField = 'HASTServPMTCTVisit_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'PMTCT visit (HAST)'
            TabOrder = 2
          end
          object RzDBCheckBox65: TRzDBCheckBox
            Left = 4
            Top = 92
            Width = 157
            Height = 17
            DataField = 'HASTServTBVisit_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'TB visit (HAST)'
            TabOrder = 3
          end
          object RzDBCheckBox66: TRzDBCheckBox
            Left = 4
            Top = 112
            Width = 157
            Height = 16
            DataField = 'HASTServHIVTBCoVisit_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'HIV/TB Collaboration visit (HAST)'
            TabOrder = 4
          end
          object RzDBCheckBox67: TRzDBCheckBox
            Left = 4
            Top = 142
            Width = 149
            Height = 17
            DataField = 'HASTServPEPVisit_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'PEP visit (HAST)'
            TabOrder = 5
          end
          object RzDBCheckBox68: TRzDBCheckBox
            Left = 4
            Top = 163
            Width = 170
            Height = 17
            DataField = 'HASTServARTFirstVisit_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'ART initial assessment visit (HAST)'
            TabOrder = 6
          end
          object RzDBCheckBox69: TRzDBCheckBox
            Left = 4
            Top = 184
            Width = 173
            Height = 17
            DataField = 'HASTServARTSiteVisit_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'ART accredited site visit (HAST)'
            TabOrder = 7
          end
        end
      end
      object TabSheet22: TTabSheet
        Caption = 'Special HAST Age breakdown'
        ImageIndex = 7
        object RzGroupBox11: TRzGroupBox
          Left = 0
          Top = 12
          Width = 175
          Height = 230
          TabOrder = 0
          object RzDBCheckBox70: TRzDBCheckBox
            Left = 4
            Top = 25
            Width = 115
            Height = 17
            DataField = 'SpecialHASTAgeUnder1yr'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'HAST Less than 1 year'
            TabOrder = 0
          end
          object RzDBCheckBox71: TRzDBCheckBox
            Left = 4
            Top = 44
            Width = 141
            Height = 17
            DataField = 'SpecialHASTAge1To5yr'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'HAST 1-5 years'
            TabOrder = 1
          end
          object RzDBCheckBox72: TRzDBCheckBox
            Left = 4
            Top = 72
            Width = 144
            Height = 16
            DataField = 'SpecialHASTAge6To14yr_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'HAST 6-14 years'
            TabOrder = 2
          end
          object RzDBCheckBox73: TRzDBCheckBox
            Left = 4
            Top = 92
            Width = 143
            Height = 17
            DataField = 'SpecialHASTAge15To35yr_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'HAST 15-35 years'
            TabOrder = 3
          end
          object RzDBCheckBox74: TRzDBCheckBox
            Left = 4
            Top = 112
            Width = 145
            Height = 16
            DataField = 'SpecialHASTAgeOver35yr_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'HAST Over 35 years'
            TabOrder = 4
          end
        end
      end
      object TabSheet23: TTabSheet
        Caption = 'Gender'
        ImageIndex = 8
        object RzGroupBox14: TRzGroupBox
          Left = 10
          Top = 4
          Width = 172
          Height = 117
          TabOrder = 0
          object RzDBCheckBox75: TRzDBCheckBox
            Left = 4
            Top = 25
            Width = 83
            Height = 17
            DataField = 'GenderHASTMale_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'HAST Male'
            TabOrder = 0
          end
          object RzDBCheckBox76: TRzDBCheckBox
            Left = 4
            Top = 44
            Width = 86
            Height = 17
            DataField = 'GenderHASTFemale_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'HAST Female'
            TabOrder = 1
          end
        end
      end
      object TabSheet24: TTabSheet
        Caption = 'TB'
        ImageIndex = 9
        object RzGroupBox16: TRzGroupBox
          Left = 4
          Top = 12
          Width = 285
          Height = 113
          TabOrder = 0
          object RzDBCheckBox78: TRzDBCheckBox
            Left = 4
            Top = 46
            Width = 221
            Height = 29
            DataField = 'TBSuspectSmearPositive_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Suspected TB case smear positive'
            TabOrder = 0
          end
          object RzDBCheckBox79: TRzDBCheckBox
            Left = 4
            Top = 78
            Width = 229
            Height = 31
            DataField = 'TBSuspectTreamentStart_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Suspected TB case smear positive - treatment start'
            TabOrder = 1
          end
          object RzDBCheckBox77: TRzDBCheckBox
            Left = 4
            Top = 16
            Width = 229
            Height = 29
            DataField = 'TBSuspectSputumSent_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Suspected TB case with sputum sent'
            TabOrder = 2
          end
        end
      end
      object TabSheet29: TTabSheet
        Caption = 'STI'
        ImageIndex = 14
        object RzGroupBox17: TRzGroupBox
          Left = 3
          Top = 11
          Width = 204
          Height = 106
          TabOrder = 0
          object RzDBCheckBox80: TRzDBCheckBox
            Left = 4
            Top = 17
            Width = 177
            Height = 32
            DataField = 'STITreatedSyndApproachNew_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'STI treated using the syndromic approach - new episode'
            TabOrder = 0
          end
          object RzDBCheckBox81: TRzDBCheckBox
            Left = 4
            Top = 49
            Width = 150
            Height = 29
            DataField = 'STIMaleUretritisTreatedNew_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Male Uretritis Syndrome cases treated - new episode'
            TabOrder = 1
          end
          object RzDBCheckBox82: TRzDBCheckBox
            Left = 4
            Top = 79
            Width = 150
            Height = 18
            DataField = 'STIPartnerTreatedNew_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'STI partner treated - new'
            TabOrder = 2
          end
          object RzDBCheckBox83: TRzDBCheckBox
            Left = 4
            Top = 107
            Width = 150
            Height = 29
            DataField = 'ServPtPHCChronicVisit_bol'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'STI partner notification slips issued'
            TabOrder = 3
          end
        end
      end
      object TabSheet25: TTabSheet
        Caption = 'HIV'
        ImageIndex = 10
        object RzGroupBox18: TRzGroupBox
          Left = 0
          Top = 0
          Width = 1228
          Height = 487
          Align = alClient
          TabOrder = 0
          object RzPageControl4: TRzPageControl
            Left = 1
            Top = 14
            Width = 1226
            Height = 189
            ActivePage = TabSheet14
            Align = alTop
            TabIndex = 4
            TabOrder = 0
            object TabSheet10: TRzTabSheet
              Caption = 'VCT'
              object RzDBCheckBox84: TRzDBCheckBox
                Left = 4
                Top = 144
                Width = 253
                Height = 17
                DataField = 'HIVVCTPosOver5yr_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'HIV positive > 5 years (excl ANC && TB)'
                TabOrder = 0
              end
              object RzDBCheckBox85: TRzDBCheckBox
                Left = 4
                Top = 124
                Width = 245
                Height = 17
                DataField = 'HIVVCTClientTestedOver5yr_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'HIV client tested > 5 years (excl ANC && TB)'
                TabOrder = 1
              end
              object RzDBCheckBox86: TRzDBCheckBox
                Left = 4
                Top = 94
                Width = 229
                Height = 16
                DataField = 'HIVVCTPosUnder5yr_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'HIV positive < 5 years'
                TabOrder = 2
              end
              object RzDBCheckBox87: TRzDBCheckBox
                Left = 4
                Top = 74
                Width = 237
                Height = 17
                DataField = 'HIVVCTTestUnder5yr_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'HIV test done < 5 years '
                TabOrder = 3
              end
              object RzDBCheckBox88: TRzDBCheckBox
                Left = 4
                Top = 52
                Width = 229
                Height = 16
                DataField = 'HIVVCTPreTestCounselled_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'HIV pre-test counselled (excl antenal && TB)'
                TabOrder = 4
              end
              object RzDBCheckBox89: TRzDBCheckBox
                Left = 4
                Top = 26
                Width = 197
                Height = 17
                DataField = 'HIVVCTMedicalRef_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'VCT Medical referral (excl ANC && TB)'
                TabOrder = 5
              end
              object RzDBCheckBox90: TRzDBCheckBox
                Left = 4
                Top = 7
                Width = 181
                Height = 17
                DataField = 'HIVVCTSelRef_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'VCT Self referral (excl ANC && TB)'
                TabOrder = 6
              end
            end
            object TabSheet11: TRzTabSheet
              Caption = 'PMTCT'
              object RzDBCheckBox91: TRzDBCheckBox
                Left = 4
                Top = 7
                Width = 237
                Height = 17
                DataField = 'PMTCTClientPreTestCounselled_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Antenatal client pre-test counselled'
                TabOrder = 0
              end
              object RzDBCheckBox92: TRzDBCheckBox
                Left = 4
                Top = 26
                Width = 253
                Height = 17
                DataField = 'PMTCTClientTestedHIV_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Antenatal client test for HIV'
                TabOrder = 1
              end
              object RzDBCheckBox93: TRzDBCheckBox
                Left = 4
                Top = 46
                Width = 229
                Height = 16
                DataField = 'PMTCTClientTestHIVPositive_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Antenatal cllient tested HIV positive'
                TabOrder = 2
              end
              object RzDBCheckBox94: TRzDBCheckBox
                Left = 4
                Top = 74
                Width = 317
                Height = 17
                DataField = 'PMTCTNevpnToHIVClientOnLabour_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Nevirapine dose HIV positive woman at antenatal on labour'
                TabOrder = 3
              end
              object RzDBCheckBox95: TRzDBCheckBox
                Left = 4
                Top = 94
                Width = 293
                Height = 16
                DataField = 'PMTCTNevpnToBaby_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Nevirapine dose to baby born to a woman with HIV'
                TabOrder = 4
              end
              object RzDBCheckBox96: TRzDBCheckBox
                Left = 4
                Top = 124
                Width = 245
                Height = 17
                DataField = 'PMTCTLiveBirthHIVPos_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Live birth to woman with HIV'
                TabOrder = 5
              end
              object RzDBCheckBox97: TRzDBCheckBox
                Left = 4
                Top = 144
                Width = 253
                Height = 17
                DataField = 'PMTCTHIVFirstTestBabyPos_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'HIV first test of baby born to HIV positive woman'
                TabOrder = 6
              end
              object RzDBCheckBox98: TRzDBCheckBox
                Left = 4
                Top = 164
                Width = 253
                Height = 17
                DataField = 'ServPtPHCHomeVisit_bol'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'HIV test of baby born to HIV positive woman positive'
                TabOrder = 7
              end
            end
            object TabSheet12: TRzTabSheet
              Caption = 'HIV/TB Collobartion'
              object RzDBCheckBox106: TRzDBCheckBox
                Left = 4
                Top = 7
                Width = 305
                Height = 17
                DataField = 'HIVTBPreTestCounselledOver15yr'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'TB client pre-test counselled 15 years and older'
                TabOrder = 0
              end
              object RzDBCheckBox107: TRzDBCheckBox
                Left = 4
                Top = 26
                Width = 293
                Height = 17
                DataField = 'HIVTBHIVTestedOver15yr_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'TB patient tested for HIV 15 years and older'
                TabOrder = 1
              end
              object RzDBCheckBox108: TRzDBCheckBox
                Left = 4
                Top = 46
                Width = 309
                Height = 16
                DataField = 'HIVTBHIVTestPosOver15yr_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'TB patient HIV positive - new 15 years and older'
                TabOrder = 2
              end
              object RzDBCheckBox109: TRzDBCheckBox
                Left = 4
                Top = 74
                Width = 317
                Height = 17
                DataField = 'HIVTBHIVPosScreenedTB_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'HIV positive new clients screened for TB'
                TabOrder = 3
              end
              object RzDBCheckBox110: TRzDBCheckBox
                Left = 4
                Top = 94
                Width = 325
                Height = 16
                DataField = 'HIVTBHIVPosConfirmedTB_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'HIV positive new client with confirmed TB'
                TabOrder = 4
              end
              object RzDBCheckBox111: TRzDBCheckBox
                Left = 4
                Top = 124
                Width = 245
                Height = 17
                DataField = 'HIVTBPPDTestHIVClient_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'PPD test on HIV positive client'
                TabOrder = 5
              end
              object RzDBCheckBox112: TRzDBCheckBox
                Left = 4
                Top = 144
                Width = 253
                Height = 17
                DataField = 'HIVTBPPDTestHIVClientPos_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'PPD test on HIV positive client positive'
                TabOrder = 6
              end
              object RzDBCheckBox113: TRzDBCheckBox
                Left = 4
                Top = 164
                Width = 309
                Height = 17
                DataField = 'ServPtPHCHomeVisit_bol'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'HIV positive new patients started INH preventative therapy'
                TabOrder = 7
              end
            end
            object TabSheet13: TRzTabSheet
              Caption = 'PEP'
              object RzDBCheckBox114: TRzDBCheckBox
                Left = 4
                Top = 7
                Width = 237
                Height = 17
                DataField = 'HIVPEPHIVExposureNew_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Occupational HIV exposure'
                TabOrder = 0
              end
              object RzDBCheckBox115: TRzDBCheckBox
                Left = 4
                Top = 26
                Width = 197
                Height = 17
                DataField = 'HIVPEPRapeCase_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Rape case - new'
                TabOrder = 1
              end
              object RzDBCheckBox116: TRzDBCheckBox
                Left = 4
                Top = 46
                Width = 301
                Height = 16
                DataField = 'HIVPEPHIVExposureOnART_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Occupational HIV exposure case given ART prophylaxis'
                TabOrder = 2
              end
              object RzDBCheckBox117: TRzDBCheckBox
                Left = 4
                Top = 67
                Width = 302
                Height = 17
                DataField = 'HIVPEPRapeCaseOnART_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Rape case given ART prophylaxis'
                TabOrder = 3
              end
            end
            object TabSheet14: TRzTabSheet
              Caption = 'ART'
              object RzGroupBox23: TRzGroupBox
                Left = 1
                Top = 1
                Width = 307
                Height = 96
                Caption = 'CD4 Count/Staging'
                TabOrder = 0
                object RzDBCheckBox122: TRzDBCheckBox
                  Left = 4
                  Top = 16
                  Width = 269
                  Height = 17
                  DataField = 'HIVARTCD4ClientNew_bol'
                  DataSource = dmPatient.dsqryHealthCareReg
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'CD 4 count to HIV positive client - new'
                  TabOrder = 0
                end
                object RzDBCheckBox123: TRzDBCheckBox
                  Left = 4
                  Top = 35
                  Width = 253
                  Height = 17
                  DataField = 'HIVARTCD4Under200_bol'
                  DataSource = dmPatient.dsqryHealthCareReg
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'CD 4 count < 200 - new'
                  TabOrder = 1
                end
                object RzDBCheckBox124: TRzDBCheckBox
                  Left = 4
                  Top = 55
                  Width = 301
                  Height = 16
                  DataField = 'HIVARTCD4Under15PercChildnNew_bol'
                  DataSource = dmPatient.dsqryHealthCareReg
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'CD 4 count less than 15% children - new'
                  TabOrder = 2
                end
                object RzDBCheckBox125: TRzDBCheckBox
                  Left = 5
                  Top = 76
                  Width = 289
                  Height = 17
                  DataField = 'HIVARTCD4Stage4Client_bol'
                  DataSource = dmPatient.dsqryHealthCareReg
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'Stage 4 client - new'
                  TabOrder = 3
                end
              end
              object RzDBCheckBox118: TRzDBCheckBox
                Left = 4
                Top = 99
                Width = 293
                Height = 17
                DataField = 'HIVARTDoseIssued_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Schedule dose issued (within 3 days) ART any regimen'
                TabOrder = 1
              end
              object RzDBCheckBox119: TRzDBCheckBox
                Left = 4
                Top = 118
                Width = 293
                Height = 17
                DataField = 'HIVARTDoseDefaulted_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Schedule dose defaulted (3 days) ART any regimen'
                TabOrder = 2
              end
              object RzDBCheckBox120: TRzDBCheckBox
                Left = 4
                Top = 138
                Width = 285
                Height = 16
                DataField = 'HIVARTRefToARTServPt_bol'
                DataSource = dmPatient.dsqryHealthCareReg
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Referral ART accrediited service point - new'
                TabOrder = 3
              end
            end
          end
          object RzDBCheckBox121: TRzDBCheckBox
            Left = 4
            Top = 205
            Width = 293
            Height = 17
            DataField = 'HIVPosClientStartCoTriProphy_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'HIV positive newpatient started Cotrimaxazole prophylaxis'
            TabOrder = 1
          end
        end
      end
      object TabSheet26: TTabSheet
        Caption = 'Referrals'
        ImageIndex = 11
        object RzGroupBox19: TRzGroupBox
          Left = 0
          Top = 0
          Width = 1228
          Height = 487
          Align = alClient
          TabOrder = 0
          object RzDBCheckBox99: TRzDBCheckBox
            Left = 4
            Top = 25
            Width = 128
            Height = 17
            DataField = 'ReferralsRefToDr_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Referral to Dr'
            TabOrder = 0
          end
          object RzDBCheckBox100: TRzDBCheckBox
            Left = 4
            Top = 46
            Width = 120
            Height = 17
            DataField = 'ReferralsRefToHospital_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Referral to hospital'
            TabOrder = 1
          end
          object RzDBCheckBox103: TRzDBCheckBox
            Left = 4
            Top = 68
            Width = 128
            Height = 29
            DataField = 'ReferralsRefToSpecialServ_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Referral to Specialised Services'
            TabOrder = 2
          end
        end
      end
      object TabSheet27: TTabSheet
        Caption = 'Pharmaceutical'
        ImageIndex = 12
        object RzGroupBox20: TRzGroupBox
          Left = 0
          Top = 0
          Width = 1228
          Height = 487
          Align = alClient
          TabOrder = 0
          object RzDBCheckBox101: TRzDBCheckBox
            Left = 4
            Top = 21
            Width = 229
            Height = 36
            DataField = 'PharmacyRxIssued_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Prescription issued (Pts received drugs)'
            TabOrder = 0
          end
          object RzDBCheckBox102: TRzDBCheckBox
            Left = 4
            Top = 56
            Width = 232
            Height = 33
            DataField = 'PharmacyItemsDispensed_bol'
            DataSource = dmPatient.dsqryHealthCareReg
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'No items dispensed (excl FP, Imm, TB)'
            TabOrder = 1
          end
        end
      end
      object TabSheet28: TTabSheet
        Caption = 'Comment'
        ImageIndex = 13
        object RzGroupBox21: TRzGroupBox
          Left = 0
          Top = 0
          Width = 1228
          Height = 487
          Align = alClient
          TabOrder = 0
          object RzDBMemo1: TRzDBMemo
            Left = 8
            Top = 16
            Width = 689
            Height = 273
            DataField = 'Comment_str'
            DataSource = dmPatient.dsqryHealthCareReg
            TabOrder = 0
          end
        end
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 14
      Width = 1236
      Height = 25
      DataSource = dmPatient.dsqryHealthCareReg
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alTop
      TabOrder = 2
    end
  end
end
