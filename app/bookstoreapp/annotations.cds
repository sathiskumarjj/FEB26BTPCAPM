using BookService as service from '../../srv/services';
// annotate service.Books with @(
//     UI.FieldGroup #GeneratedGroup : {
//         $Type : 'UI.FieldGroupType',
//         Data : [
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'title',
//                 Value : title,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'descr',
//                 Value : descr,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'stock',
//                 Value : stock,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'price',
//                 Value : price,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'currency_code',
//                 Value : currency_code,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'category_ID',
//                 Value : category_ID,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'genre_ID',
//                 Value : genre_ID,
//             },
//         ],
//     },
//     UI.Facets : [
//         {
//             $Type : 'UI.ReferenceFacet',
//             ID : 'GeneratedFacet1',
//             Label : 'General Information',
//             Target : '@UI.FieldGroup#GeneratedGroup',
//         },
//     ],
//     UI.LineItem : [
//         {
//             $Type : 'UI.DataField',
//             Label : 'title',
//             Value : title,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'descr',
//             Value : descr,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'stock',
//             Value : stock,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'price',
//             Value : price,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'currency_code',
//             Value : currency_code,
//         },
//     ],
// );

// annotate service.Books with {
//     author @Common.ValueList : {
//         $Type : 'Common.ValueListType',
//         CollectionPath : 'Authers',
//         Parameters : [
//             {
//                 $Type : 'Common.ValueListParameterInOut',
//                 LocalDataProperty : author_ID,
//                 ValueListProperty : 'ID',
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'firstname',
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'lastname',
//             },
//         ],
//     }
// };


annotate service.Books with @(
    title: 'Book Details',
    UI.SelectionFields : [
        title,
        price,
        currency_code
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : title
        },
        {
            $Type : 'UI.DataField',
            Value : descr
        },
        {
            $Type : 'UI.DataField',
            Value : category_ID
        },
        {
            $Type : 'UI.DataField',
            Value : stock
        },
        {
            $Type : 'UI.DataField',
            Value : price
        },
        {
            $Type : 'UI.DataField',
            Value : CDESC
        }
    ],
    UI.HeaderInfo : {
        TypeName : 'Book',
        TypeNamePlural : '{i18n>bookDetails}',
        Title : {
            Label: '{i18n>title}',
            Value: title
        },
        Description : {
            Label : '{i18n>description}',
            Value: category_ID
        },
        ImageUrl : 'https://e7.pngegg.com/pngimages/689/592/png-clipart-capgemini-sogeti-engineering-information-industry-blockchain-miscellaneous-blue.png%27'
    },
    
    UI.Facets : [
        {
            $Type  : 'UI.CollectionFacet',
            Label  : 'Book Details',
            Facets : [
                {
                    $Type  : 'UI.ReferenceFacet',
                    Label  : 'Book Information',
                    Target : '@UI.FieldGroup#BookDetails'
                },
                {
                    $Type  : 'UI.ReferenceFacet',
                    Label  : 'Stock & Price Details',
                    Target : '@UI.FieldGroup#StockPrice'
                }
            ]
        }
    ],

    UI.FieldGroup#BookDetails : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Value : title,
                Label : 'Book title'
            },
            {
                $Type : 'UI.DataField',
                Value : descr,
                Label : 'Book Description'
            }
        ]
    },
    UI.FieldGroup#StockPrice : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Value : stock,
                Label : 'Available Stock'
            },
            {
                $Type : 'UI.DataField',
                Value : price,
                Label : 'Price'
            },
            {
                $Type : 'UI.DataField',
                Value : CDESC
            }
        ]
    }
){
    title @(Common: {Label: '{i18n>title}'});
    descr @(Common: {Label: '{i18n>descr}'});
    stock @(Common: {Label: '{i18n>stock}'});
    price @(Common: {Label: '{i18n>price}'});
};