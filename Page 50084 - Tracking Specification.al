page 50084 TrackingSpecification
{
    APIGroup = 'bis';
    APIPublisher = 'nwth';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'bistrackingspecification';
    DelayedInsert = true;
    EntityName = 'bistrackingspecification';
    EntitySetName = 'bistrackingspecifications';
    PageType = API;
    SourceTable = "Item Tracking Code";
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Code; Rec.Code)
                {
                }
                field(LotSpecificTracking; Rec."Lot Specific Tracking")
                {
                }
                field(SnSpecificTracking; Rec."SN Specific Tracking")
                {
                }
                field(systemId; Rec.SystemId)
                {
                }
            }
        }
    }

    var
        rec337: Record 337;
}
