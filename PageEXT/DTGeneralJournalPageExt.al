pageextension 50123 DTGeneralJournal extends "General Journal"
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