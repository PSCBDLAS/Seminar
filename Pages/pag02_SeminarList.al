
page 50102 "BDL Seminar List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
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
                field("Minumum Participants"; "Minumum Participants")
                {
                    ApplicationArea = All;
                    Caption = 'Minumum Participants';
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
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}