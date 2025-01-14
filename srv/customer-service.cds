using {com.dunker as dunker} from '../db/schema';

service CustomerService {

    entity CustomerSrv as projection on dunker.Customer;


}
