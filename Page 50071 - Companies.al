page 50071 biscompanylist
{
    APIGroup = 'bis';
    APIPublisher = 'nwth';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'biscompanylist';
    DelayedInsert = true;
    EntityName = 'biscompany';
    EntitySetName = 'biscompanies';
    PageType = API;
    SourceTable = Company;
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(comname; Rec.Name)
                {
                    Caption = 'Name';
                }
                //add the display field
                field(comdisplayname; Rec."Display Name")
                {
                    Caption = 'Display Name';
                }
                field(vatid; VATID)
                {
                    ApplicationArea = All;
                    Caption = 'VAT ID';
                }
                field(systemId; Rec.SystemId)
                {
                    Caption = 'SystemId';
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        CompanyInfo.ChangeCompany(rec.Name);
        CompanyInfo.Get();
        VATID := CompanyInfo."VAT Registration No.";
    end;

    var
        CompanyInfo: Record "Company Information";
        VATID: Code[20];
}
