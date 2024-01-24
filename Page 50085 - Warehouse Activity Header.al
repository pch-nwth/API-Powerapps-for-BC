page 50085 WarehouseActivityHeader
{
    APIGroup = 'bis';
    APIPublisher = 'nwth';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'biswarehouseactivityheader';
    DelayedInsert = true;
    EntityName = 'biswarehouseactivityheader';
    EntitySetName = 'biswarehouseactivityheaders';
    PageType = API;
    SourceTable = "Warehouse Activity Header";
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(No; Rec."No.")
                {
                }
                field(LocationCode; Rec."Location Code")
                {
                }
                field(NoSeries; Rec."No. Series")
                {
                }
                field(Type; Rec.Type)
                {
                }
                field(RegisteringNoSeries; Rec."Registering No. Series")
                {
                }
                field(SourceNo; Rec."Source No.")
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
