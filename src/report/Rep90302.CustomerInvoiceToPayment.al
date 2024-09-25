// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.DocApply;

using Microsoft.Sales.Receivables;

report 90302 CustomerInvoiceToPayment
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
        {
            DataItemTableView = where("Document Type" = filter(Invoice | "Credit Memo"));
            RequestFilterFields = "Customer No.", "Document No.", "Posting Date";
            CalcFields = "Original Amt. (LCY)";
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
            column(PaymentAmount__LCY_; -"Amount (LCY)")
            {

            }
            dataitem("Detailed Cust. Ledg. Entry"; "Detailed Cust. Ledg. Entry")
            {
                DataItemTableView = where("Document Type" = filter(Payment | ''), "Entry Type" = const(application), Unapplied = const(false));
                DataItemLink = "Cust. Ledger Entry No." = field("Entry No.");
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
            LayoutFile = 'CustomerInvoiceToPayment.xlsx';
        }
    }

    var
        myInt: Integer;
}