pageextension 50101 DTExtCotizacionCompras extends "Purchase Quote"
{
    layout
    {
        addafter(PurchLines)
        {
            group(LocationColombia)
            {
                Caption = 'Localización Colombia';

                field("DTVendorPostingGroup"; Rec."Vendor Posting Group")
                {
                    Caption = 'Grupo regristro proveedor';
                    Editable = true;
                    ApplicationArea = Basic, Suite;
                    Importance = Additional;
                    ShowMandatory = true;
                    ToolTip = 'Especifica el tipo de mercado del proveedor para vincular las transacciones comerciales realizadas para el proveedor con la cuenta correspondiente en el libro mayor.';
                }
            }
        }

        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}