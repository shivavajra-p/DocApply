// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.DocApply;

using Microsoft.Purchases.Payables;

report 90300 VendorInvoiceToPayment
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem("Vendor Ledger Entry"; "Vendor Ledger Entry")
        {
            DataItemTableView = where("Document Type" = filter(Invoice | "Credit Memo"));
            RequestFilterFields = "Vendor No.", "Document No.", "Posting Date";
            CalcFields = "Original Amt. (LCY)";
            column(Vendor_No_; "Vendor No.")
            {

            }
            column(Vendor_Name; "Vendor Name")
            {

            }
            column(Document_No_; "Document No.")
            {

            }
            column(Document_Type; "Document Type")
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }
            column(Due_Date; "Due Date")
            {

            }
            column(PaymentAmount__LCY_; -"Amount (LCY)")
            {

            }
            dataitem("Detailed Vendor Ledg. Entry"; "Detailed Vendor Ledg. Entry")
            {
                DataItemTableView = where("Document Type" = filter(Payment | ''), "Entry Type" = const(application), Unapplied = const(false));
                DataItemLink = "Vendor Ledger Entry No." = field("Entry No.");
                column(PaymentDocument_No_; "Document No.")
                {

                }
                column(PayPosting_Date; "Posting Date")
                {

                }
                column(Amount__LCY_; "Amount (LCY)")
                {

                }
            }
        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                    //     ApplicationArea = All;

                    // }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(LayoutName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = Excel;
            LayoutFile = 'VendorInvoiceToPayment.xlsx';
        }
    }

    var

}