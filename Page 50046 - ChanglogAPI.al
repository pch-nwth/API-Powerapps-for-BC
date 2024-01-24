page 50046 ChanglogAPI
{
    APIGroup = 'bis';
    APIPublisher = 'nwth';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'changlogAPI';
    DelayedInsert = true;
    EntityName = 'bischangelogentry';
    EntitySetName = 'bischangelogentries';
    PageType = API;
    SourceTable = "Change Log Entry";
    DataAccessIntent = ReadOnly;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(entryNo; Rec."Entry No.")
                {
                    Caption = 'Entry No.';
                }
                field(dateAndTime; Rec."Date and Time")
                {
                    Caption = 'Date and Time';
                }
                field("time"; Rec."Time")
                {
                    Caption = 'Time';
                }
                field(userID; Rec."User ID")
                {
                    Caption = 'User ID';
                }
                field(tableNo; Rec."Table No.")
                {
                    Caption = 'Table No.';
                }
                field(tableCaption; Rec."Table Caption")
                {
                    Caption = 'Table Caption';
                }
                field(fieldNo; Rec."Field No.")
                {
                    Caption = 'Field No.';
                }
                field(fieldCaption; Rec."Field Caption")
                {
                    Caption = 'Field Caption';
                }
                field(typeOfChange; Rec."Type of Change")
                {
                    Caption = 'Type of Change';
                }
                field(oldValue; Rec."Old Value")
                {
                    Caption = 'Old Value';
                }
                field(newValue; Rec."New Value")
                {
                    Caption = 'New Value';
                }
                field(primaryKey; Rec."Primary Key")
                {
                    Caption = 'Primary Key';
                }
                field(primaryKeyField1No; Rec."Primary Key Field 1 No.")
                {
                    Caption = 'Primary Key Field 1 No.';
                }
                field(primaryKeyField1Caption; Rec."Primary Key Field 1 Caption")
                {
                    Caption = 'Primary Key Field 1 Caption';
                }
                field(primaryKeyField1Value; Rec."Primary Key Field 1 Value")
                {
                    Caption = 'Primary Key Field 1 Value';
                }
                field(primaryKeyField2No; Rec."Primary Key Field 2 No.")
                {
                    Caption = 'Primary Key Field 2 No.';
                }
                field(primaryKeyField2Caption; Rec."Primary Key Field 2 Caption")
                {
                    Caption = 'Primary Key Field 2 Caption';
                }
                field(primaryKeyField2Value; Rec."Primary Key Field 2 Value")
                {
                    Caption = 'Primary Key Field 2 Value';
                }
                field(primaryKeyField3No; Rec."Primary Key Field 3 No.")
                {
                    Caption = 'Primary Key Field 3 No.';
                }
                field(primaryKeyField3Caption; Rec."Primary Key Field 3 Caption")
                {
                    Caption = 'Primary Key Field 3 Caption';
                }
                field(primaryKeyField3Value; Rec."Primary Key Field 3 Value")
                {
                    Caption = 'Primary Key Field 3 Value';
                }
                field(systemCreatedAt; Rec.SystemCreatedAt)
                {
                    Caption = 'SystemCreatedAt';
                }
                field(systemCreatedBy; Rec.SystemCreatedBy)
                {
                    Caption = 'SystemCreatedBy';
                }
                field(systemId; Rec.SystemId)
                {
                    Caption = 'SystemId';
                }
                field(systemModifiedAt; Rec.SystemModifiedAt)
                {
                    Caption = 'SystemModifiedAt';
                }
                field(systemModifiedBy; Rec.SystemModifiedBy)
                {
                    Caption = 'SystemModifiedBy';
                }
            }
        }
    }
}
