table 50100 "Employee Table"
{
    DataClassification = ToBeClassified;
    Caption = 'Employee Table';
    Extensible = true;
    DataPerCompany = true;


    fields
    {
        field(1; "Employee ID"; Integer)
        {
            AutoIncrement = true;
            DataClassification = ToBeClassified;
            Caption = 'Employee ID';
            NotBlank = true;
            Editable = false;
        }

        field(2; "First Name"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'First Name';
            trigger OnValidate()
            begin
                FullNameMethod();
            end;
        }

        field(3; "Middle Name"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Middle Name';
            trigger OnValidate()
            begin
                FullNameMethod();
            end;
        }
        field(4; "Last Name"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Last Name';
            trigger OnValidate()
            begin
                FullNameMethod();
            end;

        }
        field(5; "Full Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Full Name';
            Editable = false;

        }
        field(6; "Gender"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "0","1","2","3","4";
            OptionCaption = ' ,Male, Female, Transgender, Not willing to say';
        }
        field(7; "Date Of Joining"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date Of Joining';
        }
        field(8; "Status"; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
            OptionMembers = "0","1","2";
            OptionCaption = 'Active,Inactive,On Leave';
        }
        field(9; "Department"; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Department';

            OptionMembers = "Blank","IT","Finance","SAP","SCM","Marketing","Accounting","HR","ERP","Admin";
            OptionCaption = ' , IT, Finance, SAP, SCM, Marketing, Accounting, HR, ERP, Admin';
        }
        field(10; "Department Description"; Text[200])
        {

            DataClassification = ToBeClassified;
            Caption = 'Describe your Department';
            NotBlank = true;
            ToolTip = 'This field is mandatory and should not be left blank.';
            Editable = false;
        }
        field(11; "Country"; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Country';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10","11","12";
            optioncaption = ' ,India,US,UK,Australia, England,Europe,Italy,France,Spain,Netherlands,Germany,Japan';
        }
        field(12; "Monthly Salary"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Monthly Salary';
            MinValue = 10000;
            MaxValue = 100000000;
            DecimalPlaces = 2;
            NotBlank = true;
            trigger OnValidate()
            begin
                "Yearly Salary" := "Monthly Salary" * 12;
                if rec."Monthly Salary" < 10000
                then
                    Error('Monthly Salary must be at least 10,000.');

            end;
        }

        field(13; "Yearly Salary"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Yearly Salary';
            MinValue = 120000;
            MaxValue = 1200000000;
            DecimalPlaces = 2;

            trigger OnValidate()
            begin
                if rec."Yearly Salary" < 120000
                then
                    Error('Yearly Salary must be at least 1,20,000.');
            end;
        }

        field(14; "Mobile No."; Text[10])
        {
            Caption = 'Mobile No.';
            DataClassification = ToBeClassified;
            FieldClass = Normal;
            trigger OnValidate()
            var
                i: Integer;

            begin
                if StrLen("Mobile No.") <> 10 then
                    Error('Mobile Number must be of 10 digits');
                for i := 1 to StrLen("Mobile No.") do begin
                    if not ("Mobile No."[i] in ['0' .. '9'])
                    then
                        Error('Mobile Number must contain only digits (0-9)');
                end;
            end;


        }
        field(15; "Email Address"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Email Address';
            NotBlank = true;

        }
        field(16; "Date Of Birth"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date Of Birth';
            NotBlank = true;
            trigger OnValidate()
            begin
                if "Date Of Birth" > Today() then
                    Error('Date of Birth cannot be in the future.');
                if "Date Of Birth" < (Today() - 365 * 100) then
                    Error('Date of Birth cannot be more than 100 years ago.');

            end;
        }
        field(17; "Isvalidated"; Boolean)
        {
            Caption = 'Is it Valid?';
            InitValue = false;
            NotBlank = true;
        }
        field(18; "Created On"; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'Created On';
            Editable = false;


        }

        field(19; "Experience"; DateFormula)
        {
            DataClassification = ToBeClassified;
            Caption = 'Experience';

            trigger OnValidate()
            var
                ResultDate: Date;
            begin
                if ("Experience" <> '') and ("Date Of Joining" 0D)
                then begin
                    ResultDate := CalcDate("Experience", "Date Of Joining");
                    "Experience Period" := CalcAge(ResultDate, "Date Of Joining");
                end else
                "Experience Period" := 0;

            end;

        }

        field(20; "Experience Period"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Experience (days)';
            Editable = false;
        }
    }

    Keys
    {
        key(PK; "Employee ID")
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

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

    trigger OnInsert()
    begin
        if "Created On" = 0DT then
            "Created On" := CurrentDateTime();
    end;




    procedure FullNameMethod()
    begin
        "Full Name" := "First Name";
        if "Middle Name" <> '' then
            "Full Name" := "Full Name" + ' ' + "Middle Name";
        if "Last Name" <> '' then
            "Full Name" := "Full Name" + ' ' + "Last Name";
    end;

    local procedure CalcAge(NewDate: Date; StartDate: Date): Integer
    begin
        exit(NewDate - StartDate); // Returns experience in days
    end;

}