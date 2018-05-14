unit RxPaabInterface_TLB;

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
// File generated on 21/07/2014 04:42:14 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\smahlaba\Documents\Projects\RxSolutionCode - BarCoding\Compiled\Distribute\RxPaabInterface.tlb (1)
// LIBID: {5A92A7E7-E0F8-4DDC-B925-A07F2F9E1B9E}
// LCID: 0
// Helpfile: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
//   (3) v2.0 System, (C:\Windows\Microsoft.NET\Framework\v2.0.50727\System.tlb)
//   (4) v4.0 StdVCL, (C:\Windows\SysWOW64\stdvcl40.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, mscorlib_TLB, StdVCL, System_TLB, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  RxPaabInterfaceMajorVersion = 1;
  RxPaabInterfaceMinorVersion = 0;

  LIBID_RxPaabInterface: TGUID = '{5A92A7E7-E0F8-4DDC-B925-A07F2F9E1B9E}';

  IID_IRxPaab: TGUID = '{D45FD2C1-C516-3449-8017-8346CD4FC221}';
  IID__RxPaab: TGUID = '{29913DD7-F711-3B15-8367-4BF73AB67BAA}';
  IID__PAABService: TGUID = '{74FC89BD-DE50-375F-9955-ADA7DF99A97F}';
  IID__User: TGUID = '{7D0C12DB-A1DC-3C64-BF51-DB099C32BADF}';
  IID__Patient: TGUID = '{103A4B63-D10B-33B6-BDB8-E7442921E144}';
  IID__searchPatientCompletedEventHandler: TGUID = '{DFBB0147-6742-3E76-97DC-D0488777174B}';
  IID__searchPatientCompletedEventArgs: TGUID = '{DE8770D5-0F30-3F85-9B12-5584C725DA12}';
  IID__searchPatientVisitCompletedEventHandler: TGUID = '{49B09C95-FA9C-3E53-A996-246B83DB3C2E}';
  IID__searchPatientVisitCompletedEventArgs: TGUID = '{937C19FC-A0BD-3D90-A7A8-E281DAED75C6}';
  CLASS_RxPaab: TGUID = '{8DF1283D-2111-3CAC-AF66-9D82A739EA9A}';
  CLASS_PAABService: TGUID = '{8E43F615-B9F2-34FB-B529-58516B52140F}';
  CLASS_User: TGUID = '{89CD0EEE-5F9D-3F83-B283-0BDC9E9FA4D4}';
  CLASS_Patient: TGUID = '{F015E3A3-653D-3F2E-80E0-4EA5114B65F2}';
  CLASS_searchPatientCompletedEventHandler: TGUID = '{546D12A6-2BBD-32DF-8A8B-8C8DB38D1CFD}';
  CLASS_searchPatientCompletedEventArgs: TGUID = '{AA262A6C-935D-3E80-8F73-09E86CCA3225}';
  CLASS_searchPatientVisitCompletedEventHandler: TGUID = '{152C7B55-F2DF-35FD-8B6B-B3C3695774BB}';
  CLASS_searchPatientVisitCompletedEventArgs: TGUID = '{67F12D27-4167-3D8E-A250-62E43B68F826}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IRxPaab = interface;
  IRxPaabDisp = dispinterface;
  _RxPaab = interface;
  _RxPaabDisp = dispinterface;
  _PAABService = interface;
  _PAABServiceDisp = dispinterface;
  _User = interface;
  _UserDisp = dispinterface;
  _Patient = interface;
  _PatientDisp = dispinterface;
  _searchPatientCompletedEventHandler = interface;
  _searchPatientCompletedEventHandlerDisp = dispinterface;
  _searchPatientCompletedEventArgs = interface;
  _searchPatientCompletedEventArgsDisp = dispinterface;
  _searchPatientVisitCompletedEventHandler = interface;
  _searchPatientVisitCompletedEventHandlerDisp = dispinterface;
  _searchPatientVisitCompletedEventArgs = interface;
  _searchPatientVisitCompletedEventArgsDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  RxPaab = _RxPaab;
  PAABService = _PAABService;
  User = _User;
  Patient = _Patient;
  searchPatientCompletedEventHandler = _searchPatientCompletedEventHandler;
  searchPatientCompletedEventArgs = _searchPatientCompletedEventArgs;
  searchPatientVisitCompletedEventHandler = _searchPatientVisitCompletedEventHandler;
  searchPatientVisitCompletedEventArgs = _searchPatientVisitCompletedEventArgs;


// *********************************************************************//
// Interface: IRxPaab
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D45FD2C1-C516-3449-8017-8346CD4FC221}
// *********************************************************************//
  IRxPaab = interface(IDispatch)
    ['{D45FD2C1-C516-3449-8017-8346CD4FC221}']
    function SearchPatient(const name: WideString; const surname: WideString; 
                           const pnumber: WideString; const ID: WideString; 
                           const connectionString: WideString): WideString; safecall;
    function TestService: WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IRxPaabDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D45FD2C1-C516-3449-8017-8346CD4FC221}
// *********************************************************************//
  IRxPaabDisp = dispinterface
    ['{D45FD2C1-C516-3449-8017-8346CD4FC221}']
    function SearchPatient(const name: WideString; const surname: WideString; 
                           const pnumber: WideString; const ID: WideString; 
                           const connectionString: WideString): WideString; dispid 1610743808;
    function TestService: WordBool; dispid 1610743809;
  end;

// *********************************************************************//
// Interface: _RxPaab
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {29913DD7-F711-3B15-8367-4BF73AB67BAA}
// *********************************************************************//
  _RxPaab = interface(IDispatch)
    ['{29913DD7-F711-3B15-8367-4BF73AB67BAA}']
  end;

// *********************************************************************//
// DispIntf:  _RxPaabDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {29913DD7-F711-3B15-8367-4BF73AB67BAA}
// *********************************************************************//
  _RxPaabDisp = dispinterface
    ['{29913DD7-F711-3B15-8367-4BF73AB67BAA}']
  end;

// *********************************************************************//
// Interface: _PAABService
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {74FC89BD-DE50-375F-9955-ADA7DF99A97F}
// *********************************************************************//
  _PAABService = interface(IDispatch)
    ['{74FC89BD-DE50-375F-9955-ADA7DF99A97F}']
  end;

// *********************************************************************//
// DispIntf:  _PAABServiceDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {74FC89BD-DE50-375F-9955-ADA7DF99A97F}
// *********************************************************************//
  _PAABServiceDisp = dispinterface
    ['{74FC89BD-DE50-375F-9955-ADA7DF99A97F}']
  end;

// *********************************************************************//
// Interface: _User
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7D0C12DB-A1DC-3C64-BF51-DB099C32BADF}
// *********************************************************************//
  _User = interface(IDispatch)
    ['{7D0C12DB-A1DC-3C64-BF51-DB099C32BADF}']
  end;

// *********************************************************************//
// DispIntf:  _UserDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7D0C12DB-A1DC-3C64-BF51-DB099C32BADF}
// *********************************************************************//
  _UserDisp = dispinterface
    ['{7D0C12DB-A1DC-3C64-BF51-DB099C32BADF}']
  end;

// *********************************************************************//
// Interface: _Patient
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {103A4B63-D10B-33B6-BDB8-E7442921E144}
// *********************************************************************//
  _Patient = interface(IDispatch)
    ['{103A4B63-D10B-33B6-BDB8-E7442921E144}']
  end;

// *********************************************************************//
// DispIntf:  _PatientDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {103A4B63-D10B-33B6-BDB8-E7442921E144}
// *********************************************************************//
  _PatientDisp = dispinterface
    ['{103A4B63-D10B-33B6-BDB8-E7442921E144}']
  end;

// *********************************************************************//
// Interface: _searchPatientCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DFBB0147-6742-3E76-97DC-D0488777174B}
// *********************************************************************//
  _searchPatientCompletedEventHandler = interface(IDispatch)
    ['{DFBB0147-6742-3E76-97DC-D0488777174B}']
  end;

// *********************************************************************//
// DispIntf:  _searchPatientCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DFBB0147-6742-3E76-97DC-D0488777174B}
// *********************************************************************//
  _searchPatientCompletedEventHandlerDisp = dispinterface
    ['{DFBB0147-6742-3E76-97DC-D0488777174B}']
  end;

// *********************************************************************//
// Interface: _searchPatientCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DE8770D5-0F30-3F85-9B12-5584C725DA12}
// *********************************************************************//
  _searchPatientCompletedEventArgs = interface(IDispatch)
    ['{DE8770D5-0F30-3F85-9B12-5584C725DA12}']
  end;

// *********************************************************************//
// DispIntf:  _searchPatientCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DE8770D5-0F30-3F85-9B12-5584C725DA12}
// *********************************************************************//
  _searchPatientCompletedEventArgsDisp = dispinterface
    ['{DE8770D5-0F30-3F85-9B12-5584C725DA12}']
  end;

// *********************************************************************//
// Interface: _searchPatientVisitCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {49B09C95-FA9C-3E53-A996-246B83DB3C2E}
// *********************************************************************//
  _searchPatientVisitCompletedEventHandler = interface(IDispatch)
    ['{49B09C95-FA9C-3E53-A996-246B83DB3C2E}']
  end;

// *********************************************************************//
// DispIntf:  _searchPatientVisitCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {49B09C95-FA9C-3E53-A996-246B83DB3C2E}
// *********************************************************************//
  _searchPatientVisitCompletedEventHandlerDisp = dispinterface
    ['{49B09C95-FA9C-3E53-A996-246B83DB3C2E}']
  end;

// *********************************************************************//
// Interface: _searchPatientVisitCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {937C19FC-A0BD-3D90-A7A8-E281DAED75C6}
// *********************************************************************//
  _searchPatientVisitCompletedEventArgs = interface(IDispatch)
    ['{937C19FC-A0BD-3D90-A7A8-E281DAED75C6}']
  end;

// *********************************************************************//
// DispIntf:  _searchPatientVisitCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {937C19FC-A0BD-3D90-A7A8-E281DAED75C6}
// *********************************************************************//
  _searchPatientVisitCompletedEventArgsDisp = dispinterface
    ['{937C19FC-A0BD-3D90-A7A8-E281DAED75C6}']
  end;

// *********************************************************************//
// The Class CoRxPaab provides a Create and CreateRemote method to          
// create instances of the default interface _RxPaab exposed by              
// the CoClass RxPaab. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRxPaab = class
    class function Create: _RxPaab;
    class function CreateRemote(const MachineName: string): _RxPaab;
  end;

// *********************************************************************//
// The Class CoPAABService provides a Create and CreateRemote method to          
// create instances of the default interface _PAABService exposed by              
// the CoClass PAABService. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPAABService = class
    class function Create: _PAABService;
    class function CreateRemote(const MachineName: string): _PAABService;
  end;

// *********************************************************************//
// The Class CoUser provides a Create and CreateRemote method to          
// create instances of the default interface _User exposed by              
// the CoClass User. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUser = class
    class function Create: _User;
    class function CreateRemote(const MachineName: string): _User;
  end;

// *********************************************************************//
// The Class CoPatient provides a Create and CreateRemote method to          
// create instances of the default interface _Patient exposed by              
// the CoClass Patient. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPatient = class
    class function Create: _Patient;
    class function CreateRemote(const MachineName: string): _Patient;
  end;

// *********************************************************************//
// The Class CosearchPatientCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _searchPatientCompletedEventHandler exposed by              
// the CoClass searchPatientCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CosearchPatientCompletedEventHandler = class
    class function Create: _searchPatientCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _searchPatientCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CosearchPatientCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _searchPatientCompletedEventArgs exposed by              
// the CoClass searchPatientCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CosearchPatientCompletedEventArgs = class
    class function Create: _searchPatientCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _searchPatientCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CosearchPatientVisitCompletedEventHandler provides a Create and CreateRemote method to          
// create instances of the default interface _searchPatientVisitCompletedEventHandler exposed by              
// the CoClass searchPatientVisitCompletedEventHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CosearchPatientVisitCompletedEventHandler = class
    class function Create: _searchPatientVisitCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _searchPatientVisitCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CosearchPatientVisitCompletedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _searchPatientVisitCompletedEventArgs exposed by              
// the CoClass searchPatientVisitCompletedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CosearchPatientVisitCompletedEventArgs = class
    class function Create: _searchPatientVisitCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _searchPatientVisitCompletedEventArgs;
  end;

implementation

uses ComObj;

class function CoRxPaab.Create: _RxPaab;
begin
  Result := CreateComObject(CLASS_RxPaab) as _RxPaab;
end;

class function CoRxPaab.CreateRemote(const MachineName: string): _RxPaab;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RxPaab) as _RxPaab;
end;

class function CoPAABService.Create: _PAABService;
begin
  Result := CreateComObject(CLASS_PAABService) as _PAABService;
end;

class function CoPAABService.CreateRemote(const MachineName: string): _PAABService;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PAABService) as _PAABService;
end;

class function CoUser.Create: _User;
begin
  Result := CreateComObject(CLASS_User) as _User;
end;

class function CoUser.CreateRemote(const MachineName: string): _User;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_User) as _User;
end;

class function CoPatient.Create: _Patient;
begin
  Result := CreateComObject(CLASS_Patient) as _Patient;
end;

class function CoPatient.CreateRemote(const MachineName: string): _Patient;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Patient) as _Patient;
end;

class function CosearchPatientCompletedEventHandler.Create: _searchPatientCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_searchPatientCompletedEventHandler) as _searchPatientCompletedEventHandler;
end;

class function CosearchPatientCompletedEventHandler.CreateRemote(const MachineName: string): _searchPatientCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_searchPatientCompletedEventHandler) as _searchPatientCompletedEventHandler;
end;

class function CosearchPatientCompletedEventArgs.Create: _searchPatientCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_searchPatientCompletedEventArgs) as _searchPatientCompletedEventArgs;
end;

class function CosearchPatientCompletedEventArgs.CreateRemote(const MachineName: string): _searchPatientCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_searchPatientCompletedEventArgs) as _searchPatientCompletedEventArgs;
end;

class function CosearchPatientVisitCompletedEventHandler.Create: _searchPatientVisitCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_searchPatientVisitCompletedEventHandler) as _searchPatientVisitCompletedEventHandler;
end;

class function CosearchPatientVisitCompletedEventHandler.CreateRemote(const MachineName: string): _searchPatientVisitCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_searchPatientVisitCompletedEventHandler) as _searchPatientVisitCompletedEventHandler;
end;

class function CosearchPatientVisitCompletedEventArgs.Create: _searchPatientVisitCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_searchPatientVisitCompletedEventArgs) as _searchPatientVisitCompletedEventArgs;
end;

class function CosearchPatientVisitCompletedEventArgs.CreateRemote(const MachineName: string): _searchPatientVisitCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_searchPatientVisitCompletedEventArgs) as _searchPatientVisitCompletedEventArgs;
end;

end.
