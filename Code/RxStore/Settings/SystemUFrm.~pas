unit SystemUFrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ComCtrls, Db, ExtCtrls, Buttons, DBTables,
  Grids, DBGrids, ElPgCtl,
  ElXPThemedControl, ElPopBtn, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDBaseLabel, LMDCustomSimpleLabel, LMDSimpleLabel,
  dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxPageControl,
  ActnList, DBActns, ProductGeneralUFrm, Printers, RzShellDialogs, inifiles, LocOnFly,
  Menus, RzPanel, RzSplit;

type
  TSystemFrm = class(TForm)
    dsSystem: TDataSource;
    dsSystemAccounts: TDataSource;
    pnlRequisitionListBackground: TPanel;
    shpRequisitionList: TShape;
    lblMainFormTitle: TLMDSimpleLabel;
    pnlProductDetailColorBackground: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    dbeCode: TDBEdit;
    dbeName: TDBEdit;
    dbeAddress1: TDBEdit;
    dbeAddress2: TDBEdit;
    dbeAddress3: TDBEdit;
    dbePhone: TDBEdit;
    dbeFax: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    dbePostalCode: TDBEdit;
    dbeCity: TDBEdit;
    Label24: TLabel;
    dbeProvince: TDBEdit;
    dxEditStyleController1: TdxEditStyleController;
    dxPageControl1: TdxPageControl;
    tbsAccounts: TdxTabSheet;
    tbsSystemDefaults: TdxTabSheet;
    tbsProductStartup: TdxTabSheet;
    tbsGroup1: TdxTabSheet;
    tbsGroup2: TdxTabSheet;
    tbsStorageBins: TdxTabSheet;
    dxgGroup2: TdxDBGrid;
    dxgGroup1: TdxDBGrid;
    dxgProductStartup: TdxDBGrid;
    dxgAccounts: TdxDBGrid;
    dbeDistrict: TDBEdit;
    dbeRegion: TDBEdit;
    Panel1: TPanel;
    GrpProcurmentPeriod: TGroupBox;
    Lbl_PP_A: TLabel;
    Lbl_PP_B: TLabel;
    Lbl_PP_C: TLabel;
    Lbl_PP_D: TLabel;
    Lbl_PPUnt_A: TLabel;
    Lbl_PPUnt_B: TLabel;
    Lbl_PPUnt_C: TLabel;
    Lbl_PPUnt_D: TLabel;
    DBEdt_PP_A: TDBEdit;
    DBEdt_PP_B: TDBEdit;
    DBEdt_PP_C: TDBEdit;
    DBEdt_PP_D: TDBEdit;
    Grp_LeadTime: TGroupBox;
    Lbl_LT_A: TLabel;
    Lbl_LT_B: TLabel;
    Lbl_LT_C: TLabel;
    Lbl_LT_D: TLabel;
    Lbl_LTUnT_A: TLabel;
    Lbl_LTUnT_B: TLabel;
    Lbl_LTUnT_C: TLabel;
    Lbl_LTUnT_D: TLabel;
    DBEdt_LT_A: TDBEdit;
    DBEdt_LT_B: TDBEdit;
    DBEdt_LT_C: TDBEdit;
    DBEdt_LT_D: TDBEdit;
    GroupBox2: TGroupBox;
    Label20: TLabel;
    Label19: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBDateEdit2: TdxDBDateEdit;
    dxgAccountsAccount_str: TdxDBGridMaskColumn;
    dxgAccountsAccountName_str: TdxDBGridMaskColumn;
    dxgAccountsAccountBudget_mon: TdxDBGridCurrencyColumn;
    dxgAccountsLevyToRequisition_bol: TdxDBGridCheckColumn;
    dxgAccountsLevyRequisition_dbl: TdxDBGridMaskColumn;
    dxgAccountsLevyToOrder_bol: TdxDBGridCheckColumn;
    dxgAccountsLevyOrder_dbl: TdxDBGridMaskColumn;
    dxgAccountsLevyToReceipt_bol: TdxDBGridCheckColumn;
    dxgAccountsLevyReceipt_dbl: TdxDBGridMaskColumn;
    dxgAccountsInflationRate_dbl: TdxDBGridMaskColumn;
    dxgAccountsVatPercent_dbl: TdxDBGridMaskColumn;
    dxgGroup1Code_str: TdxDBGridColumn;
    dxgGroup1Description_str: TdxDBGridColumn;
    dxgGroup1Budget_mon: TdxDBGridCurrencyColumn;
    dxgGroup2Code_str: TdxDBGridColumn;
    dxgGroup2Description_str: TdxDBGridColumn;
    dxgGroup2Budget_mon: TdxDBGridCurrencyColumn;
    dxgProductStartupProductCode_str: TdxDBGridColumn;
    dxgProductStartupCost_mon: TdxDBGridCurrencyColumn;
    dxgProductStartupInstitutionEDL_bol: TdxDBGridCheckColumn;
    dxgProductStartupNSN_str: TdxDBGridColumn;
    dxgProductStartupICN_str: TdxDBGridColumn;
    dxgProductStartupECN_str: TdxDBGridColumn;
    dxgProductStartupDescription_str: TdxDBGridMaskColumn;
    dxgStorageBins: TdxDBGrid;
    dxgStorageBinsCode_str: TdxDBGridColumn;
    dxgStorageBinsDescription_str: TdxDBGridColumn;
    dxgStorageBinsSortorder: TdxDBGridMaskColumn;
    tbsATC: TdxTabSheet;
    tbsComparisonUnit: TdxTabSheet;
    tbsForm: TdxTabSheet;
    tbsGenericName: TdxTabSheet;
    tbsLevelOfUse: TdxTabSheet;
    tbsPackSizerange: TdxTabSheet;
    tbsProductBrandName: TdxTabSheet;
    tbsProductRestriction: TdxTabSheet;
    tbsStrengthRange: TdxTabSheet;
    tbsTradename: TdxTabSheet;
    tbsTLKdemanderAuthority: TdxTabSheet;
    tbsTLKdemanderType: TdxTabSheet;
    tbsLevel3: TdxTabSheet;
    tbsLevel4: TdxTabSheet;
    tbsLevel2: TdxTabSheet;
    dxgATC: TdxDBGrid;
    MainDmtblATC: TDataSource;
    dxgATCCode_str: TdxDBGridColumn;
    dxgATCDescription_str: TdxDBGridColumn;
    dxgATCProvincial_bol: TdxDBGridCheckColumn;
    dxgATCPHC_bol: TdxDBGridCheckColumn;
    lblAuthItems_Toolbar: TPanel;
    btnAuthItems_Cancel: TElSpeedButton;
    btnAuthItems_Save: TElSpeedButton;
    btnAuthItems_Delete: TElSpeedButton;
    btnAuthItems_Add: TElSpeedButton;
    Shape6: TShape;
    ElSpeedButton12: TElSpeedButton;
    Panel12: TPanel;
    ActionList1: TActionList;
    atnSelectGridColumns: TAction;
    Panel2: TPanel;
    ElSpeedButton1: TElSpeedButton;
    ElSpeedButton2: TElSpeedButton;
    ElSpeedButton3: TElSpeedButton;
    ElSpeedButton4: TElSpeedButton;
    Shape1: TShape;
    Panel4: TPanel;
    ElSpeedButton6: TElSpeedButton;
    ElSpeedButton7: TElSpeedButton;
    ElSpeedButton8: TElSpeedButton;
    ElSpeedButton9: TElSpeedButton;
    Shape2: TShape;
    ElSpeedButton10: TElSpeedButton;
    Panel5: TPanel;
    Panel6: TPanel;
    ElSpeedButton11: TElSpeedButton;
    ElSpeedButton13: TElSpeedButton;
    ElSpeedButton14: TElSpeedButton;
    ElSpeedButton15: TElSpeedButton;
    Shape3: TShape;
    Panel8: TPanel;
    ElSpeedButton17: TElSpeedButton;
    ElSpeedButton18: TElSpeedButton;
    ElSpeedButton19: TElSpeedButton;
    ElSpeedButton20: TElSpeedButton;
    Shape4: TShape;
    Panel10: TPanel;
    ElSpeedButton22: TElSpeedButton;
    ElSpeedButton23: TElSpeedButton;
    ElSpeedButton24: TElSpeedButton;
    ElSpeedButton25: TElSpeedButton;
    Shape5: TShape;
    ElSpeedButton26: TElSpeedButton;
    Panel11: TPanel;
    Panel13: TPanel;
    ElSpeedButton27: TElSpeedButton;
    ElSpeedButton28: TElSpeedButton;
    ElSpeedButton29: TElSpeedButton;
    ElSpeedButton30: TElSpeedButton;
    Shape7: TShape;
    ElSpeedButton31: TElSpeedButton;
    Panel14: TPanel;
    Panel15: TPanel;
    ElSpeedButton32: TElSpeedButton;
    ElSpeedButton33: TElSpeedButton;
    ElSpeedButton34: TElSpeedButton;
    ElSpeedButton35: TElSpeedButton;
    Shape8: TShape;
    ElSpeedButton36: TElSpeedButton;
    Panel16: TPanel;
    Panel17: TPanel;
    ElSpeedButton37: TElSpeedButton;
    ElSpeedButton38: TElSpeedButton;
    ElSpeedButton39: TElSpeedButton;
    ElSpeedButton40: TElSpeedButton;
    Shape9: TShape;
    Panel18: TPanel;
    Panel19: TPanel;
    ElSpeedButton42: TElSpeedButton;
    ElSpeedButton43: TElSpeedButton;
    ElSpeedButton44: TElSpeedButton;
    ElSpeedButton45: TElSpeedButton;
    Shape10: TShape;
    Panel21: TPanel;
    ElSpeedButton47: TElSpeedButton;
    ElSpeedButton48: TElSpeedButton;
    ElSpeedButton49: TElSpeedButton;
    ElSpeedButton50: TElSpeedButton;
    Shape11: TShape;
    ElSpeedButton51: TElSpeedButton;
    Panel22: TPanel;
    Panel23: TPanel;
    ElSpeedButton52: TElSpeedButton;
    ElSpeedButton53: TElSpeedButton;
    ElSpeedButton54: TElSpeedButton;
    ElSpeedButton55: TElSpeedButton;
    Shape12: TShape;
    ElSpeedButton56: TElSpeedButton;
    Panel24: TPanel;
    Panel25: TPanel;
    ElSpeedButton57: TElSpeedButton;
    ElSpeedButton58: TElSpeedButton;
    ElSpeedButton59: TElSpeedButton;
    ElSpeedButton60: TElSpeedButton;
    Shape13: TShape;
    Panel27: TPanel;
    ElSpeedButton62: TElSpeedButton;
    ElSpeedButton63: TElSpeedButton;
    ElSpeedButton64: TElSpeedButton;
    ElSpeedButton65: TElSpeedButton;
    Shape14: TShape;
    ElSpeedButton66: TElSpeedButton;
    Panel28: TPanel;
    Panel29: TPanel;
    ElSpeedButton67: TElSpeedButton;
    ElSpeedButton68: TElSpeedButton;
    ElSpeedButton69: TElSpeedButton;
    ElSpeedButton70: TElSpeedButton;
    Shape15: TShape;
    ElSpeedButton71: TElSpeedButton;
    Panel30: TPanel;
    Panel31: TPanel;
    ElSpeedButton72: TElSpeedButton;
    ElSpeedButton73: TElSpeedButton;
    ElSpeedButton74: TElSpeedButton;
    ElSpeedButton75: TElSpeedButton;
    Shape16: TShape;
    ElSpeedButton76: TElSpeedButton;
    Panel32: TPanel;
    Panel33: TPanel;
    ElSpeedButton77: TElSpeedButton;
    ElSpeedButton78: TElSpeedButton;
    ElSpeedButton79: TElSpeedButton;
    ElSpeedButton80: TElSpeedButton;
    Shape17: TShape;
    ElSpeedButton81: TElSpeedButton;
    Panel34: TPanel;
    Panel35: TPanel;
    ElSpeedButton82: TElSpeedButton;
    ElSpeedButton83: TElSpeedButton;
    ElSpeedButton84: TElSpeedButton;
    ElSpeedButton85: TElSpeedButton;
    Shape18: TShape;
    ElSpeedButton86: TElSpeedButton;
    Panel36: TPanel;
    Panel37: TPanel;
    ElSpeedButton87: TElSpeedButton;
    ElSpeedButton88: TElSpeedButton;
    ElSpeedButton89: TElSpeedButton;
    ElSpeedButton90: TElSpeedButton;
    Shape19: TShape;
    ElSpeedButton91: TElSpeedButton;
    Panel38: TPanel;
    Panel39: TPanel;
    ElSpeedButton92: TElSpeedButton;
    ElSpeedButton93: TElSpeedButton;
    Shape20: TShape;
    ElSpeedButton96: TElSpeedButton;
    dxgComparisonUnit: TdxDBGrid;
    MainDmtblComparisonUnit: TDataSource;
    dxgComparisonUnitUnit_str: TdxDBGridColumn;
    tbsFormRange: TdxTabSheet;
    dxgForm: TdxDBGrid;
    MainDmtblForm: TDataSource;
    dxgFormCode_str: TdxDBGridMaskColumn;
    dxgFormDescription_str: TdxDBGridMaskColumn;
    MainDmtblFormRange: TDataSource;
    dxgFormRange: TdxDBGrid;
    dxgFormRangeCode_str: TdxDBGridColumn;
    dxgFormRangeDescription_str: TdxDBGridColumn;
    dxgFormRangeInjectable_bol: TdxDBGridCheckColumn;
    dxgGenericName: TdxDBGrid;
    MainDmtblGenericName: TDataSource;
    dxgGenericNameCode_str: TdxDBGridMaskColumn;
    dxgGenericNameDescription_str: TdxDBGridMaskColumn;
    dxgGenericNameSupplement_str: TdxDBGridMaskColumn;
    Panel3: TPanel;
    ElSpeedButton5: TElSpeedButton;
    ElSpeedButton97: TElSpeedButton;
    ElSpeedButton98: TElSpeedButton;
    ElSpeedButton99: TElSpeedButton;
    Shape21: TShape;
    ElSpeedButton100: TElSpeedButton;
    Panel41: TPanel;
    dxgLevelOfUse: TdxDBGrid;
    MainDmtblLevelOfUse: TDataSource;
    dxgLevelOfUseCode_str: TdxDBGridMaskColumn;
    dxgLevelOfUseDescription_str: TdxDBGridMaskColumn;
    dxgPackSizerange: TdxDBGrid;
    MainDmtblPackSizeRange: TDataSource;
    dxgPackSizerangeDescription_str: TdxDBGridMaskColumn;
    dxgProductBrandName: TdxDBGrid;
    MainDmtblProductBrandname: TDataSource;
    dxgProductBrandNameNSN_str: TdxDBGridMaskColumn;
    dxgProductBrandNameICN_str: TdxDBGridMaskColumn;
    dxgProductBrandNameECN_str: TdxDBGridMaskColumn;
    dxgProductBrandNameTradeName_str: TdxDBGridMaskColumn;
    dxgProductRestriction: TdxDBGrid;
    MainDmtblProductRestriction: TDataSource;
    dxgProductRestrictionCode_str: TdxDBGridColumn;
    dxgProductRestrictionDescription_str: TdxDBGridColumn;
    dxgStrengthRange: TdxDBGrid;
    MainDmtblStrengthRange: TDataSource;
    dxgStrengthRangeDescription_str: TdxDBGridColumn;
    dxgTradename: TdxDBGrid;
    MainDmtblTradeName: TDataSource;
    dxgTradenameTradeName_Str: TdxDBGridColumn;
    dxgTLKdemanderAuthority: TdxDBGrid;
    MainDmtlkDemanderAuthority: TDataSource;
    dxgTLKdemanderAuthorityDescription_str: TdxDBGridColumn;
    dxgTLKdemanderType: TdxDBGrid;
    MainDmtlkDemanderType: TDataSource;
    dxgTLKdemanderTypeDescription_str: TdxDBGridColumn;
    dxgTLKdemanderTypeLevel_str: TdxDBGridColumn;
    dxgTLKHealthDistrict: TdxDBGrid;
    dxgTLKMagisterialDistrict: TdxDBGrid;
    dxgTLKRegion: TdxDBGrid;
    tbsTLKRoute: TdxTabSheet;
    dxgTLKRoute: TdxDBGrid;
    Panel7: TPanel;
    ElSpeedButton16: TElSpeedButton;
    ElSpeedButton21: TElSpeedButton;
    ElSpeedButton46: TElSpeedButton;
    ElSpeedButton61: TElSpeedButton;
    Shape22: TShape;
    ElSpeedButton101: TElSpeedButton;
    Panel9: TPanel;
    MainDmtlkHealthDistrict: TDataSource;
    MainDmtlkMagisterialDistrict: TDataSource;
    MainDmtlkRegion: TDataSource;
    MainDmtlkRoute: TDataSource;
    dxgTLKHealthDistrictName_str: TdxDBGridColumn;
    dxgTLKHealthDistrictCode_str: TdxDBGridColumn;
    dxgTLKMagisterialDistrictName_str: TdxDBGridColumn;
    dxgTLKMagisterialDistrictMagisterialCode_str: TdxDBGridColumn;
    dxgTLKRegionName_str: TdxDBGridColumn;
    dxgTLKRouteCode_str: TdxDBGridMaskColumn;
    dxgTLKRouteDescription_str: TdxDBGridMaskColumn;
    atnAdd: TDataSetInsert;
    atnDelete: TDataSetDelete;
    atnSave: TDataSetPost;
    atnCancel: TDataSetCancel;
    tbsRecordNumbering: TdxTabSheet;
    dxgRecordNumbering: TdxDBGrid;
    Panel20: TPanel;
    ElSpeedButton41: TElSpeedButton;
    ElSpeedButton94: TElSpeedButton;
    Shape23: TShape;
    ElSpeedButton103: TElSpeedButton;
    dxgRecordNumberingRecord_StorePre: TdxDBGridColumn;
    dxgRecordNumberingRecord_Type: TdxDBGridColumn;
    dxgRecordNumberingRecord_Divider: TdxDBGridColumn;
    dxgRecordNumberingRecord_GeneralDescription: TdxDBGridColumn;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    dxDBDateEdit3: TdxDBDateEdit;
    dxDBDateEdit4: TdxDBDateEdit;
    Panel26: TPanel;
    Shape24: TShape;
    ElSpeedButton104: TElSpeedButton;
    ElSpeedButton105: TElSpeedButton;
    GroupBox3: TGroupBox;
    Button1: TButton;
    dsRecordNumbering: TDataSource;
    DBRadioGroup1: TDBRadioGroup;
    dxgRecordNumberingRecord_bol: TdxDBGridCheckColumn;
    tbsLevel1: TdxTabSheet;
    Panel40: TPanel;
    ElSpeedButton95: TElSpeedButton;
    ElSpeedButton102: TElSpeedButton;
    ElSpeedButton106: TElSpeedButton;
    ElSpeedButton107: TElSpeedButton;
    Shape25: TShape;
    Panel42: TPanel;
    dxgTLKProvince: TdxDBGrid;
    MainDmTLKProvince: TDataSource;
    dxgTLKProvinceName_str: TdxDBGridColumn;
    dxgTLKProvinceCode_str: TdxDBGridColumn;
    dxgProductStartupGroup1: TdxDBGridColumn;
    dxgProductStartupGroup2: TdxDBGridColumn;
    Label8: TLabel;
    dbeContact: TDBEdit;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dbLevel1: TDBEdit;
    dbLevel2: TDBEdit;
    dbLevel3: TDBEdit;
    dbLevel4: TDBEdit;
    tbsAdministrationUnit: TdxTabSheet;
    dxgAdministrationUnit: TdxDBGrid;
    dsTlkAdministrationUnits: TDataSource;
    dxgAdministrationUnitAdminUnit_Qty: TdxDBGridMaskColumn;
    dxgAdministrationUnitAdminUnit_Unit: TdxDBGridMaskColumn;
    dxgAdministrationUnitAdminUnit_Type: TdxDBGridMaskColumn;
    Panel43: TPanel;
    ElSpeedButton108: TElSpeedButton;
    ElSpeedButton109: TElSpeedButton;
    ElSpeedButton110: TElSpeedButton;
    ElSpeedButton111: TElSpeedButton;
    Shape26: TShape;
    Panel44: TPanel;
    GroupBox5: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label13: TLabel;
    GroupBox6: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dxDBLookupEdit1: TdxDBLookupEdit;
    dxDBLookupEdit2: TdxDBLookupEdit;
    dxDBLookupEdit3: TdxDBLookupEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    dxtBatchRoute: TdxTabSheet;
    Panel45: TPanel;
    ElSpeedButton112: TElSpeedButton;
    ElSpeedButton113: TElSpeedButton;
    ElSpeedButton114: TElSpeedButton;
    ElSpeedButton115: TElSpeedButton;
    Shape27: TShape;
    Panel46: TPanel;
    dxtDRP_Problem: TdxTabSheet;
    dxgBatchRoute: TdxDBGrid;
    dstblBatchRoute: TDataSource;
    dxgBatchRouterouteName_str: TdxDBGridColumn;
    dxtPosts: TdxTabSheet;
    dxtTitle: TdxTabSheet;
    DBCheckBox1: TDBCheckBox;
    Panel47: TPanel;
    ElSpeedButton116: TElSpeedButton;
    ElSpeedButton117: TElSpeedButton;
    ElSpeedButton118: TElSpeedButton;
    ElSpeedButton119: TElSpeedButton;
    Shape28: TShape;
    Panel48: TPanel;
    Panel49: TPanel;
    ElSpeedButton120: TElSpeedButton;
    ElSpeedButton121: TElSpeedButton;
    ElSpeedButton122: TElSpeedButton;
    ElSpeedButton123: TElSpeedButton;
    Shape29: TShape;
    Panel50: TPanel;
    Panel51: TPanel;
    ElSpeedButton124: TElSpeedButton;
    ElSpeedButton125: TElSpeedButton;
    ElSpeedButton126: TElSpeedButton;
    ElSpeedButton127: TElSpeedButton;
    Shape30: TShape;
    Panel52: TPanel;
    dxtDRP_Outcome: TdxTabSheet;
    dxgPosts: TdxDBGrid;
    dstblPositionTitle: TDataSource;
    dstblPositionPosts: TDataSource;
    dstblDRPProblem: TDataSource;
    dstblDRPOutcome: TDataSource;
    dxgDRPProblem: TdxDBGrid;
    dxtPositionTitle: TdxDBGrid;
    Panel53: TPanel;
    ElSpeedButton128: TElSpeedButton;
    ElSpeedButton129: TElSpeedButton;
    ElSpeedButton130: TElSpeedButton;
    ElSpeedButton131: TElSpeedButton;
    Shape31: TShape;
    Panel54: TPanel;
    dxgDRPOutcome: TdxDBGrid;
    dxgDRPProblemdrp_ProblemCode_Str: TdxDBGridColumn;
    dxgDRPProblemdrp_ProblemDescription_Str: TdxDBGridColumn;
    dxgPostspersonPositionPostDescription_str: TdxDBGridColumn;
    dxgPostsnumberPrefix_str: TdxDBGridColumn;
    dxgPostslastNumber_int: TdxDBGridMaskColumn;
    dxtPositionTitlepersonPositionTitleDescription_Str: TdxDBGridColumn;
    dxgDRPOutcomedrp_OutcomeCode_Str: TdxDBGridColumn;
    dxgDRPOutcomedrp_OutcomeDescription_Str: TdxDBGridColumn;
    dxtAbbDispUnits: TdxTabSheet;
    dxgDispUnits: TdxDBGrid;
    dxtAbbDispInterval: TdxTabSheet;
    dxtAbbDispAdditionalDirections: TdxTabSheet;
    Panel55: TPanel;
    ElSpeedButton132: TElSpeedButton;
    ElSpeedButton133: TElSpeedButton;
    ElSpeedButton134: TElSpeedButton;
    ElSpeedButton135: TElSpeedButton;
    Shape32: TShape;
    Panel56: TPanel;
    Panel57: TPanel;
    ElSpeedButton136: TElSpeedButton;
    ElSpeedButton137: TElSpeedButton;
    ElSpeedButton138: TElSpeedButton;
    ElSpeedButton139: TElSpeedButton;
    Shape33: TShape;
    Panel58: TPanel;
    Panel59: TPanel;
    ElSpeedButton140: TElSpeedButton;
    ElSpeedButton141: TElSpeedButton;
    ElSpeedButton142: TElSpeedButton;
    ElSpeedButton143: TElSpeedButton;
    Shape34: TShape;
    Panel60: TPanel;
    dxgDispInterval: TdxDBGrid;
    dxgDispInstructions: TdxDBGrid;
    dsqryADODispUnits: TDataSource;
    dsqryADODispInterval: TDataSource;
    dsqryADODispInstructions: TDataSource;
    dxgDispUnitsabbreviation_Str: TdxDBGridColumn;
    dxgDispUnitsabbreviationDescription_Str: TdxDBGridColumn;
    dxgDispUnitsabbreviationValueUnit_Str: TdxDBGridColumn;
    dxgDispUnitsabbreviationValue_dbl: TdxDBGridMaskColumn;
    dxgDispIntervalabbreviation_Str: TdxDBGridColumn;
    dxgDispIntervalabbreviationDescription_Str: TdxDBGridColumn;
    dxgDispIntervalabbreviationValue_dbl: TdxDBGridMaskColumn;
    dxgDispIntervalabbreviationInstruction_Str: TdxDBGridColumn;
    dxgDispInstructionsabbreviation_Str: TdxDBGridColumn;
    dxgDispInstructionsabbreviationDescription_Str: TdxDBGridColumn;
    dxgStrengthRangeDispenseVal: TdxDBGridColumn;
    dxgStrengthRangeUnit: TdxDBGridColumn;
    dxgStrengthRangeValue: TdxDBGridColumn;
    Label17: TLabel;
    GroupBox7: TGroupBox;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxgStrengthRangeCode_str: TdxDBGridColumn;
    dxgTLKRouteColumn3: TdxDBGridColumn;
    dxgPostspersonPositionPostArea_str: TdxDBGridPickColumn;
    tbsRace: TdxTabSheet;
    ElSpeedButton146: TElSpeedButton;
    dxRace: TdxDBGrid;
    Panel61: TPanel;
    ElSpeedButton144: TElSpeedButton;
    ElSpeedButton145: TElSpeedButton;
    ElSpeedButton147: TElSpeedButton;
    ElSpeedButton148: TElSpeedButton;
    Shape35: TShape;
    Panel62: TPanel;
    dstlkRace: TDataSource;
    dxRaceColumn1: TdxDBGridColumn;
    tbsLanguage: TdxTabSheet;
    Panel63: TPanel;
    ElSpeedButton149: TElSpeedButton;
    ElSpeedButton150: TElSpeedButton;
    ElSpeedButton151: TElSpeedButton;
    ElSpeedButton152: TElSpeedButton;
    Shape36: TShape;
    Panel64: TPanel;
    dxLanguage: TdxDBGrid;
    dstlkLanguage: TDataSource;
    dxLanguageColumn1: TdxDBGridColumn;
    tbsDepartment: TdxTabSheet;
    Panel65: TPanel;
    ElSpeedButton153: TElSpeedButton;
    ElSpeedButton154: TElSpeedButton;
    ElSpeedButton155: TElSpeedButton;
    ElSpeedButton156: TElSpeedButton;
    Shape37: TShape;
    Panel66: TPanel;
    dxDepartments: TdxDBGrid;
    ElSpeedButton157: TElSpeedButton;
    dstlkDepartment: TDataSource;
    dxDepartmentsColumn1: TdxDBGridColumn;
    dxDepartmentsColumn2: TdxDBGridColumn;
    dxDepartmentsColumn3: TdxDBGridColumn;
    ElSpeedButton158: TElSpeedButton;
    tbsContracts: TdxTabSheet;
    Panel67: TPanel;
    ElSpeedButton159: TElSpeedButton;
    ElSpeedButton160: TElSpeedButton;
    ElSpeedButton161: TElSpeedButton;
    ElSpeedButton162: TElSpeedButton;
    Shape38: TShape;
    Panel68: TPanel;
    dxContracts: TdxDBGrid;
    dstblContracts: TDataSource;
    dxContractsColumn1: TdxDBGridColumn;
    dxContractsColumn2: TdxDBGridColumn;
    tbsRxLevel: TdxTabSheet;
    Panel69: TPanel;
    ElSpeedButton163: TElSpeedButton;
    ElSpeedButton164: TElSpeedButton;
    ElSpeedButton165: TElSpeedButton;
    ElSpeedButton166: TElSpeedButton;
    Shape39: TShape;
    Panel70: TPanel;
    dxRxLevels: TdxDBGrid;
    dstblRxLevels: TDataSource;
    dxRxLevelsColumn1: TdxDBGridColumn;
    dxRxLevelsColumn2: TdxDBGridColumn;
    dxRxLevelsColumn3: TdxDBGridColumn;
    dstblSpecialisation: TDataSource;
    tbsSpecialisation: TdxTabSheet;
    Panel71: TPanel;
    ElSpeedButton167: TElSpeedButton;
    ElSpeedButton168: TElSpeedButton;
    ElSpeedButton169: TElSpeedButton;
    ElSpeedButton170: TElSpeedButton;
    Shape40: TShape;
    Panel72: TPanel;
    dxSpecialisation: TdxDBGrid;
    dxSpecialisationColumn1: TdxDBGridColumn;
    dxSpecialisationColumn2: TdxDBGridColumn;
    dxDepartmentsColumn5: TdxDBGridCheckColumn;
    dxDepartmentsColumn4: TdxDBGridCheckColumn;
    tbsAllergies: TdxTabSheet;
    Panel73: TPanel;
    ElSpeedButton171: TElSpeedButton;
    ElSpeedButton172: TElSpeedButton;
    ElSpeedButton173: TElSpeedButton;
    ElSpeedButton174: TElSpeedButton;
    Shape41: TShape;
    Panel74: TPanel;
    dxAllergies: TdxDBGrid;
    dsAllergies: TDataSource;
    dxAllergiesColumn1: TdxDBGridColumn;
    dxAllergiesColumn2: TdxDBGridColumn;
    dxAllergiesColumn3: TdxDBGridColumn;
    dxgProductStartupMaxStock: TdxDBGridColumn;
    dxgProductStartupMinStock: TdxDBGridColumn;
    tbsLabTests: TdxTabSheet;
    Panel75: TPanel;
    ElSpeedButton175: TElSpeedButton;
    ElSpeedButton176: TElSpeedButton;
    ElSpeedButton177: TElSpeedButton;
    ElSpeedButton178: TElSpeedButton;
    Shape42: TShape;
    Panel76: TPanel;
    dxLabTests: TdxDBGrid;
    dsLabTests: TDataSource;
    dxLabTestsLabTest_Id: TdxDBGridColumn;
    dxLabTeststestCode_str: TdxDBGridColumn;
    dxLabTeststestName_str: TdxDBGridColumn;
    dxLabTeststestDescription_str: TdxDBGridColumn;
    RzOpenDialog1: TRzOpenDialog;
    tbsICD10Codes: TdxTabSheet;
    Panel77: TPanel;
    ElSpeedButton179: TElSpeedButton;
    ElSpeedButton180: TElSpeedButton;
    ElSpeedButton181: TElSpeedButton;
    ElSpeedButton182: TElSpeedButton;
    Shape43: TShape;
    Panel78: TPanel;
    dxICD10: TdxDBGrid;
    DataSource1: TDataSource;
    dstblICD10: TDataSource;
    dxICD10ICode_str: TdxDBGridColumn;
    dxICD10Description_str: TdxDBGridColumn;
    dxICD10Active_bol: TdxDBGridCheckColumn;
    dxgFormRangeAdministration_str: TdxDBGridColumn;
    dxgFormAdministrationCode_str: TdxDBGridColumn;
    dxgGenericRxLevel_str: TdxDBGridColumn;
    dxgGenericNameActive_bol: TdxDBGridCheckColumn;
    dxgProductStartupSafetyStock: TdxDBGridColumn;
    dxgRecordNumberingMonth: TdxDBGridColumn;
    dxgRecordNumberingNumber: TdxDBGridColumn;
    tbsReasons: TdxTabSheet;
    dxReasons: TdxDBGrid;
    Panel79: TPanel;
    ElSpeedButton183: TElSpeedButton;
    ElSpeedButton184: TElSpeedButton;
    ElSpeedButton185: TElSpeedButton;
    ElSpeedButton186: TElSpeedButton;
    Shape44: TShape;
    ElSpeedButton187: TElSpeedButton;
    Panel80: TPanel;
    dsReasons: TDataSource;
    dxReasonsReason_Str: TdxDBGridColumn;
    tbsOInfections: TdxTabSheet;
    dxOInfections: TdxDBGrid;
    Panel81: TPanel;
    ElSpeedButton188: TElSpeedButton;
    ElSpeedButton189: TElSpeedButton;
    ElSpeedButton190: TElSpeedButton;
    ElSpeedButton191: TElSpeedButton;
    Shape45: TShape;
    ElSpeedButton192: TElSpeedButton;
    Panel82: TPanel;
    dsOIs: TDataSource;
    dxOInfectionsInfectionName_str: TdxDBGridColumn;
    dxgDispInstructionsAbbreviationInstruction_str: TdxDBGridColumn;
    Label26: TLabel;
    dxDbeBudget_mon: TdxDBCurrencyEdit;
    dxgComparisonUnitDispUnit_str: TdxDBGridColumn;
    dxgProductStartupBin_str: TdxDBGridColumn;
    dxgBatchRouteDayOfWeek_int: TdxDBGridColumn;
    DBCheckBox2: TDBCheckBox;
    DBEdit3: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    ElSpeedButton193: TElSpeedButton;
    dsPatientClassification: TDataSource;
    tbsPatientClassification: TdxTabSheet;
    dxPatientClassification: TdxDBGrid;
    Panel83: TPanel;
    ElSpeedButton194: TElSpeedButton;
    ElSpeedButton195: TElSpeedButton;
    ElSpeedButton196: TElSpeedButton;
    ElSpeedButton197: TElSpeedButton;
    Shape46: TShape;
    Panel84: TPanel;
    dxPatientClassificationClassification_ID: TdxDBGridMaskColumn;
    dxPatientClassificationCode_Str: TdxDBGridColumn;
    dxPatientClassificationDescription_str: TdxDBGridColumn;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    LangMenuItem: TMenuItem;
    dsSupportMeasures: TDataSource;
    tbsSupportMeasures: TdxTabSheet;
    dxSupportMeasures: TdxDBGrid;
    Panel85: TPanel;
    ElSpeedButton198: TElSpeedButton;
    ElSpeedButton199: TElSpeedButton;
    ElSpeedButton200: TElSpeedButton;
    ElSpeedButton201: TElSpeedButton;
    Shape47: TShape;
    Panel86: TPanel;
    dxSupportMeasuresCode_str: TdxDBGridColumn;
    dxSupportMeasuresTreatment_str: TdxDBGridColumn;
    GroupBox9: TGroupBox;
    DBCheckBox3: TDBCheckBox;
    tbsBarCodes: TdxTabSheet;
    RzSplitter1: TRzSplitter;
    dsProductBarcodes: TDataSource;
    GroupBox8: TGroupBox;
    Label18: TLabel;
    DBEdit4: TDBEdit;
    Label23: TLabel;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    BitBtn1: TBitBtn;
    Label25: TLabel;
    DBEdit5: TDBEdit;
    DBCheckBox7: TDBCheckBox;
    tbsEditHistory: TdxTabSheet;
    dxgEditHistory: TdxDBGrid;
    dsEditHistory: TDataSource;
    dxgEditHistoryChangeDescription_str: TdxDBGridColumn;
    dxgEditHistoryUserName_str: TdxDBGridColumn;
    dxgEditHistoryChangeDate_dat: TdxDBGridDateColumn;
    dxgEditHistoryType_str: TdxDBGridColumn;
    dxProductITems: TdxDBGrid;
    dxProductBarCodes: TdxDBGrid;
    dxProductBarCodesbarCode_str: TdxDBGridColumn;
    dxProductBarCodesShipperPackBarCode_str: TdxDBGridColumn;
    Panel89: TPanel;
    ElSpeedButton206: TElSpeedButton;
    ElSpeedButton207: TElSpeedButton;
    ElSpeedButton208: TElSpeedButton;
    ElSpeedButton209: TElSpeedButton;
    Shape49: TShape;
    Panel90: TPanel;
    dxProductITemsNSN_str: TdxDBGridColumn;
    dxProductITemsICN_str: TdxDBGridColumn;
    dxProductITemsECN_str: TdxDBGridColumn;
    dxProductITemsDescription_str: TdxDBGridMaskColumn;
    Label29: TLabel;
    DBEdit6: TDBEdit;
    dxgAccountsActive_bol: TdxDBGridCheckColumn;
    GroupBox10: TGroupBox;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    procedure FormCreate(Sender: TObject);
    procedure atnSelectGridColumnsExecute(Sender: TObject);
    procedure dxPageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dbLevel1Change(Sender: TObject);
    procedure tbsLevel1Show(Sender: TObject);
    procedure atnDeleteExecute(Sender: TObject);
 //   procedure ElSpeedButton45Click(Sender: TObject);
    procedure ElSpeedButton157Click(Sender: TObject);
    procedure ElSpeedButton94Click(Sender: TObject);

    procedure ElSpeedButton193Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxDBGraphicEdit2AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure FormResize(Sender: TObject);
   
    private

    procedure SetDatasetActions;
    { Private declarations }
  public
    { Public declarations }



  end;

var
  SystemFrm: TSystemFrm;

implementation

uses

  MainUDM,
  DialogGridColumnSelectorUFrm,
  RxSolutionSecurityClass,
  RxSolutionUFrm, ProductUDm;

{$R *.DFM}



procedure TSystemFrm.FormCreate(Sender: TObject);

const
  cbuf = 0;
var
  vDefaultFormSize  :TRect;

begin

  vDefaultFormSize := Screen.DesktopRect;
  Left    := vDefaultFormSize.Left + cbuf;
  Top     := vDefaultFormSize.Top + cBuf;
//  Height  := (vDefaultFormSize.Bottom - vDefaultFormSize.Top) - ( cbuf * 2);
  Height  := Screen.WorkAreaHeight;
  Width   := (vDefaultFormSize.Right - vDefaultFormSize.Left) - ( cbuf * 2);

  //SM - Auto calculate the height for the grids panel
  dxPageControl1.Height := Height - (lblMainFormTitle.Height + pnlProductDetailColorBackground.Height + BitBtn1.Height * 4) ;

  if RxSolutionFrm.Security.GetUserAccessLevel(MODULE_CORE_SYSTEM) > USER_ADMIN then
    dxgProductStartup.DataSource := MainDm.dstblStockStartup
    else
    dxgProductStartup.DataSource := nil;
//jp
  dxPageControl1.ActivePage:=tbsSystemDefaults;
  SetDatasetActions;
  tbsLevel1.Caption:=MainDm.tblMainSystemLevel_01Description_str.AsString;
  tbsLevel2.Caption:=MainDm.tblMainSystemLevel_02Description_str.AsString;
  tbsLevel3.Caption:=MainDm.tblMainSystemLevel_03Description_str.AsString;
  tbsLevel4.Caption:=MainDm.tblMainSystemLevel_04Description_str.AsString;

  
end;

procedure TSystemFrm.atnSelectGridColumnsExecute(Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;

begin

  SelectColumns := TColumnSelector.Create;
  try

    with dxPageControl1 do
      if ActivePage = tbsATC then GridCols := dxgATC
      else if ActivePage = tbsAccounts then GridCols := dxgAccounts
      else if ActivePage = tbsStorageBins then GridCols := dxgStorageBins
      else if ActivePage = tbsProductStartup then GridCols := dxgProductStartup
      else if ActivePage = tbsForm then GridCols := dxgForm
      else if ActivePage = tbsFormRange then GridCols := dxgFormRange
      else if ActivePage = tbsGenericName then GridCols := dxgGenericName
      else if ActivePage = tbsLevelOfUse then GridCols := dxgLevelOfUse
      else if ActivePage = tbsPackSizerange then GridCols := dxgPackSizerange
      else if ActivePage = tbsProductBrandName then GridCols := dxgProductBrandName
      else if ActivePage = tbsProductRestriction then GridCols := dxgProductRestriction
      else if ActivePage = tbsStrengthRange then GridCols := dxgStrengthRange
      else if ActivePage = tbsTradename then GridCols := dxgTradename
      else if ActivePage = tbsTLKdemanderAuthority then GridCols := dxgTLKdemanderAuthority
      else if ActivePage = tbsTLKdemanderType then GridCols := dxgTLKdemanderType
      else if ActivePage = tbsLevel3 then GridCols := dxgTLKHealthDistrict
      else if ActivePage = tbsLevel4 then GridCols := dxgTLKMagisterialDistrict
      else if ActivePage = tbsLevel2 then GridCols := dxgTLKRegion
      else if ActivePage = tbsTLKRoute then GridCols := dxgTLKRoute
      else if ActivePage = tbsRecordNumbering then GridCols := dxgRecordNumbering
      else if ActivePage = tbsGroup1 then GridCols := dxgGroup1
      else if ActivePage = tbsGroup2 then GridCols := dxgGroup2
      //JP
      else if ActivePage = tbsAdministrationUnit then GridCols := dxgAdministrationUnit
      else if ActivePage = tbsComparisonUnit then GridCols := dxgComparisonUnit
      //SM
      else if ActivePage = tbsRace then GridCols := dxRace
      else if ActivePage = tbsLanguage then GridCols := dxLanguage
      else if ActivePage = tbsDepartment then GridCols := dxDepartments
      else if ActivePage = tbsContracts then GridCols := dxContracts
      else if ActivePage = tbsRxLevel then GridCols := dxRxLevels
      else if ActivePage = tbsSpecialisation then GridCols := dxSpecialisation
      else if ActivePage = tbsAllergies then GridCols := dxAllergies
      else if ActivePage = tbsLabTests then GridCols := dxLabTests
      else if Activepage = tbsICD10Codes then GridCols := dxICD10
      else if Activepage = tbsReasons then GridCols := dxReasons
      else if Activepage = tbsOInfections then Gridcols := dxOInfections
      else if ActivePage = tbsPatientClassification then GridCols := dxPatientClassification
      else if ActivePage = tbsSupportMeasures then GridCols := dxSupportMeasures
//      else if ActivePage = tbsBarCodes then GridCols := dxProductBarCodes
      else if ActivePage = tbsEditHistory then GridCols := dxgEditHistory;

    if assigned(GridCols) then
      SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;

end;

procedure TSystemFrm.dxPageControl1Change(Sender: TObject);
begin
SetDatasetActions;
end;


procedure TSystemFrm.SetDatasetActions;
var
  GridCols      : TDxDBGrid;

begin

  try

    with dxPageControl1 do
      if ActivePage = tbsATC then GridCols := dxgATC
      else if ActivePage = tbsAccounts then GridCols := dxgAccounts
      else if ActivePage = tbsStorageBins then GridCols := dxgStorageBins
      else if ActivePage = tbsProductStartup then GridCols := dxgProductStartup
      else if ActivePage = tbsForm then GridCols := dxgForm
      else if ActivePage = tbsFormRange then GridCols := dxgFormRange
      else if ActivePage = tbsGenericName then GridCols := dxgGenericName
      else if ActivePage = tbsLevelOfUse then GridCols := dxgLevelOfUse
      else if ActivePage = tbsPackSizerange then GridCols := dxgPackSizerange
      else if ActivePage = tbsProductBrandName then GridCols := dxgProductBrandName
      else if ActivePage = tbsProductRestriction then GridCols := dxgProductRestriction
      else if ActivePage = tbsStrengthRange then GridCols := dxgStrengthRange
      else if ActivePage = tbsTradename then GridCols := dxgTradename
      else if ActivePage = tbsTLKdemanderAuthority then GridCols := dxgTLKdemanderAuthority
      else if ActivePage = tbsTLKdemanderType then GridCols := dxgTLKdemanderType
      else if ActivePage = tbsLevel3 then GridCols := dxgTLKHealthDistrict
      else if ActivePage = tbsLevel4 then GridCols := dxgTLKMagisterialDistrict
      else if ActivePage = tbsLevel2 then GridCols := dxgTLKRegion
      else if ActivePage = tbsTLKRoute then GridCols := dxgTLKRoute
      else if ActivePage = tbsRecordNumbering then GridCols := dxgRecordNumbering
      else if ActivePage = tbsGroup1 then GridCols := dxgGroup1
      else if ActivePage = tbsGroup2 then GridCols := dxgGroup2
      //jp
      else if ActivePage = tbsComparisonUnit then GridCols := dxgComparisonUnit
      //dp
      else if ActivePage = tbsLevel1 then GridCols := dxgTLKProvince
      else if ActivePage = tbsAdministrationUnit then GridCols := dxgAdministrationUnit
      //JP
      else if ActivePage = dxtBatchRoute then GridCols := dxgBatchRoute
      else if ActivePage = dxtPosts then GridCols := dxgPosts
      else if ActivePage = dxtTitle then GridCols := dxtPositionTitle
      else if ActivePage = dxtDRP_Problem then GridCols := dxgDRPProblem
      else if ActivePage = dxtAbbDispUnits then GridCols := dxgDispUnits
      else if ActivePage = dxtAbbDispInterval then GridCols := dxgDispInterval
      else if ActivePage = dxtAbbDispAdditionalDirections then GridCols := dxgDispInstructions
      else if ActivePage = dxtDRP_Outcome then GridCols := dxgDRPOutcome
      //SM
      else if ActivePage = tbsRace then GridCols := dxRace
      else if ActivePage = tbsLanguage then GridCols := dxLanguage
      else if ActivePage = tbsDepartment then GridCols := dxDepartments
      else if ActivePage = tbsContracts then GridCols := dxContracts
      else if ActivePage = tbsRxLevel then GridCols := dxRxLevels
      else if ActivePage = tbsSpecialisation then GridCols := dxSpecialisation
      else if ActivePage = tbsAllergies then GridCols := dxAllergies
      else if ActivePAge = tbsLabTests then GridCols := dxLabTests
      else if ActivePage = tbsICD10Codes then GridCols := dxICD10
      else if Activepage = tbsReasons then GridCols := dxReasons
      else if Activepage = tbsOInfections then Gridcols := dxOInfections
      else if ActivePage = tbsPatientClassification then GridCols := dxPatientClassification
      else if ActivePage = tbsSupportMeasures then GridCols := dxSupportMeasures
      else if ActivePage = tbsBarCodes then GridCols := dxProductBarCodes
      else if ActivePage = tbsEditHistory then GridCols := dxgEditHistory;

    if (dxPageControl1.ActivePage = tbsSystemDefaults) then
      begin
      atnAdd.DataSource :=dsSystem;
      atnDelete.DataSource :=dsSystem;
      atnSave.DataSource := dsSystem;
      atnCancel.DataSource := dsSystem;
      end
    else
      //if assigned(GridCols) then
      begin
      atnAdd.DataSource := GridCols.DataSource;
      atnDelete.DataSource := GridCols.DataSource;
      atnSave.DataSource := GridCols.DataSource;
      atnCancel.DataSource := GridCols.DataSource;
      end;

  finally
  end;

end;


procedure TSystemFrm.Button1Click(Sender: TObject);
var
    vProductSelector : TProductSelector;

begin (*.............................................................*)(*begin*)(*...........................................*)

//   ----------------------------------
  vProductSelector := TProductSelector.Create;
  with vProductSelector do
  try
//   MessageDlg('501', mtWarning, [mbOK],0);
   Product_SetDefaults;
  finally
//   MessageDlg('502', mtWarning, [mbOK],0);
  if assigned(vProductSelector) then
    vProductSelector.Free;
//   MessageDlg('503', mtWarning, [mbOK],0);
  end;
//------------------------------

end;

procedure TSystemFrm.dbLevel1Change(Sender: TObject);
begin
//tbsLevel1.Caption:=SystemFrm.DBEdit1.Text;
end;

procedure TSystemFrm.tbsLevel1Show(Sender: TObject);
begin
//Caption:=SystemFrm.DBLevel1.Text;
end;

procedure TSystemFrm.atnDeleteExecute(Sender: TObject);
begin
  if MessageDlg('Delete?', mtWarning, [mbYes, mbNo, mbCancel], 0) = mrYes then
    (Sender as TDataSetDelete).DataSource.DataSet.Delete;
end;

{
procedure TSystemFrm.ElSpeedButton45Click(Sender: TObject);
var last, numstr: string;
i, j, count: integer;
begin
//SM: Calculates next StrengthRangecode_str
MainDm.tblStrengthRange.Last;
if MainDm.tblStrengthRange.IsEmpty then
 last := '0000'
else
 last := MainDm.tblStrengthRange.FieldByName('StrengthRangeCode_str').AsString;
MainDm.tblStrengthRange.Insert;
i := StrToInt(last);
numstr := IntToStr(i+1);
j := 4 - Length(numstr); //Field length is 4
if j <> 0 then
begin
count := 0;
 while (count<j) do
 begin
 numstr := '0'+ numstr;
 count := count + 1;
 end;
end;                               
MainDm.tblStrengthRange.FieldByName('StrengthRangeCode_str').AsString := numstr;
end;
}

procedure TSystemFrm.ElSpeedButton157Click(Sender: TObject);
begin
 dxgRecordNumbering.ColumnByName('dxgRecordNumberingRecord_StorePre').DisableEditor :=
  False;
// dsRecordNumbering.Edit;//sm
// MainDmtblRecordNumbering.Edit; //SM
end;

procedure TSystemFrm.ElSpeedButton94Click(Sender: TObject);
begin
 dxgRecordNumbering.ColumnByName('dxgRecordNumberingRecord_StorePre').DisableEditor :=
 True;      //SM
end;

procedure TSystemFrm.ElSpeedButton193Click(Sender: TObject);
begin
 MainDm.tblSystemRecordNumbering.Refresh;
end;

procedure TSystemFrm.FormShow(Sender: TObject);
begin
   LocalizerOnFly.PopulateMenu(LangMenuItem, 0, True);
end;

//Comfort Mankga 17/08/2010
procedure TSystemFrm.dxDBGraphicEdit2AssignPicture(Sender: TObject;
  var Picture: TPicture);
var
   result: Int64;
   size : string;
   ms : TMemoryStream;
begin


    ms := TMemoryStream.Create;
    Picture.Graphic.savetostream(ms);
    result := ms.size;
 
 if result > 500*1024 then
   begin
   MessageDlg('The image file size'+ #13+ size + #13 + 'greater than 500 KB limit',mtInformation,[mbOK],0);
   FreeAndNil(ms);
   dxDBGraphicEdit2.ClearPicture;
   end;

end;


procedure TSystemFrm.FormResize(Sender: TObject);
const
  cbuf = 0;
var
  vDefaultFormSize  :TRect;

begin

  vDefaultFormSize := Screen.DesktopRect;
  Left    := vDefaultFormSize.Left + cbuf;
  Top     := vDefaultFormSize.Top + cBuf;
//  Height  := (vDefaultFormSize.Bottom - vDefaultFormSize.Top) - ( cbuf * 2);
  Height  := Screen.WorkAreaHeight;
  Width   := (vDefaultFormSize.Right - vDefaultFormSize.Left) - ( cbuf * 2);

  //SM - Auto calculate the height for the grids panel
  dxPageControl1.Height := Height - (lblMainFormTitle.Height + pnlProductDetailColorBackground.Height + BitBtn1.Height * 4) ;

end;

end.
