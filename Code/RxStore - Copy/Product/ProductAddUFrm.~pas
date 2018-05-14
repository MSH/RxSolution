unit ProductAddUFrm;
{------------------------------------------------------------------------------}
{NOTE : THIS IS A SHARED UNIT.  IT IS USED TO BUILD BOTH RXSOLUTION & RXSTORE  }
{------------------------------------------------------------------------------}
{   It is optimised for compiling in RxSolution so any specific RxStore        }
{   directives need To be enclose in a compiler directive called -             }
{                                                                              }
{   ($IFDEF RXSTOREBUILD )                                                     }
{     RxStore specific code here.                                              }
{     This can be something like a form or a unit.                             }
{   ($ELSE)                                                                    }
{     RxStolution specific code here.                                          }
{                                                                              }
{   ($ENDIF)                                                                   }
{                                                                              }
{   This example used normal bracket, but for compiler directive use curly     }
{   brackets.                                                                  }
{                                                                              }
{ ---------------------------------------------------------------------------- }
{ EDIT/CHANGE NOTE                                                             }
{ Date Recorded : 2006-03-09                                                   }
{ Recorded By   : Deane Putzier                                                }
{ Reason        : Merging of the code files for compilation in both apps       }
{------------------------------------------------------------------------------}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDBaseLabel, LMDCustomSimpleLabel,
  LMDSimpleLabel, ExtCtrls, wwdblook, Mask, wwdbedit, Wwdotdot, Wwdbcomb,
  Db, DBTables, ADODB, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  RzDBCmbo, RzCommon, ImgList, DBActns, ActnList, RzButton;

type
  TProductAddFrm = class(TForm)
    pnlRequisitionListBackground: TPanel;
    shpRequisitionList: TShape;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    Panel1: TPanel;
    Label29: TLabel;
    Label103: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label28: TLabel;
    Label10: TLabel;
    Label31: TLabel;
    Label38: TLabel;
    Label35: TLabel;
    Label79: TLabel;
    Label104: TLabel;
    Label21: TLabel;
    Label30: TLabel;
    Label46: TLabel;
    Label51: TLabel;
    DBText2: TDBText;
    Label78: TLabel;
    Label36: TLabel;
    Label98: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBText3: TDBText;
    wwDBBin: TwwDBLookupCombo;
    wwDBContractCode: TwwDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    wwDBGenericName: TwwDBLookupCombo;
    wwDBPackSizeUnit: TwwDBLookupCombo;
    wwDBStrength: TwwDBLookupCombo;
    wwDBForm: TwwDBLookupCombo;
    wwDBRestriction: TwwDBComboBox;
    wwDBSupplement: TwwDBLookupCombo;
    dbePackSize: TDBEdit;
    wwDBStatus: TwwDBComboBox;
    wwDBComboBox7: TwwDBComboBox;
    wwDBGroup1: TwwDBLookupCombo;
    wwDBGroup2: TwwDBLookupCombo;
    grpProductType: TDBRadioGroup;
    OrderType: TDBRadioGroup;
    wwDBATC: TwwDBLookupCombo;
    dbeInjectable: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    dxDbeCost_mon: TdxDBCurrencyEdit;
    DBCheckBox5: TDBCheckBox;
    wwDBRoute: TwwDBLookupCombo;
    DBCheckBox8: TDBCheckBox;
    RzFrameController1: TRzFrameController;
    Label145: TLabel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzBitBtn1: TRzBitBtn;
    ActionList2: TActionList;
    atnGeneric_Manage: TAction;
    atnAdministrationUnit_Manage: TAction;
    atnStrengthRange_Manage: TAction;
    atnFormRange_Manage: TAction;
    atnTradeName_Manage: TAction;
    atnPackSizeRange_Manage: TAction;
    ImageList2: TImageList;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn6: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    procedure dblGenericNameCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure atnGeneric_ManageExecute(Sender: TObject);
    procedure atnAdministrationUnit_ManageExecute(Sender: TObject);
    procedure atnStrengthRange_ManageExecute(Sender: TObject);
    procedure atnFormRange_ManageExecute(Sender: TObject);
    procedure atnTradeName_ManageExecute(Sender: TObject);
    procedure atnPackSizeRange_ManageExecute(Sender: TObject);
  private
    function TestAgainstCompleteness: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductAddFrm: TProductAddFrm;

implementation

uses ProductUDm;

{$R *.dfm}

procedure TProductAddFrm.dblGenericNameCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin

  with ProductDm.tblProductCatalog do
    begin
    if not (State in [dsEdit, dsInsert]) then Edit;
    FieldByName('GenericCode_str').AsString :=
      ProductDm.qryADOGenericName.FieldByName('Code_str').AsString;
    end;

end;

function TProductAddFrm.TestAgainstCompleteness: string;
const
  C = 'Missing value for field - ';
  M = #13#10'Missing value for field - ';
begin
  // TODO -cMM: TProductAddFrm.TestAgainstCompleteness default body inserted
  Result := '';
  if wwDBGenericName.DisplayValue = '' then Result := Result + C + 'Generic Name';
  if wwDBStrength.DisplayValue = '' then Result := Result + M + 'Strength/Size';
//  if wwDBStrengthCode.Text = '' then Result := Result + M + 'Strength Code';
  if wwDBForm.DisplayValue = '' then Result := Result + M + 'Form';
  if dbePackSize.Text = '' then Result := Result + M + 'Pack Size';
  if wwDBPackSizeUnit.DisplayValue = '' then Result := Result + M + 'Pack Size Unit';
//  if wwDBPackSizeCode.Text = '' then Result := Result + M + 'Pack Size Code';
//  if wwDBSupplement.DisplayValue = '' then Result := Result + M + 'Supplement';
//  if wwDBRoute.DisplayValue = '' then Result := Result + M + 'Route';
//  if wwDBContractCode.DisplayValue = '' then Result := Result + M + 'Contract';
//  if wwDBATC.DisplayValue = '' then Result := Result + M + 'ATC';
//  if wwDBGroup1.DisplayValue = '' then Result := Result + M + 'Group 1';
//  if wwDBGroup2.DisplayValue = '' then Result := Result + M + 'Group 2';
//  if wwDBStatus.Text = '' then Result := Result + M + 'Status';
//  if wwDBBin.DisplayValue = '' then Result := Result + M + 'Bin';
//  if wwDBRestriction.Text = '' then Result := Result + M + 'Restriction';
end;

procedure TProductAddFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  CloseResult :string;
begin
{}

  if ModalResult = mrOK then
  begin
    CloseResult := TestAgainstCompleteness;
    if CloseResult <> '' then
    begin
      CanClose := False;
      MessageDlg(CloseResult, mtError, [mbOK],0);
    end;
  end;

end;

procedure TProductAddFrm.atnGeneric_ManageExecute(Sender: TObject);
begin
ProductDm.ManageGenericList;
end;

procedure TProductAddFrm.atnAdministrationUnit_ManageExecute(
  Sender: TObject);
begin
ProductDm.ManageAdministrationUnits;
end;

procedure TProductAddFrm.atnStrengthRange_ManageExecute(Sender: TObject);
begin
ProductDM.ManageStrengthRange;
end;

procedure TProductAddFrm.atnFormRange_ManageExecute(Sender: TObject);
begin
ProductDm.ManageFormRange;
end;

procedure TProductAddFrm.atnTradeName_ManageExecute(Sender: TObject);
begin
ProductDm.ManageTradeName;
end;

procedure TProductAddFrm.atnPackSizeRange_ManageExecute(Sender: TObject);
begin
ProductDm.ManagePackSizeRange;
end;

end.

