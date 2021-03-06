page 50107 "BDL Seminar Comment List"
// BDL1.00 - 2018-01-01 - D. E. Veloper
// Chapter 5 - Lab 2-2
{
    Caption = 'Seminar Comment List';
    PageType = List;
    SourceTable = "BDL Seminar Comment Line";
    Editable=false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date;Date)
                {
                }
                field(Code;Code)
                {
                    Visible=false;
                }
                field(Comment;Comment)
                {    
                }
            }
        }
    }
}
