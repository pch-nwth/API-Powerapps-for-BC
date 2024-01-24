page 50014 "Sales Person BIS"
{
    APIGroup = 'bis';
    APIPublisher = 'nwth';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'salesPersonBIS';
    DelayedInsert = true;
    EntityName = 'biscreatesalesperson';
    EntitySetName = 'biscreatesalespersons';
    PageType = API;
    SourceTable = "Customer Saleperson Relation";
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(systemId; Rec.SystemId)
                {
                }
                field(customerno; Rec."Customer No.")
                {
                }

                field(salepersoncode; Rec."Sale Personcode")
                {

                }
                field(customername;Rec."Customer Name")
                {
                    ApplicationArea = All;
                   
                }
                field(salepersonname;Rec."Sales Person Name")
                {
                    ApplicationArea = All;
                   
                }
              
            }
        }
    }


    var
     
}
