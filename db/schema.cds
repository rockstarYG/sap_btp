namespace com.dunker;

// tipos personalizados, al aprecer no soporta Typescript.
// pero podemos hacer tal que:
define type Name    : String(30);

// al ser Javascript, también podemos crear tipos en formato JSON para que sea un objeto dentro del objeto
// Crearemos entidad Supplier_01 y Supplier_02 para saber como implementarlos
define type Address : {
    Street     : String;
    City       : String;
    State      : String(2);
    PostalCode : String(5);
    Country    : String(3);
}

/* Clases abstractas y persistentes
Las clases abtractas quiere decir que no se van a ver representadas a nivel base de datos
La clase abstraca se considera ya obsoleta porque han sido reemplazadas por los ASPECTOS.
*/
entity Products {
    key ID               : UUID;
        Name             : String;
        Description      : String;
        ImageUrl         : String;
        ReleaseDate      : DateTime;
        DiscontinuedDate : DateTime;
        Price            : Decimal(16, 2);
        Height           : Decimal(16, 2);
        Width            : Decimal(16, 2);
        Depth            : Decimal(16, 2);
        Quantity         : Decimal(16, 2);
        UnitOfMeasure_Id : String;
        Currency_Id      : String;
        Category_Id      : String;
        Supplier_Id      : String;
        DimensionUnit_Id : String;
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

entity Supplier_01 {
    key ID      : UUID;
        Name    : String;
        Street  : String;
        Address : Address;
        Email   : String;
        Phone   : String;
        Fax     : String;
}

entity Supplier_02 {
    key ID      : UUID;
        Name    : String;
        Street  : String;
        City    : String;
        Address : {
            Street     : String;
            City       : String;
            State      : String(2);
            PostalCode : String(5);
            Country    : String(3);
        };
        Email   : String;
        Phone   : String;
        Fax     : String;
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
