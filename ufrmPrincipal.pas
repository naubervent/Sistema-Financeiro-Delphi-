unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    imgUsuarios: TImage;
    lbl1: TLabel;
    imgReceber: TImage;
    imgPagar: TImage;
    imgCaixa: TImage;
    imgConsuReceber: TImage;
    imgConsuPagar: TImage;
    lbl2: TLabel;
    lbl3: TLabel;
    imgConfiguracao: TImage;
    imgNavegador: TImage;
    img3: TImage;
    img4: TImage;
    imgRelPagar: TImage;
    imgRelReceber: TImage;
    imgRelCaixa: TImage;
    BalloonHint: TBalloonHint;
    Timer: TTimer;
    stat1: TStatusBar;
    procedure TimerTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Deseja realmente sair?','Informação',MB_YESNO+MB_ICONQUESTION) = mrYes then
    Application.Terminate;
  else
    Abort;
end;

procedure TfrmPrincipal.TimerTimer(Sender: TObject);
begin
  stat1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
