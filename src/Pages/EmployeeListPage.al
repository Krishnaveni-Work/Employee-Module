page 50100 "Employee List Page"
{
    PageType = List;
    ApplicationArea = all;
    UsageCategory = Lists;
    SourceTable = "Employee Table";
    Caption = 'Employee List';
    CardPageId = "Employee Card Page";
    Editable = true;
    DeleteAllowed = false;
    Extensible = true;

    layout
    {
        area(Content)
        {
            repeater("Employee Details")
            {
                field("Employee ID"; Rec."Employee ID")
                {
                    ApplicationArea = all;
                    NotBlank = true;
                    Caption = 'Employee ID';
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
                }
                field(Country; Rec.Country)
                {
                    ApplicationArea = all;
                    Caption = 'Country';
                }
                // field("Monthly Salary"; Rec."Monthly Salary")
                // {
                //     ApplicationArea =;
                //     Caption = 'Monthly Salary';

                // }
                // field("Yearly Salary"; Rec."Yearly Salary")
                // {
                //     ApplicationArea = all;
                //     Caption = 'Yearly Salary';
                // }
                field("Mobile No."; Rec."Mobile No.")
                {
                    ApplicationArea = all;
                    Caption = 'Mobile No.';

                }
                field("Email Address"; Rec."Email Address")
                {
                    ApplicationArea = all;
                    Caption = 'Email';
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