unit UntClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.StdCtrls, Vcl.Mask, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Comp.UI, Vcl.Buttons, frxClass,
  frxDBSet;

type
  TfrmClientes = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dstClientes: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btnNovo: TBitBtn;
    btnEditar: TBitBtn;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    edtPesquisa: TEdit;
    Label13: TLabel;
    btnPesquisar: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

uses UntPrincipal, UntDM;

procedure TfrmClientes.btnCancelarClick(Sender: TObject);
begin
  DM.qryClientes.Cancel;
end;

procedure TfrmClientes.btnEditarClick(Sender: TObject);
begin
  DM.qryClientes.Edit;
end;

procedure TfrmClientes.btnExcluirClick(Sender: TObject);
begin
  DM.qryClientes.Delete;
end;

procedure TfrmClientes.btnGravarClick(Sender: TObject);
begin
  if DM.qryClientes.State in [dsInsert, dsEdit] then
    DM.qryClientes.Post;
    begin
      DM.qryClientes.Refresh;
    end;
end;

procedure TfrmClientes.btnNovoClick(Sender: TObject);
begin
  DM.qryClientes.Insert; // pode ser utilizado o Append
end;

procedure TfrmClientes.btnPesquisarClick(Sender: TObject);
const
  PesqVazia = 'SELECT * FROM CUSTOMER';
var
  PesqPorClick: String;
begin
  PesqPorClick := 'SELECT * FROM CUSTOMER WHERE CUSTOMER =' +
    QuotedStr(edtPesquisa.Text);

  DM.qryClientes.Active := False;

  if edtPesquisa.Text = '' then
    DM.qryClientes.SQL.Text := PesqVazia
  else
    DM.qryClientes.SQL.Text := PesqPorClick;

  DM.qryClientes.Active := True;
end;

procedure TfrmClientes.Button1Click(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

procedure TfrmClientes.Button2Click(Sender: TObject);
begin
  frxReport1.Print;
end;

procedure TfrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.qryClientes.Active := False;
end;

procedure TfrmClientes.FormCreate(Sender: TObject);
begin
  DM.qryClientes.Active := True;
end;

end.
