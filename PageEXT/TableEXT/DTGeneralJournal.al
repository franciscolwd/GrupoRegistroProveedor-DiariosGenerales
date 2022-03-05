tableextension 50120 MyExtension extends "Gen. Journal Line"
{
    procedure LookUpPostingGroup()
    var
        CustPostingGroup: Record "Customer Posting Group";
        VendPostingGroup: Record "Vendor Posting Group";
        FAPostingGroup: Record "FA Posting Group";
        BankAccPostingGroup: Record "Bank Account Posting Group";
        EmplostingGroup: Record "Employee Posting Group";
        CustomerPostingGroups: Page "Customer Posting Groups";
        VendorPostingGroups: Page "Vendor Posting Groups";
        FAPostingGroups: Page "FA Posting Groups";
        BankAccountPostingGroups: Page "Bank Account Posting Groups";
        EmployeePostingGroups: Page "Employee Posting Groups";
    begin
        case Rec."Account Type" of
            Rec."Account Type"::Customer:
                begin
                    Clear(CustomerPostingGroups);
                    CustomerPostingGroups.LookupMode(true);
                    CustomerPostingGroups.SetTableView(CustPostingGroup);
                    CustomerPostingGroups.SetRecord(CustPostingGroup);
                    if CustomerPostingGroups.RunModal() in [Action::OK, Action::LookupOK] then begin
                        CustomerPostingGroups.GetRecord(CustPostingGroup);
                        "Posting Group" := CustPostingGroup.Code;
                    end;
                end;
            Rec."Account Type"::Vendor:
                begin
                    Clear(VendorPostingGroups);
                    VendorPostingGroups.LookupMode(true);
                    VendorPostingGroups.SetTableView(VendPostingGroup);
                    VendorPostingGroups.SetRecord(VendPostingGroup);
                    if VendorPostingGroups.RunModal() in [Action::OK, Action::LookupOK] then begin
                        VendorPostingGroups.GetRecord(VendPostingGroup);
                        "Posting Group" := VendPostingGroup.Code;
                    end;
                end;
            Rec."Account Type"::"Fixed Asset":
                begin
                    Clear(FAPostingGroups);
                    FAPostingGroups.LookupMode(true);
                    FAPostingGroups.SetTableView(CustPostingGroup);
                    FAPostingGroups.SetRecord(CustPostingGroup);
                    if FAPostingGroups.RunModal() in [Action::OK, Action::LookupOK] then begin
                        FAPostingGroups.GetRecord(CustPostingGroup);
                        "Posting Group" := CustPostingGroup.Code;
                    end;
                end;
            Rec."Account Type"::Employee:
                begin
                    Clear(EmployeePostingGroups);
                    EmployeePostingGroups.LookupMode(true);
                    EmployeePostingGroups.SetTableView(EmplostingGroup);
                    EmployeePostingGroups.SetRecord(EmplostingGroup);
                    if EmployeePostingGroups.RunModal() in [Action::OK, Action::LookupOK] then begin
                        EmployeePostingGroups.GetRecord(EmplostingGroup);
                        "Posting Group" := EmplostingGroup.Code;
                    end;
                end;
            Rec."Account Type"::"Bank Account":
                begin
                    Clear(BankAccountPostingGroups);
                    BankAccountPostingGroups.LookupMode(true);
                    BankAccountPostingGroups.SetTableView(BankAccPostingGroup);
                    BankAccountPostingGroups.SetRecord(BankAccPostingGroup);
                    if BankAccountPostingGroups.RunModal() in [Action::OK, Action::LookupOK] then begin
                        BankAccountPostingGroups.GetRecord(BankAccPostingGroup);
                        "Posting Group" := BankAccPostingGroup.Code;
                    end;
                end;
        end;
    end;
}