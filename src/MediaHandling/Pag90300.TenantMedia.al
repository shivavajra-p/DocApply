namespace DocApply.DocApply;

using System.Environment;
using System.DataAdministration;
using Microsoft.Foundation.Attachment;

page 90300 TenantMedia
{
    ApplicationArea = All;
    Caption = 'TenantMedia';
    PageType = ListPart;
    SourceTable = "Tenant Media";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies a unique identifier for this media.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the description of the media.';
                }
                field(MediaContent; Rec.Content)
                {
                    ToolTip = 'Specifies the picture of the media.';
                }
                field("Mime Type"; Rec."Mime Type")
                {
                    ToolTip = 'Specifies the file type';
                }
                field(Height; Rec.Height)
                {
                    ToolTip = 'Specifies the value of the Height field.', Comment = '%';
                }
                field(Width; Rec.Width)
                {
                    ToolTip = 'Specifies the value of the Width field.', Comment = '%';
                }
                field("Company Name"; Rec."Company Name")
                {
                    ToolTip = 'Specifies which company this media is created in.';
                }
                field("Expiration Date"; Rec."Expiration Date")
                {
                    ToolTip = 'Specifies the value of the Expiration Date field.', Comment = '%';
                }
                field("Prohibit Cache"; Rec."Prohibit Cache")
                {
                    ToolTip = 'Specifies the value of the Prohibit Cache field.', Comment = '%';
                }
                field("File Name"; Rec."File Name")
                {
                    ToolTip = 'Specifies the name of the file.';
                }
                field("Security Token"; Rec."Security Token")
                {
                    ToolTip = 'Specifies the security token of this media.';
                }
                field("Creating User"; Rec."Creating User")
                {
                    ToolTip = 'Specifies the user who created the media.';
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
    actions
    {
        area(processing)
        {
            action(DownloadMedia)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                    if not MediaCleanup.DownloadTenantMedia(Rec.ID) then
                        Error('No Media found');
                end;

            }
        }
    }
    var
        MediaCleanup: Codeunit "Media Cleanup";
}
