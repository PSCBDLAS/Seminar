table 50101 "BDL Seminar"
{
    DataClassification = CustomerContent;
    Caption = 'Seminar';
    LookupPageId = "BDL Seminar List";
    DrillDownPageId = "BDL Seminar List";
    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = '';
            trigger OnValidate()
            begin
                if "No." <> xrec."No." then begin
                    Seminarsetup.Get();
                    NoSeriesMgt.TestManual(Seminarsetup."Seminar Nos.");
                    "No. Series" := '';
                end;
            end;
        }
        field(2; "Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Name';
            trigger OnValidate()
            begin
                "Search Name" := UpperCase(Name);
            end;
        }
        field(3; "Seminar Duration"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Seminar Duration';
            DecimalPlaces = 0 : 1;

        }
        field(4; "Minimum Participants"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Minimum Participants';

        }
        field(5; "Maximum Participants"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Maximum Participants';

        }
        field(6; "Search Name"; Code[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Search Name';

        }
        field(7; Blocked; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Blocked';

        }
        field(8; "Last Date Modified"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Last Date Modified';
            Editable = false;

        }
        field(9; "Comment"; Boolean)
        {
            Caption = 'Comment';
            Editable = false;
            //FieldClass = FlowField;
            //CalcFormula = exist("Seminar Comment Line")
            //where("Tabel name" = const(seminar),"no." = field("No."));

        }
        field(10; "Seminar price"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = '';
            AutoFormatType = 1;

        }
        field(11; "Gen. Prod. posting Group"; code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Gen. Prod. posting Group';
            TableRelation = "Gen. Product Posting Group";
            trigger OnValidate()
            begin
                if xRec."Gen. Prod. posting Group" <> "Gen. Prod. posting Group" then begin
                    if GenProdPostingGroup.ValidateVatProdPostingGroup(GenProdPostingGroup, "Gen. Prod. posting Group") then
                        validate("Vat Prod. Posting Group", GenProdPostingGroup."Def. VAT Prod. Posting Group");
                end;
            end;
        }
        field(12; "Vat Prod. Posting Group"; code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Vat Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(13; "No. Series"; code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";

        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(Sk1; "Search Name")
        {
            Clustered = false;
        }
    }
    var
        Seminarsetup: Record "BDL Seminar Setup";
        //CommentLine : record "BDL Seminar Comment Line";
        Seminar: Record "BDL Seminar";
        GenProdPostingGroup: Record "Gen. Product Posting Group";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if "No." = '' then begin
            Seminarsetup.Get();
            Seminarsetup.TestField("Seminar Nos.");
            NoSeriesMgt.InitSeries(Seminarsetup."Seminar Nos.", xRec."No. Series", 0D, "No.", "No. Series");
        end;
    end;

    trigger OnModify()
    begin
        "Last Date Modified" := Today();
    end;

    trigger OnRename()
    begin
        "Last Date Modified" := Today();
    end;

    trigger OnDelete()
    begin
        //delete comments LATER :)
    end;

    procedure AssistEdit(): Boolean
    begin
        with Seminar do begin
            Seminar := Rec;
            SeminarSetup.get;
            SeminarSetup.TestField("Seminar Nos.");
            if NoSeriesMgt.SelectSeries(SeminarSetup."Seminar Nos.", xRec."No. Series", "No. Series") then begin
                NoSeriesMgt.SetSeries("No.");
                Rec := Seminar;
                exit(true);
            end;
        end;
    end;
}