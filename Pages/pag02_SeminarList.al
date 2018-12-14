
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
            }

        }
    }
}