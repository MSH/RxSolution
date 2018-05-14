unit OrderRequisitionSelectUFrm;
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
  Dialogs, StdCtrls, Buttons, Grids, DBGrids,

  MyApplicationUtilities,

  ElPopBtn, LMDControl,
  LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomSimpleLabel, LMDSimpleLabel, ExtCtrls,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxExEdtr;

type
  TOrderRequisitionSelectFrm = class(TForm)
    pnlRequisitionListBackground: TPanel;
    shpRequisitionList: TShape;
    lblMainFormTitle: TLMDSimpleLabel;
    pnlToolBar: TPanel;
    ElSpeedButton4: TElSpeedButton;
    ElSpeedButton7: TElSpeedButton;
    Shape4: TShape;
    ElSpeedButton15: TElSpeedButton;
    ElSpeedButton14: TElSpeedButton;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dbgReqLookup: TdxDBGrid;
    dbgReqLookupCode_str: TdxDBGridMaskColumn;
    dbgReqLookupName_str: TdxDBGridMaskColumn;
    dbgReqLookupRequisition_str: TdxDBGridMaskColumn;
    dbgReqLookupPOReference_str: TdxDBGridMaskColumn;
    dbgReqLookupTotalCost_mon: TdxDBGridCurrencyColumn;
    dbgReqLookupItemsNo_int: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TRequisitionSelector = class(TObject)
  private
  public
    function SelectRequisitions(var pReqID: cIDArray): Boolean;
  end;



implementation

uses

  {$IFDEF RXSTOREBUILD}
  SystemSecurityUDM,
  SystemSecurityConstantsU,
  {$ELSE}
  RxSolutionSecurityClass, {Was  SystemSecurityConstantsU,}
  {$ENDIF}

  OrderUDM;

{$R *.dfm}


{ TRequisitionSelector }

function TRequisitionSelector.SelectRequisitions(var pReqID: cIDArray): Boolean;
var
  OrderRequisitionSelectFrm: TOrderRequisitionSelectFrm;
  i, j: Integer;
  s: string;


begin

  Result := False;
  if Assigned(OrderDM) then
    with OrderDM do
      try
      OrderRequisitionSelectFrm := TOrderRequisitionSelectFrm.Create(Application);
      with OrderRequisitionSelectFrm do
        begin
//        dbgReqLookup.Options := dbgReqLookup.OptionsBehavior + [edgoMultiSelect];
        if ShowModal = mrOK then
          begin
          Result        := True;

          if dbgReqLookup.SelectedCount > 0 then
            begin
            SetLength(pReqID, dbgReqLookup.SelectedCount);

            with dbgReqLookup.DataSource.DataSet do
              for i:=0 to dbgReqLookup.SelectedCount-1 do
                begin
                GotoBookmark(pointer(dbgReqLookup.SelectedRows[i]));
                pReqID[i]    := FieldByName('Requisition_ID').AsFloat;
                end;  // for i:=0 to dbgReqLookup.SelectedRows.Count-1 do
            end;  //if dbgReqLookup.SelectedRows.Count > 0 then
          end;  //if ShowModal = mrOK then
        end;  //with OrderRequisitionSelectFrm do

      finally

      OrderRequisitionSelectFrm.Free;
      end;

end;

end.
