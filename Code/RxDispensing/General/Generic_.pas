unit Generic_;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DB, ADODB, ComObj;

type
  TGeneric = class(TObject)
  public
    class function Interaction_Description(const prmGenericA : string ; const
        prmGenericB : string): string;
  end;

  TProduct = class(TObject)
  public
    class function Description(const prmStrength : double ; prmStrengthUnit :
        string ; const prmDose : double ; prmDoseUnit : string ; const
        prmDispensingValue : double ; prmDispensingUnit : string ; const
        prmPackSize : double ; prmPackContainer : string ; prmDispensingForm :
        string ; prmOverrideDescription : string): string;
    class function DescriptionUsingCode(const prmStrength : string ; const
        prmPackSize : string ; prmPackContainer : string ; const prmDispensingForm
        : String ): string;
  end;



implementation

class function TProduct.Description(const prmStrength : double ;
    prmStrengthUnit : string ; const prmDose : double ; prmDoseUnit : string ;
    const prmDispensingValue : double ; prmDispensingUnit : string ; const
    prmPackSize : double ; prmPackContainer : string ; prmDispensingForm :
    string ; prmOverrideDescription : string): string;

var
  prvPackDescription: string;
  prvDivider        : string;
  prvDoseUnit       : string;
  prvRetStr         : string;
  prvDispensingUnit,
  prvStrength,
  prvDose,
  prvDispensingValue,
  prvPackSize       : string;

begin

  prvRetStr               := '';
  prmDispensingForm       := Trim(LowerCase(prmDispensingForm));
  prmOverrideDescription  := Trim(prmOverrideDescription);
  prvStrength             := FloatToStr(prmStrength);
  prvDose                 := FloatToStr(prmDose);
  prvDispensingValue      := FloatToStr(prmDispensingValue);
  prvPackSize             := FloatToStr(prmPackSize);
  prvDoseUnit             := Trim(LowerCase(prmDoseUnit));
//  prvDoseUnit             := UpperCase(Copy(prvDoseUnit,1,1)) + Copy(prvDoseUnit,2,Length(prvDoseUnit));
//  prvDoseUnit[1]          := UpperCase(Copy(prvDoseUnit,1,1));

  if (prmDispensingForm = 'solid') then
    begin
//    if prmPackSize > 1 then prvDoseUnit := prvDoseUnit + 's';
    prvDispensingUnit := '';
    prvDivider := ' ';
    end else
    begin
    prvDivider := '/';
    prvDispensingUnit := Trim(Lowercase(prmDispensingUnit))
    end;

  if prmOverrideDescription = '' then
    begin
    if (prmDispensingForm <> 'solid') then
      begin
      if prmDose <> 1 then
          prvRetStr := prvStrength + prmStrengthUnit + prvDivider + prvDose + prvDoseUnit + ''
        else
          prvRetStr := prvStrength + prmStrengthUnit + prvDivider + prvDoseUnit + '';
      end else
      begin
      if prmDose <> 1 then
          prvRetStr := prvStrength + prmStrengthUnit + prvDivider + prvDose + prvDivider + prvDoseUnit + ''
        else
          prvRetStr := prvStrength + prmStrengthUnit + prvDivider + prvDoseUnit;
      end;

    end else
      prvRetStr := prmOverrideDescription;

//  prvPackDescription :=
//    Trim(LowerCase(prmPackContainer)) + ' X ' +
//    prvPackSize + ' ' + prvDispensingUnit;

//  prvPackDescription :=
//    prvPackSize + prvDoseUnit + ' ' + Trim(LowerCase(prmPackContainer));

  if (prmDispensingForm = 'solid') then
    prvPackDescription := ' ' + prmPackContainer + ' x ' + prvPackSize + ' '
    else
    prvPackDescription := prvPackSize + prvDoseUnit + ' ' + Trim(LowerCase(prmPackContainer));


  Result := Trim(prvRetStr) + ' [' + prvPackDescription + ']';
end;

class function TProduct.DescriptionUsingCode(const prmStrength : string ; const
    prmPackSize : string ; prmPackContainer : string ; const prmDispensingForm
    : String ): string;
var
  prvPackDescription: string;
  prvRetStr: string;


begin

  Result := '';
  prvRetStr := prmStrength;

//  prvPackDescription :=
//    prvPackSize + prvDoseUnit + ' ' + Trim(LowerCase(prmPackContainer));

  if (prmDispensingForm = 'solid') then
    prvPackDescription := ' ' + prmPackContainer + ' x ' + prmPackSize + ' '
    else
    prvPackDescription := prmPackSize + ' ' + Trim(LowerCase(prmPackContainer));


  Result := Trim(prvRetStr) + ' [' + prvPackDescription + ']';
end;

class function TGeneric.Interaction_Description(const prmGenericA : string ;
    const prmGenericB : string): string;
begin
  Result := prmGenericA + ' with ' + prmGenericB;
end;

end.
