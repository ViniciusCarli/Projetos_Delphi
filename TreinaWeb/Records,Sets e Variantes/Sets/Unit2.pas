unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm2 = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    SpinEdit2: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
type
  TDiasSemana = (Domingo, Segunda, Ter�a, Quarta, Quinta, Sexta, Sabado);
const
  DiasFolga : Set of TDiasSemana = [Domingo, Sabado];
  DiasTrabalho : Set of TDiasSemana = [Segunda..Sexta];

var
  DiasExpediente : Set of TDiasSemana;
  DiaAtual: TDiasSemana;
begin
  DiasExpediente := [Segunda..Sexta];

  if RadioButton1.Checked then
    DiaAtual := Domingo
  else if RadioButton2.Checked then
    DiaAtual := Segunda
  else if RadioButton3.Checked then
    DiaAtual := Ter�a
  else if RadioButton4.Checked then
    DiaAtual := Quarta
  else if RadioButton5.Checked then
    DiaAtual := Quinta
  else if RadioButton6.Checked then
    DiaAtual := Sexta
  else if RadioButton7.Checked then
    DiaAtual := Sabado;

  // DiaAtual in DiasExpediente then
    //ShowMessage('Hoje � dia de trabalhar')
  //else
    //ShowMessage('Hoje � dia de folga');

  if DiaAtual in DiasFolga then
    ShowMessage ('� um dia de folga')
  else if DiaAtual in DiasTrabalho then
    ShowMessage ('� um dia de trabalho normal')
  else
    ShowMessage ('� necess�rio escolher uma op��o!');
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  MeuConjunto :Set of 1..10;
  NumeroEscolhido : Integer;
begin
  MeuConjunto := [1, 2, 3, 4..5 , 6..10];
  NumeroEscolhido := SpinEdit2.Value;

  if NumeroEscolhido in MeuConjunto then
    ShowMessage('O numero escolhido est� dentro do conjunto')
  else
    ShowMessage('O n�mero est� fora do conjunto');



end;

end.
