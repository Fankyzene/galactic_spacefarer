using AdminService as service from '../../srv/service';


annotate service.Users with @(
    odata.draft.enabled: true,
    UI.SelectionFields : [
        fullName,
        originPlanet,
        stardustCollection,
        wormholeNavigationSkill,
        spacesuitColour,
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : fullName,
        },
        {
            $Type : 'UI.DataField',
            Value : originPlanet,
        },
        {
            $Type : 'UI.DataField',
            Value : stardustCollection,
        },
        {
            $Type : 'UI.DataField',
            Value : wormholeNavigationSkill,
        },
        {
            $Type : 'UI.DataField',
            Value : spacesuitColour,
        },
        {
            $Type: 'UI.DataField',
            Value: department_ID,      
        },
        {
            $Type: 'UI.DataField',
            Value: position_ID,
        },
    ]
);
annotate service.Users with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : fullName,
            },
            {
                $Type : 'UI.DataField',
                Value : originPlanet,
            },
            {
                $Type : 'UI.DataField',
                Value : stardustCollection,
            },
            {
                $Type : 'UI.DataField',
                Value : wormholeNavigationSkill,
            },
            {
                $Type : 'UI.DataField',
                Value : spacesuitColour,
            },
            {
                $Type: 'UI.DataField',
                Value: department_ID
            },
            {
                $Type: 'UI.DataField',
                Value: position_ID
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.Users with {
    position @(
        Common.Text : {
            $value : position.title,
            ![@UI.TextArrangement] : #TextOnly
        },
        Common.FieldControl : #Optional,
    )
};
annotate service.Users with {
    department @(
        Common.Text : {
            $value : department.name,
            ![@UI.TextArrangement] : #TextOnly
        },
        Common.FieldControl : #Optional,
    )
};
