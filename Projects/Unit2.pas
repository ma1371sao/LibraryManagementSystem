unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses Unit3;

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  if((Edit1.Text='admin')and(Edit2.Text='admin'))then     //�˺�����
    begin
      Unit3.Form3.FormCreate(Sender);
      Unit3.Form3.Show;
    end                                               //�˺��������
  else
    showmessage('������ȷ���û��������룡');
    Edit1.Text:='';                                   //�˺���������Ϊ��
    Edit2.Text:='';
  end;

end.
