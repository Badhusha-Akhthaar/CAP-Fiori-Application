using { Northwind as external } from './external/Northwind.csn';

service CatalogService {
    
    entity Products as projection on external.Products{
        ID,Name,Description,Rating,DiscontinuedDate,ReleaseDate,Price,ProductDetail
    }
    entity Categories as projection on external.Categories

}
