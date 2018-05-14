unit SecurityINTF;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, Security_TLB, StdVcl;

type
  TUser = class(TAutoObject, IUser)
  protected
    { Protected declarations }
  end;

implementation

uses ComServ;

initialization
  TAutoObjectFactory.Create(ComServer, TUser, Class_User,
    ciMultiInstance, tmApartment);
end.
