unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.Menus;

type
  TFormPrincipal = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Sair1: TMenuItem;
    Cadastro1: TMenuItem;
    Cadastro2: TMenuItem;
    Cadastro3: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Cadastro2Click(Sender: TObject);
    procedure Cadastro3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses unitCadastro, unitIMC;

procedure TFormPrincipal.BitBtn1Click(Sender: TObject);
begin
  FormCadastro.ShowModal;
end;

procedure TFormPrincipal.BitBtn2Click(Sender: TObject);
begin
  FormIMC.ShowModal;
end;

procedure TFormPrincipal.Cadastro2Click(Sender: TObject);
begin
  FormCadastro.ShowModal;
end;

procedure TFormPrincipal.Cadastro3Click(Sender: TObject);
begin
  FormIMC.ShowModal;
end;

procedure TFormPrincipal.Sair1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
