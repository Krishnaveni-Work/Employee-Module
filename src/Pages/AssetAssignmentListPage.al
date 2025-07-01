page 50104 "Asset Assignment List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Asset Assignment Table";
    Caption = 'Asset Assignment List';
    CardPageId = "Asset Assignment Card Page";
    Editable = true;
    DeleteAllowed = false;
    Extensible = true;

    layout
    {
        area(Content)
        {
            repeater("Asset Assignment List Page")
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
                }
                field("Asset ID"; Rec."Asset ID")
                {
                    ApplicationArea = all;
                    Caption = 'Asset ID';
                }
                field("Assignment date"; Rec."Assignment date")
                {
                    ApplicationArea = all;
                    Caption = 'Assignment date';
                }
                field("Return Date"; Rec."Return Date")
                {
                    ApplicationArea = all;
                    Caption = 'Return Date';
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