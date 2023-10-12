codeunit 50100 "BSB Subscriber Store"
{
    var
        FavoriteBookHintMsg: Label 'Do not forget to enter %1 in %2', Comment = '"DEU"=Bitte vergessen Sie nicht %1 in %2 einzugeben.';

    [EventSubscriber(ObjectType::Table, Database::Customer, OnAfterInsertEvent, '', true, true)]
    local procedure FavoriteBookHintCustOnAfterInsertEvent(var Rec: Record Customer)
    begin
        if Rec."BSB Favorite Book No." = '' then
            Message(FavoriteBookHintMsg, Rec.FieldCaption("BSB Favorite Book No."), Rec."No.");
    end;

}