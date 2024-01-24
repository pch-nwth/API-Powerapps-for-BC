page 50011 SalesHeaderAPI
{
    APIGroup = 'bis';
    APIPublisher = 'nwth';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'salesHeaderAPI';
    DelayedInsert = true;
    EntityName = 'bissalesheader';
    EntitySetName = 'bissalesheaders';
    PageType = API;
    SourceTable = "Sales Header";
    ODataKeyFields = SystemId;
    Editable = true;
    Permissions = tabledata "Sales Header" = rimd;

    layout

    {

        area(content)

        {

            repeater(General)

            {

                field(documentType; Rec."Document Type")

                {

                    Caption = 'Document Type';




                    trigger OnValidate()




                    begin

                        if (Rec."Document Type" <> Rec."Document Type"::Quote)

                            AND (Rec."Document Type" <> Rec."Document Type"::Order)

                             Then
                            Error('Document Type must be quote or order! %1', Rec."Document Type");

                    end;

                }

                field(no; Rec."No.")

                {

                    Caption = 'No.';

                }

                field(quoteno; Rec."Quote No.")

                {




                }


                field(subtotal; subtotal)

                {




                }




                field(invdiscountamt; InvDiscountAmount)

                {




                }

                field("invdiscbypercent"; Rec."Invoice Discont by Percent")

                {




                }

                field(invdiscountpct; InvDiscountPCT)

                {




                }

                field(vatbaseamt; vatbaseamt)

                {




                }

                field(nonvatamt; NonVATAmt)

                {




                }

                field(totalamount; totalamount)

                {




                }

                field(vatamount; VATAmount)

                {




                }

                field(grandtotal; grandtotal)

                {




                }
                field(partialship;Partialship)
                {
                   
                }

                field(completelyshipped; Rec."Completely Shipped")

                {




                }

                field(sellToCustomerNo; Rec."Sell-to Customer No.")

                {

                    Caption = 'Sell-to Customer No.';

                }

                field(yourReference; Rec."Your Reference")

                {

                    Caption = 'Your Reference';

                }

                field(shipToCode; Rec."Ship-to Code")

                {

                    Caption = 'Ship-to Code';

                }

                field(shiptoname; Rec."Ship-to Name")

                {




                }

                field(shiptoaddress; Rec."Ship-to Address")
                {

                }
                field(shiptoaddress2; Rec."Ship-to Address 2")
                {
                    ApplicationArea = All;

                }
                field(shiptoThambon; Rec."Ship-to Thambon")
                {
                    ApplicationArea = All;
                }
                field(shiptoAmphur; Rec."Ship-to Amphur")
                {
                    ApplicationArea = All;

                }
                field(shiptocity; Rec."Ship-to City")
                {
                    ApplicationArea = All;

                }
                field(shiptopostcode; Rec."Ship-to Post Code")
                {
                    ApplicationArea = All;

                }

                //field(orderDate; Rec."Order Date")
                field(orderDate; Rec."Order Date Interface")
                {
                    Caption = 'Order Date';

                }

                field(postingDate; Rec."Posting Date")

                {

                    Caption = 'Posting Date';

                }


                field(paymentTermsCode; Rec."Payment Terms Code")

                {

                    Caption = 'Payment Terms Code';

                }
                //field(documentDate; Rec."Document Date")
                field(documentDate; Rec."Doc Date Interface")
                {

                    Caption = 'Document Date';

                }

                //field(dueDate; Rec."Due Date")
                field(dueDate; Rec."Due Date Interface")
                {

                    Caption = 'Due Date';

                }
                //field(shipmentDate; Rec."Shipment Date")
                field(shipmentDate; Rec."Shipment Date Interface")
                {

                    Caption = 'Shipment Date';

                }

                field(shipmentMethodCode; Rec."Shipment Method Code")

                {

                    Caption = 'Shipment Method Code';

                }

                field(locationCode; Rec."Location Code")

                {

                    Caption = 'Location Code';

                }

                field(shortcutDimension1Code; Rec."Shortcut Dimension 1 Code")

                {

                    Caption = 'Shortcut Dimension 1 Code';

                }

                field(shortcutDimension2Code; Rec."Shortcut Dimension 2 Code")

                {

                    Caption = 'Shortcut Dimension 2 Code';

                }

                field(currencyCode; Rec."Currency Code")

                {

                    Caption = 'Currency Code';

                }

                field(customerPostingGroup; Rec."Customer Posting Group")

                {

                    Caption = 'Customer Posting Group';

                }

                field(salespersonCode; Rec."Salesperson Code")

                {

                    Caption = 'Salesperson Code';

                }


                field(externalDocumentNo; Rec."External Document No.")

                {

                    Caption = 'External Document No.';

                }

                field(paymentMethodCode; Rec."Payment Method Code")

                {

                    Caption = 'Payment Method Code';

                }

                field(shippingAgentCode; Rec."Shipping Agent Code")

                {

                    Caption = 'Shipping Agent Code';

                }

                field(status; Rec.Status)

                {

                    Caption = 'Status';

                }

                field(bisStatus; Rec."BIS Status")

                {

                    Caption = 'BIS Status';

                }

                field(bisSalesPerson; Rec."BIS Sales Person")

                {

                    Caption = 'BIS Sales Person';

                }

                field(smartsalesref; Rec."Smart Sales Ref.")

                {




                }

                field(salearea; Rec."Sales Area")

                {




                }

                field(customerarea; Rec."Customer Area")

                {




                }

                field(companybranchcode; Rec."NWTH Company Branch Code")

                {




                }

                field(salecmttxt; WorkDescription)

                {




                }

                field(nocreditdesc; Rec."No Credit Description")

                {

                    ApplicationArea = All;




                }

                field(overduedesc; Rec."Overdue Description")

                {

                    ApplicationArea = All;

                }

                field(checkreturndesc; Rec."Check Return Description")

                {

                    ApplicationArea = All;

                }

                field(zeroorderdescription; Rec."Zero Order Description")

                {

                    ApplicationArea = All;

                }




                field(systemId; Rec.SystemId)

                {

                    Caption = 'SystemId';

                }

            }

        }

    }

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean

    begin

    end;

    trigger OnAfterGetRecord()
    begin

        VATAmount := 0;

        InvDiscountAmount := 0;

        InvDiscountPCT := 0;

        subtotal := 0;

        vatbaseamt := 0;

        totallineamt := 0;

        Clear(TempSalesLine);

        Clear(SalesPost);

        TempVATAmountLine.DeleteAll();

        TempSalesLine.DeleteAll();

        SalesPost.GetSalesLines(Rec, TempSalesLine, 0);

        TempSalesLine.CalcVATAmountLines(0, Rec, TempSalesLine, TempVATAmountLine);

        TempSalesLine.UpdateVATOnLines(0, Rec, TempSalesLine, TempVATAmountLine);

        vatbaseamt := TempVATAmountLine.GetTotalVATBase();

        VatAmount := TempVATAmountLine.GetTotalVATAmount();


        InvDiscountAmount := TempVATAmountLine.GetTotalInvDiscAmount();

        //subtotal := vatbaseamt + VATAmount + InvDiscountAmount;

        subtotal := TempVATAmountLine.GetTotalLineAmount(false, Rec."Currency Code");

        //totallineamt := TempVATAmountLine.GetTotalLineAmount(true, rec."Currency Code");

        if subtotal <> 0 then
            InvDiscountPct := Round(InvDiscountAmount / subtotal * 100, 0.0001);


        if TempVATAmountLine.FindSet() then
            repeat
                if TempVATAmountLine."VAT %" = 0 then
                    NonVATAmt += TempVATAmountLine."Line Amount";
            until TempVATAmountLine.Next() = 0;

        totalamount := subtotal - InvDiscountAmount;

        grandtotal := TempVATAmountLine.GetTotalAmountInclVAT();

        WorkDescription := '';

        WorkDescription := Rec.GetWorkDescription();

        Rec."Doc Date Interface" := Rec."Document Date";
        Rec."Order Date Interface" := Rec."Order Date";
        Rec."Due Date Interface" := Rec."Due Date";
        Rec."Shipment Date Interface" := Rec."Shipment Date";

        Partialship := false;
        QtyOrder := 0;
        QtyShipped := 0;

        SalesLine.Reset();
        SalesLine.SetRange("Document Type", Rec."Document Type");
        SalesLine.SetRange("Document No.", Rec."No.");
        SalesLine.SetLoadFields("Quantity Shipped", Quantity, "Completely Shipped");
        if SalesLine.FindSet() then
            repeat
                QtyShipped += SalesLine."Quantity Shipped";
                QtyOrder += SalesLine.Quantity;
            until (SalesLine.Next() = 0);

        if QtyShipped = 0 then
            Partialship := false
        else
            Partialship := QtyOrder <> QtyShipped;



    end;






    var
        Partialship: Boolean;
        SalesLine: Record "Sales Line";
        QtyShipped: Decimal;
        QtyOrder: Decimal;
        DocumentTotals: Codeunit "Document Totals";

        SalesHeader: Record "Sales Header";

        TempSalesLine: Record "Sales Line" temporary;

        subtotal: Decimal;

        totalamount: Decimal;

        grandtotal: Decimal;

        vatbaseamt: Decimal;

        VATAmount: Decimal;

        InvDiscountPCT: Decimal;

        InvDiscountAmount: Decimal;

        totallineamt: Decimal;

        OrdeIn: Codeunit "Document Totals";

        SalesPost: Codeunit "Sales-Post";

        TempVATAmountLine: Record "VAT Amount Line" temporary;

        NonVATAmt: Decimal;

        SaleCmt: Record "Sales Comment Line";

        WorkDescription: Text;

    //Fix Date

    // OrderDate : Date;

    // DocumentDate : Date;

    // PostingDate : Date;

    // DueDate : Date;





}