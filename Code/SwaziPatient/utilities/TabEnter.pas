unit TabEnter;

interface

Uses Forms, Messages;

function NextControl (frmCtrl:TForm;KeyPressed:char): char;

implementation

function NextControl (frmCtrl:TForm;KeyPressed:char): char;
begin
if KeyPressed = #13 then
 begin
 NextControl := #0;
 frmCtrl.Perform (wm_NextDlgCtl, 0, 0)
 end
else
 NextControl := KeyPressed;
end;

end.
