unit Person_;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DB, ADODB, ComObj;

type
  TPerson = class(TObject)
  public
    class function DisplayName_Long(var prmFirstName, prmLastName, prmKnownName :
        string): string;
    class function DisplayName_Short(var prmFirstName, prmLastName, prmKnownName :
        string): string;
  end;

  TStringUtil = class(TObject)
  private
    class procedure CapitaliseAt(var prmStringValue : string ; const prmPosition :
        integer);
  public
    class function AllCaps(prmStringValue : string): string;
    class function SentenceCase(prmStringValue : string): string;
    class function CamelCase(prmStringValue : string): string;
  published
  end;


implementation

class function TStringUtil.AllCaps(prmStringValue : string): string;
begin
  prmStringValue  := UpperCase(prmStringValue);
  prmStringValue  := Trim(prmStringValue);
  Result := prmStringValue;
end;

class function TStringUtil.CamelCase(prmStringValue : string): string;
var
  i,j     : integer;
  newStr  : string;
begin

  if prmStringValue <> '' then
    begin

    prmStringValue  := LowerCase(prmStringValue);
    prmStringValue  := Trim(prmStringValue);

    CapitaliseAt(prmStringValue, 1);

    i := AnsiPos(' ', prmStringValue);
    newStr  := prmStringValue;
    j := 0;
    while i <> 0 do
      begin
      j := j + i + 1;
      //inc(j);
      CapitaliseAt(prmStringValue, j);
      newStr := Trim(Copy(newStr, i + 1, length(newStr)));
      i := AnsiPos(' ', newStr);
      dec(j);
      end;
    end;
 Result := prmStringValue;
end;

class procedure TStringUtil.CapitaliseAt(var prmStringValue : string ; const
    prmPosition : integer);
var
  str1, str2, str3 :string;
begin

  if prmPosition > 1 then
    begin
    str2 := Copy(prmStringValue, 1, prmPosition -1);
    str1 := Copy(prmStringValue, prmPosition, 1);
    str3 := Copy(prmStringValue, prmPosition + 1, length(prmStringValue));
    end
    else
    begin
    str2 := '';
    str1 := Copy(prmStringValue, 1, 1);
    str3 := Trim(Copy(prmStringValue, 2, length(prmStringValue)));
    end;
  prmStringValue := str2 + UpperCase(str1) + str3;
  prmStringValue := Trim(prmStringValue);

end;

class function TStringUtil.SentenceCase(prmStringValue : string): string;
begin
  prmStringValue  := LowerCase(prmStringValue);
  prmStringValue  := Trim(prmStringValue);
  CapitaliseAt(prmStringValue, 1);
  Result := prmStringValue;
end;

class function TPerson.DisplayName_Long(var prmFirstName, prmLastName,
    prmKnownName : string): string;
begin

  prmLastName   := TStringUtil.AllCaps(prmLastName);
  prmFirstName  := TStringUtil.CamelCase(prmFirstName);
  prmKnownName  := TStringUtil.CamelCase(prmKnownName);

  if Trim(prmKnownName) <> '' then
    Result := prmLastName + ', ' + prmKnownName + ' (' + prmFirstName + ')'
    else
    Result := prmLastName + ', ' + prmFirstName;
end;

class function TPerson.DisplayName_Short(var prmFirstName, prmLastName,
    prmKnownName : string): string;
begin

  prmLastName   := TStringUtil.AllCaps(prmLastName);
  prmFirstName  := TStringUtil.CamelCase(prmFirstName);
  prmKnownName  := TStringUtil.CamelCase(prmKnownName);

  if Trim(prmKnownName) <> '' then
    Result := prmLastName + ', ' + prmKnownName + ' (' + prmFirstName + ')'
    else
    Result := prmLastName + ', ' + prmFirstName;
end;


end.
