page 50079 ItemReferencesAPI
{
    APIGroup = 'bis';
    APIPublisher = 'nwth';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'bisitemreference';
    DelayedInsert = true;
    EntityName = 'bisitemreference';
    EntitySetName = 'bisitemreferences';
    PageType = API;
    SourceTable = "Item Reference";
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ItemNo; Rec."Item No.")
                {
                }
                field(ReferenceNo; Rec."Reference No.")
                {
                }
                field(VariantCode; Rec."Variant Code")
                {
                }
                field(UnitOfMeasure; Rec."Unit of Measure")
                {
                }
                field(ReferenceType; Rec."Reference Type")
                {
                }
                field(systemId; Rec.SystemId)
                {
                }
            }
        }
    }
}
