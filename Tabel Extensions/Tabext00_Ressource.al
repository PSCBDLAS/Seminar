tableextension 50100 "BDL Resource Ext" extends Resource
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                TestField("Unit Cost");
            end;
        }
        modify(Type)
        {
            OptionCaption = 'Instructor,Room';
        }
        field(50101; "BDL Resource type"; Option)
        {
            DataClassification = CustomerContent;
            caption = 'Resource type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
        }
        field(50102; "BDL Maximum Participants"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Maximum Participants';

        }
        field(50103; "BDL Quantity Per Day"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Quantity Per Day';

        }
    }

}