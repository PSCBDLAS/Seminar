codeunit 50139 EventSubscriptions
// BDL1.00 - 2018-01-01 - D. E. Veloper
// Chapter 7 - Lab 2-1
{
  [EventSubscriber(ObjectType::Codeunit, 212,'OnBeforeResLedgEntryInsert', '', true, true)]
  local procedure PostResJnlLineOnBeforeResLedgEntryInsert(var ResLedgerEntry : Record "Res. Ledger Entry";ResJournalLine : Record "Res. Journal Line");
  var
    c : Codeunit "Res. Jnl.-Post Line";
  begin   
      ResLedgerEntry."BDL Seminar No.":=ResJournalLine."BDL Seminar No.";
      ResLedgerEntry."BDL Seminar Registration No.":=ResJournalLine."BDL Seminar Registration No."; 
  end;
}
