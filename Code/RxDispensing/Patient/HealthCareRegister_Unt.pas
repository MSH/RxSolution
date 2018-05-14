unit HealthCareRegister_Unt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzTabs, ExtCtrls, RzPanel, RzButton, RzRadChk, RzDBChk,
  StdCtrls, RzEdit, DBCtrls, RzDBNav, Mask, RzDBEdit, RzLabel, ComCtrls;

type
  THealthCareRegisterfrm = class(TForm)
    RzGroupBox1: TRzGroupBox;
    RzGroupBox22: TRzGroupBox;
    RzDBEdit3: TRzDBEdit;
    RzLabel3: TRzLabel;
    PageControl1: TPageControl;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    TabSheet17: TTabSheet;
    TabSheet18: TTabSheet;
    TabSheet19: TTabSheet;
    TabSheet20: TTabSheet;
    TabSheet21: TTabSheet;
    TabSheet22: TTabSheet;
    TabSheet23: TTabSheet;
    TabSheet24: TTabSheet;
    TabSheet25: TTabSheet;
    TabSheet26: TTabSheet;
    TabSheet27: TTabSheet;
    TabSheet28: TTabSheet;
    RzGroupBox2: TRzGroupBox;
    RzDBCheckBox4: TRzDBCheckBox;
    RzDBCheckBox5: TRzDBCheckBox;
    RzDBCheckBox6: TRzDBCheckBox;
    RzGroupBox3: TRzGroupBox;
    RzGroupBox13: TRzGroupBox;
    RzDBCheckBox2: TRzDBCheckBox;
    RzDBCheckBox3: TRzDBCheckBox;
    RzDBCheckBox10: TRzDBCheckBox;
    RzDBCheckBox11: TRzDBCheckBox;
    RzDBCheckBox1: TRzDBCheckBox;
    RzGroupBox4: TRzGroupBox;
    RzDBCheckBox7: TRzDBCheckBox;
    RzDBCheckBox8: TRzDBCheckBox;
    RzDBCheckBox9: TRzDBCheckBox;
    RzGroupBox5: TRzGroupBox;
    v: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzDBCheckBox12: TRzDBCheckBox;
    RzDBCheckBox13: TRzDBCheckBox;
    RzTabSheet1: TRzTabSheet;
    RzDBCheckBox14: TRzDBCheckBox;
    RzDBCheckBox15: TRzDBCheckBox;
    RzTabSheet3: TRzTabSheet;
    RzDBCheckBox18: TRzDBCheckBox;
    RzDBCheckBox19: TRzDBCheckBox;
    RzDBCheckBox20: TRzDBCheckBox;
    RzDBCheckBox21: TRzDBCheckBox;
    RzDBCheckBox22: TRzDBCheckBox;
    RzDBCheckBox23: TRzDBCheckBox;
    RzDBCheckBox24: TRzDBCheckBox;
    TabSheet2: TRzTabSheet;
    RzTabSheet2: TRzTabSheet;
    RzDBCheckBox16: TRzDBCheckBox;
    RzDBCheckBox17: TRzDBCheckBox;
    RzDBCheckBox104: TRzDBCheckBox;
    RzDBCheckBox105: TRzDBCheckBox;
    RzGroupBox15: TRzGroupBox;
    RzDBCheckBox25: TRzDBCheckBox;
    RzDBCheckBox26: TRzDBCheckBox;
    RzDBCheckBox27: TRzDBCheckBox;
    RzDBCheckBox28: TRzDBCheckBox;
    RzDBCheckBox29: TRzDBCheckBox;
    RzDBCheckBox30: TRzDBCheckBox;
    RzGroupBox12: TRzGroupBox;
    RzPageControl2: TRzPageControl;
    TabSheet3: TRzTabSheet;
    RzPageControl3: TRzPageControl;
    TabSheet8: TRzTabSheet;
    RzDBCheckBox32: TRzDBCheckBox;
    RzDBCheckBox33: TRzDBCheckBox;
    RzDBCheckBox34: TRzDBCheckBox;
    RzDBCheckBox35: TRzDBCheckBox;
    RzDBCheckBox36: TRzDBCheckBox;
    RzDBCheckBox37: TRzDBCheckBox;
    RzDBCheckBox38: TRzDBCheckBox;
    RzDBCheckBox39: TRzDBCheckBox;
    RzDBCheckBox40: TRzDBCheckBox;
    TabSheet9: TRzTabSheet;
    RzDBCheckBox41: TRzDBCheckBox;
    RzDBCheckBox42: TRzDBCheckBox;
    RzDBCheckBox43: TRzDBCheckBox;
    RzDBCheckBox31: TRzDBCheckBox;
    TabSheet4: TRzTabSheet;
    RzGroupBox6: TRzGroupBox;
    RzDBCheckBox44: TRzDBCheckBox;
    RzDBCheckBox45: TRzDBCheckBox;
    RzGroupBox7: TRzGroupBox;
    RzDBCheckBox46: TRzDBCheckBox;
    RzDBCheckBox47: TRzDBCheckBox;
    TabSheet5: TRzTabSheet;
    RzGroupBox8: TRzGroupBox;
    RzDBCheckBox48: TRzDBCheckBox;
    RzDBCheckBox49: TRzDBCheckBox;
    RzGroupBox9: TRzGroupBox;
    RzDBCheckBox50: TRzDBCheckBox;
    RzDBCheckBox51: TRzDBCheckBox;
    RzDBCheckBox52: TRzDBCheckBox;
    RzDBCheckBox53: TRzDBCheckBox;
    RzDBCheckBox54: TRzDBCheckBox;
    RzDBCheckBox55: TRzDBCheckBox;
    TabSheet6: TRzTabSheet;
    RzDBCheckBox56: TRzDBCheckBox;
    RzDBCheckBox57: TRzDBCheckBox;
    RzDBCheckBox58: TRzDBCheckBox;
    RzDBCheckBox59: TRzDBCheckBox;
    TabSheet7: TRzTabSheet;
    RzDBCheckBox60: TRzDBCheckBox;
    RzDBCheckBox61: TRzDBCheckBox;
    RzGroupBox10: TRzGroupBox;
    RzDBCheckBox62: TRzDBCheckBox;
    RzDBCheckBox63: TRzDBCheckBox;
    RzDBCheckBox64: TRzDBCheckBox;
    RzDBCheckBox65: TRzDBCheckBox;
    RzDBCheckBox66: TRzDBCheckBox;
    RzDBCheckBox67: TRzDBCheckBox;
    RzDBCheckBox68: TRzDBCheckBox;
    RzDBCheckBox69: TRzDBCheckBox;
    RzGroupBox11: TRzGroupBox;
    RzDBCheckBox70: TRzDBCheckBox;
    RzDBCheckBox71: TRzDBCheckBox;
    RzDBCheckBox72: TRzDBCheckBox;
    RzDBCheckBox73: TRzDBCheckBox;
    RzDBCheckBox74: TRzDBCheckBox;
    RzGroupBox14: TRzGroupBox;
    RzDBCheckBox75: TRzDBCheckBox;
    RzDBCheckBox76: TRzDBCheckBox;
    RzGroupBox16: TRzGroupBox;
    RzDBCheckBox78: TRzDBCheckBox;
    RzDBCheckBox79: TRzDBCheckBox;
    RzDBCheckBox77: TRzDBCheckBox;
    RzGroupBox18: TRzGroupBox;
    RzPageControl4: TRzPageControl;
    TabSheet10: TRzTabSheet;
    RzDBCheckBox84: TRzDBCheckBox;
    RzDBCheckBox85: TRzDBCheckBox;
    RzDBCheckBox86: TRzDBCheckBox;
    RzDBCheckBox87: TRzDBCheckBox;
    RzDBCheckBox88: TRzDBCheckBox;
    RzDBCheckBox89: TRzDBCheckBox;
    RzDBCheckBox90: TRzDBCheckBox;
    TabSheet11: TRzTabSheet;
    RzDBCheckBox91: TRzDBCheckBox;
    RzDBCheckBox92: TRzDBCheckBox;
    RzDBCheckBox93: TRzDBCheckBox;
    RzDBCheckBox94: TRzDBCheckBox;
    RzDBCheckBox95: TRzDBCheckBox;
    RzDBCheckBox96: TRzDBCheckBox;
    RzDBCheckBox97: TRzDBCheckBox;
    RzDBCheckBox98: TRzDBCheckBox;
    TabSheet12: TRzTabSheet;
    RzDBCheckBox106: TRzDBCheckBox;
    RzDBCheckBox107: TRzDBCheckBox;
    RzDBCheckBox108: TRzDBCheckBox;
    RzDBCheckBox109: TRzDBCheckBox;
    RzDBCheckBox110: TRzDBCheckBox;
    RzDBCheckBox111: TRzDBCheckBox;
    RzDBCheckBox112: TRzDBCheckBox;
    RzDBCheckBox113: TRzDBCheckBox;
    TabSheet13: TRzTabSheet;
    RzDBCheckBox114: TRzDBCheckBox;
    RzDBCheckBox115: TRzDBCheckBox;
    RzDBCheckBox116: TRzDBCheckBox;
    RzDBCheckBox117: TRzDBCheckBox;
    TabSheet14: TRzTabSheet;
    RzGroupBox23: TRzGroupBox;
    RzDBCheckBox122: TRzDBCheckBox;
    RzDBCheckBox123: TRzDBCheckBox;
    RzDBCheckBox124: TRzDBCheckBox;
    RzDBCheckBox125: TRzDBCheckBox;
    RzDBCheckBox118: TRzDBCheckBox;
    RzDBCheckBox119: TRzDBCheckBox;
    RzDBCheckBox120: TRzDBCheckBox;
    RzDBCheckBox121: TRzDBCheckBox;
    RzGroupBox19: TRzGroupBox;
    RzDBCheckBox99: TRzDBCheckBox;
    RzDBCheckBox100: TRzDBCheckBox;
    RzDBCheckBox103: TRzDBCheckBox;
    RzGroupBox20: TRzGroupBox;
    RzDBCheckBox101: TRzDBCheckBox;
    RzDBCheckBox102: TRzDBCheckBox;
    RzGroupBox21: TRzGroupBox;
    RzDBMemo1: TRzDBMemo;
    TabSheet29: TTabSheet;
    RzGroupBox17: TRzGroupBox;
    RzDBCheckBox80: TRzDBCheckBox;
    RzDBCheckBox81: TRzDBCheckBox;
    RzDBCheckBox82: TRzDBCheckBox;
    RzDBCheckBox83: TRzDBCheckBox;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HealthCareRegisterfrm: THealthCareRegisterfrm;

implementation



{$R *.dfm}

end.
