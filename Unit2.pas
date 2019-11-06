unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    eNilai: TEdit;
    eHasil: TEdit;
    bCek: TButton;
    Label3: TLabel;
    NIM: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure bCekClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  nilai : real;
  hasil : String;

implementation

{$R *.fmx}

procedure TForm2.bCekClick(Sender: TObject);
begin
  nilai := StrToFloat(eNilai.Text);
  if nilai > 100 then begin hasil := 'Inputkan nilai 0-100'; end
  else if nilai < 0 then begin hasil := 'Inputkan nilai 0-100'; end
  else if nilai >= 80 then begin hasil := 'A'; end
  else if nilai >= 70 then begin hasil := 'B'; end
  else if nilai >= 60 then begin hasil := 'C'; end
  else if nilai >= 50 then begin hasil := 'D'; end
  else hasil :='E';

  eHasil.Text := (hasil);


end;

end.
