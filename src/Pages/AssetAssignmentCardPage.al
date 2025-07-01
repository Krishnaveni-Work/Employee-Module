page 50105 "Asset Assignment Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "Asset Assignment Table";
    Caption = 'Asset Assignment Card';
    CardPageId = "Asset Assignment List Page";
    DeleteAllowed = false;
    Extensible = true;

    layout
    {
        area(Content)
        {
            group("Asset Assignment Card Page")
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = all;
                    NotBlank = true;
                    Caption = 'Entry No.';
                }
                field("Employee ID"; Rec."Employee ID")
                {
                    ApplicationArea = all;
                    Caption = 'Employee ID';
                    NotBlank = true;

                }
                field("Asset ID"; Rec."Asset ID")
                {
                    ApplicationArea = all;
                    Caption = 'Asset ID';
                    notblank = true;
                }
                field("Assignment date"; Rec."Assignment date")
                {
                    ApplicationArea = all;
                    caption = 'Assignment date';
                    NotBlank = true;
                }
                field("Return Date"; Rec."Return Date")
                {
                    Caption = 'Return Date';
                    ApplicationArea = all;
                }
                field(Notes; Rec.Notes)
                {
                    ApplicationArea = all;
                    Caption = 'Notes';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = all;
                    Caption = 'Status';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        Message('Welcome to the Asset Assignment Card Page!');
        Message('You can view and manage asset assignments here.');
        message('Please ensure all fields are filled out correctly before saving.');
        Message('Thank you for using the Asset Assignment Card Page!');
        Message('If you have any questions, please contact your system administrator.');
        Message('This page is designed to help you track asset assignments efficiently.');
        Message('Remember to check the status of each asset assignment regularly.');
        Message('You can use the search functionality to find specific asset assignments quickly.');
    end;

    var
        AssetAssignmentRec: Record "Asset Assignment Table";
        EmployeeRec: Record "Employee Table";
        AssetRec: Record "Asset Table";
}