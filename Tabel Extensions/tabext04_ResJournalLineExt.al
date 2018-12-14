tableextension 50104 "BDL ResJournalLineExt" extends "Res. Journal Line"
// BDL1.00 - 2018-01-01 - D. E. Veloper
// Chapter 7 - Lab 4-2
{
    fields
    {
        field(50100;"BDL Seminar No.";code[20])
        {
            Caption='Seminar No.';
            TableRelation = "BDL Seminar";
        }
        field(50101;"BDL Seminar Registration No.";code[20])
        {
            Caption='Seminar Registration No.';
            TableRelation = "BDL Seminar Reg. Header";
        }        
    }
}