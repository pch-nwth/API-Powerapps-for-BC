page 50072 "Sales Comment Line API"
{
    APIGroup = 'bis';
    APIPublisher = 'nwth';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'salesCommentLineapi';
    DelayedInsert = true;
    EntityName = 'salesinternalcomment';
    EntitySetName = 'salesinternalcomments';
    PageType = API;
    SourceTable = "Sales Comment Line";
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(documentType; Rec."Document Type")
                {
                    Caption = 'Document Type';
                }
                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(documentLineNo; Rec."Document Line No.")
                {
                    Caption = 'Document Line No.';
                }
                field(lineNo; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
                field(comment; Rec.Comment)
                {
                    Caption = 'Comment';
                }
                field(systemId; Rec.SystemId)
                {
                    Caption = 'SystemId';
                }
            }
        }
    }
}
