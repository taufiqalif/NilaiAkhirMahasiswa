unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TfrmUtama }

  TfrmUtama = class(TForm)
    btnHitung: TButton;
    edtNilai: TEdit;
    edtAbsen: TEdit;
    edtUts: TEdit;
    edtUas: TEdit;
    edtHasil: TEdit;
    lblJudul: TLabel;
    lblNilai: TLabel;
    lblAbsen: TLabel;
    lblUts: TLabel;
    lblUas: TLabel;
    lblHasil: TLabel;
    procedure btnHitungClick(Sender: TObject);
  private

  public

  end;

var
  frmUtama: TfrmUtama;

implementation

{$R *.lfm}

{ TfrmUtama }

procedure TfrmUtama.btnHitungClick(Sender: TObject);
var
  Tugas, Absensi, UTS, UAS, NilaiAkhir: Float;
begin
  // Konversi input pengguna menjadi bilangan pecahan (Double)
  Tugas := StrToFloat(edtNilai.Text);
  Absensi := StrToFloat(edtAbsen.Text);
  UTS := StrToFloat(edtUts.Text);
  UAS := StrToFloat(edtUas.Text);

  // Hitung nilai akhir berdasarkan persentase
  NilaiAkhir := (0.2 * Tugas) + (0.1 * Absensi) + (0.3 * UTS) + (0.4 * UAS);

  // Tampilkan nilai akhir dalam kotak teks Hasil
  edtHasil.Text := FloatToStr(NilaiAkhir);
end;

end.

