unit unitIMC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFormIMC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Button1: TButton;
    txtPeso: TEdit;
    txtAltura: TEdit;
    editResultado: TEdit;
    Label6: TLabel;
    editIMC: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIMC: TFormIMC;

implementation

{$R *.dfm}

procedure TFormIMC.Button1Click(Sender: TObject);
begin
  var
peso, altura, imc: currency;

begin
peso:=StrToFloat (txtPeso.Text);
altura:= StrToFloat (txtAltura.Text);
imc:= peso/(altura*altura);

if imc < 17 then
editResultado.Text:= ('Você está muito abaixo do peso desejável.');
editIMC.Text := FloatToStr (imc);
if (imc >= 17) and (imc <= 18.49) then
editResultado.Text:= ('Você está abaixo do peso desejável.');
editIMC.Text := FloatToStr (imc);
if (imc >= 18.5) and (imc <= 24.99) then
editResultado.Text:= ('Você está com o peso desejável.');
editIMC.Text := FloatToStr (imc);
if (imc >= 25) and (imc <= 29.99) then
editResultado.Text:= ('Você está acima do peso desejável.');
editIMC.Text := FloatToStr (imc);
if (imc >= 30) and (imc <= 34.99) then
editResultado.Text:= ('Você está com Obesidade grau 1.');
editIMC.Text := FloatToStr (imc);
if (imc >= 35) and (imc <= 39.99) then
editResultado.Text:= ('Você está com Obesidade grau 2.');
editIMC.Text := FloatToStr (imc);
if (imc >= 40) then
editResultado.Text:= ('Você está com Obesidade grau 3.');
editIMC.Text := FloatToStr (imc);

end;
end;

end.
