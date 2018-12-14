codeunit 50101 "BDL Seminar-Post (Yes/No)"
{
    // BDL1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 7 - Lab 5-2
    //     - Created new codeunit

    TableNo = 50110;

    trigger OnRun();
    begin
        SeminarRegHeader.COPY(Rec);
        Code;
        Rec := SeminarRegHeader;
    end;

    var
        SeminarRegHeader : Record "BDL Seminar Reg. Header";
        SeminarPost : Codeunit "BDL Seminar-Post";
        Text001 : Label 'Do you want to post the Registration?';

    local procedure "Code"();
    begin
        if not Confirm(Text001,false) then
          exit;
        SeminarPost.RUN(SeminarRegHeader);
        COMMIT;
    end;
}

