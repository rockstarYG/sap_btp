using {com.dunker as dunker} from '../db/schema';

service CustomerService {
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
    entity Products as projection on dunker.Products;


}
