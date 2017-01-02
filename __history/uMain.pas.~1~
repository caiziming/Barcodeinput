unit uMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Data.DB,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Data.Win.ADODB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Buttons,
  Vcl.ComCtrls,
  Vcl.DBCtrls,
  Winapi.CommCtrl,
  Winapi.WinSock,
  System.IniFiles,
  Winapi.ShellAPI,
  frxClass,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxStyles,
  dxSkinsCore,
  dxSkinBlack,
  dxSkinBlue,
  dxSkinBlueprint,
  dxSkinCaramel,
  dxSkinCoffee,
  dxSkinDarkRoom,
  dxSkinDarkSide,
  dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle,
  dxSkinFoggy,
  dxSkinGlassOceans,
  dxSkinHighContrast,
  dxSkiniMaginary,
  dxSkinLilian,
  dxSkinLiquidSky,
  dxSkinLondonLiquidSky,
  dxSkinMcSkin,
  dxSkinMetropolis,
  dxSkinMetropolisDark,
  dxSkinMoneyTwins,
  dxSkinOffice2007Black,
  dxSkinOffice2007Blue,
  dxSkinOffice2007Green,
  dxSkinOffice2007Pink,
  dxSkinOffice2007Silver,
  dxSkinOffice2010Black,
  dxSkinOffice2010Blue,
  dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray,
  dxSkinOffice2013White,
  dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark,
  dxSkinPumpkin,
  dxSkinSeven,
  dxSkinSevenClassic,
  dxSkinSharp,
  dxSkinSharpPlus,
  dxSkinSilver,
  dxSkinSpringTime,
  dxSkinStardust,
  dxSkinSummer2008,
  dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters,
  dxSkinValentine,
  dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  dxSkinVS2010,
  dxSkinWhiteprint,
  dxSkinXmas2008Blue,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  cxDBData,
  cxDBLookupComboBox,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  cxDropDownEdit, cxCurrencyEdit;

type
  TfrmMain = class(TForm)
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    GroupBox1: TGroupBox;
    btnSave: TBitBtn;
    btnSync: TBitBtn;
    DBNavigator1: TDBNavigator;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    edtBarcodeQ: TEdit;
    Label12: TLabel;
    edtChsQ: TEdit;
    Label13: TLabel;
    edtPinyinQ: TEdit;
    btnQuery: TBitBtn;
    ADOConnection2: TADOConnection;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    ProgressBar1: TProgressBar;
    btnCancelQuery: TBitBtn;
    StatusBar1: TStatusBar;
    aqPASS: TADOQuery;
    Timer1: TTimer;
    btnPrint: TBitBtn;
    frxReport1: TfrxReport;
    grd: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    grdColumn1: TcxGridDBColumn;
    grdColumn2: TcxGridDBColumn;
    grdColumn3: TcxGridDBColumn;
    grdColumn4: TcxGridDBColumn;
    colMsrUnit: TcxGridDBColumn;
    grdColumn6: TcxGridDBColumn;
    grdColumn7: TcxGridDBColumn;
    grdColumn8: TcxGridDBColumn;
    grdColumn9: TcxGridDBColumn;
    grdColumn10: TcxGridDBColumn;
    cbOnLine: TCheckBox;
    cbPrintAll: TCheckBox;
    cmbStuff: TComboBox;
    cmbStyle: TComboBox;
    edtBarcode: TEdit;
    edtChs: TEdit;
    edtCost: TEdit;
    edtDprice: TEdit;
    edtPinyin: TEdit;
    edtPrice: TEdit;
    edtUnit: TComboBox;
    procedure btnSyncClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure btnQueryClick(Sender: TObject);
    procedure btnCancelQueryClick(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
    TryDate: TDateTime;
    PASSWORD: string;
    procedure QueryAll;
    procedure SyncData;
    function GetComputerName: string;
    function EncryptString(Source, Key: string): string;
    function UnEncryptString(Source, Key: string): string;
    procedure KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnCancelQueryClick(Sender: TObject);
begin
  QueryAll;
end;

procedure TfrmMain.btnPrintClick(Sender: TObject);
var
  BM: TBookmark;
begin
  if ADOQuery1.RecordCount > 0 then
  begin
    if not cbPrintAll.Checked then
    begin
      TfrxMemoView(frxReport1.FindComponent('MEMO2')).Text := ADOQuery1.FieldByName('ItemName').AsString;
      TfrxMemoView(frxReport1.FindComponent('MEMO4')).Text := ADOQuery1.FieldByName('Price').AsString + '元';
      TfrxMemoView(frxReport1.FindComponent('MEMO6')).Text := ADOQuery1.FieldByName('ItemCode').AsString;
      TfrxMemoView(frxReport1.FindComponent('MEMO10')).Text := ADOQuery1.FieldByName('MsrUnit').AsString;
      frxReport1.PrintOptions.ShowDialog := False;
      frxReport1.ShowProgress := False;
      frxReport1.PrepareReport();
      frxReport1.Print;
      if not ADOQuery1.Eof then
        ADOQuery1.Next;
    end
    else
    begin
      BM := ADOQuery1.GetBookmark;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin
        TfrxMemoView(frxReport1.FindComponent('MEMO2')).Text := ADOQuery1.FieldByName('ItemName').AsString;
        TfrxMemoView(frxReport1.FindComponent('MEMO4')).Text := ADOQuery1.FieldByName('Price').AsString + '元';
        TfrxMemoView(frxReport1.FindComponent('MEMO6')).Text := ADOQuery1.FieldByName('ItemCode').AsString;
        TfrxMemoView(frxReport1.FindComponent('MEMO10')).Text := ADOQuery1.FieldByName('MsrUnit').AsString;
        frxReport1.PrintOptions.ShowDialog := False;
        frxReport1.ShowProgress := False;
        frxReport1.PrepareReport();
        frxReport1.Print;
        ADOQuery1.Next;
      end;
      ADOQuery1.GotoBookmark(BM);
    end;
  end;
end;

procedure TfrmMain.btnQueryClick(Sender: TObject);
var
  sSQL: string;
begin
  sSQL := 'SELECT * FROM OITM WHERE ITEMCODE LIKE ''%' + edtBarcodeQ.Text + '%'' AND ITEMNAME LIKE ''%' + edtChsQ.Text +
    '%'' AND PCODE LIKE ''%' + edtPinyinQ.Text + '%''';
  with ADOQuery1 do
  begin
    DisableControls;
    SQL.Clear;
    SQL.Add(sSQL);
    //SQL.SaveToFile(ExtractFileDir(Application.ExeName) + '\Test.txt');
    Open;
  end;
  ADOQuery1.EnableControls;
end;

procedure TfrmMain.btnSaveClick(Sender: TObject);
var
  sSQL: string;
begin
  if Trim(edtBarcode.Text) = '' then
  begin
    StatusBar1.Panels[0].Text := '条形码不能为空.请输入!';
    edtBarcode.SetFocus;
    Exit;
  end;

  if Trim(edtChs.Text) = '' then
  begin
    StatusBar1.Panels[0].Text := '中文名称不能为空.请输入!';
    edtChs.SetFocus;
    Exit;
  end;

  if Trim(edtPinyin.Text) = '' then
  begin
    StatusBar1.Panels[0].Text := '拼音代码不能为空.请输入!';
    edtPinyin.SetFocus;
    Exit;
  end;

  if Trim(edtUnit.Text) = '' then
  begin
    StatusBar1.Panels[0].Text := '单位不能为空.请输入!';
    edtUnit.SetFocus;
    Exit;
  end;

  if Trim(cmbStyle.Text) = '' then
  begin
    StatusBar1.Panels[0].Text := '产品大类不能为空.请输入!';
    cmbStyle.SetFocus;
    Exit;
  end;

  if Trim(cmbStuff.Text) = '' then
  begin
    StatusBar1.Panels[0].Text := '产品小类不能为空.请输入!';
    cmbStuff.SetFocus;
    Exit;
  end;

  if Trim(edtPrice.Text) = '' then
  begin
    StatusBar1.Panels[0].Text := '销售价格不能为空.请输入!';
    edtPrice.SetFocus;
    Exit;
  end;

  if Trim(edtDprice.Text) = '' then
  begin
    StatusBar1.Panels[0].Text := '批发价格不能为空.请输入!';
    edtDprice.SetFocus;
    Exit;
  end;

  if Trim(edtCost.Text) = '' then
  begin
    StatusBar1.Panels[0].Text := '进价不能为空.请输入!';
    edtCost.SetFocus;
    Exit;
  end;

  try
    sSQL := 'INSERT INTO OITM ' + '([ItemCode], [ItemName], [PCode], [OEMCode], [Description], [ItemLive], [ABC], ' +
      '[OldCode], [OldName], [GBCode], [GroupCode], [BarMode], [SizeGroup], [ColorGroup], ' +
      '[ColorCode], [BrandCode], [Years], [Season], [StdCode], [MsrUnit], [Style], [Stuff],' +
      ' [Sex], [BrandSub], [Warranty], [Factory], [Area], [ImageID], [Price], [Dprice], ' +
      '[Cost], [AvgCost], [Point], [AllowOSALReturn], [AllowOWSLReturn], [AllowZeroSale], ' +
      '[Cancel], [A1], [A2], [A3], [A4], [A5], [A6], [A7], [A8], [B1], [B2], [B3], [B4], ' +
      '[B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8], [Batch])' + ' VALUES ' + '(''' + edtBarcode.Text
      + ''',''' + edtChs.Text + ''',''' + edtPinyin.Text + ''','''','''',''正常销售'','''',''' + edtBarcode.Text +
      ''',''1'','''',''01'',''01'',''01'',''01'',''01'',' + '''0033'',''' + FormatDateTime('YYYY', Now) +
      ''',''全年'',''0005'',''' + edtUnit.Text + ''',''' + cmbStyle.Text + ''',''' + cmbStuff.Text +
      ''','''','''',''365'','''','''',1,' + edtPrice.Text + ',' + edtDprice.Text + ',' + edtCost.Text + ',0' +
      ',0,0,0,0,0,'''',''甜味'',''饼干、糕点类'',''代销商品'','''',''否'','''',''商品'',''''' +
      ','''','''','''','''','''','''','''',0,0,0,10,0,0,0,0,-1);';

    with ADOQuery1 do
    begin
      DisableControls;
      SQL.Clear;
      SQL.Add(sSQL);
      SQL.SaveToFile(ExtractFileDir(Application.ExeName) + '\sql.txt');
      ExecSQL;
      QueryAll;
    end;
  finally
    ADOQuery1.Cancel;
    ADOQuery1.EnableControls;
    StatusBar1.Panels[0].Text := '';
    edtBarcode.Text := '';
    edtChs.Text := '';
    edtPinyin.Text := '';
    edtUnit.Text := '';
    cmbStyle.Text := '';
    cmbStuff.Text := '';
    edtPrice.Text := '';
    edtDprice.Text := '';
    edtCost.Text := '';
  end;
end;

procedure TfrmMain.btnSyncClick(Sender: TObject);
var
  iniFile: TIniFile;
  Str: PChar;
  Checked: string;
begin
  if cbOnLine.Checked then
    Checked := 'False'
  else
    Checked := 'True';
  iniFile := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\POS.ini');
  iniFile.WriteString('POS', 'OffLine', Checked); //把系统切换到离线模式.登陆时就不会自动同步服务器数据.

  ProgressBar1.Max := ADOQuery1.RecordCount;
  ProgressBar1.Visible := True;
  ADOConnection2.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Password="";User ID=Admin;Data Source=' + ExtractFileDir(Application.ExeName)
    + '\Cache.dat;Jet OLEDB:Database Password="";';
  try
    try
      ADOConnection2.Connected := True;
      ADOQuery2.Active := True;
    except
      on e: Exception do
        ShowMessage('连接数据库失败，请检查！' + e.message);
    end;
    SyncData;
  finally
    ADOConnection2.Connected := False;
    ProgressBar1.Visible := False;
    iniFile.Free;
    if not cbOnLine.Checked then
    begin
      Str := PChar(ExtractFileDir(Application.ExeName) + '\FWPOS.exe');
      ShellExecute(handle, 'open', Str, nil, nil, SW_SHOWNORMAL);
      if FileExists(ExtractFileDir(Application.ExeName) + '\pInfo.exe') then
      begin
        Str := PChar(ExtractFileDir(Application.ExeName) + '\pInfo.exe');
        ShellExecute(handle, 'open', Str, nil, nil, SW_SHOW);
      end;
      Self.Close;
    end;
  end;
end;

procedure TfrmMain.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  StatusBar1.Panels[3].Text := IntToStr(ADOQuery1.RecordCount);
end;

procedure TfrmMain.KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  ADOConnection1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Password="";User ID=Admin;Data Source=' + ExtractFileDir(Application.ExeName)
    + '\db.dat;Jet OLEDB:Database Password="";';
  try
    ADOConnection1.Connected := True;
    ADOQuery1.Active := True;
  except
    on e: Exception do
      ShowMessage(e.message);
  end;
  edtBarcode.OnKeyDown := KeyDown;
  edtChs.OnKeyDown := KeyDown;
  edtPinyin.OnKeyDown := KeyDown;
  edtUnit.OnKeyDown := KeyDown;
  cmbStyle.OnKeyDown := KeyDown;
  cmbStuff.OnKeyDown := KeyDown;
  edtPrice.OnKeyDown := KeyDown;
  edtDprice.OnKeyDown := KeyDown;
  edtCost.OnKeyDown := KeyDown;
  for I := 0 to edtUnit.Items.Count - 1 do
  begin
    TcxLookupComboBoxProperties(colMsrUnit.Properties).Items.Add(edtUnit.Items[i]);
  end;
  for I := 0 to cmbStyle.Items.Count - 1 do
  begin
    TcxLookupComboBoxProperties(grdColumn6.Properties).Items.Add(cmbStyle.Items[i]);
  end;
  for I := 0 to cmbStuff.Items.Count - 1 do
  begin
    TcxLookupComboBoxProperties(grdColumn7.Properties).Items.Add(cmbStuff.Items[i]);
  end;
  grd.ApplyBestFit;
end;

procedure TfrmMain.FormDblClick(Sender: TObject);
var
  ComputerName: string;
begin
  {ComputerName := InputBox('计算密码','输入电脑名称','');
  //ShowMessage(EncryptString(ComputerName,'MAMING'));
  InputBox('计算密码','输入电脑名称',EncryptString(ComputerName,'MAMING')); }
end;

procedure TfrmMain.FormShow(Sender: TObject);
var
  ComputerName: string;
  Pass: string;
  InputString: string;
  OK: Boolean;
begin
  OK := True;
  ComputerName := GetComputerName;
  Pass := EncryptString(ComputerName, 'MAMING');
  with aqPASS do
  begin
    Active := True;
    SQL.Clear;
    SQL.Add('SELECT * FROM PASS ');
    Open;

    PASSWORD := FieldByName('PASSWORD').AsString;

    if FieldByName('TryDate').AsString = '' then
    begin
      Edit;
      FieldByName('TryDate').AsDateTime := Now;
      Post;
    end;

    TryDate := FieldByName('TryDate').AsDateTime;

    if Now - TryDate < 15 then
    begin
      Exit;
    end;

    if Pass <> FieldByName('PASSWORD').AsString then
    begin
      while True do
      begin
        OK := InputQuery('请输入密码', '请提供此电脑名[' + ComputerName + ']给开发者,' + #10 + #13 + '联系电话:18606299926' + #10 + #13 +
          '输入密码:', InputString);
        if OK then
        begin
          if InputString = Pass then
          begin
            PASSWORD := Pass;
            Edit;
            FieldByName('PASSWORD').AsString := EncryptString(ComputerName, 'MAMING');
            Post;
            Break;
          end;
        end
        else
          Break;
      end;
    end;
  end;
  if not OK then
    Self.Close;
end;

procedure TfrmMain.QueryAll;
begin
  with ADOQuery1 do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM OITM ORDER BY DocEntry DESC');
    Open;
  end;
end;

procedure TfrmMain.SyncData;
var
  I: Integer;
  Count: Integer;
  BM:TBookmark;
begin
  Count := 0;
  with ADOQuery1 do
  begin
    DisableControls;
    BM := GetBookmark;
    try
      First;
      while not Eof do
      begin
        //Locate('Field1;Field2;Field3', VarArrayOf(['Value1', 'Value2', 'Value3']), [loPartialKey]);
        if not ADOQuery2.Locate('ItemCode;ItemName;PCode;MsrUnit;Price',
              VarArrayOf([FieldByName('ItemCode').AsString,
                          FieldByName('ItemName').AsString,
                          FieldByName('PCode').AsString,
                          FieldByName('MsrUnit').AsString,
                          FieldByName('Price').AsString]), [loCaseInsensitive])
          then
        begin
          ADOQuery2.Append;
          for I := 0 to ADOQuery2.FieldCount - 1 do
          begin
            if ADOQuery2.Fields[i].FieldName <> 'DocEntry' then
              ADOQuery2.Fields[i].Value := ADOQuery1.Fields[i].Value;
          end;
          ADOQuery2.Post;
          ProgressBar1.Position := ProgressBar1.Position + 1;
          Inc(Count);
        end;
        Next;
      end;
    finally
      GotoBookmark(BM);
      EnableControls;
      StatusBar1.Panels[1].Text := '同步成功!同步:' + IntToStr(Count) + '条数据.';
      StatusBar1.Panels[2].Text := '同步时间:' + FormatDateTime('YYYY-MM-DD HH:MM:SS', Now);
    end;
  end;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
  if PASSWORD <> '' then
  begin
    Timer1.Enabled := False;
    Exit;
  end;

  aqPASS.SQL.Clear;
  aqPASS.SQL.Add('SELECT * FROM PASS ');
  aqPASS.Open;

  TryDate := aqPASS.FieldByName('TryDate').AsDateTime;

  if Now - TryDate > 15 then
  begin
    aqPASS.Edit;
    aqPASS.FieldByName('PASSWORD').AsString := '';
    aqPASS.Post;
    ShowMessage('您的试用已到期.请购买!' + #10 + #13 + '联系电话:18606299926');
    Close;
  end;
end;

function TfrmMain.GetComputerName: string;
var
  str_ComputerName: string;
  wVersionRequested: Word;   //   uses   Winsock
  WSAData: TWSAData;
  p: PHostEnt;
  s: array[0..128] of Char;
begin
  result := '';
  wVersionRequested := MakeWord(1, 1);
  WSAStartup(wVersionRequested, WSAData);
  gethostname(@s, 128);
  p := gethostbyname(@s);
  str_ComputerName := p^.h_Name;
  result := str_ComputerName;
  WSACleanup;
end;

procedure TfrmMain.GroupBox1Click(Sender: TObject);
begin
  {ShowMessage(EncryptString('Maming-Think', 'MAMING'));
  ShowMessage(UnEncryptString(EncryptString('Maming-Think','MAMING'), 'MAMING'));
  ShowMessage(GetComputerName); }
end;

function TfrmMain.EncryptString(Source, Key: string): string;
var
  KeyLen: Integer;
  KeyPos: Integer;
  Offset: Integer;
  Dest: string;
  SrcPos: Integer;
  SrcAsc: Integer;
  Range: Integer;
begin
  KeyLen := Length(Key);
  if KeyLen = 0 then
    Key := 'MAMING';
  KeyPos := 0;
  Range := 256;
  Randomize;
  Offset := 128; //random(Range);
  Dest := Format('%1.2x', [Offset]);
  for SrcPos := 1 to Length(Source) do
  begin
    SrcAsc := (Ord(Source[SrcPos]) + Offset) mod 255;
    if KeyPos < KeyLen then
      KeyPos := KeyPos + 1
    else
      KeyPos := 1;
    SrcAsc := SrcAsc xor Ord(Key[KeyPos]);
    Dest := Dest + Format('%1.2x', [SrcAsc]);
    Offset := SrcAsc;
  end;
  result := Dest;
end;

function TfrmMain.UnEncryptString(Source, Key: string): string;
var
  KeyLen: Integer;
  KeyPos: Integer;
  Offset: Integer;
  Dest: string;
  SrcPos: Integer;
  SrcAsc: Integer;
  TmpSrcAsc: Integer;
begin
  KeyLen := Length(Key);
  if KeyLen = 0 then
    Key := 'MAMING';
  KeyPos := 0;
  Offset := StrToInt('$' + Copy(Source, 1, 2));
  SrcPos := 3;
  repeat
    SrcAsc := StrToInt('$' + Copy(Source, SrcPos, 2));
    if KeyPos < KeyLen then
      KeyPos := KeyPos + 1
    else
      KeyPos := 1;
    TmpSrcAsc := SrcAsc xor Ord(Key[KeyPos]);
    if TmpSrcAsc <= Offset then
      TmpSrcAsc := 255 + TmpSrcAsc - Offset
    else
      TmpSrcAsc := TmpSrcAsc - Offset;
    Dest := Dest + Chr(TmpSrcAsc);
    Offset := SrcAsc;
    SrcPos := SrcPos + 2;
  until SrcPos >= Length(Source);
  result := Dest;
end;

end.


