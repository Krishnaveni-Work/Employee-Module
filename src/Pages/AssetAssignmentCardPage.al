page 50105 "Asset Assignment Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = none;
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

    var
        myInt: Integer;
}