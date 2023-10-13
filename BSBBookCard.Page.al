page 50100 "BSB Book Card"
{
    Caption = 'Book Card';
    PageType = Card;
    SourceTable = "BSB Book";
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            group(Book)
            {
                Caption = 'Book';
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Search Description"; Rec."Search Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Search Description field.';
                    Importance = Additional;
                }
                field(Blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Blocked field.';
                }
                field(Author; Rec.Author)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Author field.';
                }
                field(Type; Rec."Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type field.';
                    Importance = Promoted;
                }
                field(ISBN; Rec.ISBN)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ISBN field.';
                }
                field(Created; Rec.Created)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Created field.';
                    Importance = Additional;
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ToolTip = 'Specifies the value of the Last Date Modified field.';
                    Importance = Additional;
                }
            }
            group(Invoicing)
            {
                Caption = 'Invoicing';

                field("Author Provision %"; Rec."Author Provision %")
                {
                    ToolTip = 'Specifies the value of the Author Provision % field.';
                }
            }
            group(Publishing)
            {
                Caption = 'Publishing';
                field("Edition No."; Rec."Edition No.")
                {
                    ToolTip = 'Specifies the value of the Edition No. field.';
                }
                field("No. of Pages"; Rec."No. of Pages")
                {
                    ToolTip = 'Specifies the value of the No. of Pages field.';
                }
                field("Date of Publishing"; Rec."Date of Publishing")
                {
                    ToolTip = 'Specifies the value of the Date of Publishing field.';
                }
            }
        }
        area(FactBoxes)
        {
            systempart(Links; Links) { ApplicationArea = RecordLinks; }
            systempart(Notes; Notes) { ApplicationArea = Notes; }
        }
    }

    actions
    {
        area(Processing)
        {
            action(TestInterface)
            {
                Caption = 'TestInterface';
                ApplicationArea = All;
                Image = Process;

                trigger OnAction()
                var
                    BSBBookTypeInterface: Interface "BSB Book Type Interface";
                // BSBBookTypeHardcoverImpl: Codeunit "BSB Book Type Hardcover Impl.";
                // BSBBookTypePaperbackImpl: Codeunit "BSB Book Type Paperback Impl.";
                begin
                    // if Rec.Type = Rec.Type::Hardcover then
                    //     BSBBookTypeInterface := BSBBookTypeHardcoverImpl
                    // else
                    //     if Rec.Type = Rec.Type::Paperback then
                    //         BSBBookTypeInterface := BSBBookTypePaperbackImpl;
                    BSBBookTypeInterface := Rec.Type;
                    BSBBookTypeInterface.StartDeliverBook();
                    BSBBookTypeInterface.StartDeploymentBook();
                end;
            }
        }
    }

}