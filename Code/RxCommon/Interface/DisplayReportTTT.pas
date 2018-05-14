unit DisplayReportTTT;
interface

type
  TCodeTemplate = class(TForm)
  private
    procedure DisplayReport;
  end;


implementation

procedure TCodeTemplate.DisplayReport;
var
  compIndex : integer;
  bandIndex : integer;

  ppMem       : TppMemo;
  ppBnd       : TppBand;
  ppLbl       : TppLabel;
begin

  // Closeup if open.
  FIsPrinting := True;

  // DISCONECT ANY EVENTS
  ppBnd := (ppReport.DetailBand as TppBand);
  ppBnd.BeforePrint := Nil;

  //  RESET VIEWER
  ppViewer1.Reset;
  qryReportData.Close;
  qryReportData.SQL.Clear;

  // Setup data
  qryReportData.SQL.Add(FDepartmentList.ToString);

  if FSystemDebug then
    begin
    rzmMemoSQLDebug.Lines.Clear;
    rzmMemoSQLDebug.Lines.Add(FDepartmentList.ToString);
    end;

  dsqryReportData.DataSet := qryReportData;




  // Load report from db
  ppReport.Template.DatabaseSettings.Name  := FDepartmentList.Name;
  ppReport.Template.LoadFromDatabase;


  try

  // Tie in event handler.
  ppBnd := (ppReport.DetailBand as TppBand);
  ppBnd.BeforePrint := WhenDetailBandPrints;

  // get index of memo and show selected parameters
  ppReport.HeaderBand.ObjectByName(compIndex, 'ppParameterDescription');
  ppMem := ppReport.HeaderBand.Objects[compIndex] as TppMemo;
  ppMem.Lines.Clear;
  ppMem.Lines.Assign(FDepartmentList.Description);

  // index of headingtext
  ppReport.ObjectByName(bandIndex,compIndex, 'ppReportHeading');
  ppLbl := ppReport.Bands[bandIndex].Objects[compIndex] as TppLabel;
  ppLbl.Caption := FReportHeading;


  // index of copyRight
  ppReport.ObjectByName(bandIndex,compIndex, 'ppReportCopyright');
  ppLbl := ppReport.Bands[bandIndex].Objects[compIndex] as TppLabel;
  ppLbl.Caption := FReportCopyRight;


  except
    // not important to show any errors here
  end;

  // Display on screen
  ppReport.PrintToDevices;
  FIsPrinting := False;

end;


end.
