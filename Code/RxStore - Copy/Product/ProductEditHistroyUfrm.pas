unit ProductEditHistroyUfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, RzCommon, ExtCtrls, StdCtrls, wwdblook, RzDlgBtn,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, Mask, RzEdit, RzDBEdit, dxDBTLCl,
  dxGrClms;

type
  TProductEditHistroyfrm = class(TForm)
    dxgProductHistory: TdxDBGrid;
    RzDialogButtons1: TRzDialogButtons;
    pnlProductDetailColorBackground: TPanel;
    Label38: TLabel;
    wwDBLookupCombo24: TwwDBLookupCombo;
    RzFrameController1: TRzFrameController;
    RzDBEdit2: TRzDBEdit;
    dxgProductHistoryChangeDescription_str: TdxDBGridColumn;
    dxgProductHistoryUserName_str: TdxDBGridColumn;
    dxgProductHistoryChangeDate_dat: TdxDBGridDateColumn;
    dxgProductHistoryType_str: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductEditHistroyfrm: TProductEditHistroyfrm;

implementation

uses ProductUDm;

{$R *.dfm}

end.
