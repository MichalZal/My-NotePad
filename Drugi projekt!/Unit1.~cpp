//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

AnsiString npliku = "";
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------



void __fastcall TForm1::Otwrz1Click(TObject *Sender)
{

        if (OpenDialog1->Execute())
        {
                try
                {
                        Tresc->Lines->LoadFromFile(OpenDialog1->FileName);
                        npliku = OpenDialog1->FileName;
                }
                catch (...)
                {
                        ShowMessage("B³¹d otwarcia pliku. Upewnij siê, ¿e plik isntieje na dysku.");
                }


        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Zapiszjako1Click(TObject *Sender)
{

        if (SaveDialog1->Execute())
        {
                try
                {
                        Tresc->Lines->SaveToFile(SaveDialog1->FileName);
                        npliku = SaveDialog1->FileName;
                }
                catch (...)
                {
                        ShowMessage("Zapis zakoñczy³ siê niepowodozeniem");
                }


        }


}
//---------------------------------------------------------------------------

void __fastcall TForm1::N2Click(TObject *Sender)
{
        if(npliku != "")
        {
                Tresc->Lines->SaveToFile(npliku);
        }
        else
        {
                Form1->Zapiszjako1Click(MainMenu1);
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Nowy1Click(TObject *Sender)
{
           if(Application->MessageBox("Czy na pewno utworzyc nowy plik?",
           "PotwierdŸ", MB_YESNOCANCEL | MB_ICONQUESTION) == IDYES)
           {
                Tresc->Lines->Clear();
                npliku="";
           }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::TrescKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
        if(Shift.Contains(ssCtrl))
        {
                if((Key == 's') || (Key == 'S'))
                {
                        Form1->N2Click(MainMenu1);
                }
                if((Key == 'a') || (Key == 'A'))
                {
                        Form1->Tresc->SelectAll();
                }
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Zakocz1Click(TObject *Sender)
{
        if(Application->MessageBox("Czy na pewno zakoñczyc program?",
        "PotwierdŸ", MB_YESNO | MB_ICONQUESTION) == IDYES)
           {
                Application->Terminate();
           }


}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action)
{
        if(Application->MessageBox("Czy na pewno zakoñczyc program?",
        "PotwierdŸ", MB_YESNO | MB_ICONQUESTION) == IDNO)
           {
                Action=caNone;
           }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::WytnijCtrlx1Click(TObject *Sender)
{
        Tresc->CutToClipboard();                
}
//---------------------------------------------------------------------------

void __fastcall TForm1::KopiujCtrlc1Click(TObject *Sender)
{
        Tresc->CopyToClipboard();        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::WklejCtrlv1Click(TObject *Sender)
{
        Tresc->PasteFromClipboard();        
}
//---------------------------------------------------------------------------



void __fastcall TForm1::ZaznaczCtrlA1Click(TObject *Sender)
{
        Tresc->SelectAll();
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Zawijaniewierszy1Click(TObject *Sender)
{
        if(Zawijaniewierszy1->Checked==true)
        {
                Zawijaniewierszy1->Checked=false;
                Tresc->WordWrap=false;
                Tresc->ScrollBars = ssBoth;
        }
        else
        {
                Zawijaniewierszy1->Checked=true;
                Tresc->WordWrap=true;
                Tresc->ScrollBars = ssVertical;
        }

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Czcionka1Click(TObject *Sender)
{
        if (FontDialog1->Execute())
        {
                //kroj
                Tresc->Font->Name = FontDialog1->Font->Name;

                //Kolor
                Tresc->Font->Color = FontDialog1->Font->Color;

                //rozmiar
                Tresc->Font->Size = FontDialog1->Font->Size;

                //styl
                Tresc->Font->Style = FontDialog1->Font->Style;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Oprogramie1Click(TObject *Sender)
{
        Form2->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Zapraszammojomstrone1Click(TObject *Sender)
{
        ShellExecute(NULL, "open","http://nigga.pl/", NULL, NULL, SW_SHOWNORMAL);
        
}
//---------------------------------------------------------------------------

