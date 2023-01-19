unit unitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    tbCadastro: TFDTable;
    dsCadastro: TDataSource;
    tbCadastroid: TFDAutoIncField;
    tbCadastronome: TStringField;
    tbCadastrocelular: TStringField;
    tbCadastrocpf: TStringField;
    tbCadastrodata: TDateField;
    procedure tbCadastroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.tbCadastroAfterInsert(DataSet: TDataSet);
begin
  tbCadastrodata.Value := Date ();
end;

end.
