unit unitCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TFormCadastro = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ID: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    txtBusca: TEdit;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure txtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastro: TFormCadastro;

implementation

{$R *.dfm}

uses unitDM;

procedure TFormCadastro.txtBuscaChange(Sender: TObject);
begin
  DM.tbCadastro.Locate('nome', txtBusca.Text,[loPartialKey])
end;

end.
