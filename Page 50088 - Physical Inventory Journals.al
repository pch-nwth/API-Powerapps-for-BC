page 50088 PhysicalInventoryJournals
{
    APIGroup = 'bis';
    APIPublisher = 'nwth';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'bisphysicalinventoryjournal';
    DelayedInsert = true;
    EntityName = 'bisphysicalinventoryjournal';
    EntitySetName = 'bisphysicalinventoryjournals';
    PageType = API;
    SourceTable = "Item Journal Line";
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
                field(QtyPhysInventory; Rec."Qty. (Phys. Inventory)")
                {
                }
                field(BinCode; Rec."Bin Code")
                {
                }
                field(ItemNo; Rec."Item No.")
                {
                }
                field(QtyCalculated; Rec."Qty. (Calculated)")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field(EntryType; Rec."Entry Type")
                {
                }
                field(PostingDate; Rec."Posting Date")
                {
                }
                field(DocumentNo; Rec."Document No.")
                {
                }
                field(SalespersPurchCode; Rec."Salespers./Purch. Code")
                {
                }
                field(Quantity; Rec.Quantity)
                {
                }
                field(UnitOfMeasureCode; Rec."Unit of Measure Code")
                {
                }
                field(UnitAmount; Rec."Unit Amount")
                {
                }
                field(Amount; Rec.Amount)
                {
                }
                field(QuantityBase; Rec."Quantity (Base)")
                {
                }
                field(UnitCost; Rec."Unit Cost")
                {
                }
                field(AppliesToEntry; Rec."Applies-to Entry")
                {
                }
            }
            field(systemId; Rec.SystemId)
            {
            }
        }
    }
}