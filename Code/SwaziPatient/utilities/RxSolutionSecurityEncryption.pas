unit RxSolutionSecurityEncryption;

interface

type
  RCodes = record (*......................................................*)(**)(*...........................................*)
    FVersion: string[10];
    FCodeValue: string[6];
    FCodeField: string[1];
  end;

const

 (*.......................................................................*)(**)(*...........................................*)
 (*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*:hashtable Version 1.0.0.------------------*)
                                                                                (*===========================================*)
                                                                   (*11.4.2004*)(* Orig::Deane Putzier                       *)

  FVERSION_1_0_0  = 'XA.-.-_';                                                 // Version 1.0.0 has 63 items
  TOT_HASH       = 76;
  HASHTABLE : array[0..TOT_HASH] of RCodes =(
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'qwE'; FCodeField : '1'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'eWq'; FCodeField : '2'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'weR'; FCodeField : '3'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'rEw'; FCodeField : '4'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'eRt'; FCodeField : '5'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'Tre'; FCodeField : '6'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'rty'; FCodeField : '7'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'yTr'; FCodeField : '8'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'Tyu'; FCodeField : '9'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'uYt'; FCodeField : '0'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'yuI'; FCodeField : 'A'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'iuY'; FCodeField : 'B'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'uio'; FCodeField : 'C'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'oIu'; FCodeField : 'D'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'iOp'; FCodeField : 'E'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'Poi'; FCodeField : 'F'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'aSd'; FCodeField : 'G'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'dsA'; FCodeField : 'H'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'Sdf'; FCodeField : 'I'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'fDs'; FCodeField : 'J'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'dfg'; FCodeField : 'K'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'Gfd'; FCodeField : 'L'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'fgh'; FCodeField : 'M'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'Hgf'; FCodeField : 'N'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'ghJ'; FCodeField : 'O'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'jhg'; FCodeField : 'P'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'hJk'; FCodeField : 'Q'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'kjH'; FCodeField : 'R'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'Jkl'; FCodeField : 'S'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'lkj'; FCodeField : 'T'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'kL;'; FCodeField : 'U'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :';lK'; FCodeField : 'V'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'l;"'; FCodeField : 'W'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'";L'; FCodeField : 'X'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'zxc'; FCodeField : 'Y'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'cxZ'; FCodeField : 'Z'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'xCv'; FCodeField : 'a'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'vCx'; FCodeField : 'b'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'cvb'; FCodeField : 'c'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'bvC'; FCodeField : 'd'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'vbN'; FCodeField : 'f'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'nbv'; FCodeField : 'e'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'bNm'; FCodeField : 'g'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'mnB'; FCodeField : 'h'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'nm,'; FCodeField : 'i'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :',mN'; FCodeField : 'j'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'m,.'; FCodeField : 'k'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'.,M'; FCodeField : 'l'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :',./'; FCodeField : 'm'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'/.,'; FCodeField : 'n'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'1Q2'; FCodeField : 'o'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'2V1'; FCodeField : 'p'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'3e4'; FCodeField : 'q'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'463'; FCodeField : 'r'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'5t6'; FCodeField : 's'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'6T5'; FCodeField : 't'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'6y7'; FCodeField : 'u'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'7J6'; FCodeField : 'v'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'p[]'; FCodeField : 'w'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'][p'; FCodeField : 'x'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'qAz'; FCodeField : 'y'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'Zaq'; FCodeField : 'z'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'0-='; FCodeField : ' '),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'rGb'; FCodeField : ','),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'bgR'; FCodeField : '.'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'yjM'; FCodeField : ';'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'mjY'; FCodeField : '"'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'uk,'; FCodeField : '\'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'@-='; FCodeField : '!'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'r#b'; FCodeField : '@'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'!#R'; FCodeField : '#'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'9jM'; FCodeField : '$'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'m33'; FCodeField : '%'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'S<7'; FCodeField : '^'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'<?('; FCodeField : '&'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'(Jl'; FCodeField : '*'),
    (FVersion: FVERSION_1_0_0 ; FCodeValue :'-;:'; FCodeField : '?')
    );
 (*.......................................................................*)(**)(*...........................................*)

type

  THashCode = class(TObject) (*...........................................*)(**)(*THashCode..................................*)
  private
    FSecureCodes: array of RCodes;
    FVersion: string;
    function BuildCodes: Boolean;
  public
    constructor Create; virtual;
    destructor Destroy; override;
    function Decode(Value : string): string; virtual;
    function Encode(Value : string): string; virtual;
  end; (*..............................................................*)(*end*)(*...........................................*)

  THashCode_1_0_0 = class(THashCode) (*...................................*)(**)(*THashCode_1_0_0............................*)
  private
    function FindField(Value : string ; Version :string): string;
    function FindValue(Value : string ; Version :string): string;
  public
    constructor Create; override;
    function Decode(Value : String): string; override;
    function Encode(Value : String): string; override;
  end; (*..............................................................*)(*end*)(*...........................................*)


implementation

{------------------------------------------------------------------------------} {CLASS-THashCode----------------------------}
{ CLASS ~ THashCode                                                            } {                                           }
{                                                                              } {                                           }
{                                                                              } {                                           }
{                                                                              } {                                           }
{------------------------------------------------------------------------------} {-------------------------------------------}

constructor THashCode.Create; (*::::::::::::::::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*constructor:Create-------------------------*)
                                                                                (*===========================================*)
                                                                   (*11.4.2004*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  inherited;
  FVersion := FVERSION_1_0_0;                                                   // Default version string.  Imutable
  BuildCodes;                                                                   // Builds hash table array

end; (*................................................................*)(*end*)(*...........................................*)


function THashCode.BuildCodes: Boolean; (*::::::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:BuildCodes------------------------*)
                                                                                (*===========================================*)
                                                                   (*11.4.2004*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  i :integer;

begin (*.............................................................*)(*begin*)(*...........................................*)

  SetLength(FSecureCodes, TOT_HASH);
  for i := low(FSecureCodes) to high(FSecureCodes) do
    begin
    FSecureCodes[i].FVersion    := HASHTABLE[i].FVersion;
    FSecureCodes[i].FCodeField  := HASHTABLE[i].FCodeField;
    FSecureCodes[i].FCodeValue  := HASHTABLE[i].FCodeValue;
    end;

end; (*................................................................*)(*end*)(*...........................................*)


destructor THashCode.Destroy; (*::::::::::::::::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*destructor:Destroy-------------------------*)
                                                                                (*===========================================*)
                                                                   (*11.4.2004*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  FSecureCodes := nil;
  inherited;

end; (*................................................................*)(*end*)(*...........................................*)



function THashCode.Decode(Value : string): string;
begin
  Result := '';
end;



function THashCode.Encode(Value : string): string;
begin
  Result := '';
end;





{------------------------------------------------------------------------------} {CLASS-THashCode----------------------------}
{ CLASS ~ THashCode                                                            } {*******************************************}
{                                                                              } {                                           }
{                                                                              } {                                           }
{------------------------------------------------------------------------------} {-------------------------------------------}

constructor THashCode_1_0_0.Create; (*::::::::::::::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*constructor:Create-------------------------*)
                                                                                (*===========================================*)
                                                                   (*11.4.2004*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  inherited;
  FVersion := FVERSION_1_0_0;                                                   // Default version string.  Imutable
  BuildCodes;                                                                   // Builds hash table array

end; (*................................................................*)(*end*)(*...........................................*)



function THashCode_1_0_0.FindField(Value : string; Version :string): string; (*START:*)(*===========================================*)
                                                                                (*function:FindField-------------------------*)
                                                                                (*===========================================*)
                                                                   (*11.4.2004*)(* Orig::Deane Putzier                       *)
                                                                                // Helps decode string, is called from decode
                                                                                // method.
                                                                                // PARAMETERS
                                                                                // Value    = 'aSs' ... a string representing 'A' ...
                                                                                // Version  = version of the hash table to look for
                                                                                // Returns  = 'A' or 'a' or 'B' ...
var (*.................................................................*)(*var*)(*...........................................*)
  i :integer;

begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := '';
  for i := low(FSecureCodes) to high(FSecureCodes) do
    if FSecureCodes[i].FVersion = FVersion then                                 // Make sure of the correct version
      if FSecureCodes[i].FCodeValue = Value then                                // Search the CodeValue field
        Result := FSecureCodes[i].FCodeField;                                   // If found return corosponding value

  if Result = '' then                                                           // Was not found so the standard is to place the
    Result := Copy(Value, 3, 1);                                                // item @ pos 3 in the string. Return that value

end; (*................................................................*)(*end*)(*...........................................*)



function THashCode_1_0_0.FindValue(Value :string ; Version :string): string; (*START:*)(*===========================================*)
                                                                                (*function:FindValue-------------------------*)
                                                                                (*===========================================*)
                                                                   (*11.4.2004*)(* Orig::Deane Putzier                       *)
                                                                                // Helps Encode string, is called from encode
                                                                                // method.
                                                                                // PARAMETERS
                                                                                // Value    = 'A' or 'a' or 'B' ...
                                                                                // Version  = version of the hash table to look for
                                                                                // Returns  = 'aSs' ... a string representing Value
var (*.................................................................*)(*var*)(*...........................................*)
  i :integer;

begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := '';
  for i := low(FSecureCodes) to high(FSecureCodes) do
    if FSecureCodes[i].FVersion = FVersion then
      if FSecureCodes[i].FCodeField = Value then
        Result := FSecureCodes[i].FCodeValue;

  if Result = '' then
    Result := '^~' + Value;

end; (*................................................................*)(*end*)(*...........................................*)



function THashCode_1_0_0.Decode(Value : String): string;
                                                                                (*function:Decode----------------------------*)
                                                                                (*===========================================*)
                                                                   (*11.4.2004*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  DecodeStr, HoldStr, DecVersion : string;
  i :integer;

begin (*.............................................................*)(*begin*)(*...........................................*)

  DecodeStr := '';
  i := 1;
  DecVersion := Copy(Value, i, Length(FVersion));
  i := i + Length(FVersion);
  while i < Length(Value) do
    begin
    HoldStr := Copy(Value, i, 3);
    DecodeStr := DecodeStr + FindField(HoldStr, FVersion);
    i := i + 3;
    end;
  Result := DecodeStr;

end; (*................................................................*)(*end*)(*...........................................*)


function THashCode_1_0_0.Encode(Value :String): string; (*::::::::::::::START:*)(*===========================================*)
                                                                                (*function:Encode----------------------------*)
                                                                                (*===========================================*)
                                                                   (*11.4.2004*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  EncodeStr, HoldStr : string;
  i :integer;

begin (*.............................................................*)(*begin*)(*...........................................*)

  EncodeStr := FVersion;                                                        // Place the encoding version in front
  for i := 1 to Length(Value) do                                                // Cycle through the string
    begin
    HoldStr := Copy(Value, i, 1);                                               // Get each item and encode it
    EncodeStr := EncodeStr + FindValue(HoldStr, FVersion);                      // Build encoded string.  FindValue gets value
    end;                                                                        // from array
  Result := EncodeStr;                                                          // Pass back encoded string

end; (*................................................................*)(*end*)(*...........................................*)

end.

