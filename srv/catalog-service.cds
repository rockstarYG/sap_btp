using com.dunker as dunker from '../db/schema';
/*
    podemos poner entre corchetes los campos que queremos representar 
    de la entidad Products tal que:

    entity Products as projection on dunker.Products {
        ID;
        Name;
    }

    Etc.
    En este caso no ponemos nada y esto indica que queremos
    Representar todo el contenido
*/
service CatalogService {

    entity Products as projection on dunker.Products;

}
