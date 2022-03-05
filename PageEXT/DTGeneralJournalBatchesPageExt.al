pageextension 50110 DTCCashReceiptJournal extends "Cash Receipt Journal"
{
    layout
    {
        addafter(Description)
        {
            field("Posting Group"; Rec."Posting Group")
            {
                ApplicationArea = All;
                trigger OnDrillDown()
                begin
                    Rec.LookUpPostingGroup
                end;
            }
        }
    }
}