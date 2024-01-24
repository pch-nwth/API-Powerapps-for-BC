page 50076 ReservationEntry
{
    APIGroup = 'bis';
    APIPublisher = 'nwth';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'bisreservationentry';
    DelayedInsert = true;
    EntityName = 'bisreservationentry';
    EntitySetName = 'bisreservationentries';
    PageType = API;
    SourceTable = "Reservation Entry";
    ODataKeyFields = SystemId;
    Permissions = TableData "Reservation Entry" = RIMD;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(EntryNo; Rec."Entry No.")
                {
                    Caption = 'Entry No.';
                }
                field(ItemNo; Rec."Item No.")
                {
                    Caption = 'Item No.';
                }
                field(LocationCode; Rec."Location Code")
                {
                    Caption = 'Location Code';
                }
                field(QuantityBase; Rec."Quantity (Base)")
                {
                    Caption = 'Quantity (Base)';
                }
                field(Description; Rec."Description")
                {
                    Caption = 'Description';
                }
                field(CreationDate; Rec."Creation Date")
                {
                    Caption = 'Creation Date';
                }
                field(QtyPerUnitOfMeasure; Rec."Qty. per Unit of Measure")
                {
                    Caption = 'Qty. per Unit of Measure';
                }
                field(SourceType; Rec."Source Type")
                {
                    Caption = 'Source Type';
                }
                field(SourceID; Rec."Source ID")
                {
                    Caption = 'Source ID';
                }
                field(SourceBatchName; Rec."Source Batch Name")
                {
                    Caption = 'Source Batch Name';
                }
                field(SourceRefNo; Rec."Source Ref. No.")
                {
                    Caption = 'Source Ref. No.';
                }
                field(ExpirationDate; Rec."Expiration Date")
                {
                    Caption = 'Expiration Date';
                }
                field(QtyToHandleBase; Rec."Qty. to Handle (Base)")
                {
                    Caption = 'Qty. to Handle (Base)';
                }
                field(systemId; Rec.SystemId)
                {
                    Caption = 'SystemId';
                }
                field(SerialNo; Rec."Serial No.")
                {
                    Caption = 'Serial No.';
                }
                field(LotNo; Rec."Lot No.")
                {
                    Caption = 'Lot No.';
                }
                field(SourceSubtype; Rec."Source Subtype")
                {
                    Caption = 'Source Subtype';
                }
                field(ExpectedReceiptDate; Rec."Expected Receipt Date")
                {
                    Caption = 'Expected Receipt Date';
                }
                field(Positive; Rec.Positive)
                {
                    Caption = 'Positive';
                }
                field(ItemTracking; Rec."Item Tracking")
                {
                    Caption = 'Item Tracking';
                }
            }
        }
    }

    var
        Table336: Record 337;
}
