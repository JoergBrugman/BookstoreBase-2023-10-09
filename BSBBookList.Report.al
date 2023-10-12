report 50100 "BSB Book List"
{
    Caption = 'Book List';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = "BSBBookList.rdlc";

    dataset
    {
        dataitem("BSB Book"; "BSB Book")
        {
            RequestFilterFields = "No.", Author;

            column(No_BSBBook; "No.") { IncludeCaption = true; }
            column(Description_BSBBook; Description) { IncludeCaption = true; }
            column(Author_BSBBook; Author) { IncludeCaption = true; }
            column(NoofPages_BSBBook; "No. of Pages") { IncludeCaption = true; }
        }
    }
    requestpage
    {
        SaveValues = true;
    }

    rendering
    {
        layout("BSBBookList.rdlc")
        {
            Type = RDLC;
            LayoutFile = 'BSBBookList.rdlc';

        }
        layout("Zweites")
        {
            Type = RDLC;
            LayoutFile = 'BSBBookList.rdlc';
            Caption = 'Das ist das tolle zweite Layout';
            Summary = ' Diese Layout haut einen vom Hocker';
        }
    }

}