unit UntAgendamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Mask, Vcl.DBCtrls, UntDM, Vcl.Grids, Vcl.DBGrids ;

type
  TfrmAgendamentos = class(TForm)
    Panel1: TPanel;
    btnNovo: TBitBtn;
    btnEditar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dstAgenda: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    procedure btnSairClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgendamentos: TfrmAgendamentos;

implementation

{$R *.dfm}

uses UntCadastroClientes, UntAuxiliarAgendamentos;

procedure TfrmAgendamentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.cdsAgenda.SaveToFile('C:\Users\Vinicius Bustamanti\Documents' +
    '\Embarcadero\Studio\Projects\Projeto Final Curso Delphi\Banco de Dados\Agenda.cds');
  DM.cdsAgenda.Active := False;
end;

procedure TfrmAgendamentos.FormCreate(Sender: TObject);
begin
  DM.cdsAgenda.LoadFromFile('C:\Users\Vinicius Bustamanti\Documents' +
    '\Embarcadero\Studio\Projects\Projeto Final Curso Delphi\Banco de Dados\Agenda.cds');
  DM.cdsAgenda.Active := True;
end;

procedure TfrmAgendamentos.btnEditarClick(Sender: TObject);
begin
  DM.cdsAgenda.Edit;
  DM.cdsAgenda.FieldByName('DATA').AsDateTime := Now;
  try
    frmAgendaAux := TfrmAgendaAux.Create(Self);
    frmAgendaAux.ShowModal;
  finally
    frmAgendaAux.Free;
  end;
end;

procedure TfrmAgendamentos.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclus�o do cliente atual?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
    DM.cdsAgenda.Delete;
end;

procedure TfrmAgendamentos.btnNovoClick(Sender: TObject);
begin
  DM.cdsAgenda.Append;
  DM.cdsAgenda.FieldByName('DATA').AsDateTime := Now;
  DM.cdsAgenda.FieldByName('ID_AGENDA').AsInteger := DM.GerarCodigoAgenda;
  try
    frmAgendaAux := TfrmAgendaAux.Create(Self);
    frmAgendaAux.ShowModal;
  finally
    frmAgendaAux.Free;
  end;
end;

procedure TfrmAgendamentos.btnSairClick(Sender: TObject);
begin
  Close;
end;
end.
