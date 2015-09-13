unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, Data.Bind.GenData, Fmx.Bind.GenData, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.ObjectScope, FMX.ListView;

type
  TForm1 = class(TForm)
    ListView1: TListView;
    PrototypeBindSource1: TPrototypeBindSource;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FechaLiveBindings;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FechaLiveBindings;
begin
  LinkFillControlToField1.BindList.ClearList;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  LinkFillControlToField1.BindList.FillList;
end;

end.
