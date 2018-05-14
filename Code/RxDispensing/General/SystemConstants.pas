unit SystemConstants;

interface

uses
  SysUtils, Classes, ComObj,
  DB, ADODB, Variants;



type

  SGUID = string[50];

const
  //ACCESS AREAS
  AREA_SYSTEM       = 100;
  AREA_PRESCRIBER   = 1;
  AREA_PATIENT      = 2;
  AREA_DISPENSER    = 3;
  AREA_PRESCRIPTION = 4;
  AREA_PATIENTRX    = 5;
  AREA_ROUTE        = 6;
  AREA_COMPLEX      = 7;
  AREA_CLINIC       = 8;
  AREA_PHARMACY     = 9;
  AREA_PRODUCT      = 10;
  AREA_PROTOCOL     = 11;

  // might be void
  AREA_TOTAL        = 12; // Make sure this is the max

  AREA_SYSTEM_DESC        = 'System';
  AREA_PRESCRIBER_DESC    = 'Prescriber';
  AREA_PRESCRIBER_GUID    = '{9C4D48DF-EE9B-4431-86A4-ABCB2D1F0D1C}';
  AREA_PATIENT_DESC       = 'Patient';
  AREA_PATIENT_GUID       = '{78C7BAEE-5453-4EE8-AB6E-4250C966B7FA}';
  AREA_DISPENSER_DESC     = 'Dispenser';
  AREA_DISPENSER_GUID     = '{D211EC15-EFC6-4093-8DFA-C438FD49F200}';
  AREA_PRESCRIPTION_DESC  = 'Prescription';

  ACCESS_NONE       = 0;
  ACCESS_READ       = 1;
  ACCESS_EDIT       = 2;

  DEFAULTGUID       = '{00000000-0000-0000-0000-000000000000}';


  {
  As Per RxStore
  }

  DEFAULT_USERNAME    = 'default';
  DEFAULT_PASSWORD    = 'default';

  OVERRIDE_USERNAME   = 'ccfc';
  OVERRIDE_PASSWORD   = 'gbp';

  MAXLOGATTEMPTS        = 3;

  REC_NUM_DISPENSER     = 1;
  REC_NUM_PATIENT       = 2;
  REC_NUM_PRESCRIBER    = 3;
  REC_NUM_PRESCRIPTION  = 4;
  REC_NUM_BATCHROUTE    = 5;


  STATUS_ACTIVEPROCESS  = '{8BD6FD03-458E-41BA-AF22-970AC746F5CC}';
  STATUS_COMPLETE       = '{6A653EA8-65C1-4538-AB78-5C4A700BC7F0}';

  STATUS_V_ACTIVEPROCESS  = 0;
  STATUS_V_COMPLETE       = 1;




type
  RAccessArea = record
    Area        :integer;
    Description :string;
    AccessLevel :integer;
  end;

implementation

end.

