//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include "LTDMC.h"
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
Tdemo_singlemove *demo_singlemove;
//---------------------------------------------------------------------------
__fastcall Tdemo_singlemove::Tdemo_singlemove(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall Tdemo_singlemove::FormCreate(TObject *Sender)
{
  long ncardno=dmc_board_init();
  if(ncardno<1)
  {
  ShowMessage("Î´ÕÒµ½¿ØÖÆ¿¨!") ;
  return;
  }
}
//---------------------------------------------------------------------------


void __fastcall Tdemo_singlemove::RunClick(TObject *Sender)
{
short nCardNo = 0;
short nAxis;
long nPos;
double dbLowSpd,dbHightSpd,dbTAcc;
long nSmTime;
if(RadioX->Checked==true)
{
  nAxis=0;
}
else if(RadioY->Checked==true)
{
  nAxis=1;
}
else if(RadioZ->Checked==true)
{
  nAxis=2;
}
else if(RadioU->Checked==true)
{
  nAxis=3;
}


nPos= PositionSeting->Text.ToInt();
dbLowSpd=StartSpeed->Text.ToDouble();
dbHightSpd=RunSpeed->Text.ToDouble();
dbTAcc=AccTime->Text.ToDouble();
nSmTime = SMTIME->Text.ToInt();
dmc_set_pulse_outmode(nCardNo,nAxis,1);
dmc_set_s_profile(nCardNo,nAxis,0,0);
dmc_set_profile(nCardNo,nAxis,dbLowSpd,dbHightSpd,dbTAcc,dbTAcc,0);
dmc_pmove(nCardNo,nAxis,nPos,0);
}
//---------------------------------------------------------------------------

void __fastcall Tdemo_singlemove::StopClick(TObject *Sender)
{
short nCardNo = 0;
dmc_stop(nCardNo,0,0);
dmc_stop(nCardNo,1,0);
dmc_stop(nCardNo,2,0);
dmc_stop(nCardNo,3,0);
}
//---------------------------------------------------------------------------

void __fastcall Tdemo_singlemove::Button1Click(TObject *Sender)
{
short nCardNo = 0;
dmc_set_position(nCardNo,0,0);
dmc_set_position(nCardNo,1,0);
dmc_set_position(nCardNo,2,0);
dmc_set_position(nCardNo,3,0);
}
//---------------------------------------------------------------------------

void __fastcall Tdemo_singlemove::Timer1Timer(TObject *Sender)
{
  short nCardNo = 0;
  long nGetPosX,nGetPosY,nGetPosZ,nGetPosU;
  long nGetSpdX,nGetSpdY,nGetSpdZ,nGetSpdU;
  long nCheckX, nCheckY,nCheckZ,nCheckU;
  nGetPosX=dmc_get_position(nCardNo,0);
  nGetPosY=dmc_get_position(nCardNo,1);
  nGetPosZ=dmc_get_position(nCardNo,2);
  nGetPosU=dmc_get_position(nCardNo,3);

  CurrentPosX->Text=String(nGetPosX);
  CurrentPosY->Text=String(nGetPosY);
  CurrentPosZ->Text=String(nGetPosZ);
  CurrentPosU->Text=String(nGetPosU);

  nGetSpdX=dmc_read_current_speed(nCardNo,0);
  nGetSpdY=dmc_read_current_speed(nCardNo,1);
  nGetSpdZ=dmc_read_current_speed(nCardNo,2);
  nGetSpdU=dmc_read_current_speed(nCardNo,3);

  CurrentSpdX->Text=String(nGetSpdX);
  CurrentSpdY->Text=String(nGetSpdY);
  CurrentSpdZ->Text=String(nGetSpdZ);
  CurrentSpdU->Text=String(nGetSpdU);

  nCheckX=dmc_check_done(nCardNo,0);
  nCheckY=dmc_check_done(nCardNo,1);
  nCheckZ=dmc_check_done(nCardNo,2);
  nCheckU=dmc_check_done(nCardNo,3);

  CHECKX->Text=String(nCheckX);
  CHECKY->Text=String(nCheckY);
  CHECKZ->Text=String(nCheckZ);
  CHECKU->Text=String(nCheckU);


}
//---------------------------------------------------------------------------

void __fastcall Tdemo_singlemove::FormClose(TObject *Sender,
      TCloseAction &Action)
{
    StopClick(Sender);
    dmc_board_close();
}
//---------------------------------------------------------------------------

