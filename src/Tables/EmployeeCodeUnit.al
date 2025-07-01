codeunit 50108 "Employee CodeUnit"
{
    trigger OnRun()
    begin
        Message('Hello, this is a codeunit for Employee Asset Tracking Module.');
    end;

    var
        myInt: Integer;
}