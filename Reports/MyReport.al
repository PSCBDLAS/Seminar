report 50130 "Seminar List"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/Myreport.rdl';

    dataset
    {
        dataitem("Seminar"; "BDL Seminar")
        {
            RequestFilterFields = "No.";


            column(No_; "No.")
            {

            }
            column(Name; Name)
            {

            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Settings)
                {
                    field(ShowDetails; ShowDetails)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        ShowDetails: Boolean;
}