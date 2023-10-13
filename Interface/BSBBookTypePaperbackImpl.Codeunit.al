codeunit 50111 "BSB Book Type Paperback Impl." implements "BSB Book Type Interface"
{
    procedure StartDeploymentBook();
    begin
        Message('Print on demand');
    end;

    procedure StartDeliverBook();
    begin
        Message('Mit DPD versenden');
    end;
}