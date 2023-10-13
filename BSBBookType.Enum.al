enum 50100 "BSB Book Type" implements "BSB Book Type Interface"
{
    Extensible = true;
    // DefaultImplementation = "BSB Book Type Interface" = "BSB Book Type Default Impl.";

    value(0; " ")
    {
        Caption = 'None';
        Implementation = "BSB Book Type Interface" = "BSB Book Type Default Impl.";
    }
    value(1; Hardcover)
    {
        Caption = 'Hardcover';
        Implementation = "BSB Book Type Interface" = "BSB Book Type Hardcover Impl.";
    }
    value(2; Paperback)
    {
        Caption = 'Paperback';
        Implementation = "BSB Book Type Interface" = "BSB Book Type Paperback Impl.";
    }
}