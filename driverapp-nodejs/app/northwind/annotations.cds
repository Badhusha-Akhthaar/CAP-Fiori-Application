using CatalogService as service from '../../srv/northwind-service';


annotate service.Products with @(
    UI.DataPoint #Rating : {
        $Type         : 'UI.DataPointType',
        TargetValue   : 10,
        Value         : Rating,
        Visualization : #Rating
    },
    UI.LineItem          : {
        $value : [
            {
                $Type : 'UI.DataField',
                Label : 'Name',
                Value : Name,
                ![@HTML5.CssDefaults] : {width: '100%'}
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : Description,
                ![@HTML5.CssDefaults] : {width: '100%'}
            },
            {
                $Type  : 'UI.DataFieldForAnnotation',
                Label  : 'Rating',
                Target : '@UI.DataPoint#Rating',
                ![@HTML5.CssDefaults] : {width: '100%'}

            },
        ],
        
    }
);

annotate service.Products with @(UI.HeaderInfo : {
    $Type          : 'UI.HeaderInfoType',
    TypeName       : 'Product',
    TypeNamePlural : 'Products',
    Title          : {Value : Name},
    Description    : {Value : Description}
});

annotate service.Products with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Label : 'Name',
                Value : Name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : Description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ReleaseDate',
                Value : ReleaseDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DiscontinuedDate',
                Value : DiscontinuedDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Rating',
                Value : Rating,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Price',
                Value : Price,
            },
        ],
    },
    UI.Facets : [
        {
            $Type  : 'UI.ReferenceFacet',
            ID     : 'GeneratedFacet1',
            Label  : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        // {
        //     $Type  : 'UI.ReferenceFacet',
        //     ID     : 'CategoriesFacet',
        //     Label  : 'Categories',
        //     Target : ![@UI.LineItem],
        // }
    ]
);

annotate service.Categories with @(
    UI.LineItem #Categories: {
        $value : [
            {
                $Type: 'UI.DataField',
                Label: Name,
                Value: Name
            }
        ]
    }
);

