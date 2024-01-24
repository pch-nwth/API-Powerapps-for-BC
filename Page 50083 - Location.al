page 50083 LocationAPI
{
    APIGroup = 'bis';
    APIPublisher = 'nwth';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'bislocation';
    DelayedInsert = true;
    EntityName = 'bislocation';
    EntitySetName = 'bislocations';
    PageType = API;
    SourceTable = Location;
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
                field("RequirePick"; Rec."Require Pick")
                {
                }
                field(RequirePutAway; Rec."Require Put-away")
                {
                }
                field(RequireReceive; Rec."Require Receive")
                {
                }
                field(RequireShipment; Rec."Require Shipment")
                {
                }
                field(systemId; Rec.SystemId)
                {
                }
            }
        }
    }
}
