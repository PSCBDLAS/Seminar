pageextension 50101 "BDL Resourcelist ext" extends "Resource List"
{
    layout
    {
        modify(Type)
        {
            Visible = Showtype;
        }

        addafter(Type)
        {
            field("BDL Resource type"; "BDL Resource type")
            {

            }
            field("BDL Maximum Participants"; "BDL Maximum Participants")
            {
                Visible = showMaxField;
            }
        }
    }

    trigger OnOpenPage()
    begin
        Showtype := (GetFilter(Type) = '');
        showMaxField := (GetFilter(Type) = format(Type::Machine));
    end;

    var
        [InDataSet]
        Showtype: Boolean;
        showMaxField: Boolean;
}