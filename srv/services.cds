using {sap.capire.bookstore as database} from '../db/schema';
using { AdminService } from '../node_modules/@sap/product-service-cds/srv/admin-service';

service BookService {
    @readOnly entity Books as  projection on database.Books{
        *, 
        case currency.code
            when 'EUR' then 'Euro'
            when 'USD' then 'US Dollar'
            when 'GBP' then 'Great Britain Pound'
            end as CDESC : String(20) @(title: '{i18n>currency}'),
    category as genre} excluding {createdBy, createdAt, modifiedAt, modifiedBy};
    @readOnly entity Authers as projection on database.Authors;
    @readOnly entity AddressSrv as projection on database.Address;

    @readOnly entity BusinessPartnersSrv as projection on database.BusinessPartners;
}

service OrderService {
    entity Orders as projection on database.Orders;
    entity OrdersItems as projection on database.OrderItems;
}

extend service AdminService with {
    entity Authors as projection on database.Authors;  
}