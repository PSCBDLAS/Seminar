page 50111 "BDL Seminar Reg. Subpage"
{
    // BDL1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 3
    //     - Created new page

    Caption = 'Lines';
    DelayedInsert = true;
    PageType = List;
    SourceTable = "BDL Seminar Registration Line";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Bill-to Customer No.";"Bill-to Customer No.")
                {
                }
                field("Participant Contact No.";"Participant Contact No.")
                {
                }
                field("Participant Name";"Participant Name")
                {
                }
                field(Participated;Participated)
                {
                }
                field("Registration Date";"Registration Date")
                {
                }
                field("Confirmation Date";"Confirmation Date")
                {
                }
                field("To Invoice";"To Invoice")
                {
                }
                field(Registered;Registered)
                {
                }
                field("Seminar Price";"Seminar Price")
                {
                }
                field("Line Discount %";"Line Discount %")
                {
                }
                field("Line Discount Amount";"Line Discount Amount")
                {
                }
                field(Amount;Amount)
                {
                }
            }
        }
    }

    actions
    {
    }
}

