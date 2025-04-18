unit Demo_Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TDemo_Form = class(TForm)
    CheckOut1: TCheckBox;
    CheckOut2: TCheckBox;
    CheckOut3: TCheckBox;
    CheckOut4: TCheckBox;
    StaticText_Input: TStaticText;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CheckOut1Click(Sender: TObject);
    procedure CheckOut2Click(Sender: TObject);
    procedure CheckOut3Click(Sender: TObject);
    procedure CheckOut4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Demo_Form: TDemo_Form;

implementation

{$R *.dfm}
uses
LTDMC;

procedure TDemo_Form.FormCreate(Sender: TObject);
begin
 dmc_board_init;
end;

procedure TDemo_Form.FormDestroy(Sender: TObject);
begin
 dmc_board_close;
end;

procedure TDemo_Form.CheckOut1Click(Sender: TObject);
begin
 if CheckOut1.Checked = TRUE then
  begin
  CheckOut1.Caption := 'OUT1：高电平' ;
  dmc_write_outbit(0, 1, 1) ;
  end
 else
  begin
  CheckOut1.Caption := 'OUT1：低电平' ;
  dmc_write_outbit (0,1, 0 );
  end
end;

procedure TDemo_Form.CheckOut2Click(Sender: TObject);
begin
 if CheckOut2.Checked = TRUE then
  begin
  CheckOut2.Caption := 'OUT2：高电平' ;
  dmc_write_outbit (0,2, 1) ;
  end
 else
  begin
  CheckOut2.Caption := 'OUT2：低电平';
  dmc_write_outbit (0, 2, 0 );
  end
end;

procedure TDemo_Form.CheckOut3Click(Sender: TObject);
begin
 if CheckOut3.Checked = TRUE then
 begin
  CheckOut3.Caption := 'OUT3：高电平' ;
  dmc_write_outbit (0, 3, 1) ;
  end
 else
  begin
  CheckOut3.Caption := 'OUT3：低电平' ;
  dmc_write_outbit (0, 3, 0 );
  end
end;

procedure TDemo_Form.CheckOut4Click(Sender: TObject);
begin
 if CheckOut4.Checked = TRUE then
 begin
  CheckOut4.Caption := 'OUT4：高电平' ;
  dmc_write_outbit (0, 4, 1) ;
  end
 else
  begin
  CheckOut4.Caption := 'OUT4：低电平' ;
  dmc_write_outbit (0, 4, 0 );
  end
end;

procedure TDemo_Form.Timer1Timer(Sender: TObject);
begin
StaticText_Input.Caption := 'IN1：'+ IntToStr(dmc_read_inbit(0,1))
                      + ',   IN2：' +IntToStr(dmc_read_inbit(0,2))
                      + ',   IN3：' +IntToStr(dmc_read_inbit(0,3))
                      + ',   IN4：' +IntToStr(dmc_read_inbit(0,4)) ;
end;

end.
