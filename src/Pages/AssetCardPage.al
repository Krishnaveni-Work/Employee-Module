page 50103 "Asset Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "Asset Table";
    Caption = 'Asset Detail Card';
    CardPageId = "Asset List Page";
    DeleteAllowed = false;
    Extensible = true;

    layout
    {
        area(Content)
        {
            group("Asset Card Page")
            {
                field("Asset ID"; Rec."Asset ID")
                {
                    ApplicationArea = all;
                    NotBlank = true;
                    Caption = 'Asset ID';
                    
                }
                field("Asset Name"; rec."Asset Name")
                {

                    ApplicationArea = all;
                    Caption = 'Asset Name';

                }
                field("Asset Type"; Rec."Asset Type")
                {
                    ApplicationArea = all;
                    Caption = 'Asset Type';
                }
                field("Purchase Date"; rec."Purchase Date")
                {
                    ApplicationArea = all;
                    Caption = 'Purchase Date';
                }
                field("Asset Status"; Rec."Asset Status")
                {
                    ApplicationArea = all;
                    Caption = 'Asset Status';
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