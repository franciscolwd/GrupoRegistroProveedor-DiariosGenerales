pageextension 50107 DTCotizacionVentaPageExt extends "Sales Quote"
{
    layout
    {
        addbefore("Invoice Details")
        {
            group(LocationColombia)
            {
                Caption = 'Localización Colombia';

                field("DTCustomerPostingGroup"; Rec."Customer Posting Group")
                {
                    CaptionML = ENU = 'Customer registration group', ESP = 'Grupo registro cliente';
                    Editable = true;
                    ApplicationArea = Basic, Suite;
                    Importance = Additional;
                    ShowMandatory = true;
                    ToolTip = 'Especifica el tipo de mercado del proveedor para vincular las transacciones comerciales realizadas para el proveedor con la cuenta correspondiente en el libro mayor.';
                }
            }
        }
    }

}