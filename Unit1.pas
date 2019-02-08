unit Unit1;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    vokzalADOConnection: TADOConnection;
    marshrutiADOQuery: TADOQuery;
    marshrutiOstanovkiADOQuery: TADOQuery;
    ostanovkiADOQuery: TADOQuery;
    rastoyanieADOQuery: TADOQuery;
    raspisanieADOQuery: TADOQuery;
    marshrutiDataSource: TDataSource;
    marshrutiOstanovkiDataSource: TDataSource;
    ostanovkiDataSource: TDataSource;
    rastoyanieDataSource: TDataSource;
    raspisanieDataSource: TDataSource;
    polzovatelADOQuery: TADOQuery;
    polzovatelDataSource: TDataSource;
    rastADOQuery: TADOQuery;
    exceptADOQuery: TADOQuery;
    ost2ADOQuery: TADOQuery;
    ost2DataSource: TDataSource;
    reportADOQuery: TADOQuery;
    reportDataSource: TDataSource;
    report2ADOQuery: TADOQuery;
    report2DataSource: TDataSource;
    report3ADOQuery: TADOQuery;
    report3DataSource: TDataSource;
    zaprosADOQuery: TADOQuery;
    zaprosDataSource: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit7, Unit8;

{$R *.dfm}

end.
