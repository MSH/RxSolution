unit MyApplicationUtilities;

interface

{
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Mask, DBCtrls, ExtCtrls, ComCtrls, Buttons;
}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls, StdCtrls, DBCtrls, Buttons, ADODB,
  ExtCtrls, DB, DBTables, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid;

const


  SYSTEM_DEBUG    = False;
  INIFILE         = 'RxStoreStd.dfl';


  // Formcount must be the sum of forms required.

  //F_FORMCOUNT = 7;

  // need to keep these for RxStore Legacy
  FRM_SUPPLIERS   = 0;
  FRM_DEMANDERS   = 1;
  FRM_PRODUCTS    = 2;
  FRM_REQUISITION = 3;
  FRM_ORDERS      = 4;
  FRM_RECEIPTS    = 5;
  FRM_BUDGET      = 6;

  FILTER_EDL_NONE         = 0;
  FILTER_EDL_INSTITUTION  = 1;
  FILTER_EDL_PROVINCIAL   = 2;
  FILTER_EDL_NATIONAL     = 3;



  // ProductLevel form color values
  clEditNormal      = clWhite;
  clEditRO          = $00F9FFF2;
  clEditFNorm       = clHighlight;
  clEditFRO         = clTeal;
  clPageBck         = $00F8E4D8;
  clLblBck          = clInfoBk;
  clLblHighlightBck = $00F0C6AC;
  clPOrderGrd01     = clWindow;
  clPOrderGrd02     = clSkyBlue;


  // Read Only := True;
  CurrBKColor   : array[False..True] of TColor = (clEditNormal,clEditRO);
  CurrFntColor  : array[False..True] of TColor = (clEditFNorm,clEditFRO);

  cPOrderGrdCols : array[False..True] of TColor = (clPOrderGrd01,clPOrderGrd02);

type
  cCostArray    = array of currency;
  cIDArray      = array of Double;

  RProductDetails = record
    ID          : Double;
    QtyOnHand   : integer;
    NSN         : string;
    ECN         : string;
    ICN         : string;
    end;

  RProductAuditDetails = record
    SystemStore_ID,
    ProductCode_ID,
    Demander_ID,
    Supplier_ID,
    Item_ID             : double;
    Type_str,
    Reference_str,
    DemanderSupplier_str,
    ProductCode_str,
    VoucherNo_str       : string;
    Date_dat,
    ExpiryDate_dat      : TDateTime;      //SM
    Value_mon           : Currency;
    Quantity_int,
    QuantityOnHand_int  : Integer;
    User_str,
    ICN_str,
    ECN_str,
    NSN_Str,
    BatchNumber_str             : String;     //SM
    end;



procedure DBGridReSizeColumns(DBGrid :TDBGrid; ColSizes: array of double);
procedure DBGridReSizeDymanicColumn(DBGrid :TDBGrid; ColNum:integer);
procedure DBPageUp(DataSet :TDataSet; PageSize:integer);
procedure DBPageDown(DataSet :TDataSet; PageSize:integer);
procedure DBSortDataSet(DataSet :TCustomADODataSet; pColName: string);
procedure DBdxSortDataSet(dspGrid: TdxDBGrid);





implementation


procedure DBGridReSizeColumns(DBGrid :TDBGrid; ColSizes: array of double); (*:*)(*===========================================*)
                                                                                (*procedure:DBGridReSizeColumns--------------*)
                                                                                (*===========================================*)
                                                                   (*12.6.2002*)(* Orig::Deane Putzier                       *)
                                                                                (* This procedure resizes columns with the   *)
                                                                                (* use of %'s.  The last column is the       *)
                                                                                (* remaining value.                          *)
var (*.................................................................*)(*var*)(*...........................................*)
  i               : integer;
  GridWidthCount  : integer;

begin (*.............................................................*)(*begin*)(*...........................................*)

  with DBGrid do

    if Columns.Count > 0 then                                                   // Make sure the grid has columns
      begin

      GridWidthCount  := 0;

      for i:= 0 to Columns.Count -1 do
        if i <> Columns.Count - 1 then
          begin
          Columns[i].Width := Round(ClientWidth * ColSizes[i]);
          GridWidthCount   := GridWidthCount + Columns[i].Width;
          end else (*if i < Columns.Count - 2 then*)
          Columns[i].Width := ClientWidth - GridWidthCount;

      end; (*if Columns.Count > 0 then*)
end; (*................................................................*)(*end*)(*...........................................*)


procedure DBGridReSizeDymanicColumn(DBGrid :TDBGrid; ColNum:integer); (*START:*)(*===========================================*)
                                                                                (*procedure:DBGridReSizeDymanicColumn--------*)
                                                                                (*===========================================*)
                                                                   (*12.6.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  GridWidth, i    : integer;
  GridWidthCount  : integer;

begin (*.............................................................*)(*begin*)(*...........................................*)

  with DBGrid do
    if Columns.Count > 0 then

      begin

      GridWidthCount  := 0;
      for i:= 0 to Columns.Count -1 do
        if i <> (ColNum - 1) then
          GridWidthCount := GridWidthCount + Columns[i].Width;

      Columns[ColNum -1 ].Width  := ClientWidth - GridWidthCount;
      end; (*if Columns.Count > 0 then*)
end; (*................................................................*)(*end*)(*...........................................*)


procedure DBPageUp(DataSet :TDataSet; PageSize:integer);
var
  FDataPage :integer;

begin

  with DataSet do
    if Active then
      if not BOF then
        begin
        FDataPage := PageSize;
        if FDataPage < 1 then FDataPage := 1;
        MoveBy(-FDataPage);
        end;

end;



procedure DBPageDown(DataSet :TDataSet; PageSize:integer);
var
  FDataPage :integer;

begin

  with DataSet do
    if Active then
      if not EOF then
        begin
        FDataPage := PageSize;
        if FDataPage < 1 then FDataPage := 1;
        MoveBy(FDataPage);
        end;
end;



procedure DBSortDataSet(DataSet :TCustomADODataSet; pColName: string);

var (*.................................................................*)(*var*)(*...........................................*)

  vIsCurrentSort, vDescOrder  :Boolean;
  vNewSort                    :String;

begin (*.............................................................*)(*begin*)(*...........................................*)

  with DataSet do                                                     //
    if Active then
      begin
      vIsCurrentSort  := Pos(pColName, Sort) > 0;                               // Sort = Property of ADO dataset
      vDescOrder      := Pos('DESC', Sort) > 0;
      vNewSort        := pColName;
      if vIsCurrentSort then
        if not vDescOrder then
          vNewSort := vNewSort + ' DESC';
      Sort := vNewSort;
      end;

end; (*................................................................*)(*end*)(*...........................................*)


procedure DBdxSortDataSet(dspGrid: TdxDBGrid);

var (*.................................................................*)(*var*)(*...........................................*)

  vOldSort, vSortStr                    :String;
  i :integer;
  DataSet     :TCustomADODataSet;
  CurrRec     :TBookMark;
  OldCursor  :TCursor;

begin (*.............................................................*)(*begin*)(*...........................................*)

  with dspGrid do
    try
    OldCursor     := Screen.Cursor;
    Screen.Cursor := crHourGlass;
    DataSet       := (dspGrid.DataSource.DataSet as TCustomADODataSet);

//    if DataSet.Active then
      try

      CurrRec       := DataSet.GetBookMark;
      DataSet.DisableControls;

      vSortStr := '';
      vOldSort := DataSet.Sort;

      for i:= 0 to SortedColumnCount -1 do
        with SortedColumns[i] do
          if Sorted <> csNone then
            begin
            if vSortStr <> '' then vSortStr := vSortStr + ', ';
            case Sorted of
              csDown : vSortStr := vSortStr + SortedColumns[i].FieldName + ' DESC';
              csUp   : vSortStr := vSortStr + SortedColumns[i].FieldName;
              end;
            end;
      if vOldSort <> vSortStr then
        begin
        DataSet.Sort := vSortStr;
        DataSet.GotoBookMark(CurrRec);
//      MessageDlg(vSortStr, mtWarning, [mbOK], 0);
      end;
      finally
      DataSet.EnableControls;
      DataSet.FreeBookMark(CurrRec);
      end;
    finally
      Screen.Cursor := OldCursor;
    end;


end; (*................................................................*)(*end*)(*...........................................*)


end.




