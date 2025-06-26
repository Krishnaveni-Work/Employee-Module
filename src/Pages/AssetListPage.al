page 50102 "Asset List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Asset Table";
    Caption = 'Asset List Page';
    CardPageId = "Asset Card Page";
    Editable = true;
    DeleteAllowed = false;
    Extensible = true;

    layout
    {
        area(Content)
        {
            repeater("Asset List Page")
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
                field("Purchase Date"; Rec."Purchase Date")
                {
                    Caption = 'Purchase Date';
                    ApplicationArea = all;
                }
                field("Asset Status"; Rec."Asset Status")
                {
                    applicationArea = all;
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