table 50101 "Asset Table"
{
    DataClassification = ToBeClassified;
    Caption = 'Asset Table';
    Extensible = true;
    DataPerCompany = true;


    fields
    {
        field(1; "Asset ID"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Asset ID';
            NotBlank = true;
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "Asset Name"; Text[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Asset Name';
        }
        field(3; "Asset Type"; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Asset Type';
            OptionMembers = "0","1","2","3","4","5";
            OptionCaption = ' ,Laptop,Phone,Access Card,Chair,Others';
        }
        field(4; "Purchase Date"; Date)
        {
            DataClassification = SystemMetadata;
            Caption = 'Purchase Date';
        }
        field(5; "Asset Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "0","1","2","3","4","5";
            OptionCaption = ' ,Available,Assigned,Under Maintenance,Lost';
            Caption = 'Asset Status';
        }
    }

    keys
    {
        key(PK; "Asset ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

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