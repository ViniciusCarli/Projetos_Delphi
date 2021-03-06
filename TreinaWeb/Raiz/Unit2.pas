unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtOriginal: TEdit;
    edtRaizQuadrada: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    edtAbsoluto: TEdit;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  ValorOriginal, Raiz : Real;

begin
  ValorOriginal := StrToFloat(edtOriginal.Text);
  Raiz := sqrt(ValorOriginal);
  edtRaizQuadrada.Text := FloatToStr(Raiz);
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  ValorOriginal : Integer;
begin
  ValorOriginal := StrToInt(edtOriginal.Text);
  if Odd (ValorOriginal) then
    ShowMessage('� Impar!')
  else
    ShowMessage('� Par!');

end;

procedure TForm2.Button3Click(Sender: TObject);
var
  ValorOriginal : Real;
begin
  ValorOriginal := StrToFloat (edtOriginal.Text);
  edtAbsoluto.Text := FloatToStr(Abs(ValorOriginal));
end;

end.
