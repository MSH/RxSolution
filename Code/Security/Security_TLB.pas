unit Security_TLB;

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
// File generated on 2006/11/01 05:04:28 AM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\deane.PUTBURG\Development\RxSolution\Delphi 6.0\RxSolution\Code\Security\Security.tlb (1)
// LIBID: {DCF48281-BE30-40A5-A62D-A969FA6D8803}
// LCID: 0
// Helpfile: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
//   (2) v4.0 StdVCL, (C:\Windows\system32\stdvcl40.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  SecurityMajorVersion = 1;
  SecurityMinorVersion = 0;

  LIBID_Security: TGUID = '{DCF48281-BE30-40A5-A62D-A969FA6D8803}';

  IID_IUser: TGUID = '{2A0DE380-4860-4C26-A3A1-5004857D30E9}';
  CLASS_User: TGUID = '{C4F6061F-4794-4E2F-B123-CF3445069058}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IUser = interface;
  IUserDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  User = IUser;


// *********************************************************************//
// Interface: IUser
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2A0DE380-4860-4C26-A3A1-5004857D30E9}
// *********************************************************************//
  IUser = interface(IDispatch)
    ['{2A0DE380-4860-4C26-A3A1-5004857D30E9}']
  end;

// *********************************************************************//
// DispIntf:  IUserDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2A0DE380-4860-4C26-A3A1-5004857D30E9}
// *********************************************************************//
  IUserDisp = dispinterface
    ['{2A0DE380-4860-4C26-A3A1-5004857D30E9}']
  end;

// *********************************************************************//
// The Class CoUser provides a Create and CreateRemote method to          
// create instances of the default interface IUser exposed by              
// the CoClass User. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUser = class
    class function Create: IUser;
    class function CreateRemote(const MachineName: string): IUser;
  end;

implementation

uses ComObj;

class function CoUser.Create: IUser;
begin
  Result := CreateComObject(CLASS_User) as IUser;
end;

class function CoUser.CreateRemote(const MachineName: string): IUser;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_User) as IUser;
end;

end.
