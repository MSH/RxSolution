unit PatientUDm;

interface

uses
  SysUtils, Classes, DB, ADODB, Variants, ComObj, dateutils, Dialogs, Math, cxDateUtils,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppBands, ppCache, ppCtrls, ppPrnabl, ActnList, ppVar, ppModule,
  ppParameter, Controls, ppStrtch, ppSubRpt, ppBarCod, ppRegion, ppMemo,
  raCodMod, ppEndUsr;

const
 HST_ACT = 'Active';
 HST_TMP = 'Temp';
 HST_CLS = 'Class';
 HST_CLC = 'Clinic';
 HST_ADD = 'New Patient';

type
  TPatientDm = class(TDataModule)
    dsPatient: TDataSource;
    dsLaboratoryResults: TDataSource;
    dsClinicalVisit: TDataSource;
    TblPatient: TADOQuery;
    dsPatientWeight: TDataSource;
    tblOIs: TADOTable;
    dstblOIs: TDataSource;
    dstblReasons: TDataSource;
    tblClinics: TADOTable;
    dsClinics: TDataSource;
    tblLabTests: TADOTable;
    tblLabTeststestCode_str: TWideStringField;
    tblLabTeststestName_str: TWideStringField;
    tblLabTeststestDescription_str: TWideStringField;
    dsLabTests: TDataSource;
    tblOIsInfection_Id: TAutoIncField;
    tblOIsInfectionName_str: TWideStringField;
    tblClinicsclinic_ID: TGuidField;
    tblClinicsclinicName_str: TWideStringField;
    tblClinicsclinicClassification_str: TWideStringField;
    tblClinicsclinicDistrictPharmacist_str: TWideStringField;
    tblClinicsclinicDistrictMunicipality_str: TWideStringField;
    tblClinicsclinicHealthSubDistrict_str: TWideStringField;
    tblClinicsclinicLocation_str: TWideStringField;
    tblClinicsdownRefRoute_ID: TGuidField;
    tblClinicsbatchRouteName_str: TWideStringField;
    tblClinicsclinicAddress01_str: TWideStringField;
    tblClinicsclinicAddress02_str: TWideStringField;
    tblClinicsclinicAddress03_str: TWideStringField;
    tblClinicsclinicAddress04_str: TWideStringField;
    tblClinicsclinicDays_str: TWideStringField;
    tblClinicsclinicElectoralWard_str: TWideStringField;
    tblClinicsclinicTelephone_str: TWideStringField;
    qryNumbering: TADOQuery;
    dsProtocols: TDataSource;
    dsPersonSupporter: TDataSource;
    qryCD4: TADOQuery;
    dsqryCD4: TDataSource;
    qryCD4lbResultID: TGuidField;
    qryCD4personID: TGuidField;
    qryCD4testName_str: TWideStringField;
    qryCD4testCode_str: TWideStringField;
    qryCD4testResult_str: TWideStringField;
    qryCD4testResult_dbl: TFloatField;
    qryCD4testDate_dat: TDateTimeField;
    qryCD4testPlace_str: TWideStringField;
    qryVL: TADOQuery;
    GuidField1: TGuidField;
    GuidField2: TGuidField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    FloatField1: TFloatField;
    DateTimeField1: TDateTimeField;
    WideStringField4: TWideStringField;
    dsqryVL: TDataSource;
    tblPosition: TADOQuery;
    tblPositionpersonPosition_ID: TGuidField;
    tblPositionperson_ID: TGuidField;
    tblPositionpersonType_ID: TGuidField;
    tblPositionrxLevel_ID: TGuidField;
    tblPositionpersonPositionTitle_ID: TGuidField;
    tblPositionpersonPositionDescription_Str: TWideStringField;
    tblPositionpersonPositionStart_Dat: TDateTimeField;
    tblPositionpersonPositionEnd_Dat: TDateTimeField;
    tblPositionpersonPositionBarCode_Str: TWideStringField;
    tblPositionpersonPositionTitle_Str: TWideStringField;
    tblPositionpersonPositionNumberNo_Str: TWideStringField;
    tblPositionpersonPositionCurrent_bol: TBooleanField;
    tblPositioncomplexSiteDepartment_ID: TGuidField;
    tblPositionspecialisation_ID: TGuidField;
    tblPositionclinic_ID: TGuidField;
    tblPositionpersonPositionPost_ID: TGuidField;
    dsPosition: TDataSource;
    qryCD4Perc: TADOQuery;
    GuidField3: TGuidField;
    GuidField4: TGuidField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    FloatField2: TFloatField;
    DateTimeField2: TDateTimeField;
    WideStringField8: TWideStringField;
    dsqryCD4Perc: TDataSource;
    qryP24: TADOQuery;
    GuidField5: TGuidField;
    GuidField6: TGuidField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    FloatField3: TFloatField;
    DateTimeField3: TDateTimeField;
    WideStringField12: TWideStringField;
    dsqryP24: TDataSource;
    qryPCR: TADOQuery;
    GuidField7: TGuidField;
    GuidField8: TGuidField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    FloatField4: TFloatField;
    DateTimeField4: TDateTimeField;
    WideStringField16: TWideStringField;
    dsqryPCR: TDataSource;
    dsInteruptions: TDataSource;
    tblInterruptions: TADOTable;
    tblInterruptionsinteruptions_id: TGuidField;
    tblInterruptionsperson_id: TGuidField;
    tblInterruptionstreatment_str: TWideStringField;
    tblInterruptionsRegimentStopped: TWideStringField;
    tblInterruptionsDateStarted_dat: TDateTimeField;
    tblInterruptionsDateStopped_dat: TDateTimeField;
    tblInterruptionsReasonStopped_str: TWideStringField;
    tblInterruptionsDateRestarted_dat: TDateTimeField;
    tblInterruptionspersonRefNum_str: TWideStringField;
    tblContact: TADOQuery;
    dsContact: TDataSource;
    tblContactcontact_ID: TGuidField;
    tblContactlinking_ID: TGuidField;
    tblContactcontactType_Str: TWideStringField;
    tblContactcontactDetailOrder_Int: TIntegerField;
    tblContactcontactDetail_Str: TWideStringField;
    tblContactcontactDescription_Str: TWideStringField;
    tblContactcontactDisplay_Str: TWideStringField;
    tblContactcontactLine01_str: TWideStringField;
    tblContactcontactLine02_str: TWideStringField;
    tblContactcontactLine03_str: TWideStringField;
    tblContactcontactLine04_str: TWideStringField;
    tblContactcontactMode_str: TWideStringField;
    patientDuplicateIPN: TADOQuery;
    tblProtocols: TADOQuery;
    tblRxAudit: TADOQuery;
    tblProtocolsName_Str: TWideStringField;
    tblProtocolsGroupCode_Str: TWideStringField;
    TblClinicalVisit: TADOQuery;
    qryPatientWeight: TADOQuery;
    qryPatientWeightpersonWeight_ID: TGuidField;
    qryPatientWeightperson_ID: TGuidField;
    qryPatientWeightpersonWeightDateRecorded_Dat: TDateTimeField;
    qryPatientWeightpersonWeight_int: TFloatField;
    qryPatientWeightpersonHeight_Int: TFloatField;
    qryPatientWeightpersonIdealWeight_int: TIntegerField;
    qryPatientWeightpersonPregnant_bol: TBooleanField;
    qryPatientWeightpersonRenalFunction_str: TWideStringField;
    qryPatientWeightpersonCrCC: TWideStringField;
    qryPatientWeightpersonIBW_dbl: TFloatField;
    qryPatientWeightpersonBMI_dbl: TFloatField;
    qryPatientWeightpersonABW_dbl: TFloatField;
    qryPatientWeightpersonBSA_dbl: TFloatField;
    qryPatientWeightpersonLBW_dbl: TFloatField;
    qryPatientWeightpersonTBW_dbl: TFloatField;
    qryPatientWeightpersonSrCr_dbl: TFloatField;
    qryPatientWeightpersonCrCl_dbl: TFloatField;
    tblPatientClass: TADOQuery;
    qryPatientWeightpersonPulse_int: TIntegerField;
    qryPatientWeightpersonTemperature_dbl: TFloatField;
    qryPatientWeightpersonBP_str: TStringField;
    ppDBPipeline1: TppDBPipeline;
    ppPatientCard: TppReport;
    ActionList1: TActionList;
    atnPrintPatientCard: TAction;
    qryPatientLabel: TADOQuery;
    dsPatientLabel: TDataSource;
    ppParameterList1: TppParameterList;
    tblReasons: TADOQuery;
    tblReasonsReason_Id: TAutoIncField;
    tblReasonsReason_Str: TWideStringField;
    dsPAtientClass: TDataSource;
    qryPatientHandOvers: TADOQuery;
    qryMostRecentStatus: TADOQuery;
    dsMostRecentStatus: TDataSource;
    qryMostRecentStatuspersonpregnant_bol: TBooleanField;
    qryMostRecentStatusvstTreamentPrescribed_bol: TBooleanField;
    qryMostRecentStatusvstPregnancyDeliveryDate_dat: TDateTimeField;
    qryMostRecentStatusvstFunctionalStatus_str: TWideStringField;
    qryMostRecentStatusvstClinicalStage_str: TWideStringField;
    qryMostRecentStatusvstPropo_CoTri_Start_dat: TDateTimeField;
    qryMostRecentStatusvstPropo_CoTri_Stopped_dat: TDateTimeField;
    qryMostRecentStatusvstPropo_Fluconazole_Start_dat: TDateTimeField;
    qryMostRecentStatusvstPropo_Fluconazole_Stopped_dat: TDateTimeField;
    qryMostRecentStatusvstPropo_INH_Start_dat: TDateTimeField;
    qryMostRecentStatusvstPropo_INH_Stopped_dat: TDateTimeField;
    qryMostRecentStatusvstPropo_TBTreatment_Start_dat: TDateTimeField;
    qryMostRecentStatusvstPropo_TBTreatment_Stopped_dat: TDateTimeField;
    qryMostRecentStatusvstRegimenChange_From_str: TWideStringField;
    qryMostRecentStatusvstRegimenChange_To_str: TWideStringField;
    qryMostRecentStatusvstRegimenChange_Reason_str: TWideStringField;
    qryMostRecentStatusvstVisitDate_dat: TDateTimeField;
    qryMostRecentStatusvstNextVisit_dat: TDateTimeField;
    qryMostRecentStatusvstScheduledVisit_dat: TDateTimeField;
    qryMostRecentStatusvstRegimenStart_str: TWideStringField;
    qryMostRecentStatusvstLostToFollowUpDate_dat: TDateTimeField;
    qryMostRecentStatusvstTreatmentStopped_date_dat: TDateTimeField;
    qryMostRecentStatusvstRegimenStartDate_dat: TDateTimeField;
    TblClinicalVisitpatient_ID: TGuidField;
    TblClinicalVisitpersonpregnant_bol: TBooleanField;
    TblClinicalVisitvstTreamentPrescribed_bol: TBooleanField;
    TblClinicalVisitvstPregnancyDeliveryDate_dat: TDateTimeField;
    TblClinicalVisitvstFunctionalStatus_str: TWideStringField;
    TblClinicalVisitvstClinicalStage_str: TWideStringField;
    TblClinicalVisitvstPropo_CoTri_Start_dat: TDateTimeField;
    TblClinicalVisitvstPropo_CoTri_Stopped_dat: TDateTimeField;
    TblClinicalVisitvstPropo_Fluconazole_Start_dat: TDateTimeField;
    TblClinicalVisitvstPropo_Fluconazole_Stopped_dat: TDateTimeField;
    TblClinicalVisitvstPropo_INH_Start_dat: TDateTimeField;
    TblClinicalVisitvstPropo_INH_Stopped_dat: TDateTimeField;
    TblClinicalVisitvstPropo_TBTreatment_Start_dat: TDateTimeField;
    TblClinicalVisitvstPropo_TBTreatment_Stopped_dat: TDateTimeField;
    TblClinicalVisitvstRegimenChange_From_str: TWideStringField;
    TblClinicalVisitvstRegimenChange_To_str: TWideStringField;
    TblClinicalVisitvstRegimenChange_Reason_str: TWideStringField;
    TblClinicalVisitvstVisitDate_dat: TDateTimeField;
    TblClinicalVisitvstNextVisit_dat: TDateTimeField;
    TblClinicalVisitvstScheduledVisit_dat: TDateTimeField;
    TblClinicalVisitvstRegimenStart_str: TWideStringField;
    TblClinicalVisitvstLostToFollowUpDate_dat: TDateTimeField;
    TblClinicalVisitvstTreatmentStopped_date_dat: TDateTimeField;
    TblClinicalVisitvstRegimenStartDate_dat: TDateTimeField;
    TblClinicalVisituser_id: TGuidField;
    TblClinicalVisitcompleted_bol: TBooleanField;
    TblClinicalVisitVisit_ID: TGuidField;
    TblClinicalVisitvstPregnancyExpectedDelivery_dat: TDateTimeField;
    TblClinicalVisitvstPregnancyTrimister_str: TStringField;
    qryMostRecentStatusvstPregnancyExpectedDelivery_dat: TDateTimeField;
    qryMostRecentStatusvstPregnancyTrimister_str: TStringField;
    qryFirstStatus: TADOQuery;
    dsFirstStatus: TDataSource;
    qryIsNewVisitForToday: TADOQuery;
    TblClinicalVisitnotes_mem: TMemoField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppShape1: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText7: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText1: TppDBText;
    ppFooterBand1: TppFooterBand;
    raCodeModule1: TraCodeModule;
    qryVisitOIs: TADOQuery;
    dsVisitOIs: TDataSource;
    TblClinicalVisitvisitType_str: TWideStringField;
    qryMostRecentStatusvisitType_str: TWideStringField;
    qryMostRecentOIs: TADOQuery;
    dsMostRecentOIs: TDataSource;
    qryMostRecentStatusVisit_ID: TGuidField;
    TblClinicalVisitvstWeanAgeYears_int: TIntegerField;
    TblClinicalVisitvstFeedingType_str: TStringField;
    qryIsOIExistsToday: TADOQuery;
    qryPatientWeightpersonMUAC_dbl: TFloatField;
    qryPatientWeightnotes_str: TWideStringField;
    TblClinicalVisitvstPartumProphylaxis_str: TWideStringField;
    qryOnSitePatients: TADOQuery;
    dsOnSiteList: TDataSource;
    qryOnSitePatientsperson_ID: TGuidField;
    qryOnSitePatientsvstIsOnSite_bol: TBooleanField;
    qryOnSitePatientspersonLastName_str: TWideStringField;
    qryOnSitePatientspersonFirstName_str: TWideStringField;
    qryOnSitePatientspersonRefNoCurrent_str: TWideStringField;
    qryOnSitePatientspersonPAS_str: TWideStringField;
    qryOnSitePatientsvstOnSiteDate_dat: TDateTimeField;
    tblActiveStatusLog: TADOQuery;
    TblClinicalVisitvstPregnancyLNMP_dat: TDateTimeField;
    qryMostRecentStatusnotes_mem: TMemoField;
    TblClinicalVisitvstTreatmentStoppedBy_str: TWideStringField;
    ppPatientSummary: TppReport;
    ppDBPipelinePatient: TppDBPipeline;
    ppParameterList2: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    atnPrintPatientSummary: TAction;
    qryPatientSummary: TADOQuery;
    dsSummary: TDataSource;
    TblLaboratoryResults: TADOQuery;
    TblLaboratoryResultslbResultID: TGuidField;
    TblLaboratoryResultspersonID: TGuidField;
    TblLaboratoryResultstestName_str: TWideStringField;
    TblLaboratoryResultstestCode_str: TWideStringField;
    TblLaboratoryResultstestResult_str: TWideStringField;
    TblLaboratoryResultstestResult_dbl: TFloatField;
    TblLaboratoryResultstestDate_dat: TDateTimeField;
    TblLaboratoryResultstestPlace_str: TWideStringField;
    TblLaboratoryResultstestBarCode_str: TWideStringField;
    TblLaboratoryResultstestPostive_bol: TBooleanField;
    ppDBBarCode2: TppDBBarCode;
    ppPatientBarCode: TppReport;
    ppParameterList3: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppDBBarCode3: TppDBBarCode;
    atnPrintPatientBarcode: TAction;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel7: TppLabel;
    ppLabel13: TppLabel;
    ppShape2: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText5: TppDBText;
    ppDBText9: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBBarCode1: TppDBBarCode;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppShape5: TppShape;
    ppLabel27: TppLabel;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel28: TppLabel;
    ppDBText22: TppDBText;
    ppShape6: TppShape;
    ppLine9: TppLine;
    ppLabel29: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine15: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText27: TppDBText;
    ppDBPipelineSystem: TppDBPipeline;
    ppSystemVariable3: TppSystemVariable;
    ppVariable1: TppVariable;
    raCodeModule2: TraCodeModule;
    TblPatientperson_ID: TGuidField;
    TblPatientpersonIDNumber_Str: TWideStringField;
    TblPatientpersonLastName_Str: TWideStringField;
    TblPatientpersonFirstName_Str: TWideStringField;
    TblPatientpersonKnownName_Str: TWideStringField;
    TblPatientpersonInitials_Str: TWideStringField;
    TblPatientpersonDOB_Dat: TDateTimeField;
    TblPatientpersonGender_Str: TWideStringField;
    TblPatientpersonReviewed_Dat: TDateTimeField;
    TblPatientpersonActive_Bol: TBooleanField;
    TblPatientpersonRace_Str: TWideStringField;
    TblPatientpersonLanguageNarrative_Str: TWideStringField;
    TblPatientpersonLanguageWritten_Str: TWideStringField;
    TblPatientpersonAgeYears_int: TIntegerField;
    TblPatientpersonAgeMonths_int: TIntegerField;
    TblPatientpersonDescription_str: TWideStringField;
    TblPatientpersonRefNoCurrent_str: TWideStringField;
    TblPatientpersonTelNoCurrent_str: TWideStringField;
    TblPatientpersonCelNoCurrent_str: TWideStringField;
    TblPatientpersonAddressCurrent_str: TWideStringField;
    TblPatientpersonRegistrationNo_str: TWideStringField;
    TblPatientpersonInstitution_str: TWideStringField;
    TblPatientpersonPatient_bol: TBooleanField;
    TblPatientpersonPrescriber_bol: TBooleanField;
    TblPatientpersonDispenser_bol: TBooleanField;
    TblPatientpersonOther_bol: TBooleanField;
    TblPatientsysLastEdited_dat: TDateTimeField;
    TblPatientsysLastEditedBy_ID: TGuidField;
    TblPatientsysLastEditedBy_str: TWideStringField;
    TblPatientsysDeleted_bol: TBooleanField;
    TblPatientpersonDateDeceased_dat: TDateTimeField;
    TblPatientpersonStatus_Str: TWideStringField;
    TblPatientpersonStatusChangeDate_dat: TDateTimeField;
    TblPatientpersonPead_bol: TBooleanField;
    TblPatientpersonDateJoined_dat: TDateTimeField;
    TblPatientpersonStatusDesc_str: TWideStringField;
    TblPatientpersonPAS_str: TWideStringField;
    TblPatientpersonInstitution_ID: TGuidField;
    TblPatientpersonNaive_Bol: TBooleanField;
    TblPatientpersonNaiveDate_Dat: TDateTimeField;
    TblPatientpersonClintech_ID: TIntegerField;
    TblPatientpersonMaritalStatus_str: TWideStringField;
    TblPatientpersonDeceased_bol: TBooleanField;
    TblPatientpersonDefaulted_bol: TBooleanField;
    TblPatientpersonDefaulted_dat: TDateTimeField;
    TblPatientpersonPAAB_ID: TWideStringField;
    TblPatientpersonRegisteredInSys_bol: TBooleanField;
    TblPatientpersonRegisteredInSys_dat: TDateTimeField;
    TblPatientpersonTransferredIn_bol: TBooleanField;
    TblPatientpersonTransferredInDate_dat: TDateTimeField;
    TblPatientpersonTransferredInFrom_str: TWideStringField;
    TblPatientpersonTransferredOut_bol: TBooleanField;
    TblPatientpersonTransferredOutDate_dat: TDateTimeField;
    TblPatientpersonTransferredOutTo_str: TWideStringField;
    TblPatientvstPregnancyDeliveryDate_dat: TDateTimeField;
    TblPatientvstFunctionalStatus_str: TWideStringField;
    TblPatientvstClinicalStage_str: TWideStringField;
    TblPatientvstRegimenChange_From_str: TWideStringField;
    TblPatientvstRegimenChange_To_str: TWideStringField;
    TblPatientvstRegimenChange_Reason_str: TWideStringField;
    TblPatientvstVisitDate_dat: TDateTimeField;
    TblPatientvstNextVisit_dat: TDateTimeField;
    TblPatientvstScheduledVisit_dat: TDateTimeField;
    TblPatientpersonpregnant_bol: TBooleanField;
    TblPatientvstHeight_dbl: TFloatField;
    TblPatientvstLostToFollowUpDate_dat: TDateTimeField;
    TblPatientvstRegimenStart_str: TWideStringField;
    TblPatientvstRegimenStartDate_dat: TDateTimeField;
    TblPatientvstTreatmentEligibility_str: TWideStringField;
    TblPatientvstTreatmentStopped_date_dat: TDateTimeField;
    TblPatientvstWeight_dbl: TFloatField;
    TblPatientvstCohort_str: TWideStringField;
    TblPatientvstTempPatient_bol: TBooleanField;
    TblPatientReasonForEligibility_Str: TWideStringField;
    TblPatientvstSupporterName_str: TWideStringField;
    TblPatientvstSupporterAddress_str: TWideStringField;
    TblPatientvstUpporterPhone_str: TWideStringField;
    TblPatientvstSupporterRelationship_str: TWideStringField;
    TblPatientClassification_ID: TIntegerField;
    TblPatientvstIsOnSite_bol: TBooleanField;
    TblPatientvstOnSiteDate_dat: TDateTimeField;
    TblPatientDiagnosis_dat: TDateTimeField;
    TblPatientARTStart_dat: TDateTimeField;
    TblPatientEntryPoint_str: TWideStringField;
    TblPatientAgeYears: TIntegerField;
    TblPatientAgeMonths: TIntegerField;
    TblPatientExpr3: TDateTimeField;
    TblPatientExpr4: TWideStringField;
    TblPatientExpr5: TWideStringField;
    ppDBPipelineOIS: TppDBPipeline;
    ppDBPipelineVisits: TppDBPipeline;
    ppDBPipelineLabResults: TppDBPipeline;
    ppDBPipelineWeights: TppDBPipeline;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    qryVisitSummary: TADOQuery;
    GuidField9: TGuidField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    DateTimeField5: TDateTimeField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    DateTimeField6: TDateTimeField;
    DateTimeField7: TDateTimeField;
    DateTimeField8: TDateTimeField;
    DateTimeField9: TDateTimeField;
    DateTimeField10: TDateTimeField;
    DateTimeField11: TDateTimeField;
    DateTimeField12: TDateTimeField;
    DateTimeField13: TDateTimeField;
    WideStringField19: TWideStringField;
    WideStringField20: TWideStringField;
    WideStringField21: TWideStringField;
    DateTimeField14: TDateTimeField;
    DateTimeField15: TDateTimeField;
    DateTimeField16: TDateTimeField;
    WideStringField22: TWideStringField;
    DateTimeField17: TDateTimeField;
    DateTimeField18: TDateTimeField;
    DateTimeField19: TDateTimeField;
    GuidField10: TGuidField;
    BooleanField3: TBooleanField;
    GuidField11: TGuidField;
    DateTimeField20: TDateTimeField;
    StringField1: TStringField;
    MemoField1: TMemoField;
    WideStringField23: TWideStringField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    WideStringField24: TWideStringField;
    DateTimeField21: TDateTimeField;
    WideStringField25: TWideStringField;
    dsVisitSummary: TDataSource;
    ppDBText10: TppDBText;
    ppDBText13: TppDBText;
    ppShape7: TppShape;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    LastDrugPickVisit: TADOQuery;
    BooleanField4: TBooleanField;
    BooleanField5: TBooleanField;
    DateTimeField22: TDateTimeField;
    WideStringField26: TWideStringField;
    WideStringField27: TWideStringField;
    DateTimeField23: TDateTimeField;
    DateTimeField24: TDateTimeField;
    DateTimeField25: TDateTimeField;
    DateTimeField26: TDateTimeField;
    DateTimeField27: TDateTimeField;
    DateTimeField28: TDateTimeField;
    DateTimeField29: TDateTimeField;
    DateTimeField30: TDateTimeField;
    WideStringField29: TWideStringField;
    WideStringField30: TWideStringField;
    WideStringField31: TWideStringField;
    DateTimeField31: TDateTimeField;
    DateTimeField32: TDateTimeField;
    DateTimeField33: TDateTimeField;
    WideStringField32: TWideStringField;
    DateTimeField34: TDateTimeField;
    DateTimeField35: TDateTimeField;
    DateTimeField36: TDateTimeField;
    DateTimeField37: TDateTimeField;
    StringField3: TStringField;
    WideStringField33: TWideStringField;
    GuidField12: TGuidField;
    MemoField2: TMemoField;
    LastLabVisit: TADOQuery;
    BooleanField15: TBooleanField;
    BooleanField16: TBooleanField;
    DateTimeField38: TDateTimeField;
    WideStringField34: TWideStringField;
    WideStringField35: TWideStringField;
    DateTimeField39: TDateTimeField;
    DateTimeField40: TDateTimeField;
    DateTimeField41: TDateTimeField;
    DateTimeField42: TDateTimeField;
    DateTimeField43: TDateTimeField;
    DateTimeField44: TDateTimeField;
    DateTimeField45: TDateTimeField;
    DateTimeField46: TDateTimeField;
    WideStringField37: TWideStringField;
    WideStringField38: TWideStringField;
    WideStringField39: TWideStringField;
    DateTimeField47: TDateTimeField;
    DateTimeField48: TDateTimeField;
    DateTimeField49: TDateTimeField;
    WideStringField40: TWideStringField;
    DateTimeField50: TDateTimeField;
    DateTimeField51: TDateTimeField;
    DateTimeField52: TDateTimeField;
    DateTimeField53: TDateTimeField;
    StringField4: TStringField;
    WideStringField41: TWideStringField;
    GuidField13: TGuidField;
    MemoField3: TMemoField;
    LastClinicalReview: TADOQuery;
    BooleanField26: TBooleanField;
    BooleanField27: TBooleanField;
    DateTimeField54: TDateTimeField;
    WideStringField42: TWideStringField;
    WideStringField43: TWideStringField;
    DateTimeField55: TDateTimeField;
    DateTimeField56: TDateTimeField;
    DateTimeField57: TDateTimeField;
    DateTimeField58: TDateTimeField;
    DateTimeField59: TDateTimeField;
    DateTimeField60: TDateTimeField;
    DateTimeField61: TDateTimeField;
    DateTimeField62: TDateTimeField;
    WideStringField45: TWideStringField;
    WideStringField46: TWideStringField;
    WideStringField47: TWideStringField;
    DateTimeField63: TDateTimeField;
    DateTimeField64: TDateTimeField;
    DateTimeField65: TDateTimeField;
    WideStringField48: TWideStringField;
    DateTimeField66: TDateTimeField;
    DateTimeField67: TDateTimeField;
    DateTimeField68: TDateTimeField;
    DateTimeField69: TDateTimeField;
    StringField5: TStringField;
    WideStringField49: TWideStringField;
    GuidField14: TGuidField;
    MemoField4: TMemoField;
    TblClinicalVisitTBVisit_dat: TDateTimeField;
    TblClinicalVisitTBSite_str: TWideStringField;
    TblClinicalVisitTBExpectedCompletion_dat: TDateTimeField;
    TblClinicalVisitTBCategory_str: TWideStringField;
    TblClinicalVisitIPT_bol: TBooleanField;
    TblClinicalVisitIPTStart_dat: TDateTimeField;
    TblClinicalVisitIPTStop_dat: TDateTimeField;
    TblClinicalVisitTBStatus_str: TWideStringField;
    TblClinicalVisitTBOutcome_str: TWideStringField;
    TblClinicalVisitTBOutcome_dat: TDateTimeField;
    TblClinicalVisitTBRegimen_str: TWideStringField;
    TblClinicalVisitTBScreened_bol: TBooleanField;
    TblClinicalVisitTBScreenResult_str: TWideStringField;
    TblClinicalVisitTBScheduled_dat: TDateTimeField;
    TblClinicalVisitTBNextVisit_dat: TDateTimeField;
    TblClinicalVisitvstScheduledTypeVisit_str: TWideStringField;
    qryMostRecentStatusTBVisit_dat: TDateTimeField;
    qryMostRecentStatusTBScheduled_dat: TDateTimeField;
    qryMostRecentStatusTBNextVisit_dat: TDateTimeField;
    TblClinicalVisitTBRegimenChangeTo_str: TWideStringField;
    TblClinicalVisitTBRegimenChangeReason_str: TWideStringField;
    TblClinicalVisitTBReasonStoppingTBTreatment_str: TWideStringField;
    TblClinicalVisitTBReTreatmentType_str: TWideStringField;
    TblClinicalVisitTBDiagnosis_dat: TDateTimeField;
    TblClinicalVisitTBVisitType_str: TWideStringField;
    TblClinicalVisitTBScheduledVisitType_str: TWideStringField;
    TblClinicalVisitTBNextVisitType_str: TWideStringField;
    qryMostRecentStatusTBVisitType_str: TWideStringField;
    qryMostRecentStatusTBSite_str: TWideStringField;
    qryMostRecentStatusTBDiagnosis_dat: TDateTimeField;
    qryMostRecentStatusTBExpectedCompletion_dat: TDateTimeField;
    qryMostRecentStatusTBCategory_str: TWideStringField;
    qryMostRecentStatusIPT_bol: TBooleanField;
    qryMostRecentStatusIPTStart_dat: TDateTimeField;
    qryMostRecentStatusIPTStop_dat: TDateTimeField;
    qryMostRecentStatusTBStatus_str: TWideStringField;
    qryMostRecentStatusTBOutcome_str: TWideStringField;
    qryMostRecentStatusTBOutcome_dat: TDateTimeField;
    qryMostRecentStatusTBReasonStoppingTBTreatment_str: TWideStringField;
    qryMostRecentStatusTBRegimen_str: TWideStringField;
    qryMostRecentStatusTBRegimenChangeTo_str: TWideStringField;
    qryMostRecentStatusTBRegimenChangeReason_str: TWideStringField;
    qryMostRecentStatusTBScreened_bol: TBooleanField;
    qryMostRecentStatusTBScreenResult_str: TWideStringField;
    qryMostRecentStatusTBScheduledVisitType_str: TWideStringField;
    qryMostRecentStatusTBNextVisitType_str: TWideStringField;
    qryMostRecentStatusTBReTreatmentType_str: TWideStringField;
    LastDrugPickVisitTBVisit_dat: TDateTimeField;
    LastDrugPickVisitTBVisitType_str: TWideStringField;
    LastDrugPickVisitTBSite_str: TWideStringField;
    LastDrugPickVisitTBDiagnosis_dat: TDateTimeField;
    LastDrugPickVisitTBExpectedCompletion_dat: TDateTimeField;
    LastDrugPickVisitTBCategory_str: TWideStringField;
    LastDrugPickVisitIPT_bol: TBooleanField;
    LastDrugPickVisitIPTStart_dat: TDateTimeField;
    LastDrugPickVisitIPTStop_dat: TDateTimeField;
    LastDrugPickVisitTBStatus_str: TWideStringField;
    LastDrugPickVisitTBOutcome_str: TWideStringField;
    LastDrugPickVisitTBOutcome_dat: TDateTimeField;
    LastDrugPickVisitTBReasonStoppingTBTreatment_str: TWideStringField;
    LastDrugPickVisitTBRegimen_str: TWideStringField;
    LastDrugPickVisitTBRegimenChangeTo_str: TWideStringField;
    LastDrugPickVisitTBRegimenChangeReason_str: TWideStringField;
    LastDrugPickVisitTBScreened_bol: TBooleanField;
    LastDrugPickVisitTBScreenResult_str: TWideStringField;
    LastDrugPickVisitTBScheduled_dat: TDateTimeField;
    LastDrugPickVisitTBScheduledVisitType_str: TWideStringField;
    LastDrugPickVisitTBNextVisit_dat: TDateTimeField;
    LastDrugPickVisitTBNextVisitType_str: TWideStringField;
    LastDrugPickVisitTBReTreatmentType_str: TWideStringField;
    LastLabVisitTBVisit_dat: TDateTimeField;
    LastLabVisitTBVisitType_str: TWideStringField;
    LastLabVisitTBSite_str: TWideStringField;
    LastLabVisitTBDiagnosis_dat: TDateTimeField;
    LastLabVisitTBExpectedCompletion_dat: TDateTimeField;
    LastLabVisitTBCategory_str: TWideStringField;
    LastLabVisitIPT_bol: TBooleanField;
    LastLabVisitIPTStart_dat: TDateTimeField;
    LastLabVisitIPTStop_dat: TDateTimeField;
    LastLabVisitTBStatus_str: TWideStringField;
    LastLabVisitTBOutcome_str: TWideStringField;
    LastLabVisitTBOutcome_dat: TDateTimeField;
    LastLabVisitTBReasonStoppingTBTreatment_str: TWideStringField;
    LastLabVisitTBRegimen_str: TWideStringField;
    LastLabVisitTBRegimenChangeTo_str: TWideStringField;
    LastLabVisitTBRegimenChangeReason_str: TWideStringField;
    LastLabVisitTBScreened_bol: TBooleanField;
    LastLabVisitTBScreenResult_str: TWideStringField;
    LastLabVisitTBScheduled_dat: TDateTimeField;
    LastLabVisitTBScheduledVisitType_str: TWideStringField;
    LastLabVisitTBNextVisit_dat: TDateTimeField;
    LastLabVisitTBNextVisitType_str: TWideStringField;
    LastLabVisitTBReTreatmentType_str: TWideStringField;
    LastClinicalReviewTBVisit_dat: TDateTimeField;
    LastClinicalReviewTBVisitType_str: TWideStringField;
    LastClinicalReviewTBSite_str: TWideStringField;
    LastClinicalReviewTBDiagnosis_dat: TDateTimeField;
    LastClinicalReviewTBExpectedCompletion_dat: TDateTimeField;
    LastClinicalReviewTBCategory_str: TWideStringField;
    LastClinicalReviewIPT_bol: TBooleanField;
    LastClinicalReviewIPTStart_dat: TDateTimeField;
    LastClinicalReviewIPTStop_dat: TDateTimeField;
    LastClinicalReviewTBStatus_str: TWideStringField;
    LastClinicalReviewTBOutcome_str: TWideStringField;
    LastClinicalReviewTBOutcome_dat: TDateTimeField;
    LastClinicalReviewTBReasonStoppingTBTreatment_str: TWideStringField;
    LastClinicalReviewTBRegimen_str: TWideStringField;
    LastClinicalReviewTBRegimenChangeTo_str: TWideStringField;
    LastClinicalReviewTBRegimenChangeReason_str: TWideStringField;
    LastClinicalReviewTBScreened_bol: TBooleanField;
    LastClinicalReviewTBScreenResult_str: TWideStringField;
    LastClinicalReviewTBScheduled_dat: TDateTimeField;
    LastClinicalReviewTBScheduledVisitType_str: TWideStringField;
    LastClinicalReviewTBNextVisit_dat: TDateTimeField;
    LastClinicalReviewTBNextVisitType_str: TWideStringField;
    LastClinicalReviewTBReTreatmentType_str: TWideStringField;
    TblPatientClassification_str: TWideStringField;
    qryMostRecentStatusvstScheduledTypeVisit_str: TWideStringField;
    LastDrugPickVisitvstScheduledTypeVisit_str: TWideStringField;
    LastLabVisitvstScheduledTypeVisit_str: TWideStringField;
    LastClinicalReviewvstScheduledTypeVisit_str: TWideStringField;
    dsHandOvers: TDataSource;
    qryTodaysPatientHandovers: TADOQuery;
    dsTodaysPatientHandover: TDataSource;
    ppDBPipelineTodaysHandovers: TppDBPipeline;
    ppTodaysHandoversReport: TppReport;
    qryTodaysPatientHandovershandover_id: TAutoIncField;
    qryTodaysPatientHandovershandOverTime_date: TDateTimeField;
    qryTodaysPatientHandoverspatient_id: TGuidField;
    qryTodaysPatientHandoversmachineName_str: TWideStringField;
    qryTodaysPatientHandovershandOverToType_str: TWideStringField;
    qryTodaysPatientHandoversuser_id: TGuidField;
    qryTodaysPatientHandovershandOverByType_str: TWideStringField;
    qryTodaysPatientHandovershandOverNotes_str: TMemoField;
    ppParameterList4: TppParameterList;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppTitleBand2: TppTitleBand;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppDBText26: TppDBText;
    ppLabel41: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppDBText28: TppDBText;
    ppLabel43: TppLabel;
    ppDBText29: TppDBText;
    ppLabel44: TppLabel;
    ppDBText30: TppDBText;
    ppLabel45: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppDBText31: TppDBText;
    ppLabel40: TppLabel;
    ppDBCalc1: TppDBCalc;
    TblClinicalVisitvstTicketNumber_int: TIntegerField;
    qryPatientHasSimilarHandover: TADOQuery;
    TblClinicalVisitTBSputumSmear_str: TWideStringField;
    TblClinicalVisitTBExtraPulmonarySite_str: TWideStringField;
    TblClinicalVisitTBDiagnosedMethod_str: TWideStringField;
    TblClinicalVisitTBDiagnosedMethodNotes_str: TWideStringField;
    TblClinicalVisitTBDuration_int: TIntegerField;
    TblClinicalVisitvstOnBehalf_bol: TBooleanField;
    TblClinicalVisitvstOnBehalfID_str: TWideStringField;
    qryHandOverPeople: TADOQuery;
    dsqryHandOverPeople: TDataSource;
    TblPatientpersonReligion_str: TWideStringField;
    TblPatienteligibilityCD4Count_str: TWideStringField;
    TblPatienteligibilityWHOStaging_str: TWideStringField;
    TblClinicalVisitTBContinuationPhase_dat: TDateTimeField;
    qryReligion: TADOQuery;
    dsReligion: TDataSource;
    dsVisitNutrition: TDataSource;
    qryVisitNutrition: TADOQuery;
    qryMostRecentStatusvstPregnancyLNMP_dat: TDateTimeField;
    qryMostRecentStatusvstFeedingType_str: TStringField;
    qryMostRecentStatusvstWeanAgeYears_int: TIntegerField;
    qryMostRecentStatusvstTreatmentStoppedBy_str: TWideStringField;
    qryMostRecentStatusvstPartumProphylaxis_str: TWideStringField;
    qryMostRecentStatusTBExtraPulmonarySite_str: TWideStringField;
    qryMostRecentStatusTBSputumSmear_str: TWideStringField;
    qryMostRecentStatusTBDiagnosedMethod_str: TWideStringField;
    qryMostRecentStatusTBDiagnosedMethodNotes_str: TWideStringField;
    qryMostRecentStatusTBDuration_int: TIntegerField;
    qryMostRecentStatusTBContinuationPhase_dat: TDateTimeField;
    LastDrugPickVisitvstPregnancyLNMP_dat: TDateTimeField;
    LastDrugPickVisitvstFeedingType_str: TStringField;
    LastDrugPickVisitvstWeanAgeYears_int: TIntegerField;
    LastDrugPickVisitvstTreatmentStoppedBy_str: TWideStringField;
    LastDrugPickVisitvstPartumProphylaxis_str: TWideStringField;
    LastDrugPickVisitTBExtraPulmonarySite_str: TWideStringField;
    LastDrugPickVisitTBSputumSmear_str: TWideStringField;
    LastDrugPickVisitTBDiagnosedMethod_str: TWideStringField;
    LastDrugPickVisitTBDiagnosedMethodNotes_str: TWideStringField;
    LastDrugPickVisitTBDuration_int: TIntegerField;
    LastDrugPickVisitTBContinuationPhase_dat: TDateTimeField;
    LastLabVisitvstPregnancyLNMP_dat: TDateTimeField;
    LastLabVisitvstFeedingType_str: TStringField;
    LastLabVisitvstWeanAgeYears_int: TIntegerField;
    LastLabVisitvstTreatmentStoppedBy_str: TWideStringField;
    LastLabVisitvstPartumProphylaxis_str: TWideStringField;
    LastLabVisitTBExtraPulmonarySite_str: TWideStringField;
    LastLabVisitTBSputumSmear_str: TWideStringField;
    LastLabVisitTBDiagnosedMethod_str: TWideStringField;
    LastLabVisitTBDiagnosedMethodNotes_str: TWideStringField;
    LastLabVisitTBDuration_int: TIntegerField;
    LastLabVisitTBContinuationPhase_dat: TDateTimeField;
    LastClinicalReviewvstPregnancyLNMP_dat: TDateTimeField;
    LastClinicalReviewvstFeedingType_str: TStringField;
    LastClinicalReviewvstWeanAgeYears_int: TIntegerField;
    LastClinicalReviewvstTreatmentStoppedBy_str: TWideStringField;
    LastClinicalReviewvstPartumProphylaxis_str: TWideStringField;
    LastClinicalReviewTBExtraPulmonarySite_str: TWideStringField;
    LastClinicalReviewTBSputumSmear_str: TWideStringField;
    LastClinicalReviewTBDiagnosedMethod_str: TWideStringField;
    LastClinicalReviewTBDiagnosedMethodNotes_str: TWideStringField;
    LastClinicalReviewTBDuration_int: TIntegerField;
    LastClinicalReviewTBContinuationPhase_dat: TDateTimeField;
    LastCounselling: TADOQuery;
    BooleanField6: TBooleanField;
    BooleanField7: TBooleanField;
    DateTimeField70: TDateTimeField;
    WideStringField28: TWideStringField;
    WideStringField36: TWideStringField;
    DateTimeField71: TDateTimeField;
    DateTimeField72: TDateTimeField;
    DateTimeField73: TDateTimeField;
    DateTimeField74: TDateTimeField;
    DateTimeField75: TDateTimeField;
    DateTimeField76: TDateTimeField;
    DateTimeField77: TDateTimeField;
    DateTimeField78: TDateTimeField;
    WideStringField44: TWideStringField;
    WideStringField50: TWideStringField;
    WideStringField51: TWideStringField;
    DateTimeField79: TDateTimeField;
    DateTimeField80: TDateTimeField;
    DateTimeField81: TDateTimeField;
    WideStringField52: TWideStringField;
    DateTimeField82: TDateTimeField;
    DateTimeField83: TDateTimeField;
    DateTimeField84: TDateTimeField;
    DateTimeField85: TDateTimeField;
    StringField6: TStringField;
    WideStringField53: TWideStringField;
    GuidField15: TGuidField;
    MemoField5: TMemoField;
    DateTimeField86: TDateTimeField;
    WideStringField54: TWideStringField;
    WideStringField55: TWideStringField;
    DateTimeField87: TDateTimeField;
    DateTimeField88: TDateTimeField;
    WideStringField56: TWideStringField;
    BooleanField8: TBooleanField;
    DateTimeField89: TDateTimeField;
    DateTimeField90: TDateTimeField;
    WideStringField57: TWideStringField;
    WideStringField58: TWideStringField;
    DateTimeField91: TDateTimeField;
    WideStringField59: TWideStringField;
    WideStringField60: TWideStringField;
    WideStringField61: TWideStringField;
    WideStringField62: TWideStringField;
    BooleanField9: TBooleanField;
    WideStringField63: TWideStringField;
    DateTimeField92: TDateTimeField;
    WideStringField64: TWideStringField;
    DateTimeField93: TDateTimeField;
    WideStringField65: TWideStringField;
    WideStringField66: TWideStringField;
    WideStringField67: TWideStringField;
    DateTimeField94: TDateTimeField;
    StringField7: TStringField;
    IntegerField2: TIntegerField;
    WideStringField69: TWideStringField;
    WideStringField70: TWideStringField;
    WideStringField71: TWideStringField;
    WideStringField72: TWideStringField;
    WideStringField73: TWideStringField;
    WideStringField74: TWideStringField;
    IntegerField3: TIntegerField;
    DateTimeField95: TDateTimeField;
    TblClinicalVisitpersonTransferredInDate_dat: TDateTimeField;
    TblClinicalVisitpersonTransferredInFrom_str: TWideStringField;
    TblClinicalVisitpersonTransferredOutDate_dat: TDateTimeField;
    TblClinicalVisitpersonTransferredOutTo_str: TWideStringField;
    TblClinicalVisitvstNextVisitType_str: TWideStringField;
    LastDrugPickVisitvstNextVisitType_str: TWideStringField;
    LastLabVisitvstNextVisitType_str: TWideStringField;
    LastClinicalReviewvstNextVisitType_str: TWideStringField;
    LastCounsellingvstNextVisitType_str: TWideStringField;
    qryMostRecentStatusvstNextVisitType_str: TWideStringField;
    qryLastNewRegimen: TADOQuery;
    WideStringField78: TWideStringField;
    qryLastFeedingType: TADOQuery;
    qryLastFeedingTypevstFeedingType_str: TStringField;
    LastTBPickVisit: TADOQuery;
    LastTBLabVisit: TADOQuery;
    LastTBCLinicalReview: TADOQuery;
    LastTBCounselling: TADOQuery;
    LastTBPickVisitVisit_ID: TGuidField;
    LastTBPickVisitpatient_ID: TGuidField;
    LastTBPickVisitpersonpregnant_bol: TBooleanField;
    LastTBPickVisitvstTreamentPrescribed_bol: TBooleanField;
    LastTBPickVisitvstPregnancyLNMP_dat: TDateTimeField;
    LastTBPickVisitvstPregnancyDeliveryDate_dat: TDateTimeField;
    LastTBPickVisitvstPregnancyExpectedDelivery_dat: TDateTimeField;
    LastTBPickVisitvstPregnancyTrimister_str: TStringField;
    LastTBPickVisitvstFeedingType_str: TStringField;
    LastTBPickVisitvstWeanAgeYears_int: TIntegerField;
    LastTBPickVisitvstFunctionalStatus_str: TWideStringField;
    LastTBPickVisitvstClinicalStage_str: TWideStringField;
    LastTBPickVisitvstPropo_CoTri_Start_dat: TDateTimeField;
    LastTBPickVisitvstPropo_CoTri_Stopped_dat: TDateTimeField;
    LastTBPickVisitvstPropo_Fluconazole_Start_dat: TDateTimeField;
    LastTBPickVisitvstPropo_Fluconazole_Stopped_dat: TDateTimeField;
    LastTBPickVisitvstPropo_INH_Start_dat: TDateTimeField;
    LastTBPickVisitvstPropo_INH_Stopped_dat: TDateTimeField;
    LastTBPickVisitvstRegimenChange_From_str: TWideStringField;
    LastTBPickVisitvstRegimenChange_To_str: TWideStringField;
    LastTBPickVisitvstRegimenChange_Reason_str: TWideStringField;
    LastTBPickVisitvstVisitDate_dat: TDateTimeField;
    LastTBPickVisitvstNextVisit_dat: TDateTimeField;
    LastTBPickVisitvstNextVisitType_str: TWideStringField;
    LastTBPickVisitvstScheduledVisit_dat: TDateTimeField;
    LastTBPickVisitvstScheduledTypeVisit_str: TWideStringField;
    LastTBPickVisitvstRegimenStart_str: TWideStringField;
    LastTBPickVisitvstLostToFollowUpDate_dat: TDateTimeField;
    LastTBPickVisitvstTreatmentStopped_date_dat: TDateTimeField;
    LastTBPickVisitvstTreatmentStoppedBy_str: TWideStringField;
    LastTBPickVisitvstRegimenStartDate_dat: TDateTimeField;
    LastTBPickVisitvstPartumProphylaxis_str: TWideStringField;
    LastTBPickVisituser_id: TGuidField;
    LastTBPickVisitcompleted_bol: TBooleanField;
    LastTBPickVisitCaptured_dat: TDateTimeField;
    LastTBPickVisitnotes_mem: TMemoField;
    LastTBPickVisitvisitType_str: TWideStringField;
    LastTBPickVisitTBVisit_dat: TDateTimeField;
    LastTBPickVisitTBVisitType_str: TWideStringField;
    LastTBPickVisitTBSite_str: TWideStringField;
    LastTBPickVisitTBExtraPulmonarySite_str: TWideStringField;
    LastTBPickVisitTBSputumSmear_str: TWideStringField;
    LastTBPickVisitTBDiagnosis_dat: TDateTimeField;
    LastTBPickVisitTBDiagnosedMethod_str: TWideStringField;
    LastTBPickVisitTBDiagnosedMethodNotes_str: TWideStringField;
    LastTBPickVisitTBExpectedCompletion_dat: TDateTimeField;
    LastTBPickVisitTBCategory_str: TWideStringField;
    LastTBPickVisitIPT_bol: TBooleanField;
    LastTBPickVisitIPTStart_dat: TDateTimeField;
    LastTBPickVisitIPTStop_dat: TDateTimeField;
    LastTBPickVisitTBStatus_str: TWideStringField;
    LastTBPickVisitTBOutcome_str: TWideStringField;
    LastTBPickVisitTBOutcome_dat: TDateTimeField;
    LastTBPickVisitvstPropo_TBTreatment_Start_dat: TDateTimeField;
    LastTBPickVisitvstPropo_TBTreatment_Stopped_dat: TDateTimeField;
    LastTBPickVisitTBReasonStoppingTBTreatment_str: TWideStringField;
    LastTBPickVisitTBRegimen_str: TWideStringField;
    LastTBPickVisitTBRegimenChangeTo_str: TWideStringField;
    LastTBPickVisitTBRegimenChangeReason_str: TWideStringField;
    LastTBPickVisitTBScreened_bol: TBooleanField;
    LastTBPickVisitTBScreenResult_str: TWideStringField;
    LastTBPickVisitTBScheduled_dat: TDateTimeField;
    LastTBPickVisitTBScheduledVisitType_str: TWideStringField;
    LastTBPickVisitTBNextVisit_dat: TDateTimeField;
    LastTBPickVisitTBNextVisitType_str: TWideStringField;
    LastTBPickVisitTBReTreatmentType_str: TWideStringField;
    LastTBPickVisitTBDuration_int: TIntegerField;
    LastTBPickVisitTBContinuationPhase_dat: TDateTimeField;
    LastTBPickVisitvstTicketNumber_int: TIntegerField;
    LastTBPickVisitvstOnBehalf_bol: TBooleanField;
    LastTBPickVisitvstOnBehalfID_str: TWideStringField;
    LastTBPickVisitadmitted_bol: TBooleanField;
    LastTBPickVisitdepartmentWard_ID: TGuidField;
    LastTBPickVisitdepartmentWardBed_ID: TGuidField;
    LastTBPickVisitdischarge_dat: TDateTimeField;
    LastTBPickVisitICD10_str: TStringField;
    LastTBPickVisitpersonTransferredInDate_dat: TDateTimeField;
    LastTBPickVisitpersonTransferredInFrom_str: TWideStringField;
    LastTBPickVisitpersonTransferredOutDate_dat: TDateTimeField;
    LastTBPickVisitpersonTransferredOutTo_str: TWideStringField;
    LastTBLabVisitVisit_ID: TGuidField;
    LastTBLabVisitpatient_ID: TGuidField;
    LastTBLabVisitpersonpregnant_bol: TBooleanField;
    LastTBLabVisitvstTreamentPrescribed_bol: TBooleanField;
    LastTBLabVisitvstPregnancyLNMP_dat: TDateTimeField;
    LastTBLabVisitvstPregnancyDeliveryDate_dat: TDateTimeField;
    LastTBLabVisitvstPregnancyExpectedDelivery_dat: TDateTimeField;
    LastTBLabVisitvstPregnancyTrimister_str: TStringField;
    LastTBLabVisitvstFeedingType_str: TStringField;
    LastTBLabVisitvstWeanAgeYears_int: TIntegerField;
    LastTBLabVisitvstFunctionalStatus_str: TWideStringField;
    LastTBLabVisitvstClinicalStage_str: TWideStringField;
    LastTBLabVisitvstPropo_CoTri_Start_dat: TDateTimeField;
    LastTBLabVisitvstPropo_CoTri_Stopped_dat: TDateTimeField;
    LastTBLabVisitvstPropo_Fluconazole_Start_dat: TDateTimeField;
    LastTBLabVisitvstPropo_Fluconazole_Stopped_dat: TDateTimeField;
    LastTBLabVisitvstPropo_INH_Start_dat: TDateTimeField;
    LastTBLabVisitvstPropo_INH_Stopped_dat: TDateTimeField;
    LastTBLabVisitvstRegimenChange_From_str: TWideStringField;
    LastTBLabVisitvstRegimenChange_To_str: TWideStringField;
    LastTBLabVisitvstRegimenChange_Reason_str: TWideStringField;
    LastTBLabVisitvstVisitDate_dat: TDateTimeField;
    LastTBLabVisitvstNextVisit_dat: TDateTimeField;
    LastTBLabVisitvstNextVisitType_str: TWideStringField;
    LastTBLabVisitvstScheduledVisit_dat: TDateTimeField;
    LastTBLabVisitvstScheduledTypeVisit_str: TWideStringField;
    LastTBLabVisitvstRegimenStart_str: TWideStringField;
    LastTBLabVisitvstLostToFollowUpDate_dat: TDateTimeField;
    LastTBLabVisitvstTreatmentStopped_date_dat: TDateTimeField;
    LastTBLabVisitvstTreatmentStoppedBy_str: TWideStringField;
    LastTBLabVisitvstRegimenStartDate_dat: TDateTimeField;
    LastTBLabVisitvstPartumProphylaxis_str: TWideStringField;
    LastTBLabVisituser_id: TGuidField;
    LastTBLabVisitcompleted_bol: TBooleanField;
    LastTBLabVisitCaptured_dat: TDateTimeField;
    LastTBLabVisitnotes_mem: TMemoField;
    LastTBLabVisitvisitType_str: TWideStringField;
    LastTBLabVisitTBVisit_dat: TDateTimeField;
    LastTBLabVisitTBVisitType_str: TWideStringField;
    LastTBLabVisitTBSite_str: TWideStringField;
    LastTBLabVisitTBExtraPulmonarySite_str: TWideStringField;
    LastTBLabVisitTBSputumSmear_str: TWideStringField;
    LastTBLabVisitTBDiagnosis_dat: TDateTimeField;
    LastTBLabVisitTBDiagnosedMethod_str: TWideStringField;
    LastTBLabVisitTBDiagnosedMethodNotes_str: TWideStringField;
    LastTBLabVisitTBExpectedCompletion_dat: TDateTimeField;
    LastTBLabVisitTBCategory_str: TWideStringField;
    LastTBLabVisitIPT_bol: TBooleanField;
    LastTBLabVisitIPTStart_dat: TDateTimeField;
    LastTBLabVisitIPTStop_dat: TDateTimeField;
    LastTBLabVisitTBStatus_str: TWideStringField;
    LastTBLabVisitTBOutcome_str: TWideStringField;
    LastTBLabVisitTBOutcome_dat: TDateTimeField;
    LastTBLabVisitvstPropo_TBTreatment_Start_dat: TDateTimeField;
    LastTBLabVisitvstPropo_TBTreatment_Stopped_dat: TDateTimeField;
    LastTBLabVisitTBReasonStoppingTBTreatment_str: TWideStringField;
    LastTBLabVisitTBRegimen_str: TWideStringField;
    LastTBLabVisitTBRegimenChangeTo_str: TWideStringField;
    LastTBLabVisitTBRegimenChangeReason_str: TWideStringField;
    LastTBLabVisitTBScreened_bol: TBooleanField;
    LastTBLabVisitTBScreenResult_str: TWideStringField;
    LastTBLabVisitTBScheduled_dat: TDateTimeField;
    LastTBLabVisitTBScheduledVisitType_str: TWideStringField;
    LastTBLabVisitTBNextVisit_dat: TDateTimeField;
    LastTBLabVisitTBNextVisitType_str: TWideStringField;
    LastTBLabVisitTBReTreatmentType_str: TWideStringField;
    LastTBLabVisitTBDuration_int: TIntegerField;
    LastTBLabVisitTBContinuationPhase_dat: TDateTimeField;
    LastTBLabVisitvstTicketNumber_int: TIntegerField;
    LastTBLabVisitvstOnBehalf_bol: TBooleanField;
    LastTBLabVisitvstOnBehalfID_str: TWideStringField;
    LastTBLabVisitadmitted_bol: TBooleanField;
    LastTBLabVisitdepartmentWard_ID: TGuidField;
    LastTBLabVisitdepartmentWardBed_ID: TGuidField;
    LastTBLabVisitdischarge_dat: TDateTimeField;
    LastTBLabVisitICD10_str: TStringField;
    LastTBLabVisitpersonTransferredInDate_dat: TDateTimeField;
    LastTBLabVisitpersonTransferredInFrom_str: TWideStringField;
    LastTBLabVisitpersonTransferredOutDate_dat: TDateTimeField;
    LastTBLabVisitpersonTransferredOutTo_str: TWideStringField;
    LastTBCLinicalReviewVisit_ID: TGuidField;
    LastTBCLinicalReviewpatient_ID: TGuidField;
    LastTBCLinicalReviewpersonpregnant_bol: TBooleanField;
    LastTBCLinicalReviewvstTreamentPrescribed_bol: TBooleanField;
    LastTBCLinicalReviewvstPregnancyLNMP_dat: TDateTimeField;
    LastTBCLinicalReviewvstPregnancyDeliveryDate_dat: TDateTimeField;
    LastTBCLinicalReviewvstPregnancyExpectedDelivery_dat: TDateTimeField;
    LastTBCLinicalReviewvstPregnancyTrimister_str: TStringField;
    LastTBCLinicalReviewvstFeedingType_str: TStringField;
    LastTBCLinicalReviewvstWeanAgeYears_int: TIntegerField;
    LastTBCLinicalReviewvstFunctionalStatus_str: TWideStringField;
    LastTBCLinicalReviewvstClinicalStage_str: TWideStringField;
    LastTBCLinicalReviewvstPropo_CoTri_Start_dat: TDateTimeField;
    LastTBCLinicalReviewvstPropo_CoTri_Stopped_dat: TDateTimeField;
    LastTBCLinicalReviewvstPropo_Fluconazole_Start_dat: TDateTimeField;
    LastTBCLinicalReviewvstPropo_Fluconazole_Stopped_dat: TDateTimeField;
    LastTBCLinicalReviewvstPropo_INH_Start_dat: TDateTimeField;
    LastTBCLinicalReviewvstPropo_INH_Stopped_dat: TDateTimeField;
    LastTBCLinicalReviewvstRegimenChange_From_str: TWideStringField;
    LastTBCLinicalReviewvstRegimenChange_To_str: TWideStringField;
    LastTBCLinicalReviewvstRegimenChange_Reason_str: TWideStringField;
    LastTBCLinicalReviewvstVisitDate_dat: TDateTimeField;
    LastTBCLinicalReviewvstNextVisit_dat: TDateTimeField;
    LastTBCLinicalReviewvstNextVisitType_str: TWideStringField;
    LastTBCLinicalReviewvstScheduledVisit_dat: TDateTimeField;
    LastTBCLinicalReviewvstScheduledTypeVisit_str: TWideStringField;
    LastTBCLinicalReviewvstRegimenStart_str: TWideStringField;
    LastTBCLinicalReviewvstLostToFollowUpDate_dat: TDateTimeField;
    LastTBCLinicalReviewvstTreatmentStopped_date_dat: TDateTimeField;
    LastTBCLinicalReviewvstTreatmentStoppedBy_str: TWideStringField;
    LastTBCLinicalReviewvstRegimenStartDate_dat: TDateTimeField;
    LastTBCLinicalReviewvstPartumProphylaxis_str: TWideStringField;
    LastTBCLinicalReviewuser_id: TGuidField;
    LastTBCLinicalReviewcompleted_bol: TBooleanField;
    LastTBCLinicalReviewCaptured_dat: TDateTimeField;
    LastTBCLinicalReviewnotes_mem: TMemoField;
    LastTBCLinicalReviewvisitType_str: TWideStringField;
    LastTBCLinicalReviewTBVisit_dat: TDateTimeField;
    LastTBCLinicalReviewTBVisitType_str: TWideStringField;
    LastTBCLinicalReviewTBSite_str: TWideStringField;
    LastTBCLinicalReviewTBExtraPulmonarySite_str: TWideStringField;
    LastTBCLinicalReviewTBSputumSmear_str: TWideStringField;
    LastTBCLinicalReviewTBDiagnosis_dat: TDateTimeField;
    LastTBCLinicalReviewTBDiagnosedMethod_str: TWideStringField;
    LastTBCLinicalReviewTBDiagnosedMethodNotes_str: TWideStringField;
    LastTBCLinicalReviewTBExpectedCompletion_dat: TDateTimeField;
    LastTBCLinicalReviewTBCategory_str: TWideStringField;
    LastTBCLinicalReviewIPT_bol: TBooleanField;
    LastTBCLinicalReviewIPTStart_dat: TDateTimeField;
    LastTBCLinicalReviewIPTStop_dat: TDateTimeField;
    LastTBCLinicalReviewTBStatus_str: TWideStringField;
    LastTBCLinicalReviewTBOutcome_str: TWideStringField;
    LastTBCLinicalReviewTBOutcome_dat: TDateTimeField;
    LastTBCLinicalReviewvstPropo_TBTreatment_Start_dat: TDateTimeField;
    LastTBCLinicalReviewvstPropo_TBTreatment_Stopped_dat: TDateTimeField;
    LastTBCLinicalReviewTBReasonStoppingTBTreatment_str: TWideStringField;
    LastTBCLinicalReviewTBRegimen_str: TWideStringField;
    LastTBCLinicalReviewTBRegimenChangeTo_str: TWideStringField;
    LastTBCLinicalReviewTBRegimenChangeReason_str: TWideStringField;
    LastTBCLinicalReviewTBScreened_bol: TBooleanField;
    LastTBCLinicalReviewTBScreenResult_str: TWideStringField;
    LastTBCLinicalReviewTBScheduled_dat: TDateTimeField;
    LastTBCLinicalReviewTBScheduledVisitType_str: TWideStringField;
    LastTBCLinicalReviewTBNextVisit_dat: TDateTimeField;
    LastTBCLinicalReviewTBNextVisitType_str: TWideStringField;
    LastTBCLinicalReviewTBReTreatmentType_str: TWideStringField;
    LastTBCLinicalReviewTBDuration_int: TIntegerField;
    LastTBCLinicalReviewTBContinuationPhase_dat: TDateTimeField;
    LastTBCLinicalReviewvstTicketNumber_int: TIntegerField;
    LastTBCLinicalReviewvstOnBehalf_bol: TBooleanField;
    LastTBCLinicalReviewvstOnBehalfID_str: TWideStringField;
    LastTBCLinicalReviewadmitted_bol: TBooleanField;
    LastTBCLinicalReviewdepartmentWard_ID: TGuidField;
    LastTBCLinicalReviewdepartmentWardBed_ID: TGuidField;
    LastTBCLinicalReviewdischarge_dat: TDateTimeField;
    LastTBCLinicalReviewICD10_str: TStringField;
    LastTBCLinicalReviewpersonTransferredInDate_dat: TDateTimeField;
    LastTBCLinicalReviewpersonTransferredInFrom_str: TWideStringField;
    LastTBCLinicalReviewpersonTransferredOutDate_dat: TDateTimeField;
    LastTBCLinicalReviewpersonTransferredOutTo_str: TWideStringField;
    LastTBCounsellingVisit_ID: TGuidField;
    LastTBCounsellingpatient_ID: TGuidField;
    LastTBCounsellingpersonpregnant_bol: TBooleanField;
    LastTBCounsellingvstTreamentPrescribed_bol: TBooleanField;
    LastTBCounsellingvstPregnancyLNMP_dat: TDateTimeField;
    LastTBCounsellingvstPregnancyDeliveryDate_dat: TDateTimeField;
    LastTBCounsellingvstPregnancyExpectedDelivery_dat: TDateTimeField;
    LastTBCounsellingvstPregnancyTrimister_str: TStringField;
    LastTBCounsellingvstFeedingType_str: TStringField;
    LastTBCounsellingvstWeanAgeYears_int: TIntegerField;
    LastTBCounsellingvstFunctionalStatus_str: TWideStringField;
    LastTBCounsellingvstClinicalStage_str: TWideStringField;
    LastTBCounsellingvstPropo_CoTri_Start_dat: TDateTimeField;
    LastTBCounsellingvstPropo_CoTri_Stopped_dat: TDateTimeField;
    LastTBCounsellingvstPropo_Fluconazole_Start_dat: TDateTimeField;
    LastTBCounsellingvstPropo_Fluconazole_Stopped_dat: TDateTimeField;
    LastTBCounsellingvstPropo_INH_Start_dat: TDateTimeField;
    LastTBCounsellingvstPropo_INH_Stopped_dat: TDateTimeField;
    LastTBCounsellingvstRegimenChange_From_str: TWideStringField;
    LastTBCounsellingvstRegimenChange_To_str: TWideStringField;
    LastTBCounsellingvstRegimenChange_Reason_str: TWideStringField;
    LastTBCounsellingvstVisitDate_dat: TDateTimeField;
    LastTBCounsellingvstNextVisit_dat: TDateTimeField;
    LastTBCounsellingvstNextVisitType_str: TWideStringField;
    LastTBCounsellingvstScheduledVisit_dat: TDateTimeField;
    LastTBCounsellingvstScheduledTypeVisit_str: TWideStringField;
    LastTBCounsellingvstRegimenStart_str: TWideStringField;
    LastTBCounsellingvstLostToFollowUpDate_dat: TDateTimeField;
    LastTBCounsellingvstTreatmentStopped_date_dat: TDateTimeField;
    LastTBCounsellingvstTreatmentStoppedBy_str: TWideStringField;
    LastTBCounsellingvstRegimenStartDate_dat: TDateTimeField;
    LastTBCounsellingvstPartumProphylaxis_str: TWideStringField;
    LastTBCounsellinguser_id: TGuidField;
    LastTBCounsellingcompleted_bol: TBooleanField;
    LastTBCounsellingCaptured_dat: TDateTimeField;
    LastTBCounsellingnotes_mem: TMemoField;
    LastTBCounsellingvisitType_str: TWideStringField;
    LastTBCounsellingTBVisit_dat: TDateTimeField;
    LastTBCounsellingTBVisitType_str: TWideStringField;
    LastTBCounsellingTBSite_str: TWideStringField;
    LastTBCounsellingTBExtraPulmonarySite_str: TWideStringField;
    LastTBCounsellingTBSputumSmear_str: TWideStringField;
    LastTBCounsellingTBDiagnosis_dat: TDateTimeField;
    LastTBCounsellingTBDiagnosedMethod_str: TWideStringField;
    LastTBCounsellingTBDiagnosedMethodNotes_str: TWideStringField;
    LastTBCounsellingTBExpectedCompletion_dat: TDateTimeField;
    LastTBCounsellingTBCategory_str: TWideStringField;
    LastTBCounsellingIPT_bol: TBooleanField;
    LastTBCounsellingIPTStart_dat: TDateTimeField;
    LastTBCounsellingIPTStop_dat: TDateTimeField;
    LastTBCounsellingTBStatus_str: TWideStringField;
    LastTBCounsellingTBOutcome_str: TWideStringField;
    LastTBCounsellingTBOutcome_dat: TDateTimeField;
    LastTBCounsellingvstPropo_TBTreatment_Start_dat: TDateTimeField;
    LastTBCounsellingvstPropo_TBTreatment_Stopped_dat: TDateTimeField;
    LastTBCounsellingTBReasonStoppingTBTreatment_str: TWideStringField;
    LastTBCounsellingTBRegimen_str: TWideStringField;
    LastTBCounsellingTBRegimenChangeTo_str: TWideStringField;
    LastTBCounsellingTBRegimenChangeReason_str: TWideStringField;
    LastTBCounsellingTBScreened_bol: TBooleanField;
    LastTBCounsellingTBScreenResult_str: TWideStringField;
    LastTBCounsellingTBScheduled_dat: TDateTimeField;
    LastTBCounsellingTBScheduledVisitType_str: TWideStringField;
    LastTBCounsellingTBNextVisit_dat: TDateTimeField;
    LastTBCounsellingTBNextVisitType_str: TWideStringField;
    LastTBCounsellingTBReTreatmentType_str: TWideStringField;
    LastTBCounsellingTBDuration_int: TIntegerField;
    LastTBCounsellingTBContinuationPhase_dat: TDateTimeField;
    LastTBCounsellingvstTicketNumber_int: TIntegerField;
    LastTBCounsellingvstOnBehalf_bol: TBooleanField;
    LastTBCounsellingvstOnBehalfID_str: TWideStringField;
    LastTBCounsellingadmitted_bol: TBooleanField;
    LastTBCounsellingdepartmentWard_ID: TGuidField;
    LastTBCounsellingdepartmentWardBed_ID: TGuidField;
    LastTBCounsellingdischarge_dat: TDateTimeField;
    LastTBCounsellingICD10_str: TStringField;
    LastTBCounsellingpersonTransferredInDate_dat: TDateTimeField;
    LastTBCounsellingpersonTransferredInFrom_str: TWideStringField;
    LastTBCounsellingpersonTransferredOutDate_dat: TDateTimeField;
    LastTBCounsellingpersonTransferredOutTo_str: TWideStringField;
    LastTBVisit: TADOQuery;
    LastTBVisitVisit_ID: TGuidField;
    LastTBVisitpatient_ID: TGuidField;
    LastTBVisitvstPropo_INH_Start_dat: TDateTimeField;
    LastTBVisitvstPropo_INH_Stopped_dat: TDateTimeField;
    LastTBVisitTBVisit_dat: TDateTimeField;
    LastTBVisitTBVisitType_str: TWideStringField;
    LastTBVisitTBSite_str: TWideStringField;
    LastTBVisitTBExtraPulmonarySite_str: TWideStringField;
    LastTBVisitTBSputumSmear_str: TWideStringField;
    LastTBVisitTBDiagnosis_dat: TDateTimeField;
    LastTBVisitTBDiagnosedMethod_str: TWideStringField;
    LastTBVisitTBDiagnosedMethodNotes_str: TWideStringField;
    LastTBVisitTBExpectedCompletion_dat: TDateTimeField;
    LastTBVisitTBCategory_str: TWideStringField;
    LastTBVisitIPT_bol: TBooleanField;
    LastTBVisitIPTStart_dat: TDateTimeField;
    LastTBVisitIPTStop_dat: TDateTimeField;
    LastTBVisitTBStatus_str: TWideStringField;
    LastTBVisitTBOutcome_str: TWideStringField;
    LastTBVisitTBOutcome_dat: TDateTimeField;
    LastTBVisitvstPropo_TBTreatment_Start_dat: TDateTimeField;
    LastTBVisitvstPropo_TBTreatment_Stopped_dat: TDateTimeField;
    LastTBVisitTBReasonStoppingTBTreatment_str: TWideStringField;
    LastTBVisitTBRegimen_str: TWideStringField;
    LastTBVisitTBRegimenChangeTo_str: TWideStringField;
    LastTBVisitTBRegimenChangeReason_str: TWideStringField;
    LastTBVisitTBScreened_bol: TBooleanField;
    LastTBVisitTBScreenResult_str: TWideStringField;
    LastTBVisitTBScheduled_dat: TDateTimeField;
    LastTBVisitTBScheduledVisitType_str: TWideStringField;
    LastTBVisitTBNextVisit_dat: TDateTimeField;
    LastTBVisitTBNextVisitType_str: TWideStringField;
    LastTBVisitTBReTreatmentType_str: TWideStringField;
    LastTBVisitTBDuration_int: TIntegerField;
    LastTBVisitTBContinuationPhase_dat: TDateTimeField;
    LastTBVisitvstPartumProphylaxis_str: TWideStringField;
    dsTBProtocols: TDataSource;
    tblTBProtocols: TADOQuery;
    WideStringField75: TWideStringField;
    WideStringField76: TWideStringField;
    qryMostRecentStatuspersonTransferredInDate_dat: TDateTimeField;
    qryMostRecentStatuspersonTransferredInFrom_str: TWideStringField;
    qryMostRecentStatuspersonTransferredOutDate_dat: TDateTimeField;
    qryMostRecentStatuspersonTransferredOutTo_str: TWideStringField;
    tblActiveStatusLogstatushistory_id: TAutoIncField;
    tblActiveStatusLogperson_id: TGuidField;
    tblActiveStatusLogclinic_str: TWideStringField;
    tblActiveStatusLogclass_str: TWideStringField;
    tblActiveStatusLogactive_bol: TBooleanField;
    tblActiveStatusLogtemporary_bol: TBooleanField;
    tblActiveStatusLoguserid: TGuidField;
    tblActiveStatusLogusername_str: TWideStringField;
    tblActiveStatusLogchangeDate_dat: TDateTimeField;
    qryPatientHandOvershandover_id: TAutoIncField;
    qryPatientHandOvershandOverTime_date: TDateTimeField;
    qryPatientHandOverspatient_id: TGuidField;
    qryPatientHandOversmachineName_str: TWideStringField;
    qryPatientHandOvershandOverToType_str: TWideStringField;
    qryPatientHandOvershandedOverToName_str: TWideStringField;
    qryPatientHandOvershandedOverToUser_ID: TGuidField;
    qryPatientHandOversuser_id: TGuidField;
    qryPatientHandOvershandOverByType_str: TWideStringField;
    qryPatientHandOvershandOverNotes_str: TMemoField;
    qryTodaysPatientHandovershandedOverToName_str: TWideStringField;
    qryTodaysPatientHandovershandedOverToUser_ID: TGuidField;
    qryTodaysPatientHandoverspersonDescription_str: TWideStringField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel42: TppLabel;
    qryPatientWeightpersonRespiratoryRate_str: TStringField;
    qryPatientWeightpersonWeightforHeight_str: TWideStringField;
    TblPatientNationality_str: TWideStringField;
    dstblNationality: TDataSource;
    tblNationality: TADOQuery;
    tblNationalityNationality_ID: TAutoIncField;
    tblNationalityNationality_str: TWideStringField;
    qryVisitNotesHistory: TADOQuery;
    dsVisitNotesHistory: TDataSource;
    qryPatientHandOverNotes: TADOQuery;
    AutoIncField1: TAutoIncField;
    DateTimeField96: TDateTimeField;
    GuidField16: TGuidField;
    WideStringField68: TWideStringField;
    WideStringField77: TWideStringField;
    WideStringField79: TWideStringField;
    GuidField17: TGuidField;
    GuidField18: TGuidField;
    WideStringField80: TWideStringField;
    MemoField6: TMemoField;
    dsPatientHandOverNotes: TDataSource;
    qryPatientHandOverNotespersonDescription_str: TWideStringField;
    qryPatientHandOverNotespersonRefNoCurrent_str: TWideStringField;
    qryPatientHandOverNotespersonPAS_str: TWideStringField;
    qryPatientHandOverNotesClassification_str: TWideStringField;
    ppDBPipelineHandOverNotes: TppDBPipeline;
    ppHandOverNotesHistory: TppReport;
    ppParameterList5: TppParameterList;
    ppHeaderBand5: TppHeaderBand;
    ppDetailBand6: TppDetailBand;
    ppFooterBand5: TppFooterBand;
    ppDBText32: TppDBText;
    ppLine18: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppDBText33: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppLabel51: TppLabel;
    ppLine19: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    qryNumberOfVisitsforDate: TADOQuery;
    qryNumberOfVisitsforDateNumberOfPatients: TIntegerField;
    TblClinicalVisitvstNutritionalStatus_str: TWideStringField;
    tlkFoodSources: TADOQuery;
    dsFoodSources: TDataSource;
    tblPRescrioptions: TADOQuery;
    dsPrescriptions: TDataSource;
    qryIsWeightInForToday: TADOQuery;
    dsBookings: TDataSource;
    qryBookings: TADOStoredProc;
    qryBookingspersonPAS_str: TWideStringField;
    qryBookingspersonRefNoCurrent_str: TWideStringField;
    qryBookingspersonLastname_str: TWideStringField;
    qryBookingspersonFirstname_str: TWideStringField;
    qryBookingspersonDOB_dat: TDateTimeField;
    qryBookingspersonActive_bol: TBooleanField;
    qryBookingspersonIDNumber_str: TWideStringField;
    qryBookingsVisit_ID: TGuidField;
    qryBookingskept_bol: TIntegerField;
    qryBookingsvstNextVisit_dat: TDateTimeField;
    qryBookingsvstNextVisitType_str: TWideStringField;
    TblClinicalVisitfamilyPlanning_str: TWideStringField;
    tblPatientClassClassification_ID: TAutoIncField;
    tblPatientClassCode_Str: TWideStringField;
    tblPatientClassDescription_str: TWideStringField;
    ppDesigner1: TppDesigner;
    atnEditPatientSummaryReport: TAction;
    procedure TblLaboratoryResultstestCode_strChange(Sender: TField);
    procedure TblPatientNewRecord(DataSet: TDataSet);
    procedure TblPatientAfterScroll(DataSet: TDataSet);
    procedure TblPatientBeforePost(DataSet: TDataSet);
    procedure TblPatientAfterPost(DataSet: TDataSet);
    procedure TblPatientpersonDateJoined_datChange(Sender: TField);
    procedure WeightCalcs;
    procedure PatientRefresh;
    procedure StartLookUpTables;
    procedure OpenTables;
    procedure CloseTables;
    procedure CloseLookUpTables;
    procedure SavePatientTables;
    procedure AddRxAudit(vType : integer);
    procedure TblClinicalVisitNewRecord(DataSet: TDataSet);
    procedure TblClinicalVisitAfterPost(DataSet: TDataSet);
    procedure TblClinicalVisitBeforePost(DataSet: TDataSet);
    procedure qryPatientWeightNewRecord(DataSet: TDataSet);
    procedure qryPatientWeightpersonWeight_intChange(Sender: TField);
    procedure qryPatientWeightpersonHeight_IntChange(Sender: TField);
    procedure atnPrintPatientCardExecute(Sender: TObject);

    procedure AddTodaysVisit;
    procedure AddPatientWeight;
    procedure qryPatientWeightAfterPost(DataSet: TDataSet);

   function DisplayName_Long(prmFirstName, prmLastName,
    prmKnownName : string): string;
    procedure qryPatientHandOversNewRecord(DataSet: TDataSet);
    procedure qryPatientHandOversBeforePost(DataSet: TDataSet);
    procedure AddPatientHandOver(HandOvertype : string; UserName : string; UserID: string);

    procedure SetPatientOffsite;
    procedure SetPatientOnSite;
    procedure RefreshRecentStatus;
    function IsNewVisitFirstToday : Boolean;
    function IsNewWeightInFirstToday : Boolean;
    procedure qryVisitOIsNewRecord(DataSet: TDataSet);
    procedure TblClinicalVisitBeforeEdit(DataSet: TDataSet);


    function IsChild : Boolean;
    function IsOIExistForTodayVisit(vstID : string; oidscrip: string)  : Boolean;
    function CanPersonBePregnant: Boolean;
    procedure qryVisitOIsBeforePost(DataSet: TDataSet);
    function CanAddSupportTables: Boolean;

    function PatientsOnSite : Boolean;
    procedure BringListOffSite;
    procedure DeSelectAll;
    procedure CancelBringOffToAll;


    procedure LogPatientStatusChange(vActive : Boolean; vTemporary : Boolean; vClinic: string; vClass: string);
    function IsOnSite : Boolean;
    function IsDead: Boolean;
    function IsLostToFollow : Boolean;
    function IsTreatmentStopped: Boolean;
    function IsPatientFemale: Boolean;
    function IsPAtientPreART: Boolean;

    procedure PrintPatientSummary(vReport: TppReport);
    procedure atnPrintPatientSummaryExecute(Sender: TObject);

    function IsTBPatient: Boolean;
    function IsPatientOnIPT: Boolean;
    procedure TblLaboratoryResultsBeforeEdit(DataSet: TDataSet);
    procedure TblLaboratoryResultsAfterPost(DataSet: TDataSet);
    procedure atnPrintPatientBarcodeExecute(Sender: TObject);
    procedure TblClinicalVisitvisitType_strChange(Sender: TField);
    procedure TblClinicalVisitvstVisitDate_datChange(Sender: TField);
    procedure PrintTodaysPatientHandovers;

    function LastNewRegimen: string;
    function LastFeedingType: string;

    procedure ShowAllTodaysVisitors;
    procedure qryVisitNutritionNewRecord(DataSet: TDataSet);
    procedure TblClinicalVisitvstScheduledTypeVisit_strChange(
      Sender: TField);
    procedure TblClinicalVisitTBScheduledVisitType_strChange(
      Sender: TField);

    procedure UpdateTBDetails;
    procedure TblClinicalVisitTBStatus_strChange(Sender: TField);
    procedure PrintHandOverNotesHistory;

    function NumberofVisitorsOnFutureDate(NextVistDate:TDate): integer;
    function PatientsListActive: Boolean;
    procedure qryPatientWeightBeforePost(DataSet: TDataSet);
    procedure qryPatientWeightAfterScroll(DataSet: TDataSet);
    procedure TblLaboratoryResultsBeforePost(DataSet: TDataSet);
    procedure TblPatientClassification_IDChange(Sender: TField);
    procedure CustomiseReport(myReport: TppReport);
    procedure atnEditPatientSummaryReportExecute(Sender: TObject);


  private
    { Private declarations }
    procedure LoadMostRecentStatus(CurrentStatus : TADOQuery);
    procedure LoadMostRecentTBStatus(CurrentStatus : TADOQuery);
  public
    { Public declarations }
  P_ID, VST_ID, LAB_ID, WEIGHT_ID  : String;
  //current search criteria
  vCurrentART, vCurrentSerial: string;
  Inserting, Inserting_Visit, Regimen_changed : Boolean;
  procedure SearchPatientAllFields(surname, firstnames, artnumber, serial : string; viewall: boolean);
  procedure SearchPatientByROLE;
  procedure SearchPatientHandedToME;
  procedure OpenEmptyPatients;
  procedure LoadBookings(dteNextVisitDay: TDateTime; FilterRange: integer);
  end;

var
  PatientDm: TPatientDm;


implementation

uses MainUDm, MainUFrm, ClinicVisitUFrm, WeightPatientUfrm,
  handOverNotesUFrm, HandOverPeopleUFrm;

{$R *.dfm}
function TPatientDm.DisplayName_Long(prmFirstName, prmLastName,
    prmKnownName : string): string;
begin
 {
  prmLastName   := TStringUtil.AllCaps(prmLastName);
  prmFirstName  := TStringUtil.CamelCase(prmFirstName);
  prmKnownName  := TStringUtil.CamelCase(prmKnownName);
 }
  if Trim(prmKnownName) <> '' then
    Result := prmLastName + ', ' + prmKnownName + ' (' + prmFirstName + ')'
    else
    Result := prmLastName + ', ' + prmFirstName;

end;

class function GetNextRXNumber(qryNumbering: TDataset): string;

const
  _MAXATTEMPTS = 5000;
  _NUMWIDTH    = 4;
  _ADJUSTDATE  = True;
  _REC_NUM_PRESCRIPTION = 4;

var
  _attempts: Integer;
  _curYear, _curMonth, _curDay : Word;
  _prevYear, _prevMonth, _prevDay : Word;
  _currentTimeStamp, _prevTimeStamp: TDateTime;
  _prevRecNum,i : Integer;
  _number, _prf, _yr, _mn, _typ, _dvd : string;
begin
  Result    := '';
  with qryNumbering do
    begin
    Active := False;
    Active := True;                                                             // do this to prevent can't locate record error

    if active then
//      if Locate( 'Record_TypeID', VarArrayOf([_REC_NUM_PRESCRIPTION]), []) then
      if Locate( 'Record_TypeID;SystemStore_ID', VarArrayOf([_REC_NUM_PRESCRIPTION, Null]), []) then
        begin
        _attempts := 0;

        //ShowMessage('Here');

        while _attempts <= _MAXATTEMPTS do
          try
          Inc(_attempts);
          // If another user has the table in edit mode, an error occurs here.
          Edit;
          // If we reach the Break statement, we are successful. Break out of loop.
          Break;
          except
            on EDataBaseError do Continue;
          end;

        if State = dsEdit then
          begin
          _currentTimeStamp := Now;
          _prevTimeStamp := FieldByName('Record_DateSet').AsDateTime;
          if _currentTimeStamp > _prevTimeStamp then
            begin
            DecodeDate(_currentTimeStamp, _curYear, _curMonth, _curDay);
            DecodeDate(_prevTimeStamp, _prevYear, _prevMonth, _prevDay);
            if _curMonth <> _prevMonth then
              begin
              FieldByName('Record_Month').AsInteger     := _curMonth;
              FieldByName('Record_Number').AsInteger    := 1;
              end;
            if _curYear <> _prevYear then
              FieldByName('Record_Year').AsInteger      := _curYear;
            end;

          _prevRecNum  := FieldByName('Record_Number').AsInteger;
          FieldByName('Record_Number').AsInteger := _prevRecNum + 1;
          FieldByName('Record_DateSet').AsDateTime  := _currentTimeStamp;

          _yr     := Copy(FieldByName('Record_Year').AsString, 3 , 2);
          _mn    := FieldByName('Record_Month').AsString;
          _prf    := FieldByName('Record_StorePre').AsString;
          _typ     := FieldByName('Record_Type').AsString;
          _dvd    := FieldByName('Record_Divider').AsString;
          Post;  // Close the rec so somone else can access

          _number := IntToStr(_prevRecNum);

          for i:= Length(_number) to _NUMWIDTH-1 do _number := '0' + _number;

          if _ADJUSTDATE then if Length(_mn) = 1 then _mn := '0' + _mn;

          if _typ = '' then
            Result := _prf + '/' + _yr + _dvd + _mn + _dvd + _number
            else
            Result := _prf + _dvd + _typ + '/' + _yr + _dvd + _mn + _dvd + _number;

          end; (* if State = dsEdit then *)
      end;
    end;
end;

function TPatientDm.PatientsListActive: Boolean;
begin
 with TblPatient do
  begin
  if Active then
   if recordCount > 0 then
    Result := True
   else
    Result := False;
  end; 
end;

procedure TPatientDm.AddRxAudit(vType : integer);
var
 stype : String;
begin
//

 if vType > 0 then
  stype := 'ADDING'
 else
  stype := 'EDITING';

 with tblRxAudit do
  begin
  Open;
  Append;
  FieldByName('prescriptionAudit_ID').Value     := CreateClassID;
  FieldByName('prescription_ID').Value          := VST_ID;
  FieldByName('action_str').Value               := stype +' a visit';
  FieldByName('actionDetail_Str').asstring      := stype+' a visit for '+ TblPatientpersonRefNoCurrent_str.AsString +
   ' : '+ TblPatientpersonLastName_Str.AsString+', '+TblPatientpersonFirstName_Str.AsString;
  FieldByName('loggedUser_ID').Value            := Mainfrm.FUserId;
  FieldByName('loggedUserDesription_str').AsString := Mainfrm.FUser;

  Post;
  Close;
  end;

end;


procedure TPatientDm.CloseTables;
begin

 MainDm.TblSystem.Active         := False;
 TblPatient.Active               := False;
 TblClinicalVisit.Active         := False;
 TblLaboratoryResults.Active     := False;
 qryPatientWeight.Active         := False;
 qryMostRecentStatus.Active      := False;
 qryMostRecentOIs.Active         := False;

 qryFirstStatus.Active           := False;
 qryVisitOIs.Active              := False;
 qryVisitNotesHistory.Active     := False;

 qryVisitNutrition.Active        := False;
 tblPRescrioptions.Active        := False;

 LastDrugPickVisit.Active        := False;
 LastLabVisit.Active             := False;
 LastClinicalReview.Active       := False;
 qryBookings.Active              := False;

 CloseLookUpTables;

end;

procedure TPatientDm.OpenTables;
begin
//Start of Module. Open all patient tables
 MainDm.TblSystem.Active         := True;
 //TblPatient.Active               := True;
 TblClinicalVisit.Active         := True;
 TblLaboratoryResults.Active     := True;
 qryPatientWeight.Active         := True;
 qryMostRecentStatus.Active      := True;
 qryMostRecentOIs.Active         := True;
 qryFirstStatus.Active           := True;
 qryVisitOIs.Active              := True;
 qryVisitNutrition.Active        := True;
 tblPRescrioptions.Active        := True;       

 //Visit Notes History
 qryVisitNotesHistory.Active     := True;  

 LastDrugPickVisit.Active        := True;
 LastLabVisit.Active             := True;
 LastClinicalReview.Active       := True;
 LastTBPickVisit.Active          := True;
 LastTBLabVisit.Active           := True;
 LastTBCounselling.Active        := True;
 LastTBCLinicalReview.Active     := True;

//Looku Tables...
 StartLookUpTables;

 Inserting := False;      //Used for Insert patient status
 Inserting_Visit := False;//Used for Insert patient visit status
end;

procedure TPatientDm.StartLookUpTables;
begin
 tblClinics.Active      := True;
 tblReasons.Active      := True;
 tblOIs.Active          := True;
 tblLabTests.Active     := True;
 tblProtocols.Active    := True;
 qryCD4.Active          := True;
 qryCD4Perc.Active      := True;
 qryPCR.Active          := True;
 qryVL.Active           := True;
 qryP24.Active          := True;
 tblPatientClass.Active := True;
 qryReligion.Active     := True;
 tblTBProtocols.Active  := True;
 tblNationality.Active  := True;
 tlkFoodSources.Active  := True;


 qryHandOverPeople.Parameters.ParamByName('currentuser_id').Value := MainFrm.FUserId;
 qryHandOverPeople.Active := True;

end;

procedure TPatientDm.CloseLookUpTables;
begin
 tblClinics.Active      := False;
 tblReasons.Active      := False;
 tblOIs.Active          := False;
 tblLabTests.Active     := False;
 tblProtocols.Active    := False;
 qryCD4.Active          := False;
 qryCD4Perc.Active      := False;
 qryPCR.Active          := False;
 qryVL.Active           := False;
 qryP24.Active          := False;
 tblPatientClass.Active := False;
 qryReligion.Active     := False;
 qryVisitNutrition.Active  := False;
 tblTBProtocols.Active  := False;
 tblNationality.Active  := False;
 tlkFoodSources.Active  := False;

 qryHandOverPeople.Active := False;
end;

procedure TPatientDm.SavePatientTables;
begin
//
 if TblPatient.State in [dsEdit, dsInsert] then
  TblPatient.Post;
 if TblClinicalVisit.State in [dsEdit, dsInsert] then
  TblClinicalVisit.Post;
 if TblLaboratoryResults.State in [dsEdit, dsInsert] then
  TblLaboratoryResults.Post;
 if qryPatientWeight.State in [dsEdit, dsInsert] then
  qryPatientWeight.Post;

end;

procedure TPatientDm.TblLaboratoryResultstestCode_strChange(
  Sender: TField);
begin
 TblLabTests.Locate('testCode_str', TblLaboratoryResultstestCode_str.Value,[]);
 TblLaboratoryResultstestName_str.Value := tblLabTests.FieldByName('testName_str').AsString;
end;

procedure TPatientDm.TblPatientNewRecord(DataSet: TDataSet);
begin
 Inserting := True;
//Mark as Inserting new patient for checking later.
 TblPatientperson_ID.Value              := CreateClassID;
 TblPatientpersonActive_Bol.AsBoolean   := True;
 TblPatientpersonpregnant_bol.AsBoolean :=False;
 TblPatientvstTempPatient_bol.AsBoolean := False;
 P_ID                                   := TblPatientperson_ID.Value;
end;

procedure TPatientDm.WeightCalcs;
 var
  weight, height, bmi, bsa : double;
begin
 weight := qryPatientWeightpersonWeight_int.Value;
 height := qryPatientWeightpersonHeight_Int.Value;
 //BMI
 bmi := weight / Sqr(height/100); //convert meters into centimeters
 bmi := SimpleRoundTo(bmi, -3);
 qryPatientWeightpersonBMI_dbl.Value := bmi;
 //BSA
 bsa := Power(weight,0.425)*Power(height,0.725)*0.007184;
 bsa := SimpleRoundTo(bsa, -3);
 qryPatientWeightpersonBSA_dbl.Value := bsa;
end;

procedure TPatientDm.TblPatientAfterScroll(DataSet: TDataSet);
begin
 if not Inserting then
  P_ID := TblPatientperson_ID.Value;

 if MainFrm.Active then
  begin
  MainFrm.CheckARTStartDate;
  MainFrm.SetAtnHandOvers;
  MainFrm.MarkRequiredFields;
//  MainFrm.tbsTB.TabVisible := IsTBPatient;
  end;
end;

procedure TPatientDm.TblPatientBeforePost(DataSet: TDataSet);
var
 ipn, messErr,  Cohort : string;
 vActive, vtemp : boolean;
 vClinic, vClass: string;
 vIDNumber : string;
begin

 //create Cohort from Date Enrolled
 DateTimeToString(Cohort, 'yyyy/mm',TblPatientpersonDateJoined_dat.AsDateTime);

with TblPatient do
 begin
 vActive := FieldByName('personActive_bol').asBoolean;
 vtemp   := FieldByName('vstTempPatient_bol').asBoolean;
 vClinic := FieldByName('personInstitution_str').AsString;
 vClass  := FieldByName('Classification_str').asString;
 vIDNumber := FieldByName('personIDNumber_Str').asString;


 FieldByName('vstCohort_str').AsString          := Cohort;
 FieldByName('personDeceased_bol').AsBoolean    := ((FieldByName('personDateDeceased_dat').AsDateTime > (Date()-365*20)) AND (not(VarIsNull(FieldByName('personDateDeceased_dat').AsDateTime))));
 FieldByName('personTransferredOut_bol').AsBoolean := ((FieldByName('personTransferredOutDate_dat').AsDateTime > (Date()-365*20)) AND (not(VarIsNull(FieldByName('personTransferredOutDate_dat').AsDateTime))));
 FieldByName('personTransferredIn_bol').AsBoolean := ((FieldByName('personTransferredInDate_dat').AsDateTime > (Date()-365*20)) AND (not(VarIsNull(FieldByName('personTransferredInDate_dat').AsDateTime))));
 FieldByName('personDefaulted_bol').AsBoolean   := ((FieldByName('personDefaulted_dat').AsDateTime > (Date()-365*20)) AND (not(VarIsNull(FieldByName('personDefaulted_dat').AsDateTime))));
 //SM 31/10/2007
 FieldByName('sysLastEdited_dat').AsDateTime    := Now;
 FieldByName('sysLastEditedBy_ID').AsString     := MainFrm.FUserId;
 FieldByName('sysLastEditedBy_str').AsString    := MainFrm.FUser;
 //Update person description
 FieldByName('personDescription_str').AsString  := DisplayName_Long(FieldByName('personFirstName_str').AsString, FieldByName('personLastName_str').AsString, FieldByName('personKnownName_Str').AsString);
 FieldByName('Classification_str').AsString     := tblPatientClass.FieldByName('Description_str').AsString;

 //Check ART Number. If empty then alert user
 if Length(FieldByName('personRefNoCurrent_str').AsString) < 4 then
  begin
  MEssageDlg('Please enter a valid ART Number', mtWarning, [mbOK], 0);
  Abort;
  end;

 if (Length(FieldByName('personIDNumber_Str').AsString) < 13) and (Length(FieldByName('personIDNumber_Str').AsString) > 0) then
  begin
  MEssageDlg('Please enter a valid ID number (13 digits)', mtWarning, [mbOK], 0);
  Abort;
  end;           

 vCurrentART    := FieldByName('personRefNoCurrent_str').AsString;
 vCurrentSerial := FieldByName('personPAS_str').AsString;

 //Check Date of Enrollment. If empty then alert user
 if FieldByName('personDateJoined_dat').AsDateTime < (Date -360*20) then
  begin
  MEssageDlg('Please enter a valid enrollment date for the patient before you save ', mtWarning, [mbOK], 0);
  Abort;
  end;

 //Check Date of birth for person
 if (FieldByName('personDOB_Dat').AsDateTime < (Date -360*100)) then
  begin
  MEssageDlg('Please enter a valid date of birth before you save', mtWarning, [mbOK], 0);
  Abort;
  end;


 if IsDead then
  begin
  FieldByName('personActive_bol').AsBoolean     := False;
  FieldByName('vstTempPatient_bol').AsBoolean   := False;
  end;

 //Check Status on ACTIVE
 if FieldByName('personActive_bol').OldValue <> FieldByName('personActive_bol').NewValue then
  begin
 //Check Active against Deceased. IF deceased True then patient cannot be active = True. Give warning
  if IsDead then
   if FieldByName('personActive_bol').AsBoolean = True then
    if MessageDlg('This person is deceased and therefore should be in-active. Do you want to continue?', mtConfirmation, [mbYes, mbCancel], 0) = mrCancel then
     begin FieldByName('personActive_bol').AsBoolean := False; Abort;  end;
  //Check Active against Lost To Follow. IF Lost to Follow = True then patient cannot be active = True. Give warning
  if IsLostToFollow then
   if FieldByName('personActive_bol').AsBoolean = True then
    if MessageDlg('This person was last Lost to follow and therefore should be in-active. Do you want to continue?', mtConfirmation, [mbYes, mbCancel], 0) = mrCancel then
     begin FieldByName('personActive_bol').AsBoolean := False; Abort;  end;
  //Check Active against Treatment Stopped. IF Treatment Stopped = True then patient cannot be active = True. Give warning
  if IsTreatmentStopped then
   if FieldByName('personActive_bol').AsBoolean = True then
    if MessageDlg('This person was last Stopped treatment and therefore should be in-active. Do you want to continue?', mtConfirmation, [mbYes, mbCancel], 0) = mrCancel then
     begin FieldByName('personActive_bol').AsBoolean := False; Abort;  end;
  LogPatientStatusChange(vActive, vtemp, vClinic, vClass);
  end;
 if FieldByName('vstTempPatient_bol').OldValue <> FieldByName('vstTempPatient_bol').NewValue then
  LogPatientStatusChange(vActive, vtemp, vClinic, vClass);
 if FieldByName('Classification_ID').OldValue <> FieldByName('Classification_ID').NewValue then
  LogPatientStatusChange(vActive, vtemp, vClinic, vClass);
 if FieldByName('personInstitution_str').OldValue <> FieldByName('personInstitution_str').NewValue then
  LogPatientStatusChange(vActive, vtemp, vClinic, vClass);
 if IsPAtientPreART then
  FieldByName('ARTStart_dat').AsVariant := Null;
 end;


if Inserting then     //if inserting new patient record
 begin
 //update tblcontact
 tblContact.Active := True;
 tblContact.Append;
 tblContactlinking_ID.Value := P_ID;
 tblContactcontactType_Str.Value := 'Physical';
 tblContactcontactMode_str.Value := 'Address';
 tblContactcontactDetail_Str.Value := TblPatientpersonAddressCurrent_str.Value;
 tblContactcontactDisplay_Str.Value := TblPatientpersonFirstName_Str.Value+', '+ TblPatientpersonLastName_Str.Value;
 tblContact.Post;

 tblContact.Append;
 tblContactlinking_ID.Value := P_ID;
 tblContactcontactType_Str.Value := 'Home';
 tblContactcontactMode_str.Value := 'Phone';
 tblContactcontactDetail_Str.Value := TblPatientpersonTelNoCurrent_str.Value;
 tblContactcontactDisplay_Str.Value := TblPatientpersonFirstName_Str.Value+', '+ TblPatientpersonLastName_Str.Value;
 tblContact.Post;
 //LOG STATUS HISTORY FOR NEW PATIENT
 LogPatientStatusChange(vActive, vtemp, vClinic, vClass);
 end
 else       //if not inserting new record then; find and update tblcontact
  begin
  tblContact.Open;
  if tblContact.Locate('linking_id;contactType_Str;contactMode_str', VarArrayOf([P_ID,'Physical','Address']), []) then
   begin
   tblContact.Edit;
   tblContactlinking_ID.Value := P_ID;
   tblContactcontactDetail_Str.Value := TblPatientpersonAddressCurrent_str.Value;
   tblContactcontactDisplay_Str.Value := TblPatientpersonFirstName_Str.Value+', '+ TblPatientpersonLastName_Str.Value;
   tblContact.Post;
   end
  else
   begin
   if TblPatientpersonAddressCurrent_str.Value <> '' then begin
   tblContact.Append;
   tblContactlinking_ID.Value := P_ID;
   tblContactcontactType_Str.Value := 'Physical';
   tblContactcontactMode_str.Value := 'Address';
   tblContactcontactDetail_Str.Value := TblPatientpersonAddressCurrent_str.Value;
   tblContactcontactDisplay_Str.Value := TblPatientpersonFirstName_Str.Value+', '+ TblPatientpersonLastName_Str.Value;
   tblContact.Post; end;
   end;
   if tblContact.Locate('linking_id;contactType_Str;contactMode_str', VarArrayOf([P_ID, 'Home', 'Phone']), []) then
   begin
   tblContact.Edit;
   tblContactlinking_ID.Value := P_ID;
   tblContactcontactDetail_Str.Value := TblPatientpersonTelNoCurrent_str.Value;
   tblContactcontactDisplay_Str.Value := TblPatientpersonFirstName_Str.Value+', '+ TblPatientpersonLastName_Str.Value;
   tblContact.Post;
   end
   else
   begin
   if TblPatientpersonTelNoCurrent_str.Value <> '' then
   begin
   tblContact.Append;
   tblContactlinking_ID.Value := P_ID;
   tblContactcontactType_Str.Value := 'Home';
   tblContactcontactMode_str.Value := 'Phone';
   tblContactcontactDetail_Str.Value := TblPatientpersonTelNoCurrent_str.Value;
   tblContactcontactDisplay_Str.Value := TblPatientpersonFirstName_Str.Value+', '+ TblPatientpersonLastName_Str.Value;
   tblContact.Post; end;
   end;
  end;
 tblContact.Close;
end;

procedure TPatientDm.TblPatientAfterPost(DataSet: TDataSet);
begin
if Inserting then     //if new patient record then insert into tblposition...
 begin                                     {
 TblPatient.Active := False;
 TblPatient.Active := True;
 TblPatient.Locate('person_ID', P_ID, []);}

 //Call serach here
 SearchPatientAllFields('', '', vCurrentART, vCurrentSerial, False);

 end;
Inserting := False;
end;

procedure TPatientDm.TblPatientpersonDateJoined_datChange(Sender: TField);
var
 Cohort : String;
begin
 //create Cohort from Date Enrolled
 DateTimeToString(Cohort, 'yyyy/mm',TblPatientpersonDateJoined_dat.AsDateTime);
 TblPatientvstCohort_str.AsString := Cohort;
end;

procedure TPatientDm.PatientRefresh;
begin
// P_ID := TblPatientperson_ID.Value;            
 TblPatient.Active := False;
 TblClinicalVisit.Active := False;
 TblLaboratoryResults.Active := False;
 qryPatientWeight.Active := False;
 tblPRescrioptions.Active := False;

 TblPatient.Active := True;
 {TblPatient.Locate('person_ID', P_ID, []);   }

 TblClinicalVisit.Active := True;
 TblLaboratoryResults.Active := True;
 qryPatientWeight.Active := True;
 tblPRescrioptions.Active := True;
end;

procedure TPatientDm.TblClinicalVisitNewRecord(DataSet: TDataSet);
begin

TblClinicalVisitpatient_ID.Value := TblPatientperson_ID.Value;

VST_ID := CreateClassID;
TblClinicalVisitVisit_ID.Value := VST_ID;
Inserting_Visit := True;

TblClinicalVisitpersonpregnant_bol.AsBoolean            := False;
TblClinicalVisitvstTreamentPrescribed_bol.AsBoolean     := False;

TblClinicalVisitIPT_bol.AsBoolean                       := False;
TblClinicalVisitvstPartumProphylaxis_str.AsString       := 'NONE';
TblClinicalVisitvstOnBehalf_bol.AsBoolean               := False;

//takes the last visit
//TblClinicalVisitvstRegimenChange_From_str.AsString:=qryMostRecentStatus.FieldByName('vstRegimenChange_To_str').AsString;
TblClinicalVisitvstRegimenChange_From_str.AsString := LastNewRegimen;
TblClinicalVisitvstFeedingType_str.AsString     := LastFeedingType;

if TblPatientvstRegimenStartDate_dat.AsDateTime > (Date()-365*20) then
 TblClinicalVisitvstRegimenStartDate_dat.AsDateTime := TblPatientvstRegimenStartDate_dat.AsDateTime;
TblClinicalVisitvstRegimenStart_str.AsString := TblPatientvstRegimenStart_str.AsString;


TblClinicalVisituser_id.AsString := MainFrm.FUserId;

Regimen_changed := False;
end;

procedure TPatientDm.TblClinicalVisitAfterPost(DataSet: TDataSet);
begin
try
if TblPatient.Locate('person_ID', TblClinicalVisitpatient_ID.Value, []) then
begin
//also check regimen change... after posting ... need to save in interruptions table

TblClinicalVisit.Locate('Visit_ID', VST_ID, []);

if True then
 begin
 if Inserting_Visit then
  begin
  tblInterruptions.Open;
  tblInterruptions.Append;
  tblInterruptionsinteruptions_id.Value  := CreateClassID;
  tblInterruptionsperson_id.Value        := TblPatientperson_ID.Value;
  tblInterruptionstreatment_str.Value    := TblClinicalVisitvstRegimenChange_From_str.Value;
  tblInterruptionsReasonStopped_str.Value := TblClinicalVisitvstRegimenChange_Reason_str.Value;
  tblInterruptionsDateStarted_dat.Value  := TblPatientpersonDateJoined_dat.Value;
  tblInterruptionsDateStopped_dat.Value  := TblClinicalVisitvstVisitDate_dat.Value;//Not sure about this????
  tblInterruptionsRegimentStopped.Value  := TblClinicalVisitvstRegimenChange_From_str.Value;
  tblInterruptionspersonRefNum_str.Value := TblPatientpersonRefNoCurrent_str.Value;
  tblInterruptions.Post;

  Inserting_Visit := False;
  end;

 end;

if not (TblPatient.State in [dsInsert, dsEdit]) then
 TblPatient.Edit;
                              
IF ((TblClinicalVisitvstRegimenChange_From_str.Value= '') AND (TblClinicalVisitvstRegimenChange_To_str.Value= ''))
    THEN
    begin
    TblPatientvstRegimenChange_From_str.AsString:=TblClinicalVisitvstRegimenStart_str.Value;
    TblPatientvstRegimenChange_To_str.AsString:=TblClinicalVisitvstRegimenChange_To_str.Value;
 //   TblClinicalVisitvstRegimenChange_From_str.AsString:=TblClinicalVisitvstRegimenStart_str.Value;
  //  TblClinicalVisitvstRegimenChange_To_str.AsString:=TblClinicalVisitvstRegimenChange_To_str.Value;
    end;


IF ((TblClinicalVisitvstRegimenChange_From_str.Value <> '') AND (TblClinicalVisitvstRegimenChange_To_str.Value= ''))
    THEN
    begin
    TblPatientvstRegimenChange_From_str.AsString:=TblClinicalVisitvstRegimenChange_From_str.Value;
    TblPatientvstRegimenChange_To_str.AsString:=TblClinicalVisitvstRegimenChange_To_str.Value;
 //   TblClinicalVisitvstRegimenChange_From_str.AsString:=TblClinicalVisitvstRegimenChange_From_str.Value;
 //   TblClinicalVisitvstRegimenChange_To_str.AsString:=TblClinicalVisitvstRegimenChange_To_str.Value;
    end;

IF ((TblClinicalVisitvstRegimenChange_From_str.Value <> '') AND (TblClinicalVisitvstRegimenChange_To_str.Value <> ''))
    THEN
    begin
    TblPatientvstRegimenChange_From_str.AsString:=TblClinicalVisitvstRegimenChange_To_str.Value;
    TblPatientvstRegimenChange_To_str.AsString:='';
 //   TblClinicalVisitvstRegimenChange_From_str.AsString:=TblClinicalVisitvstRegimenChange_From_str.Value;
 //   TblClinicalVisitvstRegimenChange_To_str.AsString:=TblClinicalVisitvstRegimenChange_To_str.Value;
    end;

//Update Transfered IN and OUT

if TblClinicalVisitpersonTransferredInDate_dat.AsDateTime > (Date()-365*20)  then
 TblPatientpersonTransferredInDate_dat.AsDateTime := TblClinicalVisitpersonTransferredInDate_dat.AsDateTime;

if TblClinicalVisitpersonTransferredInFrom_str.AsString <> '' then
 TblPatientpersonTransferredInFrom_str.AsString   := TblClinicalVisitpersonTransferredInFrom_str.AsString;

if TblClinicalVisitpersonTransferredOutDate_dat.AsDateTime > (Date()-365*20)  then
 TblPatientpersonTransferredOutDate_dat.AsDateTime := TblClinicalVisitpersonTransferredOutDate_dat.AsDateTime;

if TblClinicalVisitpersonTransferredOutTo_str.AsString <> '' then
 TblPatientpersonTransferredOutTo_str.AsString := TblClinicalVisitpersonTransferredOutTo_str.AsString;

TblPatient.Post;
Inserting_Visit := False;

 RefreshRecentStatus;
end
except
end;
end;

procedure TPatientDm.TblClinicalVisitBeforePost(DataSet: TDataSet);

begin

with TblClinicalVisit do
  begin
  if (FieldByName('vstVisitDate_dat').AsDateTime < Date()-365*20) then
   begin
   MessageDlg('Please enter a valid actual visit date', mtWarning, [mbOK], 0);
   Abort;
   end;

  // only if role is data administrator - 20090807 - Steven Chambers
  if MainFrm.FViewType = 'Administrator' then
  begin
        if (FieldByName('TBStatus_str').asString = '') then
           begin
           MessageDlg('Please enter the TB status field', mtWarning, [mbOK], 0);
           Abort;
           end;
   end;
       
  //check if Change of regimen reason missing before posting.  07 June 2009
  if ((FieldByName('vstRegimenChange_To_str').asString <> '') AND (FieldByName('vstRegimenChange_Reason_str').AsString = '')) then
   begin
   MessageDlg('Reason for Regimen change missing', mtWarning, [mbOK], 0);
   Abort;
   end;

  if ((FieldByName('TBStatus_str').asString = 'Active') AND (FieldByName('vstPropo_TBTreatment_Start_dat').AsDateTime < Date() - 360*20)) then
   begin
   MessageDlg('Please enter the TB start date', mtWarning, [mbOK], 0);
   Abort;
   end;

  //Check if date is duplicated

  if IsNewVisitFirstToday then
    Abort
  else
   TblClinicalVisituser_id.AsString := MainFrm.FUserId;

  if not FieldByName('personpregnant_bol').AsBoolean then
   FieldByName('vstPartumProphylaxis_str').AsString := 'NONE';

  end;
end;

procedure TPatientDm.qryPatientWeightNewRecord(DataSet: TDataSet);
begin
//create new ID
 WEIGHT_ID := CreateClassID;
 qryPatientWeightpersonWeight_ID.Value          := WEIGHT_ID;
 qryPatientWeightperson_ID.Value                := TblPatientperson_ID.Value;
 qryPatientWeightpersonWeightDateRecorded_Dat.AsDateTime := Date;  
end;

procedure TPatientDm.qryPatientWeightpersonWeight_intChange(
  Sender: TField);
begin
if (not VarIsNull(qryPatientWeightpersonWeight_int.Value)) and (not VarIsNull(qryPatientWeightpersonHeight_Int.Value))  and (qryPatientWeightpersonHeight_Int.Value > 0) then
 begin
 WeightCalcs
 end;
end;

procedure TPatientDm.qryPatientWeightpersonHeight_IntChange(
  Sender: TField);
begin
if (not VarIsNull(qryPatientWeightpersonWeight_int.Value)) and (not VarIsNull(qryPatientWeightpersonHeight_Int.Value))  and (qryPatientWeightpersonHeight_Int.Value > 0) then
 begin
 WeightCalcs;
 end;
end;

procedure TPatientDm.atnPrintPatientCardExecute(Sender: TObject);
begin

  if TblClinicalVisit.Locate('vstVisitDate_dat', Date(), [loPartialKey]) then
   begin
   if TblPatient.Active then
    ppPatientCard.Print;
   end
  else
   MessageDlg('A visit has not been added for this patient today.', mtWarning, [mbOK],0);

end;

procedure TPatientDm.AddTodaysVisit;
var
 tnumber : integer;
begin
// SET PATIENT TO BE ON SITE
// SHOW THE VISIT FORM
if TblPatient.Active then
 with TblPatient do
  begin
  if RecordCount > 0 then
   begin
   tnumber := MainDm.GetTicketNumber(MainDm.tblTicketNumber);
   if not (State  in [dsEdit, dsInsert]) then
    Edit;
   //This sets the On site property to true
   FieldByName('vstIsOnSite_bol').AsBoolean      := True;
   FieldByName('vstOnSiteDate_dat').AsDateTime   := Date();
   Post;
   end;

  if not TblClinicalVisit.Active then TblClinicalVisit.Open;
  TblClinicalVisit.Insert;
  TblClinicalVisit.FieldByName('vstVisitDate_dat').AsDateTime := Date();
  //update ticket number here
  TblClinicalVisit.FieldByName('vstTicketNumber_int').AsInteger := tnumber;
  ClinicVisitFrm.ShowModal;
  end;
 
end;

procedure TPatientDm.qryPatientWeightAfterPost(DataSet: TDataSet);
begin

  if WeightPatientFrm.Active then
   WeightPatientFrm.Close;

end;

procedure TPatientDm.AddPatientWeight;
begin
 //
 with qryPatientWeight do
  begin
  if not (State in [dsEdit, dsInsert]) then
   Append;
  end;

  WeightPatientFrm.ShowModal;

end;

procedure TPatientDm.qryPatientHandOversNewRecord(DataSet: TDataSet);
begin
 with DataSet do
  begin
  //
  FieldByName('user_id').AsString       :=  MainFrm.FUserId;
  FieldByName('patient_Id').asString    := TblPatientperson_ID.AsString;
  FieldByName('machineName_str').AsString := MainDm.GetComputerNetName;
  end;
end;

procedure TPatientDm.qryPatientHandOversBeforePost(DataSet: TDataSet);
begin
 with DataSet do
  begin
  FieldByName('handOverTime_date').AsDateTime       := Now();
  end;
end;

procedure TPatientDm.AddPatientHandOver(HandOvertype : string; UserName : string; UserID: string);
begin
 //THIS PROCEDURE ADDS A HAND OVER RECORD AND TYPE
 if TblPatient.FieldByName('vstIsOnSite_bol').AsBoolean then
  with qryPatientHandOvers do
   begin
   Open;
   Append;
   FieldByName('handOverToType_str').AsString := HandOvertype;      //The person handed over to
   FieldByName('handOverByType_str').AsString := MainFrm.FViewType; //This is the person doing the hand over

   FieldByName('handedOverToName_str').AsString := UserName; //This is the person doing the hand over
   FieldByName('handedOverToUser_id').AsString := UserID; //This is the person doing the hand over


   handOverNotesFrm.ShowModal;
   if HandOverPeopleFrm.Active then
    HandOverPeopleFrm.Close;
   Post;
   Close;
   end
 else
  MessageDlg('Patient needs to be onsite before it can be handed over to '+HandOvertype, mtError, [mbOK], 0);

end;

//CUSTOM SELECT FUNCTION
//THIS DRIVES THE WHOLE PROGRAM
procedure TPatientDm.SearchPatientAllFields(surname, firstnames, artnumber, serial : string; viewall : boolean);
var
 sql : string;
begin

 sql := '';

 if (MainFrm.FViewType = 'Nurse') or (MainFrm.FViewType = 'Doctor') then
 begin
 sql := sql + 'SELECT tblPerson.*,  dbo.view_abstract_V01_Person_.AgeInYears_Int AS AgeYears, dbo.view_abstract_V01_Person_.AgeInMonthsModYears_Int AS AgeMonths, dbo.view_abstract_V01_Person_.BirthDate_Dat AS Expr3, ';
 sql := sql + 'view_abstract_V01_Person_.Display_Long AS Expr4, dbo.view_abstract_V01_Person_.Display_Short AS Expr5 ';
 sql := sql + 'FROM view_abstract_V01_Person_ INNER JOIN dbo.tblPerson ON dbo.view_abstract_V01_Person_.person_ID = dbo.tblPerson.person_ID ';
 if viewall then
  sql := sql + 'INNER JOIN tblVisitHandOvers ON tblVisitHandOvers.patient_id = tblPerson.person_ID ';

 sql := sql + 'WHERE (tblPerson.personPatient_bol = 1) ';

 if viewall then
  begin
  sql := sql + 'AND (tblPerson.vstIsOnSite_bol = 1) ';
  sql := sql + 'AND tblVisitHandOvers.handOverToType_str ='''+ MainFrm.FViewType+'''';
  sql := sql + 'AND tblVisitHandOvers.handOverByType_str <>'''+ MainFrm.FViewType+'''';

  end;

 if not viewall then
  begin
  sql := sql + ' AND tblPerson.personLastName_str like ''' + surname + '%'' AND tblPerson.personFirstName_str like ''' + firstnames + '%''';
  if serial <> '' then
   sql := sql + ' AND tblPerson.personPAS_str like ''' + serial+ '%''';
  if artnumber <> '' then
   sql := sql + ' AND tblPerson.personRefNoCurrent_str like ''' + artnumber + '%''';
  end;
 end
 else
  begin
 sql := sql + 'SELECT tblPerson.*,  dbo.view_abstract_V01_Person_.AgeInYears_Int AS AgeYears, dbo.view_abstract_V01_Person_.AgeInMonthsModYears_Int AS AgeMonths, dbo.view_abstract_V01_Person_.BirthDate_Dat AS Expr3, ';
 sql := sql + 'view_abstract_V01_Person_.Display_Long AS Expr4, dbo.view_abstract_V01_Person_.Display_Short AS Expr5 ';
 sql := sql + 'FROM view_abstract_V01_Person_ INNER JOIN dbo.tblPerson ON dbo.view_abstract_V01_Person_.person_ID = dbo.tblPerson.person_ID ';
 sql := sql + 'WHERE (tblPerson.personPatient_bol = 1) ';

 if not viewall then
  begin
  sql := sql + ' AND tblPerson.personLastName_str like ''' + surname + '%'' AND tblPerson.personFirstName_str like ''' + firstnames + '%''';
  if serial <> '' then
   sql := sql + ' AND tblPerson.personPAS_str like ''' + serial+ '%''';
  if artnumber <> '' then
   sql := sql + ' AND tblPerson.personRefNoCurrent_str like ''' + artnumber + '%''';
  end;
  end;

 TblPatient.Close;
// TblPatientNumber.Close;
 TblPatient.SQL.Clear;
 TblPatient.SQL.Add(sql);
 TblPatient.Open;

end;


procedure TPatientDm.SearchPatientByROLE;
var
 sql : string;
begin

 sql := '';
 sql := sql + 'SELECT tblPerson.*,  dbo.view_abstract_V01_Person_.AgeInYears_Int AS AgeYears, dbo.view_abstract_V01_Person_.AgeInMonthsModYears_Int AS AgeMonths, dbo.view_abstract_V01_Person_.BirthDate_Dat AS Expr3, ';
 sql := sql + 'view_abstract_V01_Person_.Display_Long AS Expr4, dbo.view_abstract_V01_Person_.Display_Short AS Expr5 ';
 sql := sql + 'FROM view_abstract_V01_Person_ INNER JOIN dbo.tblPerson ON dbo.view_abstract_V01_Person_.person_ID = dbo.tblPerson.person_ID ';
//JOIN TO HANDOVER TABLE
// sql := sql + 'INNER JOIN tblVisitHandOvers ON tblVisitHandOvers.patient_id = tblPerson.person_ID ';
//PICK UP PATIENT TYPE PERSON
 sql := sql + 'WHERE (tblPerson.personPatient_bol = 1) ';
//PERSON MUST BE ON SITE
 sql := sql + 'AND (tblPerson.vstIsOnSite_bol = 1) ';
 sql := sql + 'AND tblPerson.person_ID IN ';
 sql := sql + '(SELECT DISTINCT patient_id FROM tblVisitHandOvers WHERE ';
 sql := sql + ' tblVisitHandOvers.handOverToType_str ='''+ MainFrm.FViewType+'''';
 sql := sql + ')';

 TblPatient.Close;
// TblPatientNumber.Close;
 TblPatient.SQL.Clear;
 TblPatient.SQL.Add(sql);
 TblPatient.Open;   
end;


procedure TPatientDm.SearchPatientHandedToME;
var
 sql : string;
begin

 sql := '';

 sql := sql + 'SELECT tblPerson.*,  dbo.view_abstract_V01_Person_.AgeInYears_Int AS AgeYears, dbo.view_abstract_V01_Person_.AgeInMonthsModYears_Int AS AgeMonths, dbo.view_abstract_V01_Person_.BirthDate_Dat AS Expr3, ';
 sql := sql + 'view_abstract_V01_Person_.Display_Long AS Expr4, dbo.view_abstract_V01_Person_.Display_Short AS Expr5 ';
 sql := sql + 'FROM view_abstract_V01_Person_ INNER JOIN dbo.tblPerson ON dbo.view_abstract_V01_Person_.person_ID = dbo.tblPerson.person_ID ';
//JOIN TO HANDOVER TABLE
// sql := sql + 'INNER JOIN tblVisitHandOvers ON tblVisitHandOvers.patient_id = tblPerson.person_ID ';
//PICK UP PATIENT TYPE PERSON
 sql := sql + 'WHERE (tblPerson.personPatient_bol = 1) ';
//PERSON MUST BE ON SITE
 sql := sql + 'AND (tblPerson.vstIsOnSite_bol = 1) ';
 sql := sql + 'AND tblPerson.person_ID IN ';
 sql := sql + '(SELECT DISTINCT patient_id FROM tblVisitHandOvers WHERE ';
 sql := sql + 'tblVisitHandOvers.handedOverToUser_ID ='''+ MainFrm.FUserId+'''';
 sql := sql + ')';

//handedOverToUser_ID

 TblPatient.Close;
// TblPatientNumber.Close;
 TblPatient.SQL.Clear;
 TblPatient.SQL.Add(sql);
 TblPatient.Open;

end;


procedure TPatientDm.SetPatientOnSite;
begin
  //
 with TblPatient do
  begin
  if not (State  in [dsEdit, dsInsert]) then
   Edit;
  //This sets the On site property to True
  FieldByName('vstIsOnSite_bol').AsBoolean      := True;
  FieldByName('vstOnSiteDate_dat').AsDateTime   := Date();
  Post;
  end;

end;

procedure TPatientDm.SetPatientOffsite;
begin
  //
 with TblPatient do
  begin
  if not (State  in [dsEdit, dsInsert]) then
   Edit;
  //This sets the On site property to False
  FieldByName('vstIsOnSite_bol').AsBoolean      := False;
  FieldByName('vstOnSiteDate_dat').AsVariant    := Null;
  Post;
  end;

end;

procedure TPatientDm.RefreshRecentStatus;
begin
//Refresh patient recent status
//This query only bring back one record, the last record by Date
 with qryMostRecentStatus do
  begin
  Close;
  Open;
  end;

 with qryMostRecentOIs do
  begin
  Close;
  Open;
  end;

 with LastDrugPickVisit do
  begin
  Close;
  Open;
  end;

 with LastLabVisit do
  begin
  Close;
  Open;
  end;

 with tblPRescrioptions do
  begin
  Close;
  Open;
  end;

end;


function TPatientDm.IsNewVisitFirstToday : Boolean;
begin
//RETURN TRUE IF THERE IS A VISIT RECORDED TODAY FOR CURRENT PATIENT
//RETURN FALSE IF OTHERWISE
 with qryIsNewVisitForToday do
  begin
  Close;
  Parameters.ParamByName('visit_ID').Value      := VST_ID;
  Parameters.ParamByName('visitDate').Value     := TblClinicalVisit.FieldByName('vstVisitDate_dat').Value;
  Open;
  if FieldByName('Result').AsInteger > 0 then
   begin
   Result := True;
   Showmessage('Cannot have more then one visit a day for the same patient');
   end
  else
   Result := False;
  end;
end;


procedure TPatientDm.qryVisitOIsNewRecord(DataSet: TDataSet);
begin

// if TblClinicalVisit.State in [dsEdit, dsInsert] then
//   TblClinicalVisit.Post;
 with DataSet do
  begin
  FieldByName('Visit_ID').Value := VST_ID;
  end;

end;

procedure TPatientDm.TblClinicalVisitBeforeEdit(DataSet: TDataSet);
begin
  VST_ID := TblClinicalVisitVisit_ID.Value;
end;

function TPatientDm.IsChild: Boolean;
begin

 with TblPatient do
  begin
  if Active then
   if (not VarIsNull(FieldByName('AgeYears').AsInteger)) then
    begin
    if (FieldByName('AgeYears').AsInteger < 14) then
     Result := True
    else
     Result := False;
    end
   else
    Result := False;
  end;

end;

function TPatientDm.CanPersonBePregnant: Boolean;
begin
if TblPatient.Active then
 with TblPatient do
  begin
  if (not VarIsNull(FieldByName('AgeYears').AsInteger)) then
   begin
   if (FieldByName('AgeYears').AsInteger > 9) AND (FieldByName('personGender_str').AsString = 'F') then
    Result := True
   else
    Result := False;
   end;
  end;

end;

function TPatientDm.IsOIExistForTodayVisit(vstID : string; oidscrip: string) : Boolean;
begin
//RETURN TRUE IF THERE
//RETURN FALSE IF OTHERWISE
 with qryIsOIExistsToday do
  begin
  Close;
  Parameters.ParamByName('Visit_ID').Value      := vstID;
  Parameters.ParamByName('oiDescription').Value := oidscrip;
  Open;
  if FieldByName('Result').AsInteger > 0 then
   Result := True
  else
   Result := False;
  end;
end;

procedure TPatientDm.qryVisitOIsBeforePost(DataSet: TDataSet);
begin

 with qryVisitOIs do
  begin
  if IsOIExistForTodayVisit(VST_ID, fieldByName('OI_Description').AsString) then
   begin
   MessageDlg('You cannot have duplicate OIs for the same visit.', mtWarning, [mbOk], 1);
   Abort;
   end;
  end;

end;

function TPatientDm.CanAddSupportTables : Boolean;
begin
 with TblClinicalVisit do
  begin
  if State in [dsEdit, dsInsert] then
   Result := False
  else
   Result := True;
  end;
end;

function TPatientDm.PatientsOnSite: boolean;
begin
 //
 with qryOnSitePatients do
  begin
  Close;
  Open;
  if RecordCount > 0 then
   Result := True
  else
   Result := False; 
  end;

end;

procedure TPatientDm.BringListOffSite;
begin
  with qryOnSitePatients do
  begin
  if Active then
   begin
   First;
   While not Eof do
    begin
    if not FieldByName('vstISOnSite_bol').AsBoolean then
     begin
     Edit;
     FieldByName('vstOnSiteDate_dat').AsVariant    := Null;
     Post;
     end;
    Next;
    end;
   MessageDlg('Patient on site list updated.', mtInformation, [mbOk], 0);
   end;
  end;

end;

procedure TPatientDm.DeSelectAll;
begin
  with qryOnSitePatients do
  begin
  if Active then
   begin
   First;
   While not Eof do
    begin
    Edit;
    FieldByName('vstISOnSite_bol').AsBoolean := False;
    Post;
    Next;
    end;
   end;
  end;
end;

procedure TPatientDm.CancelBringOffToAll;
begin
  with qryOnSitePatients do
  begin
  if Active then
   begin
   First;
   While not Eof do
    begin
    Edit;
    FieldByName('vstISOnSite_bol').AsBoolean := True;
    Post;
    Next;
    end;
   end;
  end;
end;

procedure TPatientDm.LogPatientStatusChange(vActive : Boolean; vTemporary : Boolean; vClinic: string; vClass: string);
begin

 with tblActiveStatusLog do
  begin
  Open;
  Append;
  FieldByName('person_ID').AsString             := TblPatientperson_ID.Value;
  FieldByName('userid').Value                   := MainFrm.FUserId;
  FieldByName('username_str').AsString          := MainFrm.FUser;
  FieldByName('changeDate_dat').AsDateTime      := Now();
  FieldByName('active_bol').AsBoolean           := vActive;
  FieldByName('temporary_bol').AsBoolean        := vTemporary;
  FieldByName('class_str').AsString             := vClass;
  FieldByName('clinic_str').AsString            := vClinic;
  Post;
  Close;
  end;

end;

function TPatientDm.IsOnsite : Boolean;
begin

 with TblPatient do
  begin
  if Active then
   Result := FieldByName('vstIsOnSite_bol').AsBoolean
  else
   Result := False; 
  end;
end;

function TPatientDm.IsDead;
begin

 with TblPatient do
  begin
  if FieldByName('personDateDeceased_dat').AsDateTime > (Date - 360*20) then
   Result := True
  else
   Result := False;
  end;

end;

function TPatientDm.IsLostToFollow: Boolean;
begin
//
 with qryMostRecentStatus do
  begin
  if FieldByName('vstLostToFollowUpDate_dat').AsDateTime > (Date - 360*20) then
   Result := True
  else
   Result := False;
  end;
end;

function TPatientDm.IsTreatmentStopped: Boolean;
begin
//
 with qryMostRecentStatus do
  begin
  if FieldByName('vstTreatmentStopped_date_dat').AsDateTime > (Date - 360*20) then
   Result := True
  else
   Result := False;
  end;
end;

procedure TPatientDm.PrintPatientSummary(vReport: TppReport);
begin

 if TblPatient.Active then
  if TblPatient.RecordCount > 0 then
   with qryPatientSummary, vReport do
    begin
    Open;
    Print;
    Close;
    end;

end;
 
procedure TPatientDm.atnPrintPatientSummaryExecute(Sender: TObject);
begin
 PrintPatientSummary(ppPatientSummary);
end;

function TPatientDm.IsTBPatient: Boolean;
begin

 with TblPatient do
  begin
  if VARISNULL(FieldByName('Classification_ID').Value) or (FieldByName('Classification_ID').AsInteger < 1) then
    Result := False
  else
   begin

 with tblPatientClass do
  begin
  if Pos('TB', fieldByName('Description_str').AsString) > 0 then
   Result := True
  else
   Result := False;
  end;
 end;
 end;


end;


procedure TPatientDm.TblLaboratoryResultsBeforeEdit(DataSet: TDataSet);
begin
  LAB_ID := TblLaboratoryResultslbResultID.Value;
end;

procedure TPatientDm.TblLaboratoryResultsAfterPost(DataSet: TDataSet);
begin
 TblLaboratoryResults.Locate('lbResultID', LAB_ID, []);
end;

procedure TPatientDm.atnPrintPatientBarcodeExecute(Sender: TObject);
begin
 PrintPatientSummary(ppPatientBarCode);
end;

procedure TPatientDm.LoadMostRecentStatus(CurrentStatus : TADOQuery);
begin

//CurrentStatus := Create(nil);
CurrentStatus.Open;
if currentStatus.RecordCount > 0then
begin                     
TblClinicalVisitvstFunctionalStatus_str.AsString := currentStatus.FieldByName('vstFunctionalStatus_str').AsString;
TblClinicalVisitvstClinicalStage_str.AsString    := currentStatus.FieldByName('vstClinicalStage_str').AsString;
TblClinicalVisitvisitType_str.AsString           := currentStatus.FieldByName('vstNextVisitType_str').AsString;

if currentStatus.FieldByName('vstNextVisit_dat').AsDateTime > (Date()-365*20) then
 begin
 TblClinicalVisitvstScheduledVisit_dat.AsDateTime       := (currentStatus.FieldByName('vstNextVisit_dat').AsDateTime);
 TblClinicalVisitvstVisitDate_dat.AsDateTime            := (currentStatus.FieldByName('vstNextVisit_dat').AsDateTime);
 end;
//Removed for new table structure
//TblClinicalVisitprescriptionNumber_Str.Value := GetNextRXNumber(qryNumbering);

//Get current status
if (currentStatus.FieldByName('personpregnant_bol').AsBoolean = True) then
 TblClinicalVisitpersonpregnant_bol.AsBoolean := currentStatus.FieldByName('personpregnant_bol').AsBoolean;

TblClinicalVisitvstTreamentPrescribed_bol.AsString := currentStatus.FieldByName('vstTreamentPrescribed_bol').AsString;

if currentStatus.FieldByName('vstPregnancyDeliveryDate_dat').AsDateTime > (Date()-365*20) then
TblClinicalVisitvstPregnancyDeliveryDate_dat.AsDateTime := currentStatus.FieldByName('vstPregnancyDeliveryDate_dat').AsDateTime;
if currentStatus.FieldByName('vstPregnancyExpectedDelivery_dat').AsDateTime > (Date()-365*20) then
TblClinicalVisitvstPregnancyExpectedDelivery_dat.AsDateTime := currentStatus.FieldByName('vstPregnancyExpectedDelivery_dat').AsDateTime;
if currentStatus.FieldByName('vstPropo_CoTri_Start_dat').AsDateTime > (Date()-365*20) then
TblClinicalVisitvstPropo_CoTri_Start_dat.AsDateTime := currentStatus.FieldByName('vstPropo_CoTri_Start_dat').AsDateTime;
if  currentStatus.FieldByName('vstPropo_CoTri_Stopped_dat').AsDateTime > (Date()-365*20) then
TblClinicalVisitvstPropo_CoTri_Stopped_dat.AsDateTime := currentStatus.FieldByName('vstPropo_CoTri_Stopped_dat').AsDateTime;
if currentStatus.FieldByName('vstPropo_Fluconazole_Start_dat').AsDateTime > (Date()-365*20) then
TblClinicalVisitvstPropo_Fluconazole_Start_dat.AsDateTime := currentStatus.FieldByName('vstPropo_Fluconazole_Start_dat').AsDateTime;
if currentStatus.FieldByName('vstPropo_Fluconazole_Stopped_dat').AsDateTime > (Date()-365*20) then
TblClinicalVisitvstPropo_Fluconazole_Stopped_dat.AsDateTime := currentStatus.FieldByName('vstPropo_Fluconazole_Stopped_dat').AsDateTime;
if currentStatus.FieldByName('vstPropo_INH_Start_dat').AsDateTime > (Date()-365*20) then
TblClinicalVisitvstPropo_INH_Start_dat.AsDateTime := currentStatus.FieldByName('vstPropo_INH_Start_dat').AsDateTime;
if  currentStatus.FieldByName('vstPropo_INH_Stopped_dat').AsDateTime > (Date()-365*20) then
TblClinicalVisitvstPropo_INH_Stopped_dat.AsDateTime := currentStatus.FieldByName('vstPropo_INH_Stopped_dat').AsDateTime;
if currentStatus.FieldByName('vstPropo_TBTreatment_Start_dat').AsDateTime > (Date()-365*20) then
TblClinicalVisitvstPropo_TBTreatment_Start_dat.AsDateTime :=  currentStatus.FieldByName('vstPropo_TBTreatment_Start_dat').AsDateTime;
if currentStatus.FieldByName('vstPropo_TBTreatment_Stopped_dat').AsDateTime > (Date()-365*20) then
TblClinicalVisitvstPropo_TBTreatment_Stopped_dat.AsDateTime := currentStatus.FieldByName('vstPropo_TBTreatment_Stopped_dat').AsDateTime;

{
//TblClinicalVisitvstLostToFollowUpDate_dat.AsDateTime := currentStatus.FieldByName('vstLostToFollowUpDate_dat.AsDateTime;
//TblClinicalVisitvstTreatmentStopped_date_dat.AsDateTime := currentStatus.FieldByName('vstTreatmentStopped_date_dat.AsDateTime;

//TB fields
if CurrentStatus.FieldByName('TBNextVisit_dat').AsDateTime > (Date()-365*20) then
 begin
 TblClinicalVisitTBScheduled_dat.AsDateTime := CurrentStatus.FieldByName('TBNextVisit_dat').AsDateTime;
 TblClinicalVisitTBVisit_dat.AsDateTime     := CurrentStatus.FieldByName('TBNextVisit_dat').AsDateTime;
 end;

if CurrentStatus.FieldByName('TBDiagnosis_dat').AsDateTime > (Date()-365*20) then
 begin
 TblClinicalVisitTBDiagnosis_dat.AsDateTime := CurrentStatus.FieldByName('TBDiagnosis_dat').AsDateTime;
 end;

TblClinicalVisitTBScheduledVisitType_str.AsString := CurrentStatus.FieldByName('TBNextVisitType_str').AsString;
TblClinicalVisitTBVisitType_str.AsString :=  CurrentStatus.FieldByName('TBNextVisitType_str').AsString;
                                                                                                        
TblClinicalVisitTBSite_str.AsString     := CurrentStatus.FieldByName('TBSite_str').AsString;
TblClinicalVisitTBExpectedCompletion_dat.AsDateTime := CurrentStatus.FieldByName('TBExpectedCompletion_dat').AsDateTime;
TblClinicalVisitTBCategory_str.AsString := CurrentStatus.FieldByName('TBCategory_str').AsString;
TblClinicalVisitTBStatus_str.AsString   := CurrentStatus.FieldByName('TBStatus_str').AsString;
TblClinicalVisitTBOutcome_str.AsString  := CurrentStatus.FieldByName('TBOutcome_str').AsString;
TblClinicalVisitTBOutcome_dat.AsDateTime := CurrentStatus.FieldByName('TBOutcome_dat').AsDateTime;
TblClinicalVisitTBRegimen_str.AsString  := CurrentStatus.FieldByName('TBRegimen_str').AsString;
TblClinicalVisitTBScreened_bol.AsBoolean:= CurrentStatus.FieldByName('TBScreened_bol').AsBoolean;
TblClinicalVisitTBScreenResult_str.AsString := CurrentStatus.FieldByName('TBScreenResult_str').AsString;
TblClinicalVisitTBRegimenChangeTo_str.AsString := CurrentStatus.FieldByName('TBRegimenChangeTo_str').AsString;
TblClinicalVisitTBRegimenChangeReason_str.AsString := CurrentStatus.FieldByName('TBRegimenChangeReason_str').AsString;
TblClinicalVisitTBReTreatmentType_str.AsString := CurrentStatus.FieldByName('TBReTreatmentType_str').AsString;
TblClinicalVisitTBDiagnosis_dat.AsDateTime := CurrentStatus.FieldByName('TBDiagnosis_dat').AsDateTime;
}
//FEEDING
TblClinicalVisitvstFeedingType_str.AsString :=  CurrentStatus.FieldByName('vstFeedingType_str').AsString;

end;

CurrentStatus.Close;
CurrentStatus.Open;
//SM
end;

procedure TPatientDm.TblClinicalVisitvisitType_strChange(Sender: TField);
var vType : string;
begin


end;

function TPatientDm.IsPatientOnIPT: Boolean;
begin
 with TblClinicalVisit do
  begin
  if Active then
   begin
   Result := FieldByName('IPT_bol').AsBoolean;
   end
  else
   Result := False;
  end;

end;



procedure TPatientDm.TblClinicalVisitvstVisitDate_datChange(
  Sender: TField);
begin
 with TblClinicalVisit do
  begin
  if (fieldByname('TBVisit_dat').AsDateTime < Date() - 360 * 20) and (FieldByName('TBStatus_str').AsString = 'Active') then
   fieldByname('TBVisit_dat').AsDateTime := TblClinicalVisitvstVisitDate_dat.AsDateTime;

  end;
end;

function TPatientDm.IsPatientFemale: boolean;
begin
 with TblPatient do
  begin
  if FieldByName('personGender_str').AsString = 'F' then
   Result  := True
  else
   Result := False;
  end;
end;

function TPatientDm.IsPAtientPreART: Boolean;
begin
  with TblPatient do
  begin
  if Pos('PRE-ART', FieldByName('Classification_str').AsString) > 0 then
   Result  := True
  else
   Result := False;
  end;
end;

procedure TPatientDm.PrintTodaysPatientHandovers;
begin
 with qryTodaysPatientHandovers do
  begin
  Open;
  ppTodaysHandoversReport.Print;
  Close;
  end;
end;

procedure TPatientDm.ShowAllTodaysVisitors;
var
 sql : string;
begin

 sql := '';
 sql := sql + 'SELECT tblPerson.*,  dbo.view_abstract_V01_Person_.AgeInYears_Int AS AgeYears, dbo.view_abstract_V01_Person_.AgeInMonthsModYears_Int AS AgeMonths, dbo.view_abstract_V01_Person_.BirthDate_Dat AS Expr3, ';
 sql := sql + 'view_abstract_V01_Person_.Display_Long AS Expr4, dbo.view_abstract_V01_Person_.Display_Short AS Expr5 ';
 sql := sql + 'FROM view_abstract_V01_Person_ INNER JOIN dbo.tblPerson ON dbo.view_abstract_V01_Person_.person_ID = dbo.tblPerson.person_ID ';
 sql := sql + 'WHERE dbo.tblperson.person_id IN ';
 sql := sql + '(SELECT patient_id FROM TblVisit WHERE vstNextVisit_dat >= GETDATE() - 3 AND vstNextVisit_dat <= GETDATE() + 3 ';
 sql := sql + 'GROUP BY TblVisit.patient_ID)';

//sql := sql + ', tblVisit ';
// sql := sql + 'WHERE (tblPerson.personPatient_bol = 1) ';
// sql := sql + ' AND (dbo.tblVisit.patient_ID = dbo.tblperson.person_id )';

// sql := sql + ' AND (tblVisit.TBNextVisit_dat >:dteFrom)';
// sql := sql + ' AND (tblVisit.TBNextVisit_dat <:dteTo)';

 TblPatient.Close;

// TblPatientNumber.Close;
 TblPatient.SQL.Clear;
 TblPatient.SQL.Add(sql);

// TblPatient.ParamCheck := True;
// TblPatient.Parameters.ParamByName('dteFrom').Value := Date()-2;
// TblPatient.Parameters.ParamByName('dteTo').Value   := Date()+2;

 TblPatient.Open;      

end;

procedure TPatientDm.OpenEmptyPatients;
var
 sql : string;
begin

 sql := '';
 sql := sql + 'SELECT tblPerson.*,  dbo.view_abstract_V01_Person_.AgeInYears_Int AS AgeYears, dbo.view_abstract_V01_Person_.AgeInMonthsModYears_Int AS AgeMonths, dbo.view_abstract_V01_Person_.BirthDate_Dat AS Expr3, ';
 sql := sql + 'view_abstract_V01_Person_.Display_Long AS Expr4, dbo.view_abstract_V01_Person_.Display_Short AS Expr5 ';
 sql := sql + 'FROM view_abstract_V01_Person_ INNER JOIN dbo.tblPerson ON dbo.view_abstract_V01_Person_.person_ID = dbo.tblPerson.person_ID ';
 sql := sql + 'WHERE tblPerson.personPatient_bol = 3';

 TblPatient.Close;
 TblPatient.SQL.Clear;
 TblPatient.SQL.Add(sql);
 TblPatient.Open;

end;


procedure TPatientDm.qryVisitNutritionNewRecord(DataSet: TDataSet);
begin
 with DataSet do
  begin
  FieldByName('Visit_ID').Value := VST_ID;
  FieldByName('KitCompleted_bol').Value := False;
  FieldByName('CompleteDiet_bol').Value := False;
  end;
  
end;

procedure TPatientDm.TblClinicalVisitvstScheduledTypeVisit_strChange(
  Sender: TField);
var
 vType: string;
begin

if TblClinicalVisit.State in [dsInsert] then
 with TblClinicalVisit do
  begin
  vType := FieldByName('vstScheduledTypeVisit_str').AsString;
  if vType = 'Drug Pickup' then  LoadMostRecentStatus(LastDrugPickVisit)
  else if vType = 'Lab Specific' then  LoadMostRecentStatus(LastLabVisit)
  else if vType = 'Clinical Review' then LoadMostRecentStatus(LastClinicalReview)
  else if vType = 'Counselling/H.education' then LoadMostRecentStatus(LastCounselling)
  else LoadMostRecentStatus(qryMostRecentStatus);
  end;
  
end;

function TPatientDm.LastNewRegimen: string;
begin

 with qryLastNewRegimen do
  begin
  Open;
  if recordCount > 0 then
   Result := FieldByName('vstRegimenChange_To_str').AsString
  else
   Result := '';
  Close;
  end;
end;

function TPatientDm.LastFeedingType: string;
begin

 with qryLastFeedingType do
  begin
  Open;
  if RecordCount > 0 then
   Result:= FieldByname('vstFeedingType_str').AsString
  else
   Result := '';
  Close;
  end;

end;

procedure TPatientDm.TblClinicalVisitTBScheduledVisitType_strChange(
  Sender: TField);
var
 vTBType : string;
begin
// if TblClinicalVisit.State in [dsInsert] then
 with TblClinicalVisit do
  begin
  vTBType := FieldByName('TBScheduledVisitType_str').AsString;
  if vTBType = 'Drug Pickup' then  LoadMostRecentTBStatus(LastTBPickVisit)
  else if vTBType = 'Lab Specific' then  LoadMostRecentTBStatus(LastTBLabVisit)
  else if vTBType = 'Clinical Review' then LoadMostRecentTBStatus(LastTBCLinicalReview)
  else if vTBType = 'Counselling/H.education' then LoadMostRecentTBStatus(LastTBCounselling)
  else LoadMostRecentTBStatus(qryMostRecentStatus);
  end;

end;

procedure TPatientDm.LoadMostRecentTBStatus(CurrentStatus : TADOQuery);
begin
//CurrentStatus := Create(nil);
CurrentStatus.Open;
if currentStatus.RecordCount > 0then
begin

{Showmessage('works here');    }

//TB fields
if CurrentStatus.FieldByName('TBNextVisit_dat').AsDateTime > (Date()-365*20) then
 begin
 TblClinicalVisitTBScheduled_dat.AsDateTime := CurrentStatus.FieldByName('TBNextVisit_dat').AsDateTime;
 TblClinicalVisitTBVisit_dat.AsDateTime     := CurrentStatus.FieldByName('TBNextVisit_dat').AsDateTime;
 end;
//TblClinicalVisitTBScheduledVisitType_str.AsString := CurrentStatus.FieldByName('TBNextVisitType_str').AsString;
TblClinicalVisitTBVisitType_str.AsString :=  CurrentStatus.FieldByName('TBNextVisitType_str').AsString;
{

}
end;

CurrentStatus.Close;
CurrentStatus.Open;
//SM
end;

procedure TPatientDm.UpdateTBDetails;
begin
 LastTBVisit.Open;
 TblClinicalVisitTBSite_str.AsString     := LastTBVisit.FieldByName('TBSite_str').AsString;
 if LastTBVisit.FieldByName('TBExpectedCompletion_dat').AsDateTime > (Date -360*20) then
  TblClinicalVisitTBExpectedCompletion_dat.AsDateTime := LastTBVisit.FieldByName('TBExpectedCompletion_dat').AsDateTime;

 TblClinicalVisitTBCategory_str.AsString := LastTBVisit.FieldByName('TBCategory_str').AsString;
 TblClinicalVisitTBOutcome_str.AsString  := LastTBVisit.FieldByName('TBOutcome_str').AsString;
 if LastTBVisit.FieldByName('TBOutcome_dat').AsDateTime > (Date -360*20) then
  TblClinicalVisitTBOutcome_dat.AsDateTime := LastTBVisit.FieldByName('TBOutcome_dat').AsDateTime;
 TblClinicalVisitTBRegimen_str.AsString  := LastTBVisit.FieldByName('TBRegimen_str').AsString;
 TblClinicalVisitTBRegimenChangeTo_str.AsString := LastTBVisit.FieldByName('TBRegimenChangeTo_str').AsString;
 TblClinicalVisitTBRegimenChangeReason_str.AsString := LastTBVisit.FieldByName('TBRegimenChangeReason_str').AsString;
 TblClinicalVisitTBReTreatmentType_str.AsString := LastTBVisit.FieldByName('TBReTreatmentType_str').AsString;
 if LastTBVisit.FieldByName('TBDiagnosis_dat').AsDateTime > (Date -360*20) then
  TblClinicalVisitTBDiagnosis_dat.AsDateTime := LastTBVisit.FieldByName('TBDiagnosis_dat').AsDateTime;
 //Diagnose method
 TblClinicalVisitTBDiagnosedMethod_str.AsString := LastTBVisit.FieldByName('TBDiagnosedMethod_str').AsString;
 //Sputum smear
 TblClinicalVisitTBSputumSmear_str.AsString     := LastTBVisit.FieldByName('TBSputumSmear_str').AsString;
 //ExtrPul site
 TblClinicalVisitTBExtraPulmonarySite_str.AsString     := LastTBVisit.FieldByName('TBExtraPulmonarySite_str').AsString;
 if LastTBVisit.FieldByName('TBExpectedCompletion_dat').AsDateTime > (Date -360*20) then
  TblClinicalVisitTBExpectedCompletion_dat.AsDateTime   := LastTBVisit.FieldByName('TBExpectedCompletion_dat').AsDateTime;
 //continuation phase
 if LastTBVisit.FieldByName('TBContinuationPhase_dat').AsDateTime > (Date -360*20) then
  TblClinicalVisitTBContinuationPhase_dat.AsDateTime := LastTBVisit.FieldByName('TBContinuationPhase_dat').AsDateTime;

 //INH Start & Stop dates
 if LastTBVisit.FieldByName('vstPropo_INH_Start_dat').AsDateTime > (Date -360*20) then
  TblClinicalVisitvstPropo_INH_Start_dat.AsDateTime := LastTBVisit.FieldByName('vstPropo_INH_Start_dat').AsDateTime;
 if LastTBVisit.FieldByName('vstPropo_INH_Stopped_dat').AsDateTime > (Date -360*20) then
  TblClinicalVisitvstPropo_INH_Stopped_dat.AsDateTime := LastTBVisit.FieldByName('vstPropo_INH_Stopped_dat').AsDateTime;

 //IPT bol
 TblClinicalVisitIPT_bol.AsBoolean := LastTBVisit.FieldByName('IPT_bol').AsBoolean;
 //IPT Start & Stop dates
 if LastTBVisit.FieldByName('IPTStart_dat').AsDateTime > (Date -360*20) then
  TblClinicalVisitIPTStart_dat.AsDateTime := LastTBVisit.FieldByName('IPTStart_dat').AsDateTime;
 if LastTBVisit.FieldByName('IPTStop_dat').AsDateTime > (Date -360*20) then
  TblClinicalVisitIPTStop_dat.AsDateTime := LastTBVisit.FieldByName('IPTStop_dat').AsDateTime;  

 LastTBVisit.Close;

end;

procedure TPatientDm.TblClinicalVisitTBStatus_strChange(Sender: TField);
begin
with TblClinicalVisit do
 begin
 if State in [dsInsert] then
  if ((FieldByName('TBStatus_str').asString = 'Active') OR (FieldByName('TBStatus_str').asString = 'Suspect') ) then
   UpdateTBDetails;
 end;
end;

procedure TPatientDm.PrintHandOverNotesHistory;
begin

 with qryPatientHandOverNotes do
  begin
  Close;
  Parameters.ParamByName('person_ID').Value := TblPatientperson_ID.Value;
  Open;
  end;

 with ppHandOverNotesHistory do
  begin
  Print;
  end;

end;

function TPatientDm.NumberofVisitorsOnFutureDate(NextVistDate:TDate): integer;
var
 vCount: integer;
begin

 vCount := 0;
 with qryNumberOfVisitsforDate do
  begin
  Close;
  Parameters.ParamByName('DDate').Value := NextVistDate;
  Open;

  vCount := FieldByName('NumberOfPatients').AsInteger;
  Result := vCount;
  end;

end;

function TPatientDm.IsNewWeightInFirstToday : Boolean;
begin
//RETURN TRUE IF THERE IS A OBSERVATION RECORDED TODAY FOR CURRENT PATIENT
//RETURN FALSE IF OTHERWISE
 with qryIsWeightInForToday do
  begin
  Close;
  Parameters.ParamByName('personWeight_ID').Value       := WEIGHT_ID;
  Parameters.ParamByName('WeightDate').Value            := qryPatientWeight.fieldByName('personWeightDateRecorded_Dat').Value;
  Open;
  if FieldByName('Result').AsInteger > 0 then
   begin
   Result := True;
   Showmessage('Cannot have more then one obeservation record a day for the same patient');
   end
  else
   Result := False;
  end;
end;

procedure TPatientDm.qryPatientWeightBeforePost(DataSet: TDataSet);
begin
 if IsNewWeightInFirstToday then
  Abort;
end;

procedure TPatientDm.qryPatientWeightAfterScroll(DataSet: TDataSet);
begin
 WEIGHT_ID := qryPatientWeightpersonWeight_ID.Value;
end;

procedure TPatientDm.LoadBookings(dteNextVisitDay: TDateTime; FilterRange: integer);
begin
 
 with qryBookings do
  begin
  Close;
  Parameters.ParamByName('@bookingDate').Value := dteNextVisitDay;
  if FilterRange = 0 then
   Parameters.ParamByName('@filterRange').Value := 1
  else
   Parameters.ParamByName('@filterRange').Value := 3;
  Open;
  end;

end;

procedure TPatientDm.TblLaboratoryResultsBeforePost(DataSet: TDataSet);
begin
  LAB_ID  := CreateClassID;
  TblLaboratoryResultslbResultID.Value  := LAB_ID;
  TblLaboratoryResultspersonID.Value    := TblPatientperson_ID.Value;
end;

procedure TPatientDm.TblPatientClassification_IDChange(Sender: TField);
begin
 with TblPatient do
  begin
  FieldByName('Classification_str').AsString     := tblPatientClass.FieldByName('Description_str').AsString;
  end;

end;

procedure TPatientDm.CustomiseReport(myReport: TppReport);
begin

 //Open Report Designer
 with ppDesigner1 do
  begin
  Report := myReport;
  ShowModal;
  end;

end;

procedure TPatientDm.atnEditPatientSummaryReportExecute(Sender: TObject);
begin

 //Edit Summary Report
 //16 May 2013
 CustomiseReport(ppPatientSummary);
 
end;

end.



