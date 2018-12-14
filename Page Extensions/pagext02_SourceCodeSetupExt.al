pageextension 50102 "BDL SourceCodeExt" extends "Source Code Setup"
// BDL1.00 - 2012-06-15 - D. E. Veloper
// Chapter 7 - Lab 1-8
// -    Added new group: Seminar
// -    Added new field: Seminar

{
    layout
    {
        addafter("Cost Accounting")
        {
            group(SeminarGroup)
            {
                Caption='Seminar';
            }
        }
        addfirst(SeminarGroup)
        {
            field(Seminar;"BDL Seminar")
            {
            }
        }
    }
}