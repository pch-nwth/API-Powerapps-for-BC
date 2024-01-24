page 50082 ItemLedgerEntryAPI
{
    APIGroup = 'bis';
    APIPublisher = 'nwth';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'bisitemledgerentry';
    DelayedInsert = true;
    EntityName = 'bisitemledgerentry';
    EntitySetName = 'bisitemledgerentries';
    PageType = API;
    SourceTable = "Item Ledger Entry";
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(PostingDate; Rec."Posting Date")
                {
                }
                field("EntryNo"; Rec."Entry No.")
                {
                }
                field(EntryType; Rec."Entry Type")
                {
                }
                field(DocumentType; Rec."Document Type")
                {
                }
                field(ItemNo; Rec."Item No.")
                {
                }
                field(ExpirationDate; Rec."Expiration Date")
                {
                }
                field(LotNo; Rec."Lot No.")
                {
                }
                field(LocationCode; Rec."Location Code")
                {
                }
                field(Quantity; Rec.Quantity)
                {
                }
                field(WarrantyDate; Rec."Warranty Date")
                {
                }
                field(Open; Rec.Open)
                {
                }
                field(systemId; Rec.SystemId)
                {
                }
            }
        }
    }
}
