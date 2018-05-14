unit Prescription_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : $Revision:   1.130.1.0.1.0.1.6  $
// File generated on 2007/02/21 12:51:46 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\deane\Development\Delphi6\RxSolution\Compiled\Distribute\Prescription.dll (1)
// LIBID: {6BBB03C0-CF9C-4E35-8607-50F44176B339}
// LCID: 0
// Helpfile: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
//   (2) v4.0 StdVCL, (C:\Windows\system32\stdvcl40.dll)
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  PrescriptionMajorVersion = 1;
  PrescriptionMinorVersion = 2;

  LIBID_Prescription: TGUID = '{6BBB03C0-CF9C-4E35-8607-50F44176B339}';

  IID_IRX: TGUID = '{DD0EB150-EE5F-48E4-8EAF-BCB364C261F9}';
  CLASS_RX: TGUID = '{57168452-EBF4-4C0F-8CE0-CD16B83C1EB0}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IRX = interface;
  IRXDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  RX = IRX;


// *********************************************************************//
// Interface: IRX
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DD0EB150-EE5F-48E4-8EAF-BCB364C261F9}
// *********************************************************************//
  IRX = interface(IDispatch)
    ['{DD0EB150-EE5F-48E4-8EAF-BCB364C261F9}']
    procedure Initialize(const _conString: WideString); safecall;
    function Get_ConnectionString: WideString; safecall;
    procedure Set_ConnectionString(const Value: WideString); safecall;

    //get rights value to determine what user should be able to do --- MC 11/04/2012
    procedure Edit(const _id: WideString; _userRights: Boolean; _userID: WideString; _editLabel: Boolean; _userPin: WideString ); safecall;


    procedure Post(const _id: WideString); safecall;
    procedure Revert(const _id: WideString); safecall;
    procedure Delete(const _id: WideString); safecall;
    procedure Add(const _patientId: WideString; _userNameID: WideString; _userPin: WideString); safecall;

    //get rights value to determine what user should be able to do --- MC 11/04/2012
    procedure Protocols(const _userRights: Boolean; const _userNameID: WideString; const _userPin: WideString); safecall;
    //get rights value to determine what user should be able to do --- MC 11/04/2012
    procedure StandardDose(const _userRights: Boolean; const _userNameID: WideString; const _userPin: WideString); safecall;
    
    function Get_DispenserID: WideString; safecall;
    procedure Set_DispenserID(const Value: WideString); safecall;
    property ConnectionString: WideString read Get_ConnectionString write Set_ConnectionString;
    property DispenserID: WideString read Get_DispenserID write Set_DispenserID;
    procedure CopyRx(const _id: WideString; _userID: WideString; _userPin: WideString ); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRXDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DD0EB150-EE5F-48E4-8EAF-BCB364C261F9}
// *********************************************************************//
  IRXDisp = dispinterface
    ['{DD0EB150-EE5F-48E4-8EAF-BCB364C261F9}']
    procedure Initialize(const _conString: WideString); dispid 1;
    property ConnectionString: WideString dispid 2;
    procedure Edit(const _id: WideString; _userPin: WideString); dispid 3;
    procedure Post(const _id: WideString); dispid 4;
    procedure Revert(const _id: WideString); dispid 5;
    procedure Delete(const _id: WideString); dispid 6;
    procedure Add(const _patientId: WideString; _userNameID: WideString; _userPin: WideString); dispid 7;
    procedure Protocols; dispid 8;
    procedure StandardDose; dispid 9;
    property DispenserID: WideString dispid 10;
    procedure CopyRx(const _id: WideString; _userID: WideString; _userPin: WideString ); dispid 11;

  end;

// *********************************************************************//
// The Class CoRX provides a Create and CreateRemote method to          
// create instances of the default interface IRX exposed by              
// the CoClass RX. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRX = class
    class function Create: IRX;
    class function CreateRemote(const MachineName: string): IRX;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TRX
// Help String      : RX Object
// Default Interface: IRX
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TRXProperties= class;
{$ENDIF}
  TRX = class(TOleServer)
  private
    FIntf:        IRX;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TRXProperties;
    function      GetServerProperties: TRXProperties;
{$ENDIF}
function      GetDefaultInterface: IRX;
  protected
    procedure InitServerData; override;
    function Get_ConnectionString: WideString;
    procedure Set_ConnectionString(const Value: WideString);
    function Get_DispenserID: WideString;
    procedure Set_DispenserID(const Value: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IRX);
    procedure Disconnect; override;
    procedure Initialize(const _conString: WideString);

    procedure Edit(const _id: WideString; _userRights: Boolean; _userID: string; _editLabel: Boolean; _userPin: string);

    procedure Post(const _id: WideString);
    procedure Revert(const _id: WideString);
    procedure Delete(const _id: WideString);
    procedure CopyRx(const _id: WideString; _userID: string; _userPin: string);
    procedure Add(const _patientId: WideString; _userNameID: WideString; _userPin: Widestring);
    procedure Protocols(_userRights: Boolean; const _userNameID: WideString; const _userPin: WideString);
    procedure StandardDose(_userRights: Boolean; const _userNameID: WideString; const _userPin: WideString);
    property DefaultInterface: IRX read GetDefaultInterface;
    property ConnectionString: WideString read Get_ConnectionString write Set_ConnectionString;
    property DispenserID: WideString read Get_DispenserID write Set_DispenserID;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TRXProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TRX
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TRXProperties = class(TPersistent)
  private
    FServer:    TRX;
    function    GetDefaultInterface: IRX;
    constructor Create(AServer: TRX);
  protected
    function Get_ConnectionString: WideString;
    procedure Set_ConnectionString(const Value: WideString);
    function Get_DispenserID: WideString;
    procedure Set_DispenserID(const Value: WideString);
  public
    property DefaultInterface: IRX read GetDefaultInterface;
  published
    property ConnectionString: WideString read Get_ConnectionString write Set_ConnectionString;
    property DispenserID: WideString read Get_DispenserID write Set_DispenserID;
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

implementation

uses ComObj;

class function CoRX.Create: IRX;
begin
  Result := CreateComObject(CLASS_RX) as IRX;
end;

class function CoRX.CreateRemote(const MachineName: string): IRX;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RX) as IRX;
end;

procedure TRX.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{57168452-EBF4-4C0F-8CE0-CD16B83C1EB0}';
    IntfIID:   '{DD0EB150-EE5F-48E4-8EAF-BCB364C261F9}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TRX.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IRX;
  end;
end;

procedure TRX.ConnectTo(svrIntf: IRX);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TRX.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TRX.GetDefaultInterface: IRX;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TRX.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TRXProperties.Create(Self);
{$ENDIF}
end;

destructor TRX.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TRX.GetServerProperties: TRXProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TRX.Get_ConnectionString: WideString;
begin
    Result := DefaultInterface.ConnectionString;
end;

procedure TRX.Set_ConnectionString(const Value: WideString);
  { Warning: The property ConnectionString has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ConnectionString := Value;
end;

function TRX.Get_DispenserID: WideString;
begin
    Result := DefaultInterface.DispenserID;
end;

procedure TRX.Set_DispenserID(const Value: WideString);
  { Warning: The property DispenserID has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DispenserID := Value;
end;

procedure TRX.Initialize(const _conString: WideString);
begin
  DefaultInterface.Initialize(_conString);
end;

procedure TRX.Edit(const _id: WideString; _userRights:boolean; _userID: String; _editLabel: Boolean; _userPin: string);
begin
  DefaultInterface.Edit(_id,_userRights, _userID, _editLabel, _userPin);
end;

procedure TRX.Post(const _id: WideString);
begin
  DefaultInterface.Post(_id);
end;

procedure TRX.Revert(const _id: WideString);
begin
  DefaultInterface.Revert(_id);
end;

procedure TRX.Delete(const _id: WideString);
begin
  DefaultInterface.Delete(_id);
end;

procedure TRX.CopyRx(const _id: WideString; _userID: string; _userPin: string);
begin
  DefaultInterface.CopyRx(_id, _userID, _userPin);
end;



procedure TRX.Add(const _patientId: WideString; _userNameID: WideString; _userPin: Widestring);
begin
  DefaultInterface.Add(_patientId, _userNameID, _userPin);
end;

//provide user rights MC - 11/04/2012
procedure TRX.Protocols(_userRights: Boolean; const _userNameID: WideString; const _userPin: WideString);
begin
  DefaultInterface.Protocols(_userRights,_userNameID,_userPin);
end;

//provide user rights MC - 11/04/2012
procedure TRX.StandardDose(_userRights: Boolean; const _userNameID: WideString; const _userPin: WideString);
begin
  DefaultInterface.StandardDose(_userRights, _userNameID, _userPin);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TRXProperties.Create(AServer: TRX);
begin
  inherited Create;
  FServer := AServer;
end;

function TRXProperties.GetDefaultInterface: IRX;
begin
  Result := FServer.DefaultInterface;
end;

function TRXProperties.Get_ConnectionString: WideString;
begin
    Result := DefaultInterface.ConnectionString;
end;

procedure TRXProperties.Set_ConnectionString(const Value: WideString);
  { Warning: The property ConnectionString has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ConnectionString := Value;
end;

function TRXProperties.Get_DispenserID: WideString;
begin
    Result := DefaultInterface.DispenserID;
end;

procedure TRXProperties.Set_DispenserID(const Value: WideString);
  { Warning: The property DispenserID has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DispenserID := Value;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TRX]);
end;

end.
