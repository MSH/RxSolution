unit DemanderLookupUFrm;
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
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ElPopBtn, LMDControl,
  LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomSimpleLabel, LMDSimpleLabel, ExtCtrls;

type
  TDemanderLookupFrm = class(TForm)
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
    pnlToolBar_N1: TPanel;
    cbCodeChange: TComboBox;
    dbgProductLookup: TDBGrid;
    btnSelect: TBitBtn;
    btnCancel: TBitBtn;
    edtCodeSearch: TEdit;
    edtDescriptionSearch: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DemanderLookupFrm: TDemanderLookupFrm;

implementation

{$R *.dfm}

end.
