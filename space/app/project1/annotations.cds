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
    ]
);
annotate service.Users with {
    department @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Departments',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : department_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
        ],
    }
};
annotate service.Users with {
    position @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Positions',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : position_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'title',
            },
        ],
    }
};
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
