pageextension 50106 DTCPaymentJournalPageExt extends "payment journal"
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
