unit CreditDemanderReqItemsUFrm;
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
  Dialogs, Grids, DBGrids, ElPopBtn, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDBaseLabel, LMDCustomSimpleLabel,
  LMDSimpleLabel, ExtCtrls, ImgList, StdCtrls, Buttons, ActnList, wwDialog,
  wwidlg, DBActns, MyApplicationUtilities, Menus, DB, dxExEdtr, dxCntner,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid;

type
  TCreditDemanderReqItemsFrm = class(TForm)
    pnlRequisitionListBackground: TPanel;
    shpRequisitionList: TShape;
    lblMainFormTitle: TLMDSimpleLabel;
    pnlToolBar: TPanel;
    btnLast: TElSpeedButton;
    btnPageDown: TElSpeedButton;
    btnPageUp: TElSpeedButton;
    btnFirst: TElSpeedButton;
    pnlToolBar_Line1: TShape;
    pnlToolBar_N1: TPanel;
    btnSelect: TBitBtn;
    btnCancel: TBitBtn;
    atnProductActions: TActionList;
    btnPrior: TElSpeedButton;
    btnNext: TElSpeedButton;
    atnProductPageUp: TAction;
    atnProductFirst: TDataSetFirst;
    atnProductPrior: TDataSetPrior;
    atnProductNext: TDataSetNext;
    atnProductLast: TDataSetLast;
    atnProductPageDown: TAction;
    atnToggleDisplay: TAction;
    atnToggleDisplayCodes: TAction;
    btnFilter: TElSpeedButton;
    pmnuProductFilter: TPopupMenu;
    pmmi_AllProducts: TMenuItem;
    pmmi_EDLInstitutional: TMenuItem;
    pmmi_EDLProvincial: TMenuItem;
    pmmi_EDLNational: TMenuItem;
    atnProductFilterAll: TAction;
    atnProductFilterInstitutionalEDL: TAction;
    atnProductFilterProvincialEDL: TAction;
    atnProductFilterNationalEDL: TAction;
    dbgProductLookup: TdxDBGrid;
    dxEditStyleController1: TdxEditStyleController;
    atnDisplay: TAction;
    ElSpeedButton19: TElSpeedButton;
    dbgProductLookupRequisition_ID: TdxDBGridMaskColumn;
    dbgProductLookupRequisition_Str: TdxDBGridMaskColumn;
    dbgProductLookupRequisition_dat: TdxDBGridDateColumn;

    procedure FormCreate(Sender: TObject);

    procedure atnProductPageUpExecute(Sender: TObject);
    procedure atnProductPageUpUpdate(Sender: TObject);
    procedure atnProductPageDownExecute(Sender: TObject);
    procedure atnProductPageDownUpdate(Sender: TObject);

    procedure atnProductFilterAllExecute(Sender: TObject);
    procedure atnProductFilterInstitutionalEDLExecute(Sender: TObject);
    procedure atnProductFilterProvincialEDLExecute(Sender: TObject);
    procedure atnProductFilterNationalEDLExecute(Sender: TObject);
    procedure atnDisplayExecute(Sender: TObject);

//    procedure edtCodeSearchKeyUp(Sender: TObject; var Key: Word;
//      Shift: TShiftState);

  private
    { Private declarations }

    procedure SetProductFilter(pType: integer);
    procedure RefreshProductTable;
//    procedure ProductSearch(pFieldType: integer);
//    procedure ProductNudge(pDirection: integer);
  public
    { Public declarations }
  end;



  {****************************************************************************}

  TProductSelector = class(TObject)
  public
    function Product_Change       ( pCurProduct : Double):Double;
    function Product_SelectItems  ( var pProductCost: cCostArray;
                                    var pProductID: cIDArray): Boolean;
    procedure Product_SetDefaults;
  end;




implementation

uses


  {$IFDEF RXSTOREBUILD}
  GridColumnSelectorUFrm,
  {$ELSE}
  DialogGridColumnSelectorUFrm, CreditsUDm, MainUDM
  {$ENDIF}


  ;

{$R *.dfm}




{ TProductSelector }


function TProductSelector.Product_Change(pCurProduct: Double): Double; (*START*)(*===========================================*)
                                                                                (*function:Product_Change--------------------*)
                                                                                (*===========================================*)
                                                                  (*27.08.2002*)(* Orig::Deane Putzier.                      *)
                                                                  (*28.10.2002*)(* Edit::Deane Putzier                       *)
                                                                                // (A) Changed name
{------------------------------------------------------------------------------}
{PROCEDURE : Receives a product ID and then returns a new ID.                  }
{------------------------------------------------------------------------------}
{  Accepts: Product ID. This to place the dataset on the current record        }
{  Returns: Product ID. Returns newly selected value or originally passed value}
{  Needs  :a)Dataset provided by DM. This allows the dataset to be loaded once }
{            in the DM and not loaded every time this form is loaded.          }
{          b)PROC: CreditsDM := finds and positions datastore @ passed ID         }
{------------------------------------------------------------------------------}

var (*.................................................................*)(*var*)(*...........................................*)

 CreditDemanderReqItemsFrm : TCreditDemanderReqItemsFrm ;

begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := pCurProduct;                                                        // Return what was sent if nothing happens here

  if Assigned(CreditsDM) then                                                      // Make sure it exists
    with CreditsDM, MainDm do

      try


      CreditDemanderReqItemsFrm  := TCreditDemanderReqItemsFrm.Create(Application);              // Create display form

                                                                                // Position record before opening form.
      FindProduct(pCurProduct);                                                 // PROC: CreditsDM := finds and positions datastore @ passed ID

      with CreditDemanderReqItemsFrm  do
        begin
        btnCancel.Visible := True;
        btnSelect.Visible := True;
        btnCancel.Caption := 'Cancel';
        btnSelect.Caption := 'Select';
        dbgProductLookup.OptionsBehavior :=
          dbgProductLookup.OptionsBehavior - [edgoMultiSelect];                 // Disable multiselect. You are only swopping one product.
        if ShowModal = mrOK then Result := GetProductID;                        // Return selected ID else return original result
        end;  // (*with ProductGeneralFrm do*)

      finally

       CreditDemanderReqItemsFrm.Free;                                                 // Free the form
      end;

end; (*................................................................*)(*end*)(*...........................................*)





function TProductSelector.Product_SelectItems( (*:::::::::::::::::::::::START:*)(*===========================================*)
                            var pProductCost: cCostArray;                       (*function:Product_SelectItems---------------*)
                            var pProductID: cIDArray): Boolean;                 (*===========================================*)
                                                                  (*27.08.2002*)(* Orig::Deane Putzier                       *)
                                                                  (*28.10.2002*)(* Edit::Deane Putzier                       *)
                                                                                // (A) Changed name
{------------------------------------------------------------------------------}
{PROCEDURE : Receives var Arrays for adjusting                                 }
{------------------------------------------------------------------------------}
{  Accepts: 2 Dynamic arrays.  1 holds ID the 2nd Holds unit costs for IDs'    }
{  Returns: Adjusted arrays.                                                   }
{  Needs  :a)Dataset provided by DM. This allows the dataset to be loaded once }
{            in the DM and not loaded every time this form is loaded.          }
{------------------------------------------------------------------------------}

var (*.................................................................*)(*var*)(*...........................................*)

  CreditDemanderReqItemsFrm : TCreditDemanderReqItemsFrm ;
  i, j: Integer;
  s: string;


begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := False;                                                              // Default result

  if Assigned(CreditsDM) then
    with CreditsDM, MainDM do
      try
      CreditDemanderReqItemsFrm  := TCreditDemanderReqItemsFrm.Create(Application);              //


      with CreditDemanderReqItemsFrm  do
        begin
        dbgProductLookup.OptionsBehavior := dbgProductLookup.OptionsBehavior + [edgoMultiSelect]; // Allow multiple selection.
        btnCancel.Visible := True;
        btnSelect.Visible := True;
        btnCancel.Caption := 'Cancel';
        btnSelect.Caption := 'Select';

        if ShowModal = mrOK then
          begin
          Result        := True;

          if dbgProductLookup.SelectedCount > 0 then                       // unless the user has clicked, this will be 0.
            begin
            SetLength(pProductCost, dbgProductLookup.SelectedCount);       // Set the lengths of the of arrays
            SetLength(pProductID, dbgProductLookup.SelectedCount);

            with dbgProductLookup.DataSource.DataSet do
              for i:=0 to dbgProductLookup.SelectedCount-1 do
                begin
                GotoBookmark(pointer(dbgProductLookup.selectedrows[i]));
                pProductCost[i]  := FieldByName('PackCost_mon').AsCurrency;
                pProductID[i]    := FieldByName('ProductCode_ID').AsFloat;
                end;  // for i:=0 to dbgProductLookup.SelectedRows.Count-1 do

            end
            else //if dbgProductLookup.SelectedRows.Count > 0 then

            begin                                                               // if nothing was selected, a row will always be highlighted
                                                                                // so make sure at least that row will be returned.
            SetLength(pProductCost, 1);
            SetLength(pProductID, 1);
            with dbgProductLookup.DataSource.DataSet do
              begin
              pProductCost[0]  := FieldByName('PackCost_mon').AsCurrency;
              pProductID[0]    := FieldByName('ProductCode_ID').AsFloat;
              end;
            end; //if dbgProductLookup.SelectedRows.Count > 0 then

          end;  //if ShowModal = mrOK then


        end;  //with ProductGeneralFrm do

      finally

      CreditDemanderReqItemsFrm.Free;
      end;

end;

procedure TProductSelector.Product_SetDefaults;
var
  CreditDemanderReqItemsFrm : TCreditDemanderReqItemsFrm ;

begin

  if Assigned(CreditsDM) then                                                      // Make sure it exists
    with CreditsDm do
      try
      CreditDemanderReqItemsFrm  := TCreditDemanderReqItemsFrm.Create(Application);              // Create display form
      with CreditDemanderReqItemsFrm  do
        begin
        btnCancel.Visible := False;
        btnSelect.Visible := True;
        btnCancel.Caption := '';
        btnSelect.Caption := 'Finished';

        dbgProductLookup.OptionsBehavior :=
          dbgProductLookup.OptionsBehavior - [edgoMultiSelect];                 // Disable multiselect. You are only swopping one product.
        ShowModal;
        end;  // (*with ProductGeneralFrm do*)

      except
        CreditDemanderReqItemsFrm.Free;                                                 // Free the form
      end;
end;

procedure TCreditDemanderReqItemsFrm.FormCreate(Sender: TObject); (*::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:FormCreate-----------------------*)
                                                                                (*===========================================*)
                                                                  (*28.10.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  RefreshProductTable;
  SetProductFilter(FILTER_EDL_INSTITUTION);

end; (*................................................................*)(*end*)(*...........................................*)





procedure TCreditDemanderReqItemsFrm.RefreshProductTable; (*::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:RefreshProductTable--------------*)
                                                                                (*===========================================*)
                                                                  (*28.10.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

 if Assigned(creditsDM) then
    with CreditsDM do
    begin
     LoadDemanderReqItems;
    end;
end; (*................................................................*)(*end*)(*...........................................*)





procedure TCreditDemanderReqItemsFrm.SetProductFilter(pType :integer); (*:::::::START:*)(*===========================================*)
                                                                                (*procedure:SetProductFilter-----------------*)
                                                                                (*===========================================*)
                                                                  (*28.10.2002*)(* Orig::Deane Putzier                       *)

  function RemoveAmpsand(const pStr :string):string;
  var
  S:string;
  begin
    S := pStr;
    { Convert && to and }
    while Pos('&', S) > 0 do S[Pos('&', S)] := ' ';
    Result := S;
  end;



begin (*.............................................................*)(*begin*)(*...........................................*)


  if Assigned(CreditsDM) then
    with CreditsDM, MainDM do
      begin

      FilterProducts(pType);

      atnProductFilterAll.Checked := False;
      atnProductFilterInstitutionalEDL.Checked := False;
      atnProductFilterProvincialEDL.Checked := False;
      atnProductFilterNationalEDL.Checked := False;

      case pType of
        FILTER_EDL_NONE:
          begin
            atnProductFilterAll.Checked := True;
            lblMainFormTitle.Caption    := RemoveAmpsand(atnProductFilterAll.Caption);
          end;
        FILTER_EDL_INSTITUTION:
          begin
            atnProductFilterInstitutionalEDL.Checked := True;
            lblMainFormTitle.Caption    := RemoveAmpsand(atnProductFilterInstitutionalEDL.Caption);
          end;
        FILTER_EDL_PROVINCIAL:
          begin
            atnProductFilterProvincialEDL.Checked := True;
            lblMainFormTitle.Caption    := RemoveAmpsand(atnProductFilterProvincialEDL.Caption);
          end;
        FILTER_EDL_NATIONAL:
          begin
            atnProductFilterNationalEDL.Checked := true;
            lblMainFormTitle.Caption    := RemoveAmpsand(atnProductFilterNationalEDL.Caption);
          end;
        end;
      end;
end; (*................................................................*)(*end*)(*...........................................*)

procedure TCreditDemanderReqItemsFrm.atnProductPageUpExecute(Sender: TObject);
begin
  DBPageUp(dbgProductLookup.DataSource.DataSet, 23);
end;

procedure TCreditDemanderReqItemsFrm.atnProductPageDownExecute(Sender: TObject);
begin
  DBPageDown(dbgProductLookup.DataSource.DataSet, 23);
end;

procedure TCreditDemanderReqItemsFrm.atnProductPageUpUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := atnProductFirst.Enabled;
end;

procedure TCreditDemanderReqItemsFrm.atnProductPageDownUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := atnProductLast.Enabled;
end;

procedure TCreditDemanderReqItemsFrm.atnProductFilterAllExecute(Sender: TObject);
begin
  SetProductFilter(FILTER_EDL_NONE);
end;

procedure TCreditDemanderReqItemsFrm.atnProductFilterInstitutionalEDLExecute(
  Sender: TObject);
begin
  SetProductFilter(FILTER_EDL_INSTITUTION);
end;

procedure TCreditDemanderReqItemsFrm.atnProductFilterProvincialEDLExecute(
  Sender: TObject);
begin
  SetProductFilter(FILTER_EDL_PROVINCIAL);
end;

procedure TCreditDemanderReqItemsFrm.atnProductFilterNationalEDLExecute(
  Sender: TObject);
begin
  SetProductFilter(FILTER_EDL_NATIONAL);
end;


procedure TCreditDemanderReqItemsFrm.atnDisplayExecute(Sender: TObject);
var
  SelectColumns :TColumnSelector;
begin
  SelectColumns := TColumnSelector.Create;
  try
    SelectColumns.SelectColumns(dbgProductLookup)
  finally
    SelectColumns.Free;
  end;

end;

end.
