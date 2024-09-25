// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.DocApply;

using Microsoft.Purchases.Payables;
using Microsoft.Sales.Receivables;

report 90303 CustomerPaymentToInvoice
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
        {
            DataItemTableView = where("Document Type" = filter(Payment | ''));
            RequestFilterFields = "Customer No.", "Document No.", "Posting Date";
            CalcFields = "Original Amt. (LCY)";
            PrintOnlyIfDetail = true;
            column(Customer_No_; "Customer No.")
            {

            }
            column(Customer_Name; "Customer Name")
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
            column(Amount__LCY_; "Amount (LCY)")
            {

            }
            dataitem("Detailed Vendor Ledg. Entry"; "Detailed Vendor Ledg. Entry")
            {
                DataItemTableView = where("Document Type" = Const(Payment), "Entry Type" = const(application), Unapplied = const(false));
                DataItemLink = "Document No." = field("Document No.");
                dataitem(InvoiceSection; "Vendor Ledger Entry")
                {
                    DataItemTableView = where("Document Type" = filter(Invoice | "Credit Memo"));
                    DataItemLink = "Entry No." = field("Vendor Ledger Entry No.");
                    column(InvDocument_No_; "Document No.")
                    {

                    }
                    column(InvPosting_Date; "Posting Date")
                    {

                    }
                    column(InvDue_Date; "Due Date")
                    {

                    }
                    column(InvoiceAmount__LCY_; -"Amount (LCY)")
                    {

                    }

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
            LayoutFile = 'CustomerPaymentToInvoice.xlsx';
        }
    }

    var
        VendorLedgerEntry: Record "Vendor Ledger Entry";
}