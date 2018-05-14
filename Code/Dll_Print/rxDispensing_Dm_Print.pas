unit rxDispensing_Dm_Print;

interface

uses
  SysUtils, Classes, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, DB, ADODB, TXComp, TXRB, ppCtrls, ppBands, ppStrtch, ppRegion,
  ppVar, jpeg, Graphics, ppPrnabl, ppCache, myChkBox, ppMemo, ppModule,
  daDataModule, raCodMod, daDataView, daQueryDataView, daADO, IniFiles,
  ppParameter, ppBarCod, ppSubRpt, ppEndUsr, Forms, ppPageBreak, Dialogs;

type
  TdmPrint = class(TDataModule)
    ExtraOptions1: TExtraOptions;
    conPrint: TADOConnection;
    qryDosing_ListOf: TADOQuery;
    dsqryDosing_ListOf: TDataSource;
    ppDBqryDosing_ListOf: TppDBPipeline;
    ppDosing_ListOf: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape2: TppShape;
    ppLine3: TppLine;
    ppLabel27: TppLabel;
    ppLabel24: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText30: TppDBText;
    ppDBText17: TppDBText;
    ppDBText29: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel8: TppLabel;
    ppDBText20: TppDBText;
    ppDBText25: TppDBText;
    ppDBText31: TppDBText;
    ppDBText34: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppPageStyle1: TppPageStyle;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppRegion2: TppRegion;
    ppLabel50: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel52: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLine2: TppLine;
    myDBCheckBox1: TmyDBCheckBox;
    ppDBText1: TppDBText;
    ppDBText8: TppDBText;
    ppRegion1: TppRegion;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppDBText2: TppDBText;
    ppLabel10: TppLabel;
    ppDBText3: TppDBText;
    ppLabel11: TppLabel;
    ppDBText4: TppDBText;
    ppTitleBand1: TppTitleBand;
    ppRegion3: TppRegion;
    ppLabel12: TppLabel;
    ppLabel6: TppLabel;
    qryRx_Prescription: TADOQuery;
    dsqryRx_Prescription: TDataSource;
    qryPatients_ListOf: TADOQuery;
    dsqryPatients_ListOf: TDataSource;
    ppDBPatients_ListOf: TppDBPipeline;
    ppPatients_ListOf: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppShape21: TppShape;
    ppLine12: TppLine;
    ppParameterDescription: TppMemo;
    ppLabel29: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText21: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText35: TppDBText;
    ppLine13: TppLine;
    ppFooterBand3: TppFooterBand;
    ppLine14: TppLine;
    ppLabel32: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppLabel37: TppLabel;
    ppDBText36: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppPageStyle3: TppPageStyle;
    ppRegion12: TppRegion;
    ppLabel41: TppLabel;
    ppLabel91: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppReportBioDataSheet: TppReport;
    ppDBBioDataSheet: TppDBPipeline;
    dsqryBioDataSheet: TDataSource;
    qryBioDataSheet: TADOQuery;
    ppLabel92: TppLabel;
    ppDBText84: TppDBText;
    ppLabel111: TppLabel;
    ppDBText85: TppDBText;
    qryReportBatch01Picking: TADOQuery;
    dsqryReportBatch01Picking: TDataSource;
    ppqryReportBatch01Picking: TppDBPipeline;
    ppBatch01Picking: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppRegion17: TppRegion;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppMemo1: TppMemo;
    ppLine20: TppLine;
    ppDetailBand4: TppDetailBand;
    ppBackGroundShade: TppShape;
    ppDBText24: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText51: TppDBText;
    ppLabel42: TppLabel;
    ppDBText57: TppDBText;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppDBText86: TppDBText;
    ppLabel43: TppLabel;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLine21: TppLine;
    ppLabel45: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel46: TppLabel;
    ppSummaryBand4: TppSummaryBand;
    ppShape27: TppShape;
    ppLabel48: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLabel61: TppLabel;
    ppPageStyle4: TppPageStyle;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppRegion18: TppRegion;
    ppLabel62: TppLabel;
    ppLine22: TppLine;
    ppDBText92: TppDBText;
    ppLine27: TppLine;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppRegion19: TppRegion;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppRegion20: TppRegion;
    ppShape28: TppShape;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppShape29: TppShape;
    ppBatch02Picklist2: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppShape30: TppShape;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppLine28: TppLine;
    ppDBText95: TppDBText;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppDBText96: TppDBText;
    ppDetailBand6: TppDetailBand;
    ppShape31: TppShape;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppShape32: TppShape;
    ppDBText99: TppDBText;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppLabel123: TppLabel;
    ppFooterBand6: TppFooterBand;
    ppLine29: TppLine;
    ppLabel124: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppLabel125: TppLabel;
    ppSummaryBand5: TppSummaryBand;
    ppPageStyle6: TppPageStyle;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppRegion21: TppRegion;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppLine30: TppLine;
    ppDBText110: TppDBText;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppDBText111: TppDBText;
    ppLabel133: TppLabel;
    ppDBText112: TppDBText;
    ppDBText113: TppDBText;
    ppLine31: TppLine;
    ppLabel134: TppLabel;
    ppRegion22: TppRegion;
    ppDBText114: TppDBText;
    ppLine32: TppLine;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppDBText116: TppDBText;
    ppLine33: TppLine;
    ppLabel138: TppLabel;
    ppDBText117: TppDBText;
    ppRegion23: TppRegion;
    ppLabel139: TppLabel;
    ppLine34: TppLine;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppLabel140: TppLabel;
    ppLine35: TppLine;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppDBText122: TppDBText;
    ppRegion24: TppRegion;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppRegion25: TppRegion;
    ppDBText123: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppRegion26: TppRegion;
    ppLabel152: TppLabel;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppLabel153: TppLabel;
    ppLine36: TppLine;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppDBText124: TppDBText;
    ppRegion27: TppRegion;
    ppLabel159: TppLabel;
    ppLine37: TppLine;
    ppLabel160: TppLabel;
    ppShape38: TppShape;
    ppLabel161: TppLabel;
    ppShape39: TppShape;
    ppLabel162: TppLabel;
    ppShape40: TppShape;
    ppDBqryReportBatch02Picklist: TppDBPipeline;
    dsqryReportBatch02Picklist: TDataSource;
    qryReportBatch02Picklist: TADOQuery;
    qryReportBatch03DeliveryConfirmation: TADOQuery;
    dsqryReportBatch03DeliveryConfirmation: TDataSource;
    ppqryReportBatch03DeliveryConfirmation: TppDBPipeline;
    ppBatch04CollectionConfirmation: TppReport;
    ppHeaderBand8: TppHeaderBand;
    ppRegion34: TppRegion;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppMemo3: TppMemo;
    ppLine45: TppLine;
    ppDetailBand8: TppDetailBand;
    ppShape57: TppShape;
    ppDBText143: TppDBText;
    ppDBText144: TppDBText;
    ppDBText145: TppDBText;
    ppDBText146: TppDBText;
    ppDBText147: TppDBText;
    ppDBText148: TppDBText;
    ppLabel201: TppLabel;
    ppDBText149: TppDBText;
    ppDBText150: TppDBText;
    ppShape58: TppShape;
    ppShape59: TppShape;
    ppFooterBand8: TppFooterBand;
    ppLine46: TppLine;
    ppLabel202: TppLabel;
    ppSystemVariable16: TppSystemVariable;
    ppSystemVariable17: TppSystemVariable;
    ppLabel203: TppLabel;
    ppLabel204: TppLabel;
    ppSummaryBand7: TppSummaryBand;
    ppRegion35: TppRegion;
    ppDBText151: TppDBText;
    ppLabel205: TppLabel;
    ppRegion36: TppRegion;
    ppShape60: TppShape;
    ppShape61: TppShape;
    ppShape62: TppShape;
    ppShape63: TppShape;
    ppLabel206: TppLabel;
    ppLabel207: TppLabel;
    ppLabel208: TppLabel;
    ppLabel209: TppLabel;
    ppLabel210: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppLine47: TppLine;
    ppRegion37: TppRegion;
    ppShape64: TppShape;
    ppShape65: TppShape;
    ppShape66: TppShape;
    ppShape67: TppShape;
    ppLabel211: TppLabel;
    ppLabel212: TppLabel;
    ppLabel213: TppLabel;
    ppLabel214: TppLabel;
    ppLabel215: TppLabel;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppLine48: TppLine;
    ppPageStyle8: TppPageStyle;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppRegion38: TppRegion;
    ppLabel216: TppLabel;
    ppLine49: TppLine;
    ppDBText152: TppDBText;
    ppDBText153: TppDBText;
    ppDBText154: TppDBText;
    ppLine50: TppLine;
    ppLabel217: TppLabel;
    ppLabel218: TppLabel;
    ppLabel219: TppLabel;
    ppRegion39: TppRegion;
    ppLabel220: TppLabel;
    ppLabel221: TppLabel;
    ppLabel222: TppLabel;
    ppLabel223: TppLabel;
    ppLabel224: TppLabel;
    ppLabel225: TppLabel;
    ppLabel226: TppLabel;
    ppLabel227: TppLabel;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppRegion40: TppRegion;
    ppLabel228: TppLabel;
    ppDBText155: TppDBText;
    ppRegion41: TppRegion;
    ppShape68: TppShape;
    ppShape69: TppShape;
    ppShape70: TppShape;
    ppShape71: TppShape;
    ppLabel229: TppLabel;
    ppLabel230: TppLabel;
    ppDBCalc25: TppDBCalc;
    ppLine51: TppLine;
    ppRegion42: TppRegion;
    ppShape72: TppShape;
    ppShape73: TppShape;
    ppShape74: TppShape;
    ppShape75: TppShape;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppLabel235: TppLabel;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppLine52: TppLine;
    ppRegion43: TppRegion;
    ppShape76: TppShape;
    ppShape77: TppShape;
    ppShape78: TppShape;
    ppShape79: TppShape;
    ppLabel236: TppLabel;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    ppLabel239: TppLabel;
    ppLabel240: TppLabel;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppLine53: TppLine;
    ppBatch05ClinicSummary: TppReport;
    ppHeaderBand9: TppHeaderBand;
    ppShape80: TppShape;
    ppMemo4: TppMemo;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
    ppLine54: TppLine;
    ppDetailBand9: TppDetailBand;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppDBText160: TppDBText;
    ppFooterBand9: TppFooterBand;
    ppLine55: TppLine;
    ppLabel243: TppLabel;
    ppSystemVariable18: TppSystemVariable;
    ppSystemVariable19: TppSystemVariable;
    ppLabel244: TppLabel;
    ppDBText161: TppDBText;
    ppDBText162: TppDBText;
    ppDBText163: TppDBText;
    ppDBText164: TppDBText;
    ppLabel245: TppLabel;
    ppSummaryBand8: TppSummaryBand;
    ppPageStyle9: TppPageStyle;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppRegion44: TppRegion;
    ppLabel246: TppLabel;
    ppLine56: TppLine;
    ppDBText165: TppDBText;
    ppDBText166: TppDBText;
    ppLine57: TppLine;
    ppLabel247: TppLabel;
    ppLabel248: TppLabel;
    ppRegion45: TppRegion;
    ppLabel249: TppLabel;
    ppLabel250: TppLabel;
    ppLabel251: TppLabel;
    ppLabel252: TppLabel;
    ppLabel253: TppLabel;
    ppLabel254: TppLabel;
    ppLabel255: TppLabel;
    ppLabel256: TppLabel;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppqryReportBatch05ClinicSummaryTotals: TppDBPipeline;
    ppqryReportBatch04CollectionConfirmation: TppDBPipeline;
    dsqryReportBatch04CollectionConfirmation: TDataSource;
    qryReportBatch04CollectionConfirmation: TADOQuery;
    qryReportBatch05ClinicSummaryTotals: TADOQuery;
    dsqryReportBatch05ClinicSummaryTotals: TDataSource;
    ppDBLabels: TppDBPipeline;
    ppBatchLabelPrint: TppReport;
    ppDetailBand10: TppDetailBand;
    ppDBText56: TppDBText;
    ppDBText91: TppDBText;
    ppDBText115: TppDBText;
    ppDBText128: TppDBText;
    ppDBText132: TppDBText;
    ppRegion46: TppRegion;
    ppDBText141: TppDBText;
    qryBatchLabel: TADOQuery;
    dsqryBatchLabel: TDataSource;
    qryBatchAddressLabels: TADOQuery;
    dsqryBatchAddressLabels: TDataSource;
    ppDBText172: TppDBText;
    ppDBLabelsAddress: TppDBPipeline;
    ppBatchLabelAddress: TppReport;
    ppDetailBand11: TppDetailBand;
    ppLabel257: TppLabel;
    ppLabel258: TppLabel;
    ppLine59: TppLine;
    ppLabel259: TppLabel;
    ppDBText170: TppDBText;
    ppLabel260: TppLabel;
    ppDBText171: TppDBText;
    ppDBText174: TppDBText;
    ppDBText175: TppDBText;
    ppDBImage2: TppDBImage;
    ppDBImage5: TppDBImage;
    ppDBImage3: TppDBImage;
    ppTitleBand4: TppTitleBand;
    ppHeaderBand5: TppHeaderBand;
    ppShape26: TppShape;
    ppLine23: TppLine;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppLabel74: TppLabel;
    ppDBImage1: TppDBImage;
    ppDetailBand5: TppDetailBand;
    ppFooterBand5: TppFooterBand;
    ppImage8: TppImage;
    ppLine24: TppLine;
    ppLabel80: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppLabel83: TppLabel;
    ppPageStyle5: TppPageStyle;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppRegion13: TppRegion;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppDBText64: TppDBText;
    ppLabel100: TppLabel;
    ppDBText66: TppDBText;
    ppLabel101: TppLabel;
    ppDBText67: TppDBText;
    ppLabel102: TppLabel;
    ppDBText77: TppDBText;
    ppLabel103: TppLabel;
    ppDBText79: TppDBText;
    ppLabel104: TppLabel;
    ppDBText80: TppDBText;
    ppLabel105: TppLabel;
    ppDBText81: TppDBText;
    ppRegion14: TppRegion;
    ppLabel106: TppLabel;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLabel107: TppLabel;
    ppRegion15: TppRegion;
    ppLabel108: TppLabel;
    ppDBText82: TppDBText;
    ppLabel109: TppLabel;
    ppDBText83: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppRegion16: TppRegion;
    ppLabel110: TppLabel;
    raCodeModule1: TraCodeModule;
    ppBatch03DeliveryConfirmation: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppDetailBand7: TppDetailBand;
    ppFooterBand7: TppFooterBand;
    ppShape41: TppShape;
    ppLine11: TppLine;
    ppLabel79: TppLabel;
    ppLabel81: TppLabel;
    ppMemo2: TppMemo;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppDBText26: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppRegion10: TppRegion;
    ppLabel168: TppLabel;
    ppLine17: TppLine;
    ppDBText43: TppDBText;
    ppLine18: TppLine;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppRegion11: TppRegion;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppRegion28: TppRegion;
    ppDBText37: TppDBText;
    ppLabel82: TppLabel;
    ppRegion29: TppRegion;
    ppShape48: TppShape;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppLine19: TppLine;
    ppRegion30: TppRegion;
    ppShape44: TppShape;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLine38: TppLine;
    ppRegion31: TppRegion;
    ppShape52: TppShape;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppLine39: TppLine;
    ppShape54: TppShape;
    ppLabel186: TppLabel;
    ppImage3: TppImage;
    ppSystemVariable12: TppSystemVariable;
    ppBatch02Picklist: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine4: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText9: TppDBText;
    ppDBImage6: TppDBImage;
    ppDetailBand1: TppDetailBand;
    ppShape3: TppShape;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppShape4: TppShape;
    ppDBText12: TppDBText;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppLabel15: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLine5: TppLine;
    ppLabel16: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLabel17: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppPageStyle2: TppPageStyle;
    ppRegion4: TppRegion;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText19: TppDBText;
    ppDBText22: TppDBText;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText23: TppDBText;
    ppDBText46: TppDBText;
    ppLine6: TppLine;
    ppDBText68: TppDBText;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppDBText69: TppDBText;
    ppLabel26: TppLabel;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppLine7: TppLine;
    ppLabel28: TppLabel;
    ppRegion5: TppRegion;
    ppDBText72: TppDBText;
    ppLine8: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppDBText73: TppDBText;
    ppLine9: TppLine;
    ppLabel34: TppLabel;
    ppDBText74: TppDBText;
    ppRegion6: TppRegion;
    ppLabel35: TppLabel;
    ppLine10: TppLine;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText78: TppDBText;
    ppDBText125: TppDBText;
    ppLabel36: TppLabel;
    ppLine40: TppLine;
    ppLabel44: TppLabel;
    ppLabel49: TppLabel;
    ppLabel51: TppLabel;
    ppDBText126: TppDBText;
    ppRegion7: TppRegion;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppRegion8: TppRegion;
    ppDBText127: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppRegion9: TppRegion;
    ppLabel68: TppLabel;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppLabel69: TppLabel;
    ppLine41: TppLine;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel75: TppLabel;
    ppDBText129: TppDBText;
    ppRegion32: TppRegion;
    ppLabel76: TppLabel;
    ppLine42: TppLine;
    ppLabel77: TppLabel;
    ppShape10: TppShape;
    ppLabel78: TppLabel;
    ppShape11: TppShape;
    ppLabel187: TppLabel;
    ppShape12: TppShape;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppShape13: TppShape;
    ppLabel188: TppLabel;
    ppLabel191: TppLabel;
    ppLabel194: TppLabel;
    ppLabel195: TppLabel;
    ppLabel196: TppLabel;
    ppBatchCollectCheckList: TppReport;
    ppHeaderBand11: TppHeaderBand;
    ppRegion33: TppRegion;
    ppLabel176: TppLabel;
    ppLabel179: TppLabel;
    ppMemo5: TppMemo;
    ppLine43: TppLine;
    ppDetailBand13: TppDetailBand;
    ppShape14: TppShape;
    ppDBText130: TppDBText;
    ppDBText131: TppDBText;
    ppDBText133: TppDBText;
    ppDBText134: TppDBText;
    ppDBText135: TppDBText;
    ppDBText136: TppDBText;
    ppLabel197: TppLabel;
    ppDBText137: TppDBText;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppDBText138: TppDBText;
    ppLabel198: TppLabel;
    ppFooterBand11: TppFooterBand;
    ppLine44: TppLine;
    ppLabel312: TppLabel;
    ppSystemVariable15: TppSystemVariable;
    ppLabel313: TppLabel;
    ppImage11: TppImage;
    ppSystemVariable22: TppSystemVariable;
    ppSummaryBand10: TppSummaryBand;
    ppShape19: TppShape;
    ppLabel315: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLabel316: TppLabel;
    ppPageStyle7: TppPageStyle;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppRegion55: TppRegion;
    ppLabel317: TppLabel;
    ppLine70: TppLine;
    ppDBText213: TppDBText;
    ppLine71: TppLine;
    ppLabel318: TppLabel;
    ppLabel319: TppLabel;
    ppRegion56: TppRegion;
    ppLabel320: TppLabel;
    ppLabel321: TppLabel;
    ppLabel322: TppLabel;
    ppLabel323: TppLabel;
    ppLabel324: TppLabel;
    ppLabel325: TppLabel;
    ppLabel326: TppLabel;
    ppLabel327: TppLabel;
    ppLabel328: TppLabel;
    ppLabel329: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppRegion57: TppRegion;
    ppShape20: TppShape;
    ppLabel330: TppLabel;
    ppLabel331: TppLabel;
    ppShape55: TppShape;
    ppRegion58: TppRegion;
    ppLabel86: TppLabel;
    ppLabel189: TppLabel;
    ppLabel190: TppLabel;
    ppLabel193: TppLabel;
    ppLabel192: TppLabel;
    ppLabel87: TppLabel;
    ppSummaryRxList: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand12: TppHeaderBand;
    ppShape42: TppShape;
    ppDBText212: TppDBText;
    ppLabel163: TppLabel;
    ppDetailBand14: TppDetailBand;
    ppDBText214: TppDBText;
    ppDBText221: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppDBText215: TppDBText;
    ppLabel333: TppLabel;
    ppFooterBand12: TppFooterBand;
    ppImage12: TppImage;
    ppLine73: TppLine;
    ppLabel165: TppLabel;
    ppSystemVariable23: TppSystemVariable;
    ppSystemVariable24: TppSystemVariable;
    ppLabel183: TppLabel;
    ppSummaryBand11: TppSummaryBand;
    ppPageStyle11: TppPageStyle;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppDBText222: TppDBText;
    ppLabel332: TppLabel;
    ppLine72: TppLine;
    ppLine76: TppLine;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppGroup12: TppGroup;
    ppGroupHeaderBand12: TppGroupHeaderBand;
    ppDBText140: TppDBText;
    ppLabel88: TppLabel;
    ppLabel185: TppLabel;
    ppVariable1: TppVariable;
    ppDBText139: TppDBText;
    ppLine75: TppLine;
    ppDBText142: TppDBText;
    ppLabel164: TppLabel;
    ppGroupFooterBand12: TppGroupFooterBand;
    ppLine74: TppLine;
    ppDBCalc7: TppDBCalc;
    ppLabel334: TppLabel;
    ppLine77: TppLine;
    raCodeModule2: TraCodeModule;
    qryReportBatch09ProductNeeds: TADOQuery;
    ppBatchProductNeedsList: TppReport;
    ppParameterList2: TppParameterList;
    dsProductNeeds: TDataSource;
    ppDBProductNeedsList: TppDBPipeline;
    qryReportBatch09ProductNeedsDescription_str: TStringField;
    qryReportBatch09ProductNeedspackDescription_Str: TWideStringField;
    qryReportBatch09ProductNeedsPackSizeValue_dbl: TFloatField;
    qryReportBatch09ProductNeedsBin_str: TWideStringField;
    qryReportBatch09ProductNeedsECN_str: TWideStringField;
    qryReportBatch09ProductNeedsICN_str: TWideStringField;
    qryReportBatch09ProductNeedsPacksNeeded: TFloatField;
    qryReportBatch09ProductNeedsCost: TBCDField;
    qryReportBatch09ProductNeedsrouteName_Str: TWideStringField;
    ppHeaderBand13: TppHeaderBand;
    ppShape43: TppShape;
    ppDBText216: TppDBText;
    ppLabel335: TppLabel;
    ppLabel340: TppLabel;
    ppLabel341: TppLabel;
    ppLabel342: TppLabel;
    ppLabel343: TppLabel;
    pplblDatePeriod: TppLabel;
    pplblClinics: TppLabel;
    ppLabel336: TppLabel;
    ppDetailBand15: TppDetailBand;
    ppFooterBand13: TppFooterBand;
    ppLine78: TppLine;
    ppLabel337: TppLabel;
    ppSystemVariable25: TppSystemVariable;
    ppSystemVariable26: TppSystemVariable;
    ppLabel338: TppLabel;
    ppSummaryBand12: TppSummaryBand;
    ppDBCalc10: TppDBCalc;
    ppLabel344: TppLabel;
    ppLine79: TppLine;
    ppPageStyle12: TppPageStyle;
    ppGroup13: TppGroup;
    ppGroupHeaderBand13: TppGroupHeaderBand;
    ppDBText218: TppDBText;
    ppDBCalc8: TppDBCalc;
    ppDBText220: TppDBText;
    ppDBText223: TppDBText;
    ppDBText217: TppDBText;
    ppDBText219: TppDBText;
    ppGroupFooterBand13: TppGroupFooterBand;
    raCodeModule3: TraCodeModule;
    ppDBBarCode1: TppDBBarCode;
    ppLabel47: TppLabel;
    ppDBText65: TppDBText;
    ppDBText7: TppDBText;
    ppRxTrailerLabel: TppReport;
    ppParameterList16: TppParameterList;
    ppDBRX: TppDBPipeline;
    dsqryRXPrint: TDataSource;
    qryRXPrint: TADOQuery;
    ppDetailBand16: TppDetailBand;
    ppDBText226: TppDBText;
    ppGroup14: TppGroup;
    ppGroupHeaderBand14: TppGroupHeaderBand;
    ppRegion59: TppRegion;
    ppVariable2: TppVariable;
    ppLabel95: TppLabel;
    ppDBText227: TppDBText;
    ppVariable3: TppVariable;
    ppGroupFooterBand14: TppGroupFooterBand;
    ppDBText228: TppDBText;
    ppLine80: TppLine;
    ppVariable4: TppVariable;
    raCodeModule4: TraCodeModule;
    ppRx_Prescription: TppReport;
    ppHeaderBand14: TppHeaderBand;
    ppShape1: TppShape;
    ppDBText229: TppDBText;
    ppDBText230: TppDBText;
    ppLine81: TppLine;
    ppDBText231: TppDBText;
    ppDBText232: TppDBText;
    ppDBText233: TppDBText;
    ppDetailBand17: TppDetailBand;
    ppShape45: TppShape;
    ppDBText234: TppDBText;
    ppDBText235: TppDBText;
    ppShape46: TppShape;
    ppDBText236: TppDBText;
    ppShape47: TppShape;
    ppShape49: TppShape;
    ppDBText237: TppDBText;
    ppDBText238: TppDBText;
    ppFooterBand14: TppFooterBand;
    ppLine82: TppLine;
    ppLabel126: TppLabel;
    ppSystemVariable27: TppSystemVariable;
    ppSystemVariable28: TppSystemVariable;
    ppLabel184: TppLabel;
    ppDBText239: TppDBText;
    ppDBText240: TppDBText;
    ppDBText241: TppDBText;
    ppDBText242: TppDBText;
    ppSummaryBand13: TppSummaryBand;
    ppPageStyle13: TppPageStyle;
    ppGroup15: TppGroup;
    ppGroupHeaderBand15: TppGroupHeaderBand;
    ppRegion62: TppRegion;
    ppLabel352: TppLabel;
    ppLabel353: TppLabel;
    ppLabel354: TppLabel;
    ppLabel355: TppLabel;
    ppLabel356: TppLabel;
    ppLabel357: TppLabel;
    ppGroupFooterBand15: TppGroupFooterBand;
    ppRegion64: TppRegion;
    ppDBCalc11: TppDBCalc;
    ppLabel362: TppLabel;
    ppLabel363: TppLabel;
    ppDBText255: TppDBText;
    ppRegion65: TppRegion;
    ppShape50: TppShape;
    ppShape51: TppShape;
    ppShape53: TppShape;
    ppShape56: TppShape;
    ppShape100: TppShape;
    ppShape101: TppShape;
    ppLabel364: TppLabel;
    ppLabel365: TppLabel;
    ppLabel366: TppLabel;
    ppLine87: TppLine;
    ppLabel367: TppLabel;
    ppLabel368: TppLabel;
    ppLabel369: TppLabel;
    ppLabel370: TppLabel;
    ppShape102: TppShape;
    ppShape103: TppShape;
    ppLabel371: TppLabel;
    ppLabel372: TppLabel;
    ppLabel373: TppLabel;
    ppDBText256: TppDBText;
    ppRegion66: TppRegion;
    ppLabel374: TppLabel;
    ppLine88: TppLine;
    ppLabel375: TppLabel;
    ppShape104: TppShape;
    ppLabel376: TppLabel;
    ppShape105: TppShape;
    ppLabel377: TppLabel;
    ppShape106: TppShape;
    raCodeModule5: TraCodeModule;
    ppParameterList17: TppParameterList;
    ppLabel261: TppLabel;
    tblSystemLogo: TADOQuery;
    ppDBPipelineSystem: TppDBPipeline;
    dsSystemLogo: TDataSource;
    ppVariable5: TppVariable;
    ppReport1: TppReport;
    ppHeaderBand10: TppHeaderBand;
    ppSubReport1: TppSubReport;
    ppChildReportLabel: TppChildReport;
    ppDetailBand18: TppDetailBand;
    ppDBText185: TppDBText;
    ppDBText186: TppDBText;
    ppDBText187: TppDBText;
    ppDBText188: TppDBText;
    ppDBText189: TppDBText;
    ppRegion48: TppRegion;
    ppDBText190: TppDBText;
    ppDBText191: TppDBText;
    ppSubReport2: TppSubReport;
    ppChildReportAddressLabel: TppChildReport;
    ppDetailBand19: TppDetailBand;
    ppLine58: TppLine;
    ppDBText169: TppDBText;
    ppDBText173: TppDBText;
    ppLabel262: TppLabel;
    ppLabel263: TppLabel;
    ppLabel264: TppLabel;
    ppDBText176: TppDBText;
    ppLabel265: TppLabel;
    ppDBText177: TppDBText;
    ppDBText178: TppDBText;
    ppDBText179: TppDBText;
    ppLabel266: TppLabel;
    ppDBText180: TppDBText;
    ppLabel267: TppLabel;
    ppDBText181: TppDBText;
    ppSubReport3: TppSubReport;
    ppChildReportTrailerLabel: TppChildReport;
    ppDetailBand20: TppDetailBand;
    ppDBText182: TppDBText;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppRegion47: TppRegion;
    ppVariable6: TppVariable;
    ppLabel268: TppLabel;
    ppDBText183: TppDBText;
    ppVariable7: TppVariable;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppDBText184: TppDBText;
    ppLine60: TppLine;
    ppVariable8: TppVariable;
    raCodeModule6: TraCodeModule;
    ppDetailBand12: TppDetailBand;
    raCodeModule7: TraCodeModule;
    ppParameterList12: TppParameterList;
    ppRxDesigner: TppDesigner;
    qryProtocolsDisplay: TADOQuery;
    qryProtocolsDisplayProtocols: TStringField;
    dsProtocolsDisplay: TDataSource;
    qryAllergiesDisplay: TADOQuery;
    qryAllergiesDisplayAllergies: TStringField;
    dsAllergiesDisplay: TDataSource;
    qryPrescriberNumber: TADOQuery;
    dsPrescriberNumber: TDataSource;
    ppLabel269: TppLabel;
    ppDBText192: TppDBText;
    ppDBText193: TppDBText;
    ppRegion49: TppRegion;
    ppLabel270: TppLabel;
    ppLine61: TppLine;
    ppDBText194: TppDBText;
    ppLine62: TppLine;
    ppDBText195: TppDBText;
    ppLabel271: TppLabel;
    ppDBText196: TppDBText;
    ppLabel272: TppLabel;
    ppDBText197: TppDBText;
    ppRegion50: TppRegion;
    ppLabel273: TppLabel;
    ppLabel274: TppLabel;
    ppDBText198: TppDBText;
    ppDBText199: TppDBText;
    ppLabel275: TppLabel;
    ppLabel276: TppLabel;
    ppDBText200: TppDBText;
    ppLine63: TppLine;
    ppDBText201: TppDBText;
    ppLabel277: TppLabel;
    ppLabel278: TppLabel;
    ppDBText202: TppDBText;
    ppLabel279: TppLabel;
    ppDBText203: TppDBText;
    ppLabel280: TppLabel;
    ppDBText204: TppDBText;
    ppDBText205: TppDBText;
    ppLabel281: TppLabel;
    ppRegion51: TppRegion;
    ppLine64: TppLine;
    ppLabel282: TppLabel;
    ppDBText206: TppDBText;
    qryRx_Prescriptionprescription_ID_Original: TGuidField;
    qryRx_PrescriptionrepeatDate_dat: TDateTimeField;
    qryRx_Prescriptioncompleted_bol: TBooleanField;
    qryRx_PrescriptiondownRefferal_Str: TWideStringField;
    qryRx_PrescriptionissuedOrCollected_Bol: TBooleanField;
    qryRx_Prescriptiondispensed_Bol: TBooleanField;
    qryRx_PrescriptionisReferred_bol: TBooleanField;
    qryRx_Prescriptionactive_bol: TBooleanField;
    qryRx_Prescriptionclinic_ID: TGuidField;
    qryRx_Prescriptionprescription_ID: TGuidField;
    qryRx_PrescriptionprescriptionLastEdited_dat: TDateTimeField;
    qryRx_PrescriptionprescriptionLastEdited_ID: TGuidField;
    qryRx_PrescriptionprescriptionLastEdited_Str: TWideStringField;
    qryRx_PrescriptionPosted_dat: TDateTimeField;
    qryRx_PrescriptionPostedBy_str: TWideStringField;
    qryRx_PrescriptionprescriptionNumber_Str: TWideStringField;
    qryRx_Prescriptiondate_Dat: TDateTimeField;
    qryRx_Prescriptionpatient_ID: TGuidField;
    qryRx_PrescriptionpatientName_Str: TWideStringField;
    qryRx_PrescriptionfolderNumber_Str: TWideStringField;
    qryRx_PrescriptionadmissionNo_Str: TWideStringField;
    qryRx_Prescriptionprescriber_ID: TGuidField;
    qryRx_PrescriptionprescriberName_Str: TWideStringField;
    qryRx_PrescriptionprescriberRXLevel_Str: TWideStringField;
    qryRx_PrescriptionprescriberAlert_mem: TMemoField;
    qryRx_PrescriptionprescribedAuthorisedBy_Str: TWideStringField;
    qryRx_Prescriptiondispenser_ID: TGuidField;
    qryRx_PrescriptiondispenserName_Str: TWideStringField;
    qryRx_PrescriptiondispenserRxLevel_Str: TWideStringField;
    qryRx_PrescriptiondispensedAuthorisedBy_Str: TWideStringField;
    qryRx_Prescriptionrepeats_Int: TIntegerField;
    qryRx_PrescriptionrepeatNo_Int: TIntegerField;
    qryRx_PrescriptionprescriptionCost_Mon: TBCDField;
    qryRx_PrescriptionprescriptionItemsCount_Int: TIntegerField;
    qryRx_Prescriptionclinic_str: TWideStringField;
    qryRx_PrescriptioncomplexDept_str: TWideStringField;
    qryRx_PrescriptionprescriptionActive_bol: TBooleanField;
    qryRx_PrescriptionprescriptionStatus_Str: TWideStringField;
    qryRx_PrescriptionprescriptionStatus_ID: TGuidField;
    qryRx_PrescriptiondownRefRouteSchedule_ID: TGuidField;
    qryRx_PrescriptionbatchIsBatched_bol: TBooleanField;
    qryRx_PrescriptionprescriptionAuthorised_bol: TBooleanField;
    qryRx_PrescriptiondispensingAuthorised_bol: TBooleanField;
    qryRx_PrescriptiondispensingCollected_bol: TBooleanField;
    qryRx_PrescriptiondispensingPicked_bol: TBooleanField;
    qryRx_PrescriptionbatchIsCollated_bol: TBooleanField;
    qryRx_PrescriptionbatchIsShipped_bol: TBooleanField;
    qryRx_PrescriptionprotocolID: TGuidField;
    qryRx_PrescriptiondispensingPosted_bol: TBooleanField;
    qryRx_Prescriptionnaive_bol: TBooleanField;
    qryRx_PrescriptionDemanderUnique_ID: TGuidField;
    qryRx_PrescriptionDemanderName_Str: TWideStringField;
    qryRx_PrescriptionRepeatStatus_Str: TWideStringField;
    qryRx_PrescriptionRepeatDuration_Int: TIntegerField;
    qryRx_Prescriptionpersonpregnant_bol: TBooleanField;
    qryRx_PrescriptionvstTreamentPrescribed_bol: TBooleanField;
    qryRx_PrescriptionvstPregnancyDeliveryDate_dat: TDateTimeField;
    qryRx_PrescriptionvstFunctionalStatus_str: TWideStringField;
    qryRx_PrescriptionvstClinicalStage_str: TWideStringField;
    qryRx_PrescriptionvstOI_none_bol: TBooleanField;
    qryRx_PrescriptionvstOI_TB_bol: TBooleanField;
    qryRx_PrescriptionvstOI_Pneumocystis_Carinii_bol: TBooleanField;
    qryRx_PrescriptionvstOI_Herpes_bit: TBooleanField;
    qryRx_PrescriptionvstOI_Cytomegalovirus_bol: TBooleanField;
    qryRx_PrescriptionvstOI_Cryptococcal_Meningitis_bol: TBooleanField;
    qryRx_PrescriptionvstOI_Toxoplasmosis_bol: TBooleanField;
    qryRx_PrescriptionvstOI_Kaposi_Sarcoma_bol: TBooleanField;
    qryRx_PrescriptionvstOI_Oropharyngial_bol: TBooleanField;
    qryRx_PrescriptionvstOI_Other_str: TWideStringField;
    qryRx_PrescriptionvstPropo_CoTri_Start_dat: TDateTimeField;
    qryRx_PrescriptionvstPropo_CoTri_Stopped_dat: TDateTimeField;
    qryRx_PrescriptionvstPropo_Fluconazole_Start_dat: TDateTimeField;
    qryRx_PrescriptionvstPropo_Fluconazole_Stopped_dat: TDateTimeField;
    qryRx_PrescriptionvstPropo_INH_Start_dat: TDateTimeField;
    qryRx_PrescriptionvstPropo_INH_Stopped_dat: TDateTimeField;
    qryRx_PrescriptionvstPropo_TBTreatment_Start_dat: TDateTimeField;
    qryRx_PrescriptionvstPropo_TBTreatment_Stopped_dat: TDateTimeField;
    qryRx_PrescriptionvstRegimenChange_From_str: TWideStringField;
    qryRx_PrescriptionvstRegimenChange_To_str: TWideStringField;
    qryRx_PrescriptionvstRegimenChange_Reason_str: TWideStringField;
    qryRx_PrescriptionvstVisitDate_dat: TDateTimeField;
    qryRx_PrescriptionvstNextVisit_dat: TDateTimeField;
    qryRx_PrescriptionvstScheduledVisit_dat: TDateTimeField;
    qryRx_PrescriptionvstRegimenStart_str: TWideStringField;
    qryRx_PrescriptionvstLostToFollowUpDate_dat: TDateTimeField;
    qryRx_PrescriptionvstTreatmentStopped_date_dat: TDateTimeField;
    qryRx_PrescriptionvstRegimenStartDate_dat: TDateTimeField;
    qryRx_Prescriptionuser_id: TGuidField;
    qryRx_PrescriptioncomplexSiteDepartment_ID: TGuidField;
    qryRx_PrescriptioncomplexSiteDepartment_str: TWideStringField;
    qryRx_PrescriptionPersonAge_int: TIntegerField;
    qryRx_PrescriptionRxCancelReasonsAfterPosting_str: TWideStringField;
    qryRx_PrescriptionRXItem_ID: TGuidField;
    qryRx_PrescriptionRX_ID: TGuidField;
    qryRx_PrescriptionFrmFormulation_Str: TWideStringField;
    qryRx_PrescriptionFrmAdministration_Str: TWideStringField;
    qryRx_PrescriptionFrmSKU_Dbl: TFloatField;
    qryRx_PrescriptionFrmInterval_Str: TWideStringField;
    qryRx_PrescriptionFrmAdministrationUnit_Str: TWideStringField;
    qryRx_PrescriptionFrmDailyDoseCalc_Dbl: TFloatField;
    qryRx_PrescriptionFrmDoseCalc_Dbl: TFloatField;
    qryRx_PrescriptionFrmSKUTotal_Dbl: TFloatField;
    qryRx_PrescriptionFrmDuration_Dbl: TFloatField;
    qryRx_PrescriptionFrmRepeat_Dbl: TFloatField;
    qryRx_PrescriptionFrmDirections_Str: TWideStringField;
    qryRx_PrescriptionFrmICDCode_Str: TWideStringField;
    qryRx_PrescriptionFrmDescription_Str: TWideStringField;
    qryRx_PrescriptionFrmProtocol_ID: TGuidField;
    qryRx_PrescriptionDspDescription_Str: TWideStringField;
    qryRx_PrescriptionDspProduct_ID: TGuidField;
    qryRx_PrescriptionDspProduct_Str: TWideStringField;
    qryRx_PrescriptionDspSKUActual_Dbl: TFloatField;
    qryRx_PrescriptionDspProductCalc_Dbl: TFloatField;
    qryRx_PrescriptionDspProductCost_Mny: TBCDField;
    qryRx_PrescriptionDspProductBreakPack_Bol: TBooleanField;
    qryRx_PrescriptionDspItemCost_Mny: TBCDField;
    qryRx_PrescriptionDspProductBatch_Str: TWideStringField;
    qryRx_PrescriptionDspWarning_Str: TWideStringField;
    qryRx_PrescriptionDspDirections_Str: TWideStringField;
    qryRx_PrescriptionDspNotDispensed_Bol: TBooleanField;
    qryRx_PrescriptionDspInterventionProblem_Str: TWideStringField;
    qryRx_PrescriptionDspInterventionOutcome_Str: TWideStringField;
    qryRx_PrescriptionDspLabel01_Str: TWideStringField;
    qryRx_PrescriptionDspLabel02_Str: TWideStringField;
    qryRx_PrescriptionDspLabel03_Str: TWideStringField;
    qryRx_PrescriptionDspLabel04_Str: TWideStringField;
    qryRx_PrescriptionDspLabel05_Str: TWideStringField;
    qryRx_PrescriptionDspLabel06_Str: TWideStringField;
    qryRx_PrescriptionItemPreview_Str: TWideStringField;
    qryRx_PrescriptionDspDirectionsAuto_Bol: TBooleanField;
    qryRx_PrescriptionInputOrder_int: TIntegerField;
    qryRx_Prescriptionperson_ID: TGuidField;
    qryRx_PrescriptionpersonLastName_Str: TWideStringField;
    qryRx_PrescriptionpersonFirstName_Str: TWideStringField;
    qryRx_PrescriptionpersonKnownName_Str: TWideStringField;
    qryRx_PrescriptionpersonInitials_Str: TWideStringField;
    qryRx_PrescriptionpersonDOB_Dat: TDateTimeField;
    qryRx_PrescriptionpersonGender_Str: TWideStringField;
    qryRx_PrescriptionpersonReviewed_Dat: TDateTimeField;
    qryRx_PrescriptionpersonActive_Bol: TBooleanField;
    qryRx_PrescriptionpersonRace_Str: TWideStringField;
    qryRx_PrescriptionpersonLanguageNarrative_Str: TWideStringField;
    qryRx_PrescriptionpersonLanguageWritten_Str: TWideStringField;
    qryRx_PrescriptionpersonAgeYears_int: TIntegerField;
    qryRx_PrescriptionpersonAgeMonths_int: TIntegerField;
    qryRx_PrescriptionpersonDescription_str: TWideStringField;
    qryRx_PrescriptionpersonRefNoCurrent_str: TWideStringField;
    qryRx_PrescriptionpersonTelNoCurrent_str: TWideStringField;
    qryRx_PrescriptionpersonCelNoCurrent_str: TWideStringField;
    qryRx_PrescriptionpersonAddressCurrent_str: TWideStringField;
    qryRx_PrescriptionpersonRegistrationNo_str: TWideStringField;
    qryRx_PrescriptionpersonInstitution_str: TWideStringField;
    qryRx_PrescriptionpersonPatient_bol: TBooleanField;
    qryRx_PrescriptionpersonPrescriber_bol: TBooleanField;
    qryRx_PrescriptionpersonDispenser_bol: TBooleanField;
    qryRx_PrescriptionpersonOther_bol: TBooleanField;
    qryRx_PrescriptionsysLastEdited_dat: TDateTimeField;
    qryRx_PrescriptionsysLastEditedBy_ID: TGuidField;
    qryRx_PrescriptionsysLastEditedBy_str: TWideStringField;
    qryRx_PrescriptionsysDeleted_bol: TBooleanField;
    qryRx_PrescriptionpersonDateDeceased_dat: TDateTimeField;
    qryRx_PrescriptionpersonStatus_Str: TWideStringField;
    qryRx_PrescriptionpersonIDNumber_Str: TWideStringField;
    qryRx_PrescriptionpersonStatusChangeDate_dat: TDateTimeField;
    qryRx_PrescriptionpersonPead_bol: TBooleanField;
    qryRx_PrescriptionpersonDateJoined_dat: TDateTimeField;
    qryRx_PrescriptionpersonStatusDesc_str: TWideStringField;
    qryRx_PrescriptionpersonPAS_str: TWideStringField;
    qryRx_PrescriptionpersonInstitution_ID: TGuidField;
    qryRx_PrescriptionpersonNaive_Bol: TBooleanField;
    qryRx_PrescriptionpersonNaiveDate_Dat: TDateTimeField;
    qryRx_PrescriptionpersonTransferredOutTo_str: TWideStringField;
    qryRx_PrescriptionpersonTransferredOut_bol: TBooleanField;
    qryRx_PrescriptionpersonClintech_ID: TIntegerField;
    qryRx_PrescriptionpersonTransferredInDate_dat: TDateTimeField;
    qryRx_PrescriptionpersonDefaulted_dat: TDateTimeField;
    qryRx_PrescriptionpersonMaritalStatus_str: TWideStringField;
    qryRx_PrescriptionpersonDeceased_bol: TBooleanField;
    qryRx_PrescriptionpersonTransferredOutDate_dat: TDateTimeField;
    qryRx_PrescriptionpersonTransferredInFrom_str: TWideStringField;
    qryRx_PrescriptionpersonRegisteredInSys_bol: TBooleanField;
    qryRx_PrescriptionpersonTransferredIn_bol: TBooleanField;
    qryRx_PrescriptionpersonPAAB_ID: TWideStringField;
    qryRx_PrescriptionpersonRegisteredInSys_dat: TDateTimeField;
    qryRx_PrescriptionpersonDefaulted_bol: TBooleanField;
    qryRx_PrescriptionvstPregnancyDeliveryDate_dat_1: TDateTimeField;
    qryRx_PrescriptionvstFunctionalStatus_str_1: TWideStringField;
    qryRx_PrescriptionvstClinicalStage_str_1: TWideStringField;
    qryRx_PrescriptionvstRegimenChange_From_str_1: TWideStringField;
    qryRx_PrescriptionvstRegimenChange_To_str_1: TWideStringField;
    qryRx_PrescriptionvstRegimenChange_Reason_str_1: TWideStringField;
    qryRx_PrescriptionvstVisitDate_dat_1: TDateTimeField;
    qryRx_PrescriptionvstNextVisit_dat_1: TDateTimeField;
    qryRx_PrescriptionvstScheduledVisit_dat_1: TDateTimeField;
    qryRx_Prescriptionpersonpregnant_bol_1: TBooleanField;
    qryRx_PrescriptionvstSupporterName_str: TWideStringField;
    qryRx_PrescriptionvstSupporterAddress_str: TWideStringField;
    qryRx_PrescriptionvstUpporterPhone_str: TWideStringField;
    qryRx_PrescriptionvstSupporterRelationship_str: TWideStringField;
    qryRx_PrescriptionvstCohort_str: TWideStringField;
    qryRx_PrescriptionvstHeight_dbl: TFloatField;
    qryRx_PrescriptionvstLostToFollowUpDate_dat_1: TDateTimeField;
    qryRx_PrescriptionvstRegimenStart_str_1: TWideStringField;
    qryRx_PrescriptionvstRegimenStartDate_dat_1: TDateTimeField;
    qryRx_PrescriptionvstTreatmentEligibility_str: TWideStringField;
    qryRx_PrescriptionvstTreatmentStopped_date_dat_1: TDateTimeField;
    qryRx_PrescriptionvstWeight_dbl: TFloatField;
    qryRx_PrescriptionvstTempPatient_bol: TBooleanField;
    qryRx_PrescriptionReasonForEligibility_Str: TWideStringField;
    qryRx_PrescriptionClassification_ID: TIntegerField;
    qryRx_PrescriptionvstIsOnSite_bol: TBooleanField;
    qryRx_PrescriptionvstOnSiteDate_dat: TDateTimeField;
    qryRx_PrescriptionDiagnosis_dat: TDateTimeField;
    qryRx_PrescriptionARTStart_dat: TDateTimeField;
    qryRx_PrescriptionEntryPoint_str: TWideStringField;
    qryRx_PrescriptionpersonReligion_str: TWideStringField;
    qryRx_PrescriptionClassification_str: TWideStringField;
    qryRx_PrescriptioneligibilityCD4Count_str: TWideStringField;
    qryRx_PrescriptioneligibilityWHOStaging_str: TWideStringField;
    qryRx_PrescriptionNationality_str: TWideStringField;
    qryRx_PrescriptionReferredTo_str: TWideStringField;
    qryRx_PrescriptionReferredBy_str: TWideStringField;
    qryRx_PrescriptionpersonEducation_str: TWideStringField;
    qryRx_PrescriptionpersonEmployed_bol: TBooleanField;
    qryRx_PrescriptionpersonEmployeeNumber_str: TWideStringField;
    qryRx_PrescriptionPatientNumberType: TWideStringField;
    qryRx_PrescriptionSouthAfricanID_bol: TBooleanField;
    qryRx_PrescriptionForeigner_bol: TBooleanField;
    qryRx_PrescriptionpersonGreenBox_ID: TGuidField;
    qryRx_PrescriptionICN_str: TWideStringField;
    qryRx_PrescriptionECN_str: TWideStringField;
    qryRx_PrescriptionDemanderName: TWideStringField;
    qryRx_PrescriptionDemanderAddress: TWideStringField;
    qryRx_PrescriptionpersonSignatureImage_Img: TBlobField;
    qryRx_PrescriptionpersonQualificationName_Str: TWideStringField;
    qryRx_PrescriptionStorageConditions_str: TWideStringField;
    qryRx_PrescriptionStorageTemp_str: TWideStringField;
    qryRx_PrescriptionRefrigerated_bol: TBooleanField;
    ppDBqryRx_Prescription: TppDBPipeline;
    ppDBPrescriberNumber: TppDBPipeline;
    ppDBAllergiesDisplay: TppDBPipeline;
    ppDBProtocolsDisplay: TppDBPipeline;
    ppDBPipeline1: TppDBPipeline;
    ppRegion52: TppRegion;
    ppLabel283: TppLabel;
    ppDBText207: TppDBText;
    ppDBText208: TppDBText;
    ppLabel284: TppLabel;
    ppDBImage4: TppDBImage;
    ppDBText209: TppDBText;
    ppLabel285: TppLabel;
    ppRegion53: TppRegion;
    ppLabel286: TppLabel;
    ppDBText210: TppDBText;
    ppDBText211: TppDBText;
    ppLabel287: TppLabel;
    qryPatientWeight: TADOQuery;
    dsPatientWeight: TDataSource;
    ppDBText243: TppDBText;
    ppDBText244: TppDBText;
    qryReportBatch02PicklistAge: TIntegerField;
    qryReportBatch02PicklistrxLevelCode_Str: TWideStringField;
    qryReportBatch02PicklistpersonLastName_Str: TWideStringField;
    qryReportBatch02PicklistpersonFirstName_Str: TWideStringField;
    qryReportBatch02Picklistdate_Dat: TDateTimeField;
    qryReportBatch02PicklistprescriptionNumber_Str: TWideStringField;
    qryReportBatch02PicklistfolderNumber_Str: TWideStringField;
    qryReportBatch02PicklistprescriberName_Str: TWideStringField;
    qryReportBatch02PicklistdispenserName_Str: TWideStringField;
    qryReportBatch02PicklistdispenserRxLevel_Str: TWideStringField;
    qryReportBatch02PicklistdispensedAuthorisedBy_Str: TWideStringField;
    qryReportBatch02PicklistpatientName_Str: TWideStringField;
    qryReportBatch02PicklistprescriptionCost_Mon: TBCDField;
    qryReportBatch02Picklistclinic_str: TWideStringField;
    qryReportBatch02PicklistprescriptionStatus_Str: TWideStringField;
    qryReportBatch02PicklistpersonDOB_Dat: TDateTimeField;
    qryReportBatch02PicklistpersonGender_Str: TWideStringField;
    qryReportBatch02PicklistpersonLanguageNarrative_Str: TWideStringField;
    qryReportBatch02PicklistpersonLanguageWritten_Str: TWideStringField;
    qryReportBatch02PicklistpersonRace_Str: TWideStringField;
    qryReportBatch02PicklistpersonAgeYears_int: TIntegerField;
    qryReportBatch02PicklistpersonAgeMonths_int: TIntegerField;
    qryReportBatch02PicklistpersonDescription_str: TWideStringField;
    qryReportBatch02PicklistpersonTelNoCurrent_str: TWideStringField;
    qryReportBatch02PicklistpersonCelNoCurrent_str: TWideStringField;
    qryReportBatch02PicklistpersonAddressCurrent_str: TWideStringField;
    qryReportBatch02PicklistclinicName_str: TWideStringField;
    qryReportBatch02PicklistrouteName_str: TWideStringField;
    qryReportBatch02PicklistclinicClassification_str: TWideStringField;
    qryReportBatch02PicklistclinicLocation_str: TWideStringField;
    qryReportBatch02PicklistclinicDistrictPharmacist_str: TWideStringField;
    qryReportBatch02PicklistrepeatDate_dat: TDateTimeField;
    qryReportBatch02Picklistrepeats_Int: TIntegerField;
    qryReportBatch02PicklistrepeatNo_Int: TIntegerField;
    qryReportBatch02PicklistprescriptionActive_bol: TBooleanField;
    qryReportBatch02PicklistbatchIsBatched_bol: TBooleanField;
    qryReportBatch02PicklistprescriptionAuthorised_bol: TBooleanField;
    qryReportBatch02PicklistdispensingAuthorised_bol: TBooleanField;
    qryReportBatch02PicklistdispensingCollected_bol: TBooleanField;
    qryReportBatch02PicklistdispensingPicked_bol: TBooleanField;
    qryReportBatch02PicklistbatchIsCollated_bol: TBooleanField;
    qryReportBatch02PicklistdispensingPosted_bol: TBooleanField;
    qryReportBatch02PicklistDescription_str: TStringField;
    qryReportBatch02PicklistpackDescription_Str: TWideStringField;
    qryReportBatch02PicklistPackSizeValue_dbl: TFloatField;
    qryReportBatch02PicklistrxLevel_str: TWideStringField;
    qryReportBatch02PicklistBin_str: TWideStringField;
    qryReportBatch02PicklistATC_str: TWideStringField;
    qryReportBatch02PicklistLevelOfUse_str: TWideStringField;
    qryReportBatch02Picklistprescription_ID: TGuidField;
    qryReportBatch02PicklistbatchIsShipped_bol: TBooleanField;
    qryReportBatch02PicklistDemanderName_Str: TWideStringField;
    qryReportBatch02PicklistRXItem_ID: TGuidField;
    qryReportBatch02PicklistRX_ID: TGuidField;
    qryReportBatch02PicklistFrmFormulation_Str: TWideStringField;
    qryReportBatch02PicklistFrmAdministration_Str: TWideStringField;
    qryReportBatch02PicklistFrmSKU_Dbl: TFloatField;
    qryReportBatch02PicklistFrmInterval_Str: TWideStringField;
    qryReportBatch02PicklistFrmAdministrationUnit_Str: TWideStringField;
    qryReportBatch02PicklistFrmDailyDoseCalc_Dbl: TFloatField;
    qryReportBatch02PicklistFrmDoseCalc_Dbl: TFloatField;
    qryReportBatch02PicklistFrmSKUTotal_Dbl: TFloatField;
    qryReportBatch02PicklistFrmDuration_Dbl: TFloatField;
    qryReportBatch02PicklistFrmRepeat_Dbl: TFloatField;
    qryReportBatch02PicklistFrmDirections_Str: TWideStringField;
    qryReportBatch02PicklistFrmICDCode_Str: TWideStringField;
    qryReportBatch02PicklistFrmDescription_Str: TWideStringField;
    qryReportBatch02PicklistFrmProtocol_ID: TGuidField;
    qryReportBatch02PicklistDspDescription_Str: TWideStringField;
    qryReportBatch02PicklistDspProduct_ID: TGuidField;
    qryReportBatch02PicklistDspProduct_Str: TWideStringField;
    qryReportBatch02PicklistDspSKUActual_Dbl: TFloatField;
    qryReportBatch02PicklistDspProductCalc_Dbl: TFloatField;
    qryReportBatch02PicklistDspProductCost_Mny: TBCDField;
    qryReportBatch02PicklistDspProductBreakPack_Bol: TBooleanField;
    qryReportBatch02PicklistDspItemCost_Mny: TBCDField;
    qryReportBatch02PicklistDspProductBatch_Str: TWideStringField;
    qryReportBatch02PicklistDspWarning_Str: TWideStringField;
    qryReportBatch02PicklistDspDirections_Str: TWideStringField;
    qryReportBatch02PicklistDspNotDispensed_Bol: TBooleanField;
    qryReportBatch02PicklistDspInterventionProblem_Str: TWideStringField;
    qryReportBatch02PicklistDspInterventionOutcome_Str: TWideStringField;
    qryReportBatch02PicklistDspLabel01_Str: TWideStringField;
    qryReportBatch02PicklistDspLabel02_Str: TWideStringField;
    qryReportBatch02PicklistDspLabel03_Str: TWideStringField;
    qryReportBatch02PicklistDspLabel04_Str: TWideStringField;
    qryReportBatch02PicklistDspLabel05_Str: TWideStringField;
    qryReportBatch02PicklistDspLabel06_Str: TWideStringField;
    qryReportBatch02PicklistItemPreview_Str: TWideStringField;
    qryReportBatch02PicklistDspDirectionsAuto_Bol: TBooleanField;
    qryReportBatch02PicklistInputOrder_int: TIntegerField;
    qryReportBatch02PicklistpersonIDNumber_Str: TWideStringField;
    ppLabel288: TppLabel;
    ppVariable9: TppVariable;
    raCodeModule8: TraCodeModule;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure SetConnectionString(prmConStr : string);
    procedure ConfigureLabelReport(vReport: TppReport);
    { Private declarations }
  public
    LabelPrnt, ReportPrnt : String;
    CheckUsePrnt : Boolean;
    CustomReportPATH : string;
    procedure Batch_01_QualityAssurance(prmConStr, prmRouteName : string ;
        prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
        prmPrintShipped : string; prmpost : string);
    procedure Batch_01_CheckList(prmConStr, prmRouteName : string ;
        prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
        prmPrintShipped : string);
    procedure Batch_02_Picklists(prmConStr, prmRouteName : string ; prmDateFrom,
        prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule, prmATC,
        prmIndication : string ; prmPrintShipped : string; prmpost : string);
    procedure Batch_05_PicklistsLabel(prmConStr, prmRouteName : string ;
        prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
        prmATC, prmIndication : string ; prmPrintShipped : string);

    //MC - 20/08/2012
     procedure Batch_11_PicklistsLabel(prmConStr, prmRouteName : string ;
        prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
        prmATC, prmIndication : string ; prmPrintShipped : string; prmPrescriptionNo: string);

      //MC - 12/02/2013
     procedure Batch_14_Printing(prmConStr, prmRouteName : string ;
        prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
        prmATC, prmIndication : string ; prmpost : string; prmPrintShipped : string;  prmPrescriptionNo: string);

    procedure Batch_03_DeliveryConfirmation(prmConStr, prmRouteName : string ;
        prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
        prmPrintShipped : string);

    procedure Batch_06_PicklistsAddressLabels(prmConStr, prmRouteName : string ;
        prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
        prmATC, prmIndication : string ; prmPrintShipped : string);

    //MC - 21/08/2012
    procedure Batch_12_PicklistsAddressLabels(prmConStr, prmRouteName : string ;
    prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string;prmPrescriptionNo: string );

    procedure Dosing_ListOf(prmConStr : string ; prmGenericNameFilter : string ;
        prmDosingIDFilter : string);
    procedure Patient_ListOf(prmConStr : string ; prmType : integer ; prmFilter :
        String = '');
    procedure Rx_Prescription(prmConStr : String ; prmRxID : String);

    procedure PrinterSelector(reportdoc : TppReport; printername : string);
    //SM 13 May 2008 - new shorten rx lists
    procedure Batch_08_ShortRxList(prmConStr, prmRouteName : string ;
    prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin: string ; prmPrintShipped : string);

    procedure Batch_09_ProductNeedsList(prmConStr, prmRouteName : string ;
    prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin: string ; prmPrintShipped : string);

    procedure Batch_10_TrailerLabels(prmConStr, prmRouteName : string ;
    prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin: string ; prmPrintShipped : string;  prmpost: string);

    //mc - 21/08/2012
    procedure Batch_13_TrailerLabels(prmConStr, prmRouteName : string ;
    prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin: string ; prmPrintShipped : string;  prmpost: string; prmPrescriptionNo: string);

    procedure LoadSystemSettings;
    procedure EditRxLabel(prmConStr: string; vOption: integer);
    procedure LoadEditLabelPaths;
     { Public declarations }
  end;
  
var
  dmPrint: TdmPrint;

implementation

{$R *.dfm}

procedure TdmPrint.PrinterSelector(reportdoc: TppReport; printername : string);
begin 
 try
 // MC - 21/08/2012
 if CheckUsePrnt then
   begin
   reportdoc.DeviceType := 'Printer';
   reportdoc.PrinterSetup.PrinterName := printername;
//   reportdoc.ShowPrintDialog := True;
   end
  else
   begin
   reportdoc.ShowPrintDialog := True;
   // MC - 21/08/2012
   reportdoc.DeviceType := 'Screen';
//   reportdoc.DeviceType := 'Screen';
   end;
  reportdoc.Print;
 except
      on E : Exception do MessageDlg(e.Message, mtWarning, [mbOK], 0);
 end;

end;

procedure TdmPrint.Dosing_ListOf(prmConStr : string ; prmGenericNameFilter :
    string ; prmDosingIDFilter : string);
var
  p : string;

const
  //SM
  STRA = 'select view_v01_Print_Dosing_RxList.*, tblSystem.provincialLogo_img from view_v01_Print_Dosing_RxList, tblSystem where genericName_str = :@genericName_str';
  STRB = 'select view_v01_Print_Dosing_RxList.*, tblSystem.provincialLogo_img from view_v01_Print_Dosing_RxList, tblSystem where productDosingID = :@productDosingID';

begin

  p := prmGenericNameFilter;
  if p <> '' then
    begin
    qryDosing_ListOf.SQL.Clear;
    qryDosing_ListOf.SQL.Add(STRA);
    qryDosing_ListOf.Parameters.ParamByName('@genericName_str').Value := p;
    end;
  p := prmDosingIDFilter;
  if p <> '' then
    begin
    qryDosing_ListOf.SQL.Clear;
    qryDosing_ListOf.SQL.Add(STRB);
    qryDosing_ListOf.Parameters.ParamByName('@productDosingID').Value := p;
    end;

  SetConnectionString(prmConStr);
  qryDosing_ListOf.Open;
  ppDosing_ListOf.Print;

end;

procedure TdmPrint.Batch_01_QualityAssurance(prmConStr, prmRouteName : string ;
    prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string; prmpost : string);
var
  dataQry   : TADOQuery;
  prvStr    : string;

begin

  SetConnectionString(prmConStr);
  dataQry := qryReportBatch01Picking;
//SM
//  prvStr  := 'SELECT * FROM view_v01_Batch_RxList WHERE (routeName_str = :rnme) AND (date_dat >= :dtefrm) AND (date_dat <= :dteto)';
  prvStr  := 'SELECT view_v01_Batch_RxList.* FROM view_v01_Batch_RxList WHERE (routeName_str = :rnme) AND (date_dat >= :dtefrm) AND (date_dat <= :dteto) AND (batchIsBatched_bol=1)';

 // if not prmPrintShipped then prvStr := prvStr + ' AND (batchIsShipped_bol = 0)';
  if prmClinic <> '<All>' then prvStr := prvStr + ' AND (clinicName_str = :cln)';
  if prmRxOrigin <> '<All>' then prvStr := prvStr + ' AND (DemanderName_str = :rxo)';
  if prmpost <> '<All>' then  prvStr := prvStr +  ' AND (dispensingPosted_bol = :post)';
  if prmPrintShipped <> '<All>' then  prvStr := prvStr +  ' AND (batchIsShipped_bol = :ship)';

  prvStr  := prvStr + '  ORDER BY patientName_str';
  
  dataQry.Close;
  dataQry.SQL.Clear;
  dataQry.SQL.Add(prvStr);

  dataQry.Parameters.ParamByName('rnme').Value := prmRouteName;
  dataQry.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
  dataQry.Parameters.ParamByName('dteto').Value := prmDateTo;
  if prmClinic <> '<All>' then dataQry.Parameters.ParamByName('cln').Value := prmClinic;
  if prmRxOrigin <> '<All>' then dataQry.Parameters.ParamByName('rxo').Value := prmRxOrigin;
  if prmpost <> '<All>' then dataQry.Parameters.ParamByName('post').Value := StrToBool(prmpost);
  if prmPrintShipped <> '<All>' then dataQry.Parameters.ParamByName('ship').Value := StrToBool(prmPrintShipped);

  dataQry.Open;
  PrinterSelector(ppBatch01Picking, ReportPrnt);
 // PrinterSelector(ppBatchCollectCheckList, ReportPrnt);

end;

//SM 11/07/2007
procedure TdmPrint.Batch_01_CheckList(prmConStr, prmRouteName : string ;
    prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string);
var
  dataQry   : TADOQuery;
  prvStr    : string;

begin

  SetConnectionString(prmConStr);
  dataQry := qryReportBatch01Picking;
//SM
//  prvStr  := 'SELECT * FROM view_v01_Batch_RxList WHERE (routeName_str = :rnme) AND (date_dat >= :dtefrm) AND (date_dat <= :dteto)';
  prvStr  := 'SELECT view_v01_Batch_RxList.* FROM view_v01_Batch_RxList WHERE (routeName_str = :rnme) AND (date_dat >= :dtefrm) AND (date_dat <= :dteto) AND (batchIsBatched_bol=1)';

 // if not prmPrintShipped then prvStr := prvStr + ' AND (batchIsShipped_bol = 0)';
  if prmClinic <> '<All>' then prvStr := prvStr + ' AND (clinicName_str = :cln)';
  if prmRxOrigin <> '<All>' then prvStr := prvStr + ' AND (DemanderName_str = :rxo)';

  if prmPrintShipped <> '<All>' then prvStr := prvStr + ' AND (batchIsShipped_bol = :ship)';


  prvStr  := prvStr + ' ORDER BY patientName_str, Date_dat';
  
  dataQry.Close;
  dataQry.SQL.Clear;
  dataQry.SQL.Add(prvStr);

  dataQry.Parameters.ParamByName('rnme').Value := prmRouteName;
  dataQry.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
  dataQry.Parameters.ParamByName('dteto').Value := prmDateTo;
  if prmClinic <> '<All>' then dataQry.Parameters.ParamByName('cln').Value := prmClinic;
  if prmRxOrigin <> '<All>' then dataQry.Parameters.ParamByName('rxo').Value := prmRxOrigin; 
  if prmPrintShipped <> '<All>' then dataQry.Parameters.ParamByName('ship').Value := StrToBool(prmPrintShipped);

  dataQry.Open;
 // PrinterSelector(ppBatch01Picking, ReportPrnt);
  PrinterSelector(ppBatchCollectCheckList, ReportPrnt);

end;

procedure TdmPrint.Batch_02_Picklists(prmConStr, prmRouteName : string ;
    prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string; prmpost : string);
var
  dataQry   : TADOQuery;
  prvStr    : string;

begin

  SetConnectionString(prmConStr);
  dataQry := qryReportBatch02Picklist;
//SM

//  prvStr  := 'SELECT * FROM view_v01_Batch_RxListPicklist WHERE (routeName_str = :rnme) AND (repeatDate_dat >= :dtefrm) AND (repeatDate_dat <= :dteto)';
  prvStr  := 'SELECT view_v01_Batch_RxListPicklist.* FROM view_v01_Batch_RxListPicklist WHERE (routeName_str = :rnme) AND (Date_dat >= :dtefrm) AND (Date_dat <= :dteto)AND (batchIsBatched_bol=1)';
 // if not prmPrintShipped then prvStr := prvStr + ' AND (batchIsShipped_bol = 0)';
  if prmClinic <> '<All>' then
    if prmClinic <> '<All>' then prvStr := prvStr + ' AND (clinicName_str = :cln)';
  if prmRxOrigin <> '' then
    if prmRxOrigin <> '<All>' then prvStr := prvStr + ' AND (DemanderName_str = :rxo)';
   if prmpost <> '<All>' then  prvStr := prvStr + 'AND (dispensingPosted_bol = :post)';
   if prmPrintShipped <> '<All>' then  prvStr := prvStr + 'AND (batchIsShipped_bol = :ship)';

 { if prmSchedule <> '' then
    if prmSchedule <> '<All>' then prvStr := prvStr + ' AND (LevelOfUse_str = :sch)';
  if prmATC <> '' then
    if prmATC <> '<All>' then prvStr := prvStr + ' AND (ATC_str = :atc)';
  if prmIndication <> '' then
    if prmIndication <> '<All>' then prvStr := prvStr + ' AND (indication_Str = :icd10)';
                   }

 prvStr := prvStr + '  ORDER BY personLastName_Str, personFirstName_Str, prescriptionNumber_Str';

  dataQry.Close;
  dataQry.SQL.Clear;
  dataQry.SQL.Add(prvStr);

  dataQry.Parameters.ParamByName('rnme').Value := prmRouteName;
  dataQry.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
  dataQry.Parameters.ParamByName('dteto').Value := prmDateTo;
  if prmClinic <> '' then
    if prmClinic <> '<All>' then dataQry.Parameters.ParamByName('cln').Value := prmClinic;
  if prmRxOrigin <> '' then
    if prmRxOrigin <> '<All>' then dataQry.Parameters.ParamByName('rxo').Value := prmRxOrigin;
    if prmpost <> '<All>' then dataQry.Parameters.ParamByName('post').Value  := StrToBool(prmpost);

    if prmPrintShipped <> '<All>' then dataQry.Parameters.ParamByName('ship').Value  := StrToBool(prmPrintShipped);

 { if prmSchedule <> '' then
    if prmSchedule <> '<All>' then dataQry.Parameters.ParamByName('sch').Value := prmSchedule;
  if prmATC <> '' then
    if prmATC <> '<All>' then dataQry.Parameters.ParamByName('atc').Value := prmATC;
  if prmIndication <> '' then
    if prmIndication <> '<All>' then dataQry.Parameters.ParamByName('icd10').Value := prmIndication;
          }
  dataQry.Open;

  PrinterSelector(ppBatch02Picklist, ReportPrnt);

end;

procedure TdmPrint.Batch_05_PicklistsLabel(prmConStr, prmRouteName : string ;
    prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string);
var
  dataQry   : TADOQuery;
  prvStr    : string;

begin

  SetConnectionString(prmConStr);
  dataQry := qryBatchLabel;
//SM
//  prvStr  := 'SELECT * FROM view_v01_Batch_RxListPicklist WHERE (routeName_str = :rnme) AND (repeatDate_dat >= :dtefrm) AND (repeatDate_dat <= :dteto)';
  prvStr  := 'SELECT * FROM view_v01_Batch_RxListPicklist WHERE (routeName_str = :rnme) AND (Date_dat >= :dtefrm) AND (Date_dat <= :dteto) AND (batchIsBatched_bol=1)';
//  if not prmPrintShipped then prvStr := prvStr + ' AND (batchIsShipped_bol = 0)';
  if prmClinic <> '' then
    if prmClinic <> '<All>' then prvStr := prvStr + ' AND (clinicName_str = :cln)';
  if prmRxOrigin <> '' then
    if prmRxOrigin <> '<All>' then prvStr := prvStr + ' AND (DemanderName_str = :rxo)';

  if prmPrintShipped <> '<All>' then prvStr := prvStr + ' AND (batchIsShipped_bol = :ship)';

 { if prmSchedule <> '' then
    if prmSchedule <> '<All>' then prvStr := prvStr + ' AND (LevelOfUse_str = :sch)';
  if prmATC <> '' then
    if prmATC <> '<All>' then prvStr := prvStr + ' AND (ATC_str = :atc)';
  if prmIndication <> '' then
    if prmIndication <> '<All>' then prvStr := prvStr + ' AND (indication_Str = :icd10)';      }

  prvStr := prvStr + 'ORDER BY personLastName_Str';

  dataQry.Close;
  dataQry.SQL.Clear;
  dataQry.SQL.Add(prvStr);

  dataQry.Parameters.ParamByName('rnme').Value := prmRouteName;
  dataQry.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
  dataQry.Parameters.ParamByName('dteto').Value := prmDateTo;
  if prmClinic <> '' then
    if prmClinic <> '<All>' then dataQry.Parameters.ParamByName('cln').Value := prmClinic;
  if prmRxOrigin <> '' then
    if prmRxOrigin <> '<All>' then dataQry.Parameters.ParamByName('rxo').Value := prmRxOrigin;

    if prmPrintShipped <> '<All>' then dataQry.Parameters.ParamByName('ship').Value := StrToBool(prmPrintShipped);
    
 { if prmSchedule <> '' then
    if prmSchedule <> '<All>' then dataQry.Parameters.ParamByName('sch').Value := prmSchedule;
  if prmATC <> '' then
    if prmATC <> '<All>' then dataQry.Parameters.ParamByName('atc').Value := prmATC;
  if prmIndication <> '' then
    if prmIndication <> '<All>' then dataQry.Parameters.ParamByName('icd10').Value := prmIndication;  }

  dataQry.Open;

    //*********** Load Templates if available
  if FileExists(CustomReportPATH + 'labels\batch_label.rtm') then
   begin
   ppBatchLabelPrint.Template.FileName := CustomReportPATH + 'labels\batch_label.rtm';
   ppBatchLabelPrint.Template.LoadFromFile;
   //*********** Load template for Sub report
   ppChildReportLabel.Template.FileName := CustomReportPATH + 'labels\batch_label.rtm';
   ppChildReportLabel.Template.LoadFromFile;

   ppReport1.PrinterSetup.PaperWidth := ppBatchLabelPrint.PrinterSetup.PaperWidth;
   ppReport1.PrinterSetup.PaperHeight := ppBatchLabelPrint.PrinterSetup.PaperHeight;
   end;

  PrinterSelector(ppBatchLabelPrint, LabelPrnt);

end;


//MC -20/08/2012
procedure TdmPrint.Batch_11_PicklistsLabel(prmConStr, prmRouteName : string ;
    prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string; prmPrescriptionNo: string);
var
  dataQry   : TADOQuery;
  prvStr    : string;

begin

  SetConnectionString(prmConStr);
  dataQry := qryBatchLabel;
//SM
//  prvStr  := 'SELECT * FROM view_v01_Batch_RxListPicklist WHERE (routeName_str = :rnme) AND (repeatDate_dat >= :dtefrm) AND (repeatDate_dat <= :dteto)';
  prvStr  := 'SELECT * FROM view_v01_Batch_RxListPicklist WHERE (routeName_str = :rnme) AND (Date_dat >= :dtefrm) AND (Date_dat <= :dteto) AND prescription_ID = :prmPrescriptionNo AND (batchIsBatched_bol=1)';
//  if not prmPrintShipped then prvStr := prvStr + ' AND (batchIsShipped_bol = 0)';
  if prmClinic <> '' then
    if prmClinic <> '<All>' then prvStr := prvStr + ' AND (clinicName_str = :cln)';
  if prmRxOrigin <> '' then
    if prmRxOrigin <> '<All>' then prvStr := prvStr + ' AND (DemanderName_str = :rxo)';

  if prmPrintShipped <> '<All>' then prvStr := prvStr + ' AND (batchIsShipped_bol = :ship)';

 { if prmSchedule <> '' then
    if prmSchedule <> '<All>' then prvStr := prvStr + ' AND (LevelOfUse_str = :sch)';
  if prmATC <> '' then
    if prmATC <> '<All>' then prvStr := prvStr + ' AND (ATC_str = :atc)';
  if prmIndication <> '' then
    if prmIndication <> '<All>' then prvStr := prvStr + ' AND (indication_Str = :icd10)';      }

  prvStr := prvStr + 'ORDER BY personLastName_Str';

  dataQry.Close;
  dataQry.SQL.Clear;
  dataQry.SQL.Add(prvStr);

  dataQry.Parameters.ParamByName('rnme').Value := prmRouteName;
  dataQry.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
  dataQry.Parameters.ParamByName('dteto').Value := prmDateTo;
  dataQry.Parameters.ParamByName('prmPrescriptionNo').Value := prmPrescriptionNo;
  if prmClinic <> '' then
    if prmClinic <> '<All>' then dataQry.Parameters.ParamByName('cln').Value := prmClinic;
  if prmRxOrigin <> '' then
    if prmRxOrigin <> '<All>' then dataQry.Parameters.ParamByName('rxo').Value := prmRxOrigin;

    if prmPrintShipped <> '<All>' then dataQry.Parameters.ParamByName('ship').Value := StrToBool(prmPrintShipped);
    
 { if prmSchedule <> '' then
    if prmSchedule <> '<All>' then dataQry.Parameters.ParamByName('sch').Value := prmSchedule;
  if prmATC <> '' then
    if prmATC <> '<All>' then dataQry.Parameters.ParamByName('atc').Value := prmATC;
  if prmIndication <> '' then
    if prmIndication <> '<All>' then dataQry.Parameters.ParamByName('icd10').Value := prmIndication;  }

  dataQry.Open;

    //*********** Load Templates if available
  if FileExists(CustomReportPATH + 'labels\batch_label.rtm') then
   begin
   ppBatchLabelPrint.Template.FileName := CustomReportPATH + 'labels\batch_label.rtm';
   ppBatchLabelPrint.Template.LoadFromFile;
   //*********** Load template for Sub report
   ppChildReportLabel.Template.FileName := CustomReportPATH + 'labels\batch_label.rtm';
   ppChildReportLabel.Template.LoadFromFile;

   ppReport1.PrinterSetup.PaperWidth := ppBatchLabelPrint.PrinterSetup.PaperWidth;
   ppReport1.PrinterSetup.PaperHeight := ppBatchLabelPrint.PrinterSetup.PaperHeight;
   end;

  PrinterSelector(ppBatchLabelPrint, LabelPrnt);

end;

//MC -12/02/2013
procedure TdmPrint.Batch_14_Printing(prmConStr, prmRouteName : string;
    prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmpost : string; prmPrintShipped : string; prmPrescriptionNo: string);
var
  dataQry   : TADOQuery;
  dataQryRXPrint: TADOQuery;
  dataQryBatchAddressLabels: TADOQuery;
  prvStr: string;
  prvStrRXPrint: string;
  prvStrBatchAddressLabels: string;
  
begin

  SetConnectionString(prmConStr);
  dataQry := qryBatchLabel;
//SM
//  prvStr  := 'SELECT * FROM view_v01_Batch_RxListPicklist WHERE (routeName_str = :rnme) AND (repeatDate_dat >= :dtefrm) AND (repeatDate_dat <= :dteto)';
  prvStr  := 'SELECT * FROM view_v01_Batch_RxListPicklist WHERE (routeName_str = :rnme) AND (Date_dat >= :dtefrm) AND (Date_dat <= :dteto) AND prescription_ID = :prmPrescriptionNo AND (batchIsBatched_bol=1)';
//  if not prmPrintShipped then prvStr := prvStr + ' AND (batchIsShipped_bol = 0)';
  if prmClinic <> '' then
    if prmClinic <> '<All>' then prvStr := prvStr + ' AND (clinicName_str = :cln)';
  if prmRxOrigin <> '' then
    if prmRxOrigin <> '<All>' then prvStr := prvStr + ' AND (DemanderName_str = :rxo)';

  if prmPrintShipped <> '<All>' then prvStr := prvStr + ' AND (batchIsShipped_bol = :ship)';

 { if prmSchedule <> '' then
    if prmSchedule <> '<All>' then prvStr := prvStr + ' AND (LevelOfUse_str = :sch)';
  if prmATC <> '' then
    if prmATC <> '<All>' then prvStr := prvStr + ' AND (ATC_str = :atc)';
  if prmIndication <> '' then
    if prmIndication <> '<All>' then prvStr := prvStr + ' AND (indication_Str = :icd10)';      }

  prvStr := prvStr + 'ORDER BY personLastName_Str';

  dataQry.Close;
  dataQry.SQL.Clear;
  dataQry.SQL.Add(prvStr);

  dataQry.Parameters.ParamByName('rnme').Value := prmRouteName;
  dataQry.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
  dataQry.Parameters.ParamByName('dteto').Value := prmDateTo;
  dataQry.Parameters.ParamByName('prmPrescriptionNo').Value := prmPrescriptionNo;
  if prmClinic <> '' then
    if prmClinic <> '<All>' then dataQry.Parameters.ParamByName('cln').Value := prmClinic;
  if prmRxOrigin <> '' then
    if prmRxOrigin <> '<All>' then dataQry.Parameters.ParamByName('rxo').Value := prmRxOrigin;

  if prmPrintShipped <> '<All>' then dataQry.Parameters.ParamByName('ship').Value := StrToBool(prmPrintShipped);
    
 { if prmSchedule <> '' then
    if prmSchedule <> '<All>' then dataQry.Parameters.ParamByName('sch').Value := prmSchedule;
  if prmATC <> '' then
    if prmATC <> '<All>' then dataQry.Parameters.ParamByName('atc').Value := prmATC;
  if prmIndication <> '' then
    if prmIndication <> '<All>' then dataQry.Parameters.ParamByName('icd10').Value := prmIndication;  }
	
	
  dataQryBatchAddressLabels := qryBatchAddressLabels;

  prvStrRXPrint  := 'SELECT * FROM view_v01_Batch_RxListAddressLabels WHERE (routeName_str = :rnme) AND (Date_dat >= :dtefrm) AND (Date_dat <= :dteto) AND prescription_ID = :prmPrescriptionNo AND (batchIsBatched_bol=1)';

  //if not prmPrintShipped then prvStrRXPrint := prvStrRXPrint + ' AND (batchIsShipped_bol = 0)';
 //if prmClinic <> '' then
  if prmClinic <> '<All>' then prvStrRXPrint := prvStrRXPrint + ' AND (clinic_str = :cln)';
  //if prmRxOrigin <> '' then
  if prmRxOrigin <> '<All>' then prvStrRXPrint := prvStrRXPrint + ' AND (DemanderName_str = :rxo)';
  if prmPrintShipped <> '<All>' then prvStrRXPrint := prvStrRXPrint + ' AND (batchIsShipped_bol = :ship)';

  prvStrRXPrint := prvStrRXPrint + ' Order by personLastName_Str';

  dataQryBatchAddressLabels.Close;
  dataQryBatchAddressLabels.SQL.Clear;
  dataQryBatchAddressLabels.SQL.Add(prvStrRXPrint);

  dataQryBatchAddressLabels.Parameters.ParamByName('rnme').Value := prmRouteName;
  dataQryBatchAddressLabels.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
  dataQryBatchAddressLabels.Parameters.ParamByName('dteto').Value := prmDateTo;
  dataQryBatchAddressLabels.Parameters.ParamByName('prmPrescriptionNo').Value := prmPrescriptionNo;
  //if prmClinic <> '' then
  if prmClinic <> '<All>' then dataQryBatchAddressLabels.Parameters.ParamByName('cln').Value := prmClinic;
  //if prmRxOrigin <> '' then
  if prmRxOrigin <> '<All>' then dataQryBatchAddressLabels.Parameters.ParamByName('rxo').Value := prmRxOrigin;
  if prmPrintShipped <> '<All>' then dataQryBatchAddressLabels.Parameters.ParamByName('ship').Value := StrToBool(prmPrintShipped);

   
  dataQryRXPrint := qryRXPrint;
  prvStrBatchAddressLabels   := 'SELECT * FROM view_v01_Batch_RxTrailerLabel WHERE (routeName_str = :rnme) AND (Date_dat >= :dtefrm) AND (Date_dat <= :dteto) AND prescription_ID = :prmPrescriptionNo AND (batchIsBatched_bol=1)';

  //if not prmPrintShipped then prvStrBatchAddressLabels  := prvStrBatchAddressLabels  + ' AND (batchIsShipped_bol = 0)';
 //if prmClinic <> '' then
  if prmClinic <> '<All>' then prvStrBatchAddressLabels  := prvStrBatchAddressLabels  + ' AND (clinic_str = :cln)';
  //if prmRxOrigin <> '' then
  if prmRxOrigin <> '<All>' then prvStrBatchAddressLabels  := prvStrBatchAddressLabels  + ' AND (DemanderName_str = :rxo)';
  if prmPrintShipped <> '<All>' then prvStrBatchAddressLabels  := prvStrBatchAddressLabels  + ' AND (batchIsShipped_bol = :ship)';
  if prmpost <> '<All>' then  prvStrBatchAddressLabels  := prvStrBatchAddressLabels  +  ' AND (dispensingPosted_bol = :post)';

  prvStrBatchAddressLabels  := prvStrBatchAddressLabels  + ' Order by personLastName_Str';

  dataQryRXPrint.Close;
  dataQryRXPrint.SQL.Clear;
  dataQryRXPrint.SQL.Add(prvStrBatchAddressLabels );

  dataQryRXPrint.Parameters.ParamByName('rnme').Value := prmRouteName;
  dataQryRXPrint.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
  dataQryRXPrint.Parameters.ParamByName('dteto').Value := prmDateTo;
  dataQryRXPrint.Parameters.ParamByName('prmPrescriptionNo').Value := prmPrescriptionNo;

  //if prmClinic <> '' then
  if prmClinic <> '<All>' then dataQryRXPrint.Parameters.ParamByName('cln').Value := prmClinic;
  //if prmRxOrigin <> '' then
  if prmRxOrigin <> '<All>' then dataQryRXPrint.Parameters.ParamByName('rxo').Value := prmRxOrigin;
  if prmPrintShipped <> '<All>' then dataQryRXPrint.Parameters.ParamByName('ship').Value := StrToBool(prmPrintShipped);
  if prmpost <> '<All>' then dataQryRXPrint.Parameters.ParamByName('post').Value := StrToBool(prmpost);	

  dataQry.Open;
  dataQryBatchAddressLabels.Open;
  dataQryRXPrint.Open;

  PrinterSelector(ppReport1, LabelPrnt);  
  
 //dataQry.Open;
 //PrinterSelector(ppBatchLabelAddress, LabelPrnt);
 
 //dataQry.Open;
 //PrinterSelector(ppRxTrailerLabel, LabelPrnt);	

end;

procedure TdmPrint.Batch_03_DeliveryConfirmation(prmConStr, prmRouteName :
    string ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin :
    string ; prmPrintShipped : string);
var
  dataQry   : TADOQuery;
  prvStr    : string;

begin

  SetConnectionString(prmConStr);
  dataQry := qryReportBatch03DeliveryConfirmation;

  prvStr :=
  'SELECT dbo.tblDRRoute.routeName_str, dbo.tblClinic.clinicName_str, SUM(dbo.TblPrescription.prescriptionCost_Mon) AS CostByGroup, ' +
  '     SUM(dbo.TblPrescription.prescriptionItemsCount_Int) AS ItemsPerRX, COUNT(dbo.TblPrescription.folderNumber_Str) AS TotalScripts, ' +
  '     dbo.tblClinic.clinicClassification_str, dbo.tblClinic.clinicDistrictPharmacist_str, dbo.tblClinic.clinicDistrictMunicipality_str, ' +
  '     dbo.tblClinic.clinicHealthSubDistrict_str, dbo.tblClinic.clinicLocation_str, dbo.tblClinic.clinicAddress01_str, dbo.tblClinic.clinicAddress02_str, ' +
  '     dbo.tblClinic.clinicAddress03_str, dbo.tblClinic.clinicAddress04_str, dbo.tblClinic.clinicTelephone_str ' +
  'FROM dbo.tblDRRoute INNER JOIN ' +
  '     dbo.tblClinic ON dbo.tblDRRoute.downRefRoute_ID = dbo.tblClinic.downRefRoute_ID INNER JOIN ' +
  '     dbo.TblPrescription ON dbo.tblClinic.clinic_ID = dbo.TblPrescription.clinic_ID ';

  prvStr := prvStr +
  'WHERE ((dbo.TblPrescription.Date_dat >= :dtefrm) AND (dbo.TblPrescription.Date_dat <= :dteto) AND (batchIsBatched_bol=1)) ';

  if prmRxOrigin <> '<All>' then
    prvStr := prvStr + ' AND (dbo.TblPrescription.DemanderName_str = :rxo) ';//SM
  // if not prmPrintShipped then prvStr := prvStr + ' AND (batchIsShipped_bol = 0)';

  if prmPrintShipped <> '<All>' then  prvStr := prvStr + 'AND (batchIsShipped_bol = :ship)';


  prvStr := prvStr +
  'GROUP BY dbo.tblDRRoute.routeName_str, dbo.tblClinic.clinicName_str, dbo.tblClinic.clinicClassification_str, dbo.tblClinic.clinicDistrictPharmacist_str, ' +
  '                    dbo.tblClinic.clinicDistrictMunicipality_str, dbo.tblClinic.clinicHealthSubDistrict_str, dbo.tblClinic.clinicLocation_str, dbo.tblClinic.clinicAddress01_str, ' +
  '                    dbo.tblClinic.clinicAddress02_str, dbo.tblClinic.clinicAddress03_str, dbo.tblClinic.clinicAddress04_str, dbo.tblClinic.clinicTelephone_str ' +
  'HAVING      (dbo.tblDRRoute.routeName_str = :rnme) ';

  if prmClinic <> '<All>' then
    prvStr := prvStr + ' AND (dbo.tblClinic.clinicName_str = :cln) ';

  prvStr := prvStr +
  'ORDER BY dbo.tblDRRoute.routeName_str, dbo.tblClinic.clinicName_str';

  try
    dataQry.Close;
    dataQry.SQL.Clear;
    dataQry.SQL.Add(prvStr);

    dataQry.Parameters.ParamByName('rnme').Value := prmRouteName;
    dataQry.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
    dataQry.Parameters.ParamByName('dteto').Value := prmDateTo;

    if prmClinic <> '<All>' then dataQry.Parameters.ParamByName('cln').Value := prmClinic;
    if prmRxOrigin <> '<All>' then dataQry.Parameters.ParamByName('rxo').Value := prmRxOrigin;
    if prmPrintShipped <> '<All>' then dataQry.Parameters.ParamByName('ship').Value  := StrToBool(prmPrintShipped);

    dataQry.Open;
   PrinterSelector(ppBatch03DeliveryConfirmation, ReportPrnt);
  except
    on E:Exception do raise Exception.Create(e.Message);
  end;

end;

procedure TdmPrint.Batch_06_PicklistsAddressLabels(prmConStr, prmRouteName :
    string ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin,
    prmSchedule, prmATC, prmIndication : string ; prmPrintShipped : string);
var
  dataQry   : TADOQuery;
  prvStr    : string;

begin

  SetConnectionString(prmConStr);
  dataQry := qryBatchAddressLabels;

  prvStr  := 'SELECT * FROM view_v01_Batch_RxListAddressLabels WHERE (routeName_str = :rnme) AND (Date_dat >= :dtefrm) AND (Date_dat <= :dteto) AND (batchIsBatched_bol=1)';

  //if not prmPrintShipped then prvStr := prvStr + ' AND (batchIsShipped_bol = 0)';
 //if prmClinic <> '' then
  if prmClinic <> '<All>' then prvStr := prvStr + ' AND (clinic_str = :cln)';
  //if prmRxOrigin <> '' then
  if prmRxOrigin <> '<All>' then prvStr := prvStr + ' AND (DemanderName_str = :rxo)';
  if prmPrintShipped <> '<All>' then prvStr := prvStr + ' AND (batchIsShipped_bol = :ship)';

  prvStr := prvStr + ' Order by personLastName_Str';

  dataQry.Close;
  dataQry.SQL.Clear;
  dataQry.SQL.Add(prvStr);

  dataQry.Parameters.ParamByName('rnme').Value := prmRouteName;
  dataQry.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
  dataQry.Parameters.ParamByName('dteto').Value := prmDateTo;
  //if prmClinic <> '' then
  if prmClinic <> '<All>' then dataQry.Parameters.ParamByName('cln').Value := prmClinic;
  //if prmRxOrigin <> '' then
  if prmRxOrigin <> '<All>' then dataQry.Parameters.ParamByName('rxo').Value := prmRxOrigin;
  if prmPrintShipped <> '<All>' then dataQry.Parameters.ParamByName('ship').Value := StrToBool(prmPrintShipped);

 dataQry.Open;

  if FileExists(CustomReportPATH + 'labels\batch_address_label.rtm') then
   begin
   ppBatchLabelAddress.Template.FileName := CustomReportPATH + 'labels\batch_address_label.rtm';
   ppBatchLabelAddress.Template.LoadFromFile;
   //*********** Load template for Sub report
   ppChildReportAddressLabel.Template.FileName := CustomReportPATH + 'labels\batch_address_label.rtm';
   ppChildReportAddressLabel.Template.LoadFromFile;

   ppReport1.PrinterSetup.PaperWidth := ppChildReportAddressLabel.PrinterSetup.PaperWidth;
   ppReport1.PrinterSetup.PaperHeight := ppChildReportAddressLabel.PrinterSetup.PaperHeight;
   end;
 
 PrinterSelector(ppBatchLabelAddress, LabelPrnt);

end;

//MC - 21/08/2012
procedure TdmPrint.Batch_12_PicklistsAddressLabels(prmConStr, prmRouteName :
    string ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin,
    prmSchedule, prmATC, prmIndication : string ; prmPrintShipped : string;prmPrescriptionNo: string);
var
  dataQry   : TADOQuery;
  prvStr    : string;

begin

  SetConnectionString(prmConStr);
  dataQry := qryBatchAddressLabels;

  prvStr  := 'SELECT * FROM view_v01_Batch_RxListAddressLabels WHERE (routeName_str = :rnme) AND (Date_dat >= :dtefrm) AND (Date_dat <= :dteto) AND prescription_ID = :prmPrescriptionNo AND (batchIsBatched_bol=1)';

  //if not prmPrintShipped then prvStr := prvStr + ' AND (batchIsShipped_bol = 0)';
 //if prmClinic <> '' then
  if prmClinic <> '<All>' then prvStr := prvStr + ' AND (clinic_str = :cln)';
  //if prmRxOrigin <> '' then
  if prmRxOrigin <> '<All>' then prvStr := prvStr + ' AND (DemanderName_str = :rxo)';
  if prmPrintShipped <> '<All>' then prvStr := prvStr + ' AND (batchIsShipped_bol = :ship)';

  prvStr := prvStr + ' Order by personLastName_Str';

  dataQry.Close;
  dataQry.SQL.Clear;
  dataQry.SQL.Add(prvStr);

  dataQry.Parameters.ParamByName('rnme').Value := prmRouteName;
  dataQry.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
  dataQry.Parameters.ParamByName('dteto').Value := prmDateTo;
  dataQry.Parameters.ParamByName('prmPrescriptionNo').Value := prmPrescriptionNo;
  //if prmClinic <> '' then
  if prmClinic <> '<All>' then dataQry.Parameters.ParamByName('cln').Value := prmClinic;
  //if prmRxOrigin <> '' then
  if prmRxOrigin <> '<All>' then dataQry.Parameters.ParamByName('rxo').Value := prmRxOrigin;
  if prmPrintShipped <> '<All>' then dataQry.Parameters.ParamByName('ship').Value := StrToBool(prmPrintShipped);

 dataQry.Open;
 PrinterSelector(ppBatchLabelAddress, LabelPrnt);

end;

procedure TdmPrint.Patient_ListOf(prmConStr : string ; prmType : integer ;
    prmFilter : String = '');
var
  f : string;
  recCount : integer;

const

 //SM to pick provincial Logo img from tblSystem
  STRA = 'select view_v01_Print_Patient_ListOf.* FROM view_v01_Print_Patient_ListOf %s ORDER BY personLastName_Str, personFirstName_Str';
  STRB = 'select view_v01_Print_Patient_ListOf.* FROM view_v01_Print_Patient_ListOf %s ORDER BY personInstitution_str, personLastName_Str, personFirstName_Str';
  STRC = 'select view_v01_Print_Patient_ListOf.* FROM view_v01_Print_Patient_ListOf %s ORDER BY personRefNoCurrent_str';

begin

  if prmFilter <> '' then
    f := 'WHERE ' + prmFilter
    else
    f := '';

  case prmType of
    0:  begin
        qryPatients_ListOf.SQL.Clear;
        qryPatients_ListOf.SQL.Add( Format(STRA, [f]));
        end;
    1:  begin
        qryPatients_ListOf.SQL.Clear;
        qryPatients_ListOf.SQL.Add( Format(STRB, [f]));
        end;
    2:  begin
        qryPatients_ListOf.SQL.Clear;
        qryPatients_ListOf.SQL.Add( Format(STRC, [f]));
        end;
    end;

  SetConnectionString(prmConStr);
  qryPatients_ListOf.Open;

  recCount := qryPatients_ListOf.RecordCount;
  //*********** SM 01 Jan 2013
   ppPatients_ListOf.Print;
  

end;

procedure TdmPrint.Rx_Prescription(prmConStr : String ; prmRxID : String);
begin

  SetConnectionString(prmConStr);
  qryRx_Prescription.Parameters.ParamByName('@prescription_ID').Value := prmRxID;
  qryRx_Prescription.Open;

  //Open Supporting data
  qryProtocolsDisplay.Close; qryProtocolsDisplay.Open;
  qryAllergiesDisplay.Close; qryAllergiesDisplay.Open;
  qryPrescriberNumber.Close; qryPrescriberNumber.Open;
  qryPatientWeight.Close; qryPatientWeight.Open;

  ppRx_Prescription.Print;

end;

procedure TdmPrint.SetConnectionString(prmConStr : string);
begin

  with conPrint do
    begin
    Close;
    LoginPrompt := False;
    ConnectionString := prmConStr;
    end;
    
 LoadSystemSettings;

end;

procedure TdmPrint.DataModuleCreate(Sender: TObject);
var
  ini : TIniFile; 
begin

  CustomReportPATH := Application.GetNamePath();

  Ini := TIniFile.Create('C:\RxPrinters.ini');
  try
  LabelPrnt := ini.ReadString('Rx','LabelPrinter','');
  ReportPrnt := ini.ReadString('Rx','ReportPrinter','');
  CheckUsePrnt := ini.ReadBool('Rx','UsePrinters_bol', False);
  finally
  ini.Free;
  end;

 LoadEditLabelPaths;
 
end;

procedure TdmPrint.Batch_08_ShortRxList(prmConStr, prmRouteName : string ;
    prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ; prmPrintShipped : string);
var
  dataQry   : TADOQuery;
  prvStr    : string;

begin

  SetConnectionString(prmConStr);
  dataQry := qryReportBatch02Picklist;
//SM
  prvStr  := 'SELECT * FROM view_v01_Batch_RxListPicklist WHERE (routeName_str = :rnme) AND (Date_dat >= :dtefrm) AND (Date_dat <= :dteto) AND (batchIsBatched_bol=1)';
  //if not prmPrintShipped then prvStr := prvStr + ' AND (batchIsShipped_bol = 0)';
  if prmClinic <> '' then
    if prmClinic <> '<All>' then prvStr := prvStr + ' AND (clinicName_str = :cln)';
  if prmRxOrigin <> '' then
    if prmRxOrigin <> '<All>' then prvStr := prvStr + ' AND (DemanderName_str = :rxo)';
    if prmPrintShipped <> '<All>' then prvStr := prvStr + ' AND (batchIsShipped_bol = :ship)';

  dataQry.Close;
  dataQry.SQL.Clear;
  dataQry.SQL.Add(prvStr);

  dataQry.Parameters.ParamByName('rnme').Value := prmRouteName;
  dataQry.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
  dataQry.Parameters.ParamByName('dteto').Value := prmDateTo;
  if prmClinic <> '' then
    if prmClinic <> '<All>' then dataQry.Parameters.ParamByName('cln').Value := prmClinic;
  if prmRxOrigin <> '' then
    if prmRxOrigin <> '<All>' then dataQry.Parameters.ParamByName('rxo').Value := prmRxOrigin;
    if prmPrintShipped <> '<All>' then dataQry.Parameters.ParamByName('ship').Value := prmPrintShipped;

  dataQry.Open;
  PrinterSelector(ppSummaryRxList, LabelPrnt);

end;

procedure TdmPrint.Batch_09_ProductNeedsList(prmConStr, prmRouteName : string ;
    prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ; prmPrintShipped : string);
var
  dataQry   : TADOQuery;
  prvStr    : string;

begin

  SetConnectionString(prmConStr);
  dataQry := qryReportBatch09ProductNeeds;
//SM
//  prvStr  := 'SELECT * FROM view_v01_Batch_RxProductList WHERE (routeName_str = :rnme) AND (Date_dat >= :dtefrm) AND (Date_dat <= :dteto)';

 prvStr  := 'SELECT DISTINCT TOP 100 PERCENT dbo.tblProductPackSize.Description_str, dbo.tblProductPackSize.packDescription_Str, tblProductPackSize.PackSizeValue_dbl, ';
 prvStr := prvStr +'dbo.tblProductPackSize.Bin_str,  tblProductPackSize.ECN_str, dbo.tblProductPackSize.ICN_str, ';
 prvStr := prvStr +'SUM(tblRxItem.DspProductCalc_Dbl) AS PacksNeeded, SUM(tblProductPackSize.Cost_mon * tblRxItem.DspProductCalc_Dbl) AS Cost, ';
 prvStr := prvStr +'tblDRRoute.routeName_Str, tblclinic.clinicName_str, tblPRescription.DemanderName_str, tblprescription.batchIsShipped_bol ';

 prvStr := prvStr +'FROM tblDRRoute ';
 prvStr := prvStr +'INNER JOIN tblclinic ON tblDRRoute.downRefRoute_ID = tblClinic.downRefRoute_ID ';
 prvStr := prvStr +'INNER JOIN TblPrescription ON tblClinic.clinic_ID = TblPrescription.clinic_ID ';
 prvStr := prvStr +'INNER JOIN TblRXItem ON TblPrescription.prescription_ID = TblRXItem.RX_ID ';
 prvStr := prvStr +'INNER JOIN tblProductPackSize ON tblProductPackSize.productPackSize_ID = TblRXItem.DspProduct_ID ';
 prvStr := prvStr +'INNER JOIN tblperson ON TblPrescription.patient_id = tblperson.person_id ';
 prvStr := prvStr +'WHERE (TblPrescription.prescriptionActive_bol = 1) AND (TblPrescription.dispensed_Bol = 0) AND (batchIsBatched_bol=1) AND (routeName_str = :rnme) AND (Date_dat >= :dtefrm) AND (Date_dat <= :dteto) ';

  // if not prmPrintShipped then prvStr := prvStr + ' AND (batchIsShipped_bol = 0) ';
  if prmClinic <> '' then
    if prmClinic <> '<All>' then prvStr := prvStr + ' AND (clinicName_str = :cln) ';
  if prmRxOrigin <> '' then
    if prmRxOrigin <> '<All>' then prvStr := prvStr + ' AND (DemanderName_str = :rxo) ';

    if prmPrintShipped <> '<All>' then prvStr := prvStr + ' AND (batchIsShipped_bol = :ship) ';


 prvStr := prvStr +'GROUP BY dbo.tblProductPackSize.Description_str, dbo.tblProductPackSize.packDescription_Str, tblProductPackSize.PackSizeValue_dbl, ';
 prvStr := prvStr +'dbo.tblProductPackSize.rxLevel_str, dbo.tblProductPackSize.Bin_str,dbo.tblProductPackSize.ECN_str, ';
 prvStr := prvStr +'dbo.tblProductPackSize.ICN_str, tblDRRoute.routeName_Str, tblclinic.clinicName_str, tblPRescription.DemanderName_str, tblprescription.batchIsShipped_bol ';
 prvStr := prvStr +'ORDER BY dbo.tblProductPackSize.Description_str ';



  dataQry.Close;
  dataQry.SQL.Clear;
  dataQry.SQL.Add(prvStr);

  dataQry.Parameters.ParamByName('rnme').Value := prmRouteName;
  dataQry.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
  dataQry.Parameters.ParamByName('dteto').Value := prmDateTo;
  if prmClinic <> '' then
    if prmClinic <> '<All>' then dataQry.Parameters.ParamByName('cln').Value := prmClinic;
  if prmRxOrigin <> '' then
    if prmRxOrigin <> '<All>' then dataQry.Parameters.ParamByName('rxo').Value := prmRxOrigin;

    if prmPrintShipped <> '<All>' then dataQry.Parameters.ParamByName('ship').Value := prmPrintShipped;

  dataQry.Open;
  //setup labels on the report printout
  pplblClinics.Caption          := 'Clinic(s) : '+prmClinic;
  pplblDatePeriod.Caption       := 'Date period :'+DateToStr(prmDateFrom) +' to '+ DateToStr(prmDateTo);

  PrinterSelector(ppBatchProductNeedsList, LabelPrnt);

end;

procedure TdmPrint.Batch_10_TrailerLabels(prmConStr, prmRouteName :
    string ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin,
   prmPrintShipped, prmpost : string);
var
  dataQry   : TADOQuery;
  prvStr    : string;

begin

  SetConnectionString(prmConStr);
  dataQry := qryRXPrint;

  prvStr  := 'SELECT * FROM view_v01_Batch_RxTrailerLabel WHERE (routeName_str = :rnme) AND (Date_dat >= :dtefrm) AND (Date_dat <= :dteto) AND (batchIsBatched_bol=1)';

  //if not prmPrintShipped then prvStr := prvStr + ' AND (batchIsShipped_bol = 0)';
 //if prmClinic <> '' then
  if prmClinic <> '<All>' then prvStr := prvStr + ' AND (clinic_str = :cln)';
  //if prmRxOrigin <> '' then
  if prmRxOrigin <> '<All>' then prvStr := prvStr + ' AND (DemanderName_str = :rxo)';
  if prmPrintShipped <> '<All>' then prvStr := prvStr + ' AND (batchIsShipped_bol = :ship)';
  if prmpost <> '<All>' then  prvStr := prvStr +  ' AND (dispensingPosted_bol = :post)';

  prvStr := prvStr + ' Order by personLastName_Str';

  dataQry.Close;
  dataQry.SQL.Clear;
  dataQry.SQL.Add(prvStr);

  dataQry.Parameters.ParamByName('rnme').Value := prmRouteName;
  dataQry.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
  dataQry.Parameters.ParamByName('dteto').Value := prmDateTo;
  //if prmClinic <> '' then
  if prmClinic <> '<All>' then dataQry.Parameters.ParamByName('cln').Value := prmClinic;
  //if prmRxOrigin <> '' then
  if prmRxOrigin <> '<All>' then dataQry.Parameters.ParamByName('rxo').Value := prmRxOrigin;
  if prmPrintShipped <> '<All>' then dataQry.Parameters.ParamByName('ship').Value := StrToBool(prmPrintShipped);
  if prmpost <> '<All>' then dataQry.Parameters.ParamByName('post').Value := StrToBool(prmpost);

 dataQry.Open;

  if FileExists(CustomReportPATH + 'labels\batch_trailer_label.rtm') then
   begin
   ppRxTrailerLabel.Template.FileName := CustomReportPATH + 'labels\batch_trailer_label.rtm';
   ppRxTrailerLabel.Template.LoadFromFile;
   //*********** Load template for Sub report
   ppChildReportTrailerLabel.Template.FileName := CustomReportPATH + 'labels\batch_trailer_label.rtm';
   ppChildReportTrailerLabel.Template.LoadFromFile;

   ppReport1.PrinterSetup.PaperWidth := ppChildReportTrailerLabel.PrinterSetup.PaperWidth;
   ppReport1.PrinterSetup.PaperHeight := ppChildReportTrailerLabel.PrinterSetup.PaperHeight;
   end;

 PrinterSelector(ppRxTrailerLabel, LabelPrnt);

end;


//mc - 21/08/2012
procedure TdmPrint.Batch_13_TrailerLabels(prmConStr, prmRouteName :
    string ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin,
   prmPrintShipped, prmpost : string;  prmPrescriptionNo: string);
var
  dataQry   : TADOQuery;
  prvStr    : string;

begin

  SetConnectionString(prmConStr);
  dataQry := qryRXPrint;

  prvStr  := 'SELECT * FROM view_v01_Batch_RxTrailerLabel WHERE (routeName_str = :rnme) AND (Date_dat >= :dtefrm) AND (Date_dat <= :dteto) AND prescription_ID = :prmPrescriptionNo AND (batchIsBatched_bol=1)';

  //if not prmPrintShipped then prvStr := prvStr + ' AND (batchIsShipped_bol = 0)';
 //if prmClinic <> '' then
  if prmClinic <> '<All>' then prvStr := prvStr + ' AND (clinic_str = :cln)';
  //if prmRxOrigin <> '' then
  if prmRxOrigin <> '<All>' then prvStr := prvStr + ' AND (DemanderName_str = :rxo)';
  if prmPrintShipped <> '<All>' then prvStr := prvStr + ' AND (batchIsShipped_bol = :ship)';
  if prmpost <> '<All>' then  prvStr := prvStr +  ' AND (dispensingPosted_bol = :post)';

  prvStr := prvStr + ' Order by personLastName_Str';

  dataQry.Close;
  dataQry.SQL.Clear;
  dataQry.SQL.Add(prvStr);

  dataQry.Parameters.ParamByName('rnme').Value := prmRouteName;
  dataQry.Parameters.ParamByName('dtefrm').Value := prmDateFrom;
  dataQry.Parameters.ParamByName('dteto').Value := prmDateTo;
  dataQry.Parameters.ParamByName('prmPrescriptionNo').Value := prmPrescriptionNo;

  //if prmClinic <> '' then
  if prmClinic <> '<All>' then dataQry.Parameters.ParamByName('cln').Value := prmClinic;
  //if prmRxOrigin <> '' then
  if prmRxOrigin <> '<All>' then dataQry.Parameters.ParamByName('rxo').Value := prmRxOrigin;
  if prmPrintShipped <> '<All>' then dataQry.Parameters.ParamByName('ship').Value := StrToBool(prmPrintShipped);
  if prmpost <> '<All>' then dataQry.Parameters.ParamByName('post').Value := StrToBool(prmpost);

 dataQry.Open;

 if FileExists(CustomReportPATH + 'labels\batch_trailer_label.rtm') then
   begin
   ppRxTrailerLabel.Template.FileName := CustomReportPATH + 'labels\batch_trailer_label.rtm';
   ppRxTrailerLabel.Template.LoadFromFile;
   //*********** Load template for Sub report
   ppChildReportTrailerLabel.Template.FileName := CustomReportPATH + 'labels\batch_trailer_label.rtm';
   ppChildReportTrailerLabel.Template.LoadFromFile;

   ppReport1.PrinterSetup.PaperWidth := ppChildReportTrailerLabel.PrinterSetup.PaperWidth;
   ppReport1.PrinterSetup.PaperHeight := ppChildReportTrailerLabel.PrinterSetup.PaperHeight;
   end;

 PrinterSelector(ppRxTrailerLabel, LabelPrnt);

end;

procedure TdmPrint.LoadSystemSettings;
begin

 with tblSystemLogo do
  begin
  Close;
  Open;
  end;

end;

procedure TdmPrint.ConfigureLabelReport(vReport: TppReport);
begin

 try
  with ppRxDesigner do
   begin
   Report := vReport;
   ShowModal;
   end;
 except
  on e:Exception do Raise Exception.Create(e.Message);
 end;

end;

procedure TdmPrint.EditRxLabel(prmConStr: string; vOption: integer);
begin

 SetConnectionString(prmConStr);

 LoadEditLabelPaths;

 qryBatchLabel.Open;
 qryBatchAddressLabels.Open;
 qryRXPrint.Open;

 case vOption of
  0: ConfigureLabelReport(ppBatchLabelPrint);
  1: ConfigureLabelReport(ppBatchLabelAddress);
  2: ConfigureLabelReport(ppRxTrailerLabel);
 end;

 qryBatchLabel.Close;
 qryBatchAddressLabels.Close;
 qryRXPrint.Close;

end;

procedure TdmPrint.LoadEditLabelPaths;
begin
 
  //*********** SM 11 Mar 2013
  //*********** Load Templates if available
 if FileExists(CustomReportPATH + 'labels\batch_label.rtm') then
   begin
   ppBatchLabelPrint.Template.FileName := CustomReportPATH + 'labels\batch_label.rtm';
   ppBatchLabelPrint.Template.LoadFromFile;
   //*********** Load template for Sub report
   ppChildReportLabel.Template.FileName := CustomReportPATH + 'labels\batch_label.rtm';
   ppChildReportLabel.Template.LoadFromFile;

   ppReport1.PrinterSetup.PaperWidth := ppBatchLabelPrint.PrinterSetup.PaperWidth;
   ppReport1.PrinterSetup.PaperHeight := ppBatchLabelPrint.PrinterSetup.PaperHeight;
   end;

 if FileExists(CustomReportPATH + 'labels\batch_address_label.rtm') then
   begin
   ppBatchLabelAddress.Template.FileName := CustomReportPATH + 'labels\batch_address_label.rtm';
   ppBatchLabelAddress.Template.LoadFromFile;
   //*********** Load template for Sub report
   ppChildReportAddressLabel.Template.FileName := CustomReportPATH + 'labels\batch_address_label.rtm';
   ppChildReportAddressLabel.Template.LoadFromFile;

   ppReport1.PrinterSetup.PaperWidth := ppChildReportAddressLabel.PrinterSetup.PaperWidth;
   ppReport1.PrinterSetup.PaperHeight := ppChildReportAddressLabel.PrinterSetup.PaperHeight;
   end;

 if FileExists(CustomReportPATH + 'labels\batch_trailer_label.rtm') then
   begin
   ppRxTrailerLabel.Template.FileName := CustomReportPATH + 'labels\batch_trailer_label.rtm';
   ppRxTrailerLabel.Template.LoadFromFile;
   //*********** Load template for Sub report
   ppChildReportTrailerLabel.Template.FileName := CustomReportPATH + 'labels\batch_trailer_label.rtm';
   ppChildReportTrailerLabel.Template.LoadFromFile;

   ppReport1.PrinterSetup.PaperWidth := ppChildReportTrailerLabel.PrinterSetup.PaperWidth;
   ppReport1.PrinterSetup.PaperHeight := ppChildReportTrailerLabel.PrinterSetup.PaperHeight;
   end;

end;

end.
