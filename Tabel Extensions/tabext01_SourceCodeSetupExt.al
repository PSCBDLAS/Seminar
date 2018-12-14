tableextension 50101 "BDL SourceCodeSetupExt" extends "Source Code Setup"
// BDL1.00 - 2012-06-15 - D. E. Veloper
// Chapter 7 - Lab 1-7
// -	Added new fields:
// -	Seminar
{
    fields
    {
        field(50100;"BDL Seminar";Code[10])
        {
            Caption='Seminar';
            TableRelation="Source Code";
        }
    }
}
