page 50087 BinContent
{
    APIGroup = 'bis';
    APIPublisher = 'nwth';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'bisbincontent';
    DelayedInsert = true;
    EntityName = 'bisbincontent';
    EntitySetName = 'bisbincontents';
    PageType = API;
    SourceTable = "Bin Content";
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(LocationCode; Rec."Location Code")
                {
                }
                field(ZoneCode; Rec."Zone Code")
                {
                }
                field(BinCode; Rec."Bin Code")
                {
                }
                field(ItemNo; Rec."Item No.")
                {
                }
                field(BinTypeCode; Rec."Bin Type Code")
                {
                }
                field(WarehouseClassCode; Rec."Warehouse Class Code")
                {
                }
                field(BlockMovement; Rec."Block Movement")
                {
                }
                field(MinQty; Rec."Min. Qty.")
                {
                }
                field(MaxQty; Rec."Max. Qty.")
                {
                }
                field(BinRanking; Rec."Bin Ranking")
                {
                }
                field(Quantity; Rec.Quantity)
                {
                }
                field(UnitOfMeasureCode; Rec."Unit of Measure Code")
                {
                }
                field(Default; Rec.Default)
                {
                }
                field(Dedicated; Rec.Dedicated)
                {
                }
                field(QuantityBase; Rec."Quantity (Base)")
                {
                }
                field(PickQuantityBase; Rec."Pick Quantity (Base)")
                {
                }
                field(AtoComponentsPickQtyBase; Rec."ATO Components Pick Qty (Base)")
                {
                }
                field(NegativeAdjmtQtyBase; Rec."Negative Adjmt. Qty. (Base)")
                {
                }
                field(PutAwayQuantityBase; Rec."Put-away Quantity (Base)")
                {
                }
                field(PositiveAdjmtQtyBase; Rec."Positive Adjmt. Qty. (Base)")
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
