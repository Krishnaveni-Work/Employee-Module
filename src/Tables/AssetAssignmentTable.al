table 50103 "Asset Assignment Table"
{
    DataClassification = ToBeClassified;
    Caption = 'Asset Assignment Table';
    Extensible = true;
    DataPerCompany = true;


    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Entry No.';
            NotBlank = true;
            AutoIncrement = true;

        }
        field(2; "Employee ID"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Employee ID';
            NotBlank = true;
            TableRelation = "Employee Table"."Employee ID";
        }
        field(3; "Asset ID"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Asset ID';
            NotBlank = true;
            TableRelation = "Asset Table"."Asset ID";
        }
        field(4; "Assignment date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Assignment date';
            NotBlank = true;
        }
        field(5; "Return Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Return Date';
        }
        field(6; "Notes"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Notes';
        }
        field(7; "Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "0","1","2","3";
            OptionCaption = ' ,Available,Assigned,Returned';
            Caption = 'Status';
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key("Asset Filter"; "Asset ID", "Status")
        {

        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()

    var
        AssetRec: Record "Asset Table";

    begin
        AssetRec.Get("Asset ID");
        AssetRec."Asset Status" := AssetRec."Asset Status"::"0";
        Error('Asset %1 is not available for assignment.', "Asset ID");
        AssetRec.Modify();
    end;





    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}