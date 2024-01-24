page 50080 "NWTH User - Signature"
{
    ApplicationArea = Basic;
    UsageCategory = Documents;
    PageType = Card;
    SourceTable = "User Setup";

    layout
    {
        area(content)
        {
            // 


            //showCaption = false;
            field("User ID"; Rec."User ID")
            {
                ApplicationArea = Basic;
            }
            field(Signature; Rec."NWTH Signature")
            {
                ApplicationArea = Basic, Suite;

                trigger OnValidate()
                begin
                    CurrPage.SAVERECORD();
                end;
            }
        }


    }
    actions
    {
        area(Processing)
        {

            action("Delete Signature")
            {
                ApplicationArea = All;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Promoted = true;
                Image = Delete;
                trigger OnAction()
                begin
                    Clear(Rec."NWTH Signature");
                    CurrPage.SAVERECORD();
                end;
            }

        }

    }
}
