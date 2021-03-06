page 50101 "BDL Seminar Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "BDL Seminar";
    Caption = 'Seminar';

    layout
    {
        area(Content)
        {
            group(Geneal)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                    Caption = 'No.';
                    AssistEdit = true;
                    trigger OnAssistEdit();
                    begin
                        if AssistEdit then
                            CurrPage.Update();
                    end;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';

                }
                field("Search Name"; "Search Name")
                {
                    ApplicationArea = All;
                    Caption = 'Search Name';

                }
                field("Seminar Duration"; "Seminar Duration")
                {
                    ApplicationArea = All;
                    Caption = 'Seminar Duration';

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
                field(Blocked; Blocked)
                {
                    ApplicationArea = All;
                    Caption = 'Blocked';

                }
                field("Last Date Modified"; "Last Date Modified")
                {

                    ApplicationArea = All;
                    Caption = 'Last Date Modified';

                }

            }
            group("Posting")
            {
                field("Gen. Prod. posting Group"; "Gen. Prod. posting Group")
                {
                    ApplicationArea = All;
                    Caption = 'Gen. Prod. posting Group';

                }
                field("Vat Prod. Posting Group"; "Vat Prod. Posting Group")
                {
                    ApplicationArea = All;
                    Caption = 'Vat Prod. Posting Group';

                }
                field("Seminar price"; "Seminar price")
                {
                    ApplicationArea = All;
                    Caption = 'Seminar price';

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