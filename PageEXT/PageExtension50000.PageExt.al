pageextension 50010 PageExtension50000 extends "Vendor Ledger Entries"
{
    layout
    {
        addafter("Vendor No.")
        {
            field("Vendor Posting Group75235"; Rec."Vendor Posting Group")
            {
                Editable = true;
                ApplicationArea = All;
            }
        }
    }
}
