pageextension 50100 DTExtRegistroProveedor extends "Purchase Invoice"
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
                    CaptionML = ENU = 'Vendor Posting Group', ESP = 'Grupo registro proveedor';
                    Editable = true;
                    ApplicationArea = Basic, Suite;
                    Importance = Additional;
                    ShowMandatory = true;
                    ToolTip = 'Especifica el tipo de mercado del proveedor para vincular las transacciones comerciales realizadas para el proveedor con la cuenta correspondiente en el libro mayor.';
                }
            }
        }



    }
    actions
    {
      
    }

    var
        myInt: Integer;
}