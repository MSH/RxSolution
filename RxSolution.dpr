program RxSolution;

uses
  Windows,
  ExceptionLog,
  PrjConst,
  LocOnFly,
  Forms,
  SysUtils,
  RxSolutionUFrm in 'Code\RxCommon\Interface\RxSolutionUFrm.pas' {RxSolutionFrm},
  dmpDataObjectBaseModule in 'Code\RxCommon\Classes\dmpDataObjectBaseModule.pas',
  Class_Database_Connections in 'Code\RxCommon\Classes\Class_Database_Connections.pas',
  Class_Database_Connections_FrmConnect in 'Code\RxCommon\Classes\Class_Database_Connections_FrmConnect.pas' {frmConnections},
  Class_Registry_ReadWrite in 'Code\RxCommon\Classes\Class_Registry_ReadWrite.pas',
  Class_Security_HashCodes in 'Code\RxCommon\Classes\Class_Security_HashCodes.pas',
  Class_System_General in 'Code\RxCommon\Classes\Class_System_General.pas',
  RxSolutionSecurityEncryption in 'Code\RxCommon\Security\RxSolutionSecurityEncryption.pas',
  RxSolutionSecurityLogOnUFrm in 'Code\RxCommon\Security\RxSolutionSecurityLogOnUFrm.pas' {Security_LogOnFrm},
  RxSolutionSecurityAdministratorUFrm in 'Code\RxCommon\Security\RxSolutionSecurityAdministratorUFrm.pas' {Security_AdministratorFrm},
  RxSolutionSecurityChangePasswordUFrm in 'Code\RxCommon\Security\RxSolutionSecurityChangePasswordUFrm.pas' {Security_ChangePasswordFrm},
  RxSolutionSecurityClass in 'Code\RxCommon\Security\RxSolutionSecurityClass.pas',
  MyApplicationUtilities in 'Code\RxStore\General\MyApplicationUtilities.pas',
  MainUDM in 'Code\RxStore\General\MainUDM.pas' {MainDm: TDataModule},
  ProductVarianceUFrm in 'Code\RxStore\Product\ProductVarianceUFrm.pas' {ProductVarianceFrm},
  ProductAddUFrm in 'Code\RxStore\Product\ProductAddUFrm.pas' {ProductAddFrm},
  ProductAutolevelUDM in 'Code\RxStore\Product\ProductAutolevelUDM.pas' {ProductAutoLevelDM: TDataModule},
  ProductGeneralUFrm in 'Code\RxStore\Product\ProductGeneralUFrm.pas' {ProductGeneralFrm},
  ProductLevelUFrm in 'Code\RxStore\Product\ProductLevelUFrm.pas' {ProductLevelFrm},
  ProductUDm in 'Code\RxStore\Product\ProductUDm.pas' {ProductDm: TDataModule},
  ProductUfrm in 'Code\RxStore\Product\ProductUfrm.pas' {ProductFrm},
  DialogProgressIndicatorUFrm in 'Code\RxCommon\Dialogs\DialogProgressIndicatorUFrm.pas' {ProgressIndicatorFrm},
  DialogGridColumnSelectorUFrm in 'Code\RxCommon\Dialogs\DialogGridColumnSelectorUFrm.pas' {Dialog_GridColumnSelection},
  DemanderUFrm in 'Code\RxStore\Demander\DemanderUFrm.pas' {DemanderFrm},
  DemanderAuthorityUDM in 'Code\RxStore\Demander\DemanderAuthorityUDM.pas' {DemanderAuthorityDM: TDataModule},
  DemanderAuthorityUFrm in 'Code\RxStore\Demander\DemanderAuthorityUFrm.pas' {DemanderAuthorityFrm},
  DemanderListForSelectionUFrm in 'Code\RxStore\Demander\DemanderListForSelectionUFrm.pas' {DemanderListForSelectionFrm},
  DemanderTypeUDM in 'Code\RxStore\Demander\DemanderTypeUDM.pas' {DemanderTypeDM: TDataModule},
  DemanderTypeUFrm in 'Code\RxStore\Demander\DemanderTypeUFrm.pas' {DemanderTypeFrm},
  DemanderUDM in 'Code\RxStore\Demander\DemanderUDM.pas' {DemanderDM: TDataModule},
  SupplierUDM in 'Code\RxStore\Supplier\SupplierUDM.pas' {SupplierDM: TDataModule},
  SupplierUFrm in 'Code\RxStore\Supplier\SupplierUFrm.pas' {SupplierFrm},
  RequisitionDetailUFrm in 'Code\RxStore\Requisition\RequisitionDetailUFrm.pas' {RequisitionDetailFrm},
  RequisitionUDM in 'Code\RxStore\Requisition\RequisitionUDM.pas' {RequisitionDM: TDataModule},
  RequisitionUFrm in 'Code\RxStore\Requisition\RequisitionUFrm.pas' {RequisitionFrm},
  OrderDetailUFrm in 'Code\RxStore\Order\OrderDetailUFrm.pas' {OrderDetailFrm},
  OrderRequisitionSelectUFrm in 'Code\RxStore\Order\OrderRequisitionSelectUFrm.pas' {OrderRequisitionSelectFrm},
  OrderUDM in 'Code\RxStore\Order\OrderUDM.pas' {OrderDM: TDataModule},
  OrderUFrm in 'Code\RxStore\Order\OrderUFrm.pas' {OrderFrm},
  ReceiptUFrm in 'Code\RxStore\Receipt\ReceiptUFrm.pas' {ReceiptFrm},
  ReceiptDetailUFrm in 'Code\RxStore\Receipt\ReceiptDetailUFrm.pas' {ReceiptDetailFrm},
  ReceiptUDm in 'Code\RxStore\Receipt\ReceiptUDm.pas' {ReceiptDm: TDataModule},
  SystemUFrm in 'Code\RxStore\Settings\SystemUFrm.pas' {SystemFrm},
  BudgetUFrm in 'Code\RxStore\Budget\BudgetUFrm.pas' {BudgetFrm},
  BudgetUDM in 'Code\RxStore\Budget\BudgetUDM.pas' {BudgetDM: TDataModule},
  PrescriberListUFrm in 'Code\RxDispensing\Prescriber\PrescriberListUFrm.pas' {PrescriberListFrm},
  SystemConstants in 'Code\RxDispensing\General\SystemConstants.pas',
  DispenserListUFrm in 'Code\RxDispensing\Dispenser\DispenserListUFrm.pas' {DispenserListFrm},
  PatientManagerUFrm in 'Code\RxDispensing\Patient\PatientManagerUFrm.pas' {PatientManagerFrm},
  PrescriptionListUFrm in 'Code\RxDispensing\Prescriptions\PrescriptionListUFrm.pas' {PrescriptionListFrm},
  dmpDataObjectManager in 'Code\RxCommon\General\dmpDataObjectManager.pas',
  Generic_ in 'Code\RxCommon\General\Generic_.pas',
  BatchDispensingUFrm in 'Code\RxDispensing\Batch\BatchDispensingUFrm.pas' {BatchDispensingFrm},
  ClinicManagerUFrm in 'Code\RxDispensing\Clinic\ClinicManagerUFrm.pas' {ClinicManagerFrm},
  PharmacyManagerUFrm in 'Code\RxDispensing\Pharmacies\PharmacyManagerUFrm.pas' {PharmacyManagerFrm},
  RxSolutionAboutUFrm in 'Code\RxCommon\Dialogs\RxSolutionAboutUFrm.pas' {AboutFrm},
  SplashUFrm in 'Code\RxCommon\Interface\SplashUFrm.pas' {SplashFrm},
  SystemGeneralMethods in 'Code\RxDispensing\General\SystemGeneralMethods.pas',
  ClinicalDrugInformationUFrm in 'Code\RxDispensing\Clinical\ClinicalDrugInformationUFrm.pas' {frmClinicalDrugInformation},
  AddEditDrugInteractionUFrm in 'Code\RxDispensing\Clinical\AddEditDrugInteractionUFrm.pas' {frmAddEditDrugInteraction},
  DLLInterface in 'Code\RxCommon\Interface\DLLInterface.pas',
  ProductGenericEditFrm in 'Code\RxStore\Product\ProductGenericEditFrm.pas' {frmProductGenricAddEdit},
  ProductStrengthEditFrm in 'Code\RxStore\Product\ProductStrengthEditFrm.pas' {frmProductStrengthEdit},
  ProductAdministrationUnitEditUFrm in 'Code\RxStore\Product\ProductAdministrationUnitEditUFrm.pas',
  DemanderStockAuditFrm in 'Code\RxStore\Demander\DemanderStockAuditFrm.pas' {DemanderStockAuditForm},
  DemanderStockVarianceFrm in 'Code\RxStore\Demander\DemanderStockVarianceFrm.pas' {DemanderStockVarianceForm},
  rxDispensingPrescriptionItemClasses in 'Code\Dll_Prescription\rxDispensingPrescriptionItemClasses.pas',
  ProductBatchSelctUFrm in 'Code\RxStore\Requisition\ProductBatchSelctUFrm.pas' {ProductBatchSelectFrm},
  OrderGroup2SelectUFrm in 'Code\RxStore\Order\OrderGroup2SelectUFrm.pas' {OrderGroup2SelectFrm},
  ProductFormUnitEditFrm in 'Code\RxStore\Product\ProductFormUnitEditFrm.pas' {frmFormEditUFrm},
  ProductTradeNameEdtFrm in 'Code\RxStore\Product\ProductTradeNameEdtFrm.pas' {frmProductTradeNameAddEdit},
  ProductPackSizeRangeEdit in 'Code\RxStore\Product\ProductPackSizeRangeEdit.pas' {frmPackSizeRangeEdit},
  Prescription_TLB in 'Code\Imports\Prescription_TLB.pas',
  rxDispensing_Unt_Patient in 'Code\RxDispensing\Patient\rxDispensing_Unt_Patient.pas',
  rxDispensing_Dm_Patient in 'Code\RxDispensing\Patient\rxDispensing_Dm_Patient.pas' {dmPatient: TDataModule},
  rxDispensing_Frm_Patient in 'Code\RxDispensing\Patient\rxDispensing_Frm_Patient.pas' {frmPatientDetail_},
  Person_ in 'Code\RxCommon\General\Person_.pas',
  SystemMonthEndUFrm in 'Code\RxStore\Product\SystemMonthEndUFrm.pas' {SystemMonthEndFrm},
  ProductContractEdtFrm in 'Code\RxStore\Product\ProductContractEdtFrm.pas' {frmContractEdit},
  ProductComparisonUnitsEditFrm in 'Code\RxStore\Product\ProductComparisonUnitsEditFrm.pas' {frmComparisonUnitsEdt},
  StockTakeUDM in 'Code\RxStore\StockTake\StockTakeUDM.pas' {StockTakeDM: TDataModule},
  ReturnsUFrm in 'Code\RxStore\Return\ReturnsUFrm.pas' {ReturnsFrm},
  ReturnsDetailUFrm in 'Code\RxStore\Return\ReturnsDetailUFrm.pas' {ReturnsDetailFrm},
  Group2_SelectUFrm in 'Code\RxStore\StockTake\Group2_SelectUFrm.pas' {Group2_SelectFrm},
  Group1_SelectUFrm in 'Code\RxStore\StockTake\Group1_SelectUFrm.pas' {Group1_SelectFrm},
  BinLocationUFrm in 'Code\RxStore\StockTake\BinLocationUFrm.pas' {BinLocationSelectFrm},
  StockTakeBatchSelectUfrm in 'Code\RxStore\StockTake\StockTakeBatchSelectUfrm.pas' {StockTakeBatchSelectfrm},
  ReturnsUDm in 'Code\RxStore\Return\ReturnsUDm.pas' {ReturnsDm: TDataModule},
  StockTakeUFrm in 'Code\RxStore\StockTake\StockTakeUFrm.pas' {StockTakeFrm},
  StockTakeDetailUFrm in 'Code\RxStore\StockTake\StockTakeDetailUFrm.pas' {StockTakeDetailFrm},
  ReturnsSelectBatchUFrm in 'Code\RxStore\Return\ReturnsSelectBatchUFrm.pas' {ReturnsSelectBatchFrm},
  CreditsUDm in 'Code\RxStore\Credits\CreditsUDm.pas' {CreditsDm: TDataModule},
  CreditUFrm in 'Code\RxStore\Credits\CreditUFrm.pas' {CreditFrm},
  CreditsDetailUFrm in 'Code\RxStore\Credits\CreditsDetailUFrm.pas' {CreditsDetailFrm},
  CreditDemanderReqItemsUFrm in 'Code\RxStore\Credits\CreditDemanderReqItemsUFrm.pas' {CreditDemanderReqItemsFrm},
  ReceiptProcessBatchItemsUFrm in 'Code\RxStore\Receipt\ReceiptProcessBatchItemsUFrm.pas' {ReceiptProcessBatchItemsFrm},
  DemanderLevelUDM in 'Code\RxStore\Demander\DemanderLevelUDM.pas' {DemanderLevelDM: TDataModule},
  TabEnter in 'Code\RxCommon\General\TabEnter.pas',
  PrepackingUFrm in 'Code\RxStore\Prepacking\PrepackingUFrm.pas' {PrepackingFrm},
  PrepackingUDM in 'Code\RxStore\Prepacking\PrepackingUDM.pas' {PrepackingDM: TDataModule},
  PrepackingItemsUFrm in 'Code\RxStore\Prepacking\PrepackingItemsUFrm.pas' {PrepackingItemsFrm},
  ComplexManagerUFrm in 'Code\RxStore\Complex\ComplexManagerUFrm.pas' {ComplexManagerFrm},
  RepackBatchSelectUFrm in 'Code\RxStore\Prepacking\RepackBatchSelectUFrm.pas' {RepackBatchSelectFrm},
  CreditRequisitionsUFrm in 'Code\RxStore\Credits\CreditRequisitionsUFrm.pas' {CreditRequisitionsFrm},
  QuotationUFrm in 'Code\RxStore\Quotation\QuotationUFrm.pas' {QuotationFrm},
  QuotationUDM in 'Code\RxStore\Quotation\QuotationUDM.pas' {QuotationDM: TDataModule},
  QuotationDetailUFrm in 'Code\RxStore\Quotation\QuotationDetailUFrm.pas' {QuotationDetailFrm},
  ReturnsSelectInvoiceUFrm in 'Code\RxStore\Return\ReturnsSelectInvoiceUFrm.pas' {ReturnsSelectInvoiceFrm},
  DemanderTranfersUFrm in 'Code\RxStore\DemanderTransfers\DemanderTranfersUFrm.pas' {DemanderTranfersFrm},
  DemanderTransferUDM in 'Code\RxStore\DemanderTransfers\DemanderTransferUDM.pas' {DemanderTransferDM: TDataModule},
  DemanderTransferDetailUFrm in 'Code\RxStore\DemanderTransfers\DemanderTransferDetailUFrm.pas' {DemanderTransferDetailFrm},
  PatientRxUFrm in 'Code\RxDispensing\ADR\PatientRxUFrm.pas' {PatientRxFrm},
  ADRDetailUFRM in 'Code\RxDispensing\ADR\ADRDetailUFRM.pas' {ADRDetailForm},
  AdherencePatientRecordUFrm in 'Code\RxDispensing\PatienceAdherence\AdherencePatientRecordUFrm.pas' {AdherencePatientRecordFrm},
  DemanderStocktakingDetailUFrm in 'Code\RxStore\StocktakeDemander\DemanderStocktakingDetailUFrm.pas' {DemanderStocktakingDetailFrm},
  DemanderStocktakingUDM in 'Code\RxStore\StocktakeDemander\DemanderStocktakingUDM.pas' {DemanderStocktakingDM: TDataModule},
  DemanderStocktakingUFrm in 'Code\RxStore\StocktakeDemander\DemanderStocktakingUFrm.pas' {DemanderStocktakingFrm},
  ProductStockStatusUFrm in 'Code\RxStore\Product\ProductStockStatusUFrm.pas' {ProductStockStatusFilterFrm},
  TDelta9U in 'Code\RxCommon\Interface\TDelta9U.pas',
  TMessageResultU in 'Code\RxCommon\Interface\TMessageResultU.pas',
  TPatientU in 'Code\RxCommon\Interface\TPatientU.pas',
  TResponseU in 'Code\RxCommon\Interface\TResponseU.pas',
  Delta9API in 'Code\RxCommon\Interface\Delta9API.pas',
  ReceiptBarcodingUFrm in 'Code\RxStore\Receipt\ReceiptBarcodingUFrm.pas' {ReceiptBarcodingFrm},
  RequisitionBarCodeUFrm in 'Code\RxStore\Requisition\RequisitionBarCodeUFrm.pas' {RequisitionBarCodeFrm},
  ReturnsBarCodeUFrm in 'Code\RxStore\Return\ReturnsBarCodeUFrm.pas' {ReturnsBarCodeFrm},
  LocalSettingsUFrm in 'Code\RxStore\Settings\LocalSettingsUFrm.pas' {LocalSettingsFrm},
  ProductEditHistroyUfrm in 'Code\RxStore\Product\ProductEditHistroyUfrm.pas' {ProductEditHistroyfrm},
  ProductUpdateBarcodeUFrm in 'Code\RxCommon\General\ProductUpdateBarcodeUFrm.pas' {ProductUpdateBarcodesFrm},
  patientNotesUFrm in 'Code\RxDispensing\Patient\patientNotesUFrm.pas' {patientNotesFrm},
  frmPatientActiveReasonUFrm in 'Code\RxDispensing\Patient\frmPatientActiveReasonUFrm.pas' {frmPatientActiveReasonFrm},
  frmPatientEditHistoryU in 'Code\RxDispensing\Patient\frmPatientEditHistoryU.pas' {frmPatientEditHistory};

{$R RxSolution.klr}

//  CreditDemanderReqItemsUFrm in 'Code\RxStore\Credits\CreditDemanderReqItemsUFrm.pas' {CreditDemanderReqItemsFrm};

{ProductAdministrationUnitEditFrm} 

{$R *.res}

var
 PreviousHandle : THandle;
begin

 //******** This function checks if prevents more then one instance of Rxsolution running on one machine
 //******** SM 17 Sep 2014
 PreviousHandle := FindWindow('TRxSolutionFrm', nil);
 if PreviousHandle = 0 then
  begin
  Application.Title := 'RxSolution 2015';
   try
   LocalizerOnFly.DLLDir:= ExtractFilePath(Application.ExeName) +'DLL';
   LocalizerOnFly.InitReg('Software\Korzh\RxSolution', '');
   //LocalizerOnFly.TranslatePackages := True;
   except
   end;
  Application.Initialize;
  SplashFrm:= TSplashFrm.Create(Application);
  SplashFrm.Show;
  SplashFrm.Refresh;
  Application.CreateForm(TMainDm, MainDm);
  Application.CreateForm(TRxSolutionFrm, RxSolutionFrm);
  Application.CreateForm(TSystemMonthEndFrm, SystemMonthEndFrm);
  Application.CreateForm(TStockTakeDM, StockTakeDM);
  Application.CreateForm(TReturnsDetailFrm, ReturnsDetailFrm);
  Application.CreateForm(TGroup1_SelectFrm, Group1_SelectFrm);
  Application.CreateForm(TGroup2_SelectFrm, Group2_SelectFrm);
  Application.CreateForm(TBinLocationSelectFrm, BinLocationSelectFrm);
  Application.CreateForm(TStockTakeBatchSelectfrm, StockTakeBatchSelectfrm);
  Application.CreateForm(TStockTakeFrm, StockTakeFrm);
  Application.CreateForm(TReturnsDM, ReturnsDM);
  Application.CreateForm(TStockTakeDetailFrm, StockTakeDetailFrm);
  Application.CreateForm(TReturnsDetailFrm, ReturnsDetailFrm);
  Application.CreateForm(TReturnsSelectBatchFrm, ReturnsSelectBatchFrm);
  Application.CreateForm(TCreditsDm, CreditsDm);
  Application.CreateForm(TCreditFrm, CreditFrm);
  Application.CreateForm(TCreditsDetailFrm, CreditsDetailFrm);
  Application.CreateForm(TReceiptProcessBatchItemsFrm, ReceiptProcessBatchItemsFrm);
  Application.CreateForm(TDemanderLevelDM, DemanderLevelDM);
  Application.CreateForm(TPrepackingItemsFrm, PrepackingItemsFrm);
  Application.CreateForm(TComplexManagerFrm, ComplexManagerFrm);
  Application.CreateForm(TCreditRequisitionsFrm, CreditRequisitionsFrm);
  Application.CreateForm(TRepackBatchSelectFrm, RepackBatchSelectFrm);
  Application.CreateForm(TPrepackingDM, PrepackingDM);
  Application.CreateForm(TPrepackingFrm, PrepackingFrm);
  Application.CreateForm(TQuotationFrm, QuotationFrm);
  Application.CreateForm(TQuotationDM, QuotationDM);
  Application.CreateForm(TQuotationDetailFrm, QuotationDetailFrm);
  Application.CreateForm(TReturnsSelectInvoiceFrm, ReturnsSelectInvoiceFrm);
  Application.CreateForm(TDemanderTranfersFrm, DemanderTranfersFrm);
  Application.CreateForm(TDemanderTransferDM, DemanderTransferDM);
  Application.CreateForm(TDemanderTransferDetailFrm, DemanderTransferDetailFrm);
  Application.CreateForm(TPatientRxFrm, PatientRxFrm);
  Application.CreateForm(TADRDetailForm, ADRDetailForm);
  Application.CreateForm(TAdherencePatientRecordFrm, AdherencePatientRecordFrm);
  Application.CreateForm(TDemanderStocktakingDetailFrm, DemanderStocktakingDetailFrm);
  Application.CreateForm(TDemanderStocktakingDM, DemanderStocktakingDM);
  Application.CreateForm(TDemanderStocktakingFrm, DemanderStocktakingFrm);
  Application.CreateForm(TProductStockStatusFilterFrm, ProductStockStatusFilterFrm);
  Application.CreateForm(TReceiptBarcodingFrm, ReceiptBarcodingFrm);
  Application.CreateForm(TRequisitionBarCodeFrm, RequisitionBarCodeFrm);
  Application.CreateForm(TReturnsBarCodeFrm, ReturnsBarCodeFrm);
  Application.CreateForm(TLocalSettingsFrm, LocalSettingsFrm);
  Application.CreateForm(TProductEditHistroyfrm, ProductEditHistroyfrm);
  Application.CreateForm(TProductUpdateBarcodesFrm, ProductUpdateBarcodesFrm);
  Application.CreateForm(TpatientNotesFrm, patientNotesFrm);
  //Application.CreateForm(TfrmPatientActiveReasonFrm, frmPatientActiveReasonFrm);
  Application.CreateForm(TfrmPatientEditHistory, frmPatientEditHistory);
  SplashFrm.Free;
  Application.Run;

 end
  else
  SetForegroundWindow(PreviousHandle);

end.
