table 50100 "BDL Seminar Setup"
{
    DataClassification = CustomerContent;
    Caption = 'Seminar Setup';

    fields
    {
        field(1; "Primary key"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Primary key';

        }
        field(2; "Seminar Nos."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Seminar Nos.';
            TableRelation = "No. Series";

        }
        field(3; "Seminar Registration Nos."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Seminar Registration Nos.';
            TableRelation = "No. Series";

        }
        field(4; "Posted Seminar Reg. Nos."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Posted Seminar Reg. Nos.';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "Primary key")
        {
            Clustered = true;
        }
    }

}