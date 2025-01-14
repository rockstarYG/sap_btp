namespace com.dunker;

/* Clases abstractas y persistentes
Las clases abtractas quiere decir que no se van a ver representadas a nivel base de datos
La clase abstraca se considera ya obsoleta porque han sido reemplazadas por los ASPECTOS.


*/
entity Products {
    key ID                 : UUID;
        Name               : String;
        Description        : String;
        ImageUrl           : String;
        ReleaseDate        : DateTime;
        DiscontinuatedDate : DateTime;
        Price              : Decimal(16, 2);
        Height             : Decimal(16, 2);
        Width              : Decimal(16, 2);
        Depth              : Decimal(16, 2);
        Quantity           : Integer;
}

entity Supplier {
    key ID         : UUID;
        Name       : String;
        Street     : String;
        City       : String;
        State      : String(2);
        PostalCode : String(5);
        Country    : String(3);
        Email      : String;
        Phone      : String;
        Fax        : String;
}

entity Category {
    key ID   : String(2);
        Name : String;
}

entity StockAvailability {
    key ID          : Integer;
        Description : String;
}

entity Currency {
    key ID          : String(3);
        Description : String;
}

entity UnitOfMeasure {
    key ID          : String(2);
        Description : String;
}

entity DimensionUnit {
    key ID          : String(2);
        Description : String;
}

entity Month {
    key ID               : String(2);
        Description      : String;
        ShortDescription : String(20);
}

entity ProductReview {
    key name    : String;
        Rating  : Integer;
        Comment : String;
}

entity SalesData {
    key DeliveryDate : DateTime;
        revenue      : Decimal(16, 2);
}
