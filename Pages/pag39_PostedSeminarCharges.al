page 50139  "BDL Posted Seminar Charges"
{
    // BDL1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 7 - Lab 3
    //     - Created new page

    AutoSplitKey = true;
    Caption = 'Posted Seminar Charges';
    Editable = false;
    PageType = List;
    SourceTable = "BDL Posted Seminar Charge";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No.";"No.")
                {
                }
                field(Description;Description)
                {
                }
                field(Quantity;Quantity)
                {
                }
                field("Unit of Measure Code";"Unit of Measure Code")
                {
                }
                field("Bill-to Customer No.";"Bill-to Customer No.")
                {
                }
                field("Gen. Prod. Posting Group";"Gen. Prod. Posting Group")
                {
                }
                field("Unit Price";"Unit Price")
                {
                }
                field("Total Price";"Total Price")
                {
                }
                field("To Invoice";"To Invoice")
                {
                }
            }
        }
    }

    actions
    {
    }
}

