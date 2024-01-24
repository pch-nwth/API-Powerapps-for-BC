page 50086 WarehouseActivityLine
{
    APIGroup = 'bis';
    APIPublisher = 'nwth';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'biswarehouseactivityline';
    DelayedInsert = true;
    EntityName = 'biswarehouseactivityline';
    EntitySetName = 'biswarehouseactivitylines';
    PageType = API;
    SourceTable = "Warehouse Activity Line";
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
                field(ActivityType; Rec."Activity Type")
                {
                }
                field(LocationCode; Rec."Location Code")
                {
                }
                field(LineNo; Rec."Line No.")
                {
                }
                field(SourceType; Rec."Source Type")
                {
                }
                field(SourceLineNo; Rec."Source Line No.")
                {
                }
                field(SourceDocument; Rec."Source Document")
                {
                }
                field(SourceNo; Rec."Source No.")
                {
                }
                field(ItemNo; Rec."Item No.")
                {
                }
                field(systemId; Rec.SystemId)
                {
                }
                field(UnitOfMeasureCode; Rec."Unit of Measure Code")
                {
                }
                field(Quantity; Rec.Quantity)
                {
                }
                field(ActionType; Rec."Action Type")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field(QtyToHandle; Rec."Qty. to Handle")
                {
                }
                field(QtyHandle; Rec."Qty. Handled")
                {
                }
                field(DestinationType; Rec."Destination Type")
                {
                }
                field(DueDate; Rec."Due Date")
                {
                }
                field(BinCode; Rec."Bin Code")
                {
                }
            }
        }
    }

    var
        rec337: Record 337;
}
