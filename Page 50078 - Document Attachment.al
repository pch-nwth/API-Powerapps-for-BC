page 50078 DocumentAttachment
{
    APIGroup = 'bis';
    APIPublisher = 'nwth';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'bisdocumentattachment';
    DelayedInsert = true;
    EntityName = 'bisdocumentattachment';
    EntitySetName = 'bisdocumentattachments';
    PageType = API;
    SourceTable = "Document Attachment";
    ODataKeyFields = SystemId;
    Editable = true;
    Permissions = tabledata Item = rimd;
    
    // Permissions = tabledata Item = rimd;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(No; Rec."No.")
                {

                }
                field(DocumentType; Rec."Document Type")
                {

                }
                field(FileName; Rec."File Name")
                {

                }
                field(FileType; Rec."File Type")
                {

                }
                field(FileExtension; Rec."File Extension")
                {

                }
                field(FileContent; Rec.FileContent)
                {

                }
                field(FileContentBlob; Rec.FileContentBlob)
                {

                }
                field(DocumentReferenceID; Rec."Document Reference ID")
                {

                }
                field(SystemId; Rec.SystemId)
                {

                }
                field(FileBase64; FileBase64)
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    var
        myInt: Integer;
        OutSteam: OutStream;
        InSteam: InStream;
        TempBlob: Codeunit "Temp Blob";
    begin
        TableTenantMedia.Reset();
        TableTenantMedia.SetRange(ID, Rec."Document Reference ID".MediaId);
        if TableTenantMedia.FindSet() then begin
            // FileBase64 := Format(TableTenantMedia.Content);
            // FileBase64 := Rec."Document Reference ID".C;
            TempBlob.FromRecord(TableTenantMedia, TableTenantMedia.FieldNo(Content));
            TempBlob.CreateInStream(InSteam);
            FileBase64 := CodeunitBase64.ToBase64(InSteam);
            //Message(Format(FileBase64));
        end;
    end;

    var
        FileBase64: Text;
        TableTenantMedia: Record "Tenant Media";
        CodeunitBase64: Codeunit "Base64 Convert";
}
