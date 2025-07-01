page 50101 "Employee Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "Employee Table";
    Caption = 'Employee Detail Card';
    DeleteAllowed = false;
    Extensible = true;

    layout
    {
        area(Content)
        {
            group(EmployeeDetails)
            {
                field("Employee ID"; rec."Employee ID")
                {
                    ApplicationArea = All;
                    NotBlank = true;
                    Caption = 'Employee ID';
                    Editable = false;

                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = all;
                    Caption = 'First Name';
                }
                field("Middle Name"; Rec."Middle Name")
                {
                    ApplicationArea = all;
                    Caption = 'Middle Name';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = all;
                    Caption = 'Last Name';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = all;
                    Caption = 'Full Name';
                    Editable = false;
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = all;
                }
                field("Date Of Joining"; Rec."Date Of Joining")
                {
                    ApplicationArea = all;
                    Caption = 'Date Of Joining';
                }
                field("Status"; Rec."Status")
                {
                    ApplicationArea = all;
                    Caption = 'Status';
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = all;
                    Caption = 'Department';

                }
                field("Department Description"; Rec."Department Description")
                {
                    ApplicationArea = all;
                    Caption = 'Department Description';
                    TableRelation = Department."Description";
                }
                field(Country; Rec.Country)
                {
                    ApplicationArea = all;
                    Caption = 'Country';
                }
                field("Monthly Salary"; Rec."Monthly Salary")
                {
                    ApplicationArea = all;
                    Caption = 'Monthly Salary';
                }
                field("Yearly Salary"; Rec."Yearly Salary")
                {
                    ApplicationArea = all;
                    Caption = 'Yearly Salary';
                }
                field("Mobile No."; Rec."Mobile No.")
                {
                    ApplicationArea = all;
                    Caption = 'Mobile No.';
                    // trigger OnValidate()
                    // begin
                    //     if Rec."Mobile No." = 0 then
                    //         Error('Mobile No. cannot be empty.');
                    //     if Rec."Mobile No." < 10 then
                    //         Error('Mobile No. must be at least 10 digits long.');
                    // end;

                }
                field("Email Address"; Rec."Email Address")
                {
                    ApplicationArea = all;
                    Caption = 'Email ID';
                }
                field("Date Of Birth"; Rec."Date Of Birth")
                {
                    ApplicationArea = all;
                    Caption = 'Date Of Birth';
                }
                field(Isvalidated; Rec.Isvalidated)
                {
                    ApplicationArea = all;
                    Caption = 'Is Validated';
                }
                field("Created On"; Rec."Created On")
                {
                    ApplicationArea = all;
                    Caption = 'Created On';
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