unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    Button1: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
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
Idade : Integer;

  begin
  Idade := SpinEdit1.Value;

  if Idade >= 18 then

    begin
     ShowMessage ('O usuario � MAIOR de idade.');
      if RadioButton1.Checked then
      ShowMessage ('O usuario � casado.')
      else
        ShowMessage ('O usuario n�o � casado.');
    end
  else if RadioButton1.Checked then

      ShowMessage ('O usuario � MENOR de idade, mas � casado.')
        else
          ShowMessage ('O usuario � MENOR de idade mas n�o � casado.');
    end;

end.
