unit CreditRequisitionsUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxCntner, Menus, DBActns, ActnList, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, StdCtrls, Buttons, ElPopBtn,
  LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomSimpleLabel, LMDSimpleLabel, ExtCtrls;

type
  TCreditRequisitionsFrm = class(TForm)
    pnlRequisitionListBackground: TPanel;
    shpRequisitionList: TShape;
    lblMainFormTitle: TLMDSimpleLabel;
    pnlToolBar: TPanel;
    btnLast: TElSpeedButton;
    btnPageDown: TElSpeedButton;
    btnPageUp: TElSpeedButton;
    btnFirst: TElSpeedButton;
    pnlToolBar_Line1: TShape;
    btnPrior: TElSpeedButton;
    btnNext: TElSpeedButton;
    btnFilter: TElSpeedButton;
    ElSpeedButton19: TElSpeedButton;
    pnlToolBar_N1: TPanel;
    btnSelect: TBitBtn;
    btnCancel: TBitBtn;
    dbgProductLookup: TdxDBGrid;
    dbgProductLookupRequisition_ID: TdxDBGridMaskColumn;
    dbgProductLookupRequisition_Str: TdxDBGridMaskColumn;
    dbgProductLookupRequisition_dat: TdxDBGridDateColumn;
    atnProductActions: TActionList;
    atnProductPageUp: TAction;
    atnProductPageDown: TAction;
    atnProductFirst: TDataSetFirst;
    atnProductPrior: TDataSetPrior;
    atnProductNext: TDataSetNext;
    atnProductLast: TDataSetLast;
    atnToggleDisplay: TAction;
    atnToggleDisplayCodes: TAction;
    atnProductFilterAll: TAction;
    atnProductFilterInstitutionalEDL: TAction;
    atnProductFilterProvincialEDL: TAction;
    atnProductFilterNationalEDL: TAction;
    atnDisplay: TAction;
    pmnuProductFilter: TPopupMenu;
    pmmi_AllProducts: TMenuItem;
    pmmi_EDLInstitutional: TMenuItem;
    pmmi_EDLProvincial: TMenuItem;
    pmmi_EDLNational: TMenuItem;
    dxEditStyleController1: TdxEditStyleController;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CreditRequisitionsFrm: TCreditRequisitionsFrm;

implementation

uses CreditsUDm;

{$R *.dfm}

end.
