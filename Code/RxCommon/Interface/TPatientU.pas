unit TPatientU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComObj, ActiveX, AxCtrls,
  TResponseU;

type
  TPatientDC = class(TObject)
  private
    FAddress1: string;
    FAddress2: string;
    FAddress3: string;
    FClinic: string;
    FDateOfBirth: TDateTime;
    FFirstname: string;
    FFolderLocation: string;
    FFolderNumber: string;
    FIdNumber: string;
    FInitial: string;
    FLanguage: string;
    FLocation: string;
    FMaritalStatus: string;
    FNameKey: string;
    FNationality: string;
    FNextOfAddress1: string;
    FNextOfAddress2: string;
    FNextOfAddress3: string;
    FNextOfHomePhone: string;
    FNextOfKinFirstName: string;
    FNextOfKinSurname: string;
    FNextOfPostalCode: string;
    FNextOfWorkPhone: string;
    FOccupation: string;
    FPhone: string;
    FPostalCode: string;
    FRecentVisitCatagory: string;
    FRecentVisitDate: TDateTime;
    FRecentVisitType: string;
    FRelationshipToPatient: string;
    FReligon: string;
    FSex: string;
    FSurname: string;
    FTitle: string;
    procedure DefaultValues(patient: TPatientDC);
    procedure LoadPatient(wsPatient: OleVariant; patient: TPatientDC; var
        wsResponse: TResponse);
  public
    constructor Create; overload;
    constructor Create(wsPatient: OleVariant; var wsResponse: TResponse); overload;
    function Clear: boolean;
    property Address1: string read FAddress1 write FAddress1;
    property Address2: string read FAddress2 write FAddress2;
    property Address3: string read FAddress3 write FAddress3;
    property Clinic: string read FClinic write FClinic;
    property DateOfBirth: TDateTime read FDateOfBirth write FDateOfBirth;
    property Firstname: string read FFirstname write FFirstname;
    property FolderLocation: string read FFolderLocation write FFolderLocation;
    property FolderNumber: string read FFolderNumber write FFolderNumber;
    property IdNumber: string read FIdNumber write FIdNumber;
    property Initial: string read FInitial write FInitial;
    property Language: string read FLanguage write FLanguage;
    property Location: string read FLocation write FLocation;
    property MaritalStatus: string read FMaritalStatus write FMaritalStatus;
    property NameKey: string read FNameKey write FNameKey;
    property Nationality: string read FNationality write FNationality;
    property NextOfAddress1: string read FNextOfAddress1 write FNextOfAddress1;
    property NextOfAddress2: string read FNextOfAddress2 write FNextOfAddress2;
    property NextOfAddress3: string read FNextOfAddress3 write FNextOfAddress3;
    property NextOfHomePhone: string read FNextOfHomePhone write FNextOfHomePhone;
    property NextOfKinFirstName: string read FNextOfKinFirstName write
        FNextOfKinFirstName;
    property NextOfKinSurname: string read FNextOfKinSurname write
        FNextOfKinSurname;
    property NextOfPostalCode: string read FNextOfPostalCode write
        FNextOfPostalCode;
    property NextOfWorkPhone: string read FNextOfWorkPhone write FNextOfWorkPhone;
    property Occupation: string read FOccupation write FOccupation;
    property Phone: string read FPhone write FPhone;
    property PostalCode: string read FPostalCode write FPostalCode;
    property RecentVisitCatagory: string read FRecentVisitCatagory write
        FRecentVisitCatagory;
    property RecentVisitDate: TDateTime read FRecentVisitDate write
        FRecentVisitDate;
    property RecentVisitType: string read FRecentVisitType write FRecentVisitType;
    property RelationshipToPatient: string read FRelationshipToPatient write
        FRelationshipToPatient;
    property Religon: string read FReligon write FReligon;
    property Sex: string read FSex write FSex;
    property Surname: string read FSurname write FSurname;
    property Title: string read FTitle write FTitle;
  end;

implementation

constructor TPatientDC.Create;
begin
  inherited create;
  // TODO -cMM: TPatientDC.Create default body inserted
end;

constructor TPatientDC.Create(wsPatient: OleVariant; var wsResponse: TResponse);
begin
  inherited Create;
  LoadPatient(wsPatient, self, wsResponse);
end;

function TPatientDC.Clear: boolean;
begin

  if(self <> nil) then
    begin
    DefaultValues(self);
    Result := true;
    end
  else
    begin
    Result := false;
    end;
    
end;

procedure TPatientDC.DefaultValues(patient: TPatientDC);
begin

    // Patient personal details
    patient.FolderNumber      := '';
    patient.FolderLocation    := '';
    patient.Clinic            := '';

    // Patient personal details
    patient.Surname           := '';
    patient.FirstName         := '';
    patient.Initial           := '';
    patient.Sex               := '';
    patient.DateOfBirth       := Date - 15000;

    // Patient other details
    patient.Religon           := '';
    patient.MaritalStatus     := '';
    patient.Occupation        := '';
    patient.Title             := '';
    patient.Language          := '';
    patient.Nationality       := '';
    patient.IdNumber          := '';

    // Contact details
    patient.Address1          := '';
    patient.Address2          := '';
    patient.Address3          := '';
    patient.PostalCode        := '';
    patient.Phone             := '';

    // Delta9 visit data
    patient.RecentVisitDate   := Date - 15000;
    patient.RecentVisitType   := '';
    patient.RecentVisitCatagory := '';
    patient.NameKey           := '';

    // Next of Kin
    patient.RelationshipToPatient := '';
    patient.NextOfKinSurname  := '';
    patient.NextOfKinFirstName := '';
    patient.NextOfAddress1    := '';
    patient.NextOfAddress2    := '';
    patient.NextOfAddress3    := '';
    patient.NextOfPostalCode  := '';
    patient.NextOfHomePhone   := '';
    patient.NextOfWorkPhone   := '';
end;

procedure TPatientDC.LoadPatient(wsPatient: OleVariant; patient: TPatientDC;
    var wsResponse: TResponse);
begin

  wsResponse.Success := false;
  patient.Clear;

  try

    if (wsPatient.Patient.FolderNumber = '') then
      begin
      wsResponse.Warnings.Add('Folder # (?) not found.');
      end
    else
      begin
      // Facility Administration fields
      patient.FolderNumber          := wsPatient.Patient.FolderNumber;
      patient.FolderLocation        := wsPatient.Patient.FolderLocation;
      patient.Clinic                := wsPatient.Patient.Clinic;

      // Patient personal details
      patient.Title                 := wsPatient.Patient.Title;
      patient.Surname               := wsPatient.Patient.Surname;
      patient.FirstName             := wsPatient.Patient.FirstName;
      patient.Initial               := wsPatient.Patient.Initial;
      patient.Sex                   := wsPatient.Patient.Sex;
      patient.DateOfBirth           := wsPatient.Patient.DateOfBirth;

      // Patient other details
      patient.Religon               := wsPatient.Patient.Religon;
      patient.MaritalStatus         := wsPatient.Patient.MaritalStatus;
      patient.Occupation            := wsPatient.Patient.Occupation;
      patient.Language              := wsPatient.Patient.Language;
      patient.Nationality           := wsPatient.Patient.Nationality;
      patient.IdNumber              := wsPatient.Patient.IdNumber;

      // Contact details
      patient.Address1              := wsPatient.Patient.Address1;
      patient.Address2              := wsPatient.Patient.Address2;
      patient.Address3              := wsPatient.Patient.Address3;
      patient.PostalCode            := wsPatient.Patient.PostalCode;
      patient.Phone                 := wsPatient.Patient.Phone;

      // Delta9 visit data
      patient.RecentVisitDate       := wsPatient.Patient.RecentVisitDate;
      patient.RecentVisitType       := wsPatient.Patient.RecentVisitType;
      patient.RecentVisitCatagory   := wsPatient.Patient.RecentVisitCatagory;
      patient.NameKey               := wsPatient.Patient.NameKey;

      // Next of Kin
      patient.RelationshipToPatient := wsPatient.Patient.RelationshipToPatient;
      patient.NextOfKinSurname      := wsPatient.Patient.NextOfKinSurname;
      patient.NextOfKinFirstName    := wsPatient.Patient.NextOfKinFirstName;
      patient.NextOfAddress1        := wsPatient.Patient.NextOfAddress1;
      patient.NextOfAddress2        := wsPatient.Patient.NextOfAddress2;
      patient.NextOfAddress3        := wsPatient.Patient.NextOfAddress3;
      patient.NextOfPostalCode      := wsPatient.Patient.NextOfPostalCode;
      patient.NextOfHomePhone       := wsPatient.Patient.NextOfHomePhone;
      patient.NextOfWorkPhone       := wsPatient.Patient.NextOfWorkPhone;

      wsResponse.Success  := true;
      end;
  except on e: Exception do
    wsResponse.Errors.Add(e.Message);
  end;

end;

end.
