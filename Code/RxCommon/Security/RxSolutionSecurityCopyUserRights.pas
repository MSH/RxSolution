unit RxSolutionSecurityCopyUserRights;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls, ExtCtrls, RzDlgBtn,
  dxExEdtr;

type
  TCopyUserRightsfrm = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    grdUsers: TdxDBGrid;
    grdUsersfirstName_str: TdxDBGridColumn;
    grdUserslastName_str: TdxDBGridColumn;

  private
    { Private declarations }
  public
    { Public declarations }
  procedure GetOtherUSer(CurrentUserID: string);

  end;

var
  CopyUserRightsfrm: TCopyUserRightsfrm;

implementation

uses RxSolutionSecurityAdministratorUFrm;

{$R *.dfm}

procedure TCopyUserRightsfrm.GetOtherUSer(CurrentUserID: string);
begin

 if CopyUserRightsfrm.ShowModal = mrOk then
  //with RxSolutionSecurityAdministratorUFrm do
  begin

{  if  RxSolutionSecurityAdministratorUFrm.qry_Users.State in [dsEdit, dsInsert] then
   qry_Users.Post;   }
  //ShowMessage(CurrentUserID);
  with qryOtherUsers do
   begin
   Close;
  // Parameters.ParamByName('userid').Value := CurrentUserID;
   Open;
   First;
   end;

  with stp_CopyUSerRights do
   begin
   Prepared := True;
   Parameters.ParamByName('@userid').Value       := CurrentUserID;
  // Parameters.ParamByName('@otheruserid').Value  := qryOtherUsers.FieldByname('userid').Value;;
   Parameters.ParamByName('@otheruserid').Value  := qryOtherUsers.FieldByname('userid').Value;;
   ExecProc;
   end;
  MessageDlg('User access rights have been copied', mtinformation, [mbOk], 0);
  end;

 qry_UsersAccess.Close;
 qry_UsersAccess.Open;
 end;

end;

end.
