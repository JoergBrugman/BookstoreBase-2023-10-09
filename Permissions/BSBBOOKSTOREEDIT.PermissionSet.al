permissionset 50100 "BSB BOOKSTORE, EDIT"
{
    Caption = 'Edit and Create Bokks etc.';
    // Assignable = true;

    Permissions =
        table "BSB Book" = X,
        tabledata "BSB Book" = RIMD;
}
