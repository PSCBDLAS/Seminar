pageextension 50100 "BDL Resource Ext" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("BDL Resource type"; "BDL Resource type")
            {

            }
            field("BDL Quantity Per Day"; "BDL Quantity Per Day")
            {

            }

        }
        addafter("Personal Data")
        {
            group("BDL Room")
            {
                Caption = 'Room';
                Visible = ShowMaxField;
                field("BDL Maximum Participants"; "BDL Maximum Participants")
                {

                }
            }
        }
    }


    trigger OnAfterGetRecord()
    begin
        ShowMaxField := (Type = type::Machine);
        CurrPage.Update();
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}