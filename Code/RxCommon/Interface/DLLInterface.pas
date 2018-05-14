unit DLLInterface;

interface

uses  Forms, Variants, Controls, Dialogs, DateUtils, ExtCtrls,
      ComObj, SysUtils, SystemConstants, RxSolutionSecurityClass;

type
  TDLLInterface = class(TObject)
  public
    class procedure Dispenser__Add(pDatabase :string; pAccessLevel :integer);
    class procedure Dispenser__Delete(pDatabase:String; pID :SGUID; pAccessLevel :
        integer);
    class procedure Dispenser__Edit(pDatabase:String; pID :SGUID; pAccessLevel :
        integer);
    class procedure Prescriber__Add(pDatabase :string; pAccessLevel :integer);
    class procedure Prescriber__Delete(pDatabase:String; pID :SGUID; pAccessLevel :
        integer);
    class procedure Prescriber__Edit(pDatabase:String; pID :SGUID; pAccessLevel :
        integer);
    class procedure Print__Batch_01(prmConStr, prmRouteName : string ; prmDateFrom,
        prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ; prmPrintShipped :
        string; prmpost : string);
    class procedure Print__Batch_02(prmConStr, prmRouteName : string ; prmDateFrom,
        prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule, prmATC,
        prmIndication : string ; prmPrintShipped : string; prmpost : string);
    class procedure Print__Batch_03(prmConStr, prmRouteName : string ; prmDateFrom,
        prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ; prmPrintShipped :
        string);
    class procedure Print__Batch_07(prmConStr, prmRouteName : string ; prmDateFrom,
        prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ; prmPrintShipped :
        string);   //SM

    class procedure Print__Batch_08(prmConStr, prmRouteName : string ; prmDateFrom,
        prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ; prmPrintShipped :
        string);   //SM

    class procedure Print__Batch_09(prmConStr, prmRouteName : string ; prmDateFrom,
        prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ; prmPrintShipped :
        string);

           //SM

    class procedure Print__Batch_06(prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string);

  //MC - 21/08/2012
  class procedure Print__Batch_12(prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string; prmPrescriptionNo: string);

    class procedure Print__Batch_10(prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped, prmpost : string);

    //MC - 20/08/2012
        class procedure Print__Batch_13(prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped, prmpost : string; prmPrescriptionNo: string);

    class procedure Print__Batch_05(prmConStr, prmRouteName : string ; prmDateFrom,
        prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule, prmATC,
        prmIndication : string ; prmPrintShipped : string );
        
        //mc - mankga - 20/08/2012
        class procedure Print__Batch_11(prmConStr, prmRouteName : string ; prmDateFrom,
        prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule, prmATC,
        prmIndication : string ; prmPrintShipped : string ; prmPrescriptionNo: string);

      //mc - mankga -  12/02/2013
        class procedure Print__Batch_14(prmConStr, prmRouteName : string ; prmDateFrom,
        prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule, prmATC,
        prmIndication : string ; prmpost : string; prmPrintShipped : string ; prmPrescriptionNo: string);


    class procedure Print__PatientList(prmConStr : string ; prmType : integer ;
        prmFilter : String = '');
    class procedure Print__Rx(prmConStr : String ; prmRxID : String);

    class procedure Edit__BatchLabels(prmConStr : String; vOption: integer);
    
  end;

  TTemp = class(TObject)
  public
    class procedure Prescription__Add(prmConStr, PatientID, PrescriberID,
        DispenserID : String; prmUser : TSecurity);
    class procedure Prescription__Delete(prmConstr, prmRxID : String ; prmUser :
        TSecurity);
    class procedure Prescription__Edit(prmConstr, prmRxID : String ; prmUser :
        TSecurity);
    class procedure Prescription__Post(prmConstr, prmRxID : String ; prmUser :
        TSecurity);

  end;

  //Dispenser DLL
  procedure Edit_Dispenser(appHandle : THandle ; pDatabase:String; pID :SGUID;
      pAccessLevel : integer); stdcall; external 'DispenserDLL.dll';

  procedure Add_Dispenser(appHandle : THandle ; pDatabase :string; pAccessLevel
      :integer); stdcall; external 'DispenserDLL.dll';

  procedure Delete_Dispenser(appHandle : THandle ; pDatabase:String; pID :SGUID;
      pAccessLevel : integer); stdcall; external 'DispenserDLL.dll';

  //Prescriber DLL
  procedure Edit_Prescriber(appHandle : THandle ; pDatabase:String; pID :SGUID;
      pAccessLevel : integer); stdcall; external 'PrescriberDLL.dll';

  procedure Add_Prescriber(appHandle : THandle ; pDatabase :string; pAccessLevel
      :integer); stdcall; external 'PrescriberDLL.dll';

  procedure Delete_Prescriber(appHandle : THandle ; pDatabase:String; pID :SGUID;
      pAccessLevel : integer); stdcall; external 'PrescriberDLL.dll';

  procedure Print_Patient_ListOf(appHandle : THandle ; prmConStr : string ;
      prmType : integer ; prmFilter : String = ''); stdcall; external
      'PrintDll.dll';

  //Prescription DLL
  function Edit_Prescription(appHandle : THandle ; prmConstr, prmRxID : String ;
      prmUser : TSecurity): LongInt; stdcall; external 'PrescriptionDLL.dll';

  function Delete_Prescription(appHandle : THandle ; prmConstr, prmRxID : String
      ; prmUser : TSecurity): LongInt; stdcall; external 'PrescriptionDLL.dll';

  function Add_PrescriptionDefined(appHandle : THandle ; prmConStr, PatientID,
      PrescriberID, DispenserID : String;  prmUser : TSecurity): LongInt;
      stdcall; external 'PrescriptionDLL.dll';

function Post_Prescription(appHandle : THandle ; prmConStr, prmRxID : string ;
    prmUser : TSecurity): LongInt; stdcall; external 'PrescriptionDLL.dll';


 //SM 26 Sep 2007
  function CopyRx_Prescription(appHandle : THandle ; prmConStr, prmRxID : string ;
    prmUser : TSecurity): LongInt; stdcall; external 'PrescriptionDLL.dll';

  // PrintDLL
  procedure Print_Batch_01(appHandle : THandle ; prmConStr, prmRouteName : string
      ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
      prmPrintShipped : string; prmpost : string); stdcall; external 'PrintDll.dll';

  procedure Print_Batch_02(appHandle : THandle ; prmConStr, prmRouteName : string
      ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
      prmATC, prmIndication : string ; prmPrintShipped : string; prmpost : string ); stdcall;
      external 'PrintDll.dll';

  procedure Print_Batch_03(appHandle : THandle ; prmConStr, prmRouteName : string
      ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
      prmPrintShipped : string); stdcall; external 'PrintDll.dll';
  //SM 11/07/07
  procedure Print_Batch_07(appHandle : THandle ; prmConStr, prmRouteName : string
      ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
      prmPrintShipped : string); stdcall; external 'PrintDll.dll';

  //SM 02/05/08
  procedure Print_Batch_08(appHandle : THandle ; prmConStr, prmRouteName : string
      ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
      prmPrintShipped : string); stdcall; external 'PrintDll.dll';

  //SM 02/06/08
  procedure Print_Batch_09(appHandle : THandle ; prmConStr, prmRouteName : string
      ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
      prmPrintShipped : string); stdcall; external 'PrintDll.dll';

  procedure Print_Batch_05(appHandle : THandle ; prmConStr, prmRouteName : string
      ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
      prmATC, prmIndication : string ; prmPrintShipped : string); stdcall;
      external 'PrintDll.dll';

  //mc 20/08/2012
    procedure Print_Batch_11(appHandle : THandle ; prmConStr, prmRouteName : string
      ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
      prmATC, prmIndication : string ; prmPrintShipped : string; prmPrescriptionNo: string); stdcall;
      external 'PrintDll.dll';

    //mc 02/02/2013
    procedure Print_Batch_14(appHandle : THandle ; prmConStr, prmRouteName : string
      ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
      prmATC, prmIndication : string ; prmpost : string; prmPrintShipped : string; prmPrescriptionNo: string); stdcall;
      external 'PrintDll.dll';

  procedure Print_Batch_06(appHandle : THandle ; prmConStr, prmRouteName : string
      ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
      prmATC, prmIndication : string ; prmPrintShipped : string); stdcall;
      external 'PrintDll.dll';

      //mc mankga - 20/08/2012
    procedure Print_Batch_12(appHandle : THandle ; prmConStr, prmRouteName : string
      ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
      prmATC, prmIndication : string ; prmPrintShipped : string; prmPrescriptionNo: string); stdcall;
      external 'PrintDll.dll';

   procedure Print_Batch_10(appHandle : THandle ; prmConStr, prmRouteName : string
      ; prmDateFrom, prmDateTo : TDateTime ; prmClinic,prmRxOrigin, prmPrintShipped, prmpost : string); stdcall;
      external 'PrintDll.dll';

      //mc - 20/08/2012
     procedure Print_Batch_13(appHandle : THandle ; prmConStr, prmRouteName : string
      ; prmDateFrom, prmDateTo : TDateTime ; prmClinic,prmRxOrigin, prmPrintShipped, prmpost : string; prmPrescriptionNo: string); stdcall;
      external 'PrintDll.dll';

 //CM 07 Sep 2010
procedure Print_Rx_Prescription(appHandle : THandle ; prmConStr : String ;
    prmRxID : String); stdcall; external 'PrintDll.dll';

procedure EditBatchLabels(appHandle : THandle ; prmConStr : String; vOption: integer); stdcall; external 'PrintDll.dll';


implementation

class procedure TDLLInterface.Dispenser__Add(pDatabase :string; pAccessLevel :integer);
begin
  Add_Dispenser(Application.Handle, pDatabase, pAccessLevel);
end;

class procedure TDLLInterface.Dispenser__Delete(pDatabase:String; pID :SGUID;
    pAccessLevel : integer);
begin
  Delete_Dispenser(Application.Handle, pDatabase, pID, pAccessLevel);
end;

class procedure TDLLInterface.Dispenser__Edit(pDatabase:String; pID :SGUID; pAccessLevel
    : integer);
begin
  Edit_Dispenser(Application.Handle, pDatabase, pID, pAccessLevel);
end;

class procedure TDLLInterface.Prescriber__Add(pDatabase :string; pAccessLevel
    :integer);
begin
  Add_Prescriber(Application.Handle, pDatabase, pAccessLevel);
end;

class procedure TDLLInterface.Prescriber__Delete(pDatabase:String; pID :SGUID;
    pAccessLevel : integer);
begin
  Delete_Prescriber(Application.Handle, pDatabase, pID, pAccessLevel);
end;

class procedure TDLLInterface.Prescriber__Edit(pDatabase:String; pID :SGUID;
    pAccessLevel : integer);
begin
  Edit_Prescriber(Application.Handle, pDatabase, pID, pAccessLevel);
end;

class procedure TDLLInterface.Print__Batch_01(prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string; prmpost : string);
begin
  Print_Batch_01(Application.Handle, prmConStr, prmRouteName, prmDateFrom, prmDateTo, prmClinic, prmRxOrigin, prmPrintShipped, prmpost);
end;

class procedure TDLLInterface.Print__Batch_02(prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string; prmpost : string);
begin
  Print_Batch_02(Application.Handle, prmConStr, prmRouteName, prmDateFrom, prmDateTo, prmClinic, prmRxOrigin, prmSchedule, prmATC, prmIndication, prmPrintShipped, prmpost);
end;

class procedure TDLLInterface.Print__Batch_03(prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string);
begin
  Print_Batch_03(Application.Handle, prmConStr, prmRouteName, prmDateFrom, prmDateTo, prmClinic, prmRxOrigin, prmPrintShipped);
end;

class procedure TDLLInterface.Print__Batch_07(prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string);
begin
  Print_Batch_07(Application.Handle, prmConStr, prmRouteName, prmDateFrom, prmDateTo, prmClinic, prmRxOrigin, prmPrintShipped);
end;

class procedure TDLLInterface.Print__Batch_08(prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string);
begin
  Print_Batch_08(Application.Handle, prmConStr, prmRouteName, prmDateFrom, prmDateTo, prmClinic, prmRxOrigin, prmPrintShipped);
end;


class procedure TDLLInterface.Print__Batch_09(prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string);
begin
  Print_Batch_09(Application.Handle, prmConStr, prmRouteName, prmDateFrom, prmDateTo, prmClinic, prmRxOrigin, prmPrintShipped);
end;

class procedure TDLLInterface.Print__Batch_10(prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped, prmpost : string);
begin
  Print_Batch_10(Application.Handle, prmConStr, prmRouteName, prmDateFrom, prmDateTo, prmClinic, prmRxOrigin, prmPrintShipped, prmpost);
end;
//MC - 21/08/2012
class procedure TDLLInterface.Print__Batch_13(prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped, prmpost : string; prmPrescriptionNo: string);
begin
  Print_Batch_13(Application.Handle, prmConStr, prmRouteName, prmDateFrom, prmDateTo, prmClinic, prmRxOrigin, prmPrintShipped, prmpost, prmPrescriptionNo);
end;


class procedure TDLLInterface.Print__Batch_06(prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string);
begin
  Print_Batch_06(Application.Handle, prmConStr, prmRouteName, prmDateFrom, prmDateTo, prmClinic, prmRxOrigin, prmSchedule, prmATC, prmIndication, prmPrintShipped);
end;

//MC Mankga - 20/08/2012
class procedure TDLLInterface.Print__Batch_12(prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string; prmPrescriptionNo: string);
begin
  Print_Batch_12(Application.Handle, prmConStr, prmRouteName, prmDateFrom, prmDateTo, prmClinic, prmRxOrigin, prmSchedule, prmATC, prmIndication, prmPrintShipped, prmPrescriptionNo);
end;



class procedure TDLLInterface.Print__Batch_05(prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string);
begin
  Print_Batch_05(Application.Handle, prmConStr, prmRouteName, prmDateFrom, prmDateTo, prmClinic, prmRxOrigin, prmSchedule, prmATC, prmIndication, prmPrintShipped);
end;


//MC - 20/08/2012
class procedure TDLLInterface.Print__Batch_11(prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string; prmPrescriptionNo: string);
begin
  Print_Batch_11(Application.Handle, prmConStr, prmRouteName, prmDateFrom, prmDateTo, prmClinic, prmRxOrigin, prmSchedule, prmATC, prmIndication, prmPrintShipped, prmPrescriptionNo);
end;

//MC - 02/02/2013
class procedure TDLLInterface.Print__Batch_14(prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmpost : string; prmPrintShipped : string; prmPrescriptionNo: string);
begin
  Print_Batch_14(Application.Handle, prmConStr, prmRouteName, prmDateFrom, prmDateTo, prmClinic, prmRxOrigin, prmSchedule, prmATC, prmIndication, prmpost, prmPrintShipped, prmPrescriptionNo);
end;


class procedure TDLLInterface.Print__PatientList(prmConStr : string ; prmType :
    integer ; prmFilter : String = '');
begin
  Print_Patient_ListOf(Application.Handle, prmConStr, prmType, prmFilter);
end;

class procedure TDLLInterface.Print__Rx(prmConStr : String ; prmRxID : String);
begin
  Print_Rx_Prescription(Application.Handle, prmConStr, prmRxID);
end;

class procedure TTemp.Prescription__Add(prmConStr, PatientID, PrescriberID,
    DispenserID : String; prmUser : TSecurity);
begin
  Add_PrescriptionDefined(Application.Handle, prmConStr, PatientID, PrescriberID, DispenserID, prmUser);
end;

class procedure TTemp.Prescription__Delete(prmConstr, prmRxID : String ;
    prmUser : TSecurity);
begin
  Delete_Prescription(Application.Handle, prmConstr, prmRxID, prmUser);
end;

class procedure TTemp.Prescription__Edit(prmConstr, prmRxID : String ; prmUser
    : TSecurity);
begin
  Edit_Prescription(Application.Handle, prmConstr, prmRxID, prmUser);
end;

class procedure TTemp.Prescription__Post(prmConstr, prmRxID : String ; prmUser
    : TSecurity);
begin
  Post_Prescription(Application.Handle, prmConstr, prmRxID, prmUser);
end;

class procedure TDLLInterface.Edit__BatchLabels(prmConstr: String; vOption: integer);
begin
 EditBatchLabels(Application.Handle, prmConstr, vOption);
end;
end.

