
page 50102 "BDL Seminar List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = "BDL Seminar Card";
    SourceTable = "BDL Seminar";
    Caption = 'Seminar list';
    Editable = false;
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                    Caption = 'No.';
                }
                field("Name"; Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field("Seminar Duration"; "Seminar Duration")
                {
                    ApplicationArea = All;
                    Caption = 'Seminar Duration';
                }
                field("Seminar price"; "Seminar price")
                {
                    ApplicationArea = All;
                    Caption = 'Seminar price';
                }
                field("Minimum Participants"; "Minimum Participants")
                {
                    ApplicationArea = All;
                    Caption = 'Minimum Participants';
                }
                field("Maximum Participants"; "Maximum Participants")
                {
                    ApplicationArea = All;
                    Caption = 'Maximum Participants';
                }
            }
        }
        area(factboxes)
        {
            systempart("Links"; Links)
            {

            }
            systempart("Notes"; Notes)
            {

            }
        }

    }

    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    ApplicationArea = All;
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        //TO DO : Return to code runobj
                    end;
                }
                action("Ledger Entries")
                {
                    ApplicationArea = All;
                    Caption = 'Ledger Entries';
                    RunObject = page "BDL Seminar Ledger Entries";
                    RunPageLink = "Seminar No." = field ("No.");
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortcutKey = "Ctrl+F7";
                    Image = LedgerEntries;
                }
                action("&Registrations")
                {
                    ApplicationArea = All;
                    Caption = 'Registrations';
                    RunObject = page "BDL Seminar Registration List";
                    RunPageLink = "Seminar No." = field ("No.");
                    Promoted = true;
                    PromotedCategory = Process;
                    Image = Timesheet;
                }
            }

        }
        area(Processing)
        {
            action("Seminar Registrations")
            {
                ApplicationArea = All;
                Caption = 'Seminar Registrations';
                RunObject = page "BDL Seminar Registration";
                RunPageLink = "Seminar No." = field ("No.");
                RunPageMode = Create;
                Promoted = true;
                PromotedCategory = New;
                Image = Timesheet;
            }
        }
    }
}