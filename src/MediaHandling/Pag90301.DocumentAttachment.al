namespace DocApply.DocApply;

using Microsoft.Foundation.Attachment;

page 90301 DocumentAttachment
{
    ApplicationArea = All;
    Caption = 'DocumentAttachment';
    PageType = List;
    SourceTable = "Document Attachment";
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.', Comment = '%';
                }
                field("Table ID"; Rec."Table ID")
                {
                    ToolTip = 'Specifies the value of the Table ID field.', Comment = '%';
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field("Attached Date"; Rec."Attached Date")
                {
                    ToolTip = 'Specifies the date when the document was attached.';
                }
                field("File Name"; Rec."File Name")
                {
                    ToolTip = 'Specifies the filename of the attachment.';
                }
                field("File Type"; Rec."File Type")
                {
                    ToolTip = 'Specifies the type of document that the attachment is.';
                }
                field("File Extension"; Rec."File Extension")
                {
                    ToolTip = 'Specifies the file extension of the attachment.';
                }
                field("Document Reference ID"; Rec."Document Reference ID")
                {
                    ToolTip = 'Specifies the value of the Document Reference ID field.', Comment = '%';
                }
                field("Attached By"; Rec."Attached By")
                {
                    ToolTip = 'Specifies the value of the Attached By field.', Comment = '%';
                }
                field(User; Rec.User)
                {
                    ToolTip = 'Specifies the user who attached the document.';
                }
                field("Document Flow Purchase"; Rec."Document Flow Purchase")
                {
                    ToolTip = 'Specifies if the attachment must flow to transactions.';
                }
                field("Document Flow Sales"; Rec."Document Flow Sales")
                {
                    ToolTip = 'Specifies if the attachment must flow to transactions.';
                }
                field("Document Type"; Rec."Document Type")
                {
                    ToolTip = 'Specifies the value of the Document Type field.', Comment = '%';
                }
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.', Comment = '%';
                }
                field("VAT Report Config. Code"; Rec."VAT Report Config. Code")
                {
                    ToolTip = 'Specifies the value of the VAT Report Config. Code field.', Comment = '%';
                }
                field("Document Flow Service"; Rec."Document Flow Service")
                {
                    ToolTip = 'Specifies if the attachment must flow to transactions.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.', Comment = '%';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.', Comment = '%';
                }
                field(SystemId; Rec.SystemId)
                {
                    ToolTip = 'Specifies the value of the SystemId field.', Comment = '%';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.', Comment = '%';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.', Comment = '%';
                }
            }
        }
    }
}
