codeunit 50112 "BSB Book Type Hardcover Impl." implements "BSB Book Type Interface"
{
    procedure StartDeploymentBook();
    begin
        Message('Aus Lager entnehmen');
    end;

    procedure StartDeliverBook();
    begin
        Message('Mit UPS versenden');
    end;
}