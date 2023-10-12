reportextension 50100 "BSB Customer - Top 10" extends "Customer - Top 10 List"
{
    RDLCLayout = 'BSBCustomerTop10.rdlc';

    dataset
    {
        add(Integer)
        {
            column(BSBCountryRegionCode_Customer; Customer."Country/Region Code") { IncludeCaption = true; }
        }
    }
}