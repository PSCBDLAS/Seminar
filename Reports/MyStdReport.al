report 50132 StdReport2
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './StdReport.rdl';
    Caption = 'My Converted Report';


    dataset
    {
        dataitem(DataItem1; Customer)
        {
            column(No; "No.")
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
        }

        actions
        {
        }
    }

    labels
    {
    }
}

