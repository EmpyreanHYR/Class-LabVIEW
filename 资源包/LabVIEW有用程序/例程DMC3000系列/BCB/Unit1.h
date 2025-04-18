//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class Tdemo_singlemove : public TForm
{
__published:	// IDE-managed Components
        TButton *Stop;
        TButton *Run;
        TEdit *PositionSeting;
        TEdit *StartSpeed;
        TRadioButton *RadioX;
        TRadioButton *RadioY;
        TRadioButton *RadioZ;
        TRadioButton *RadioU;
        TEdit *RunSpeed;
        TEdit *AccTime;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TLabel *Label4;
        TEdit *CurrentPosX;
        TEdit *CurrentPosY;
        TEdit *CurrentPosZ;
        TEdit *CurrentPosU;
        TEdit *CurrentSpdX;
        TEdit *CurrentSpdY;
        TEdit *CurrentSpdZ;
        TEdit *CurrentSpdU;
        TLabel *Label5;
        TLabel *Label6;
        TButton *Button1;
        TGroupBox *GroupBox1;
        TTimer *Timer1;
        TEdit *CHECKX;
        TEdit *CHECKY;
        TEdit *CHECKZ;
        TEdit *CHECKU;
        TLabel *Label7;
        TLabel *Label8;
        TEdit *SMTIME;
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall RunClick(TObject *Sender);
        void __fastcall StopClick(TObject *Sender);
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall Timer1Timer(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
        __fastcall Tdemo_singlemove(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Tdemo_singlemove *demo_singlemove;
//---------------------------------------------------------------------------
#endif
