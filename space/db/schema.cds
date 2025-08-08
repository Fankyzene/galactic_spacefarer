using { cuid ,managed } from '@sap/cds/common';
namespace sap.capire.space;

  entity Departments {
    key ID : Integer;
    name: String(100) @title : '{i18n>department}';
  }

  entity Positions {
    key ID : Integer;
    title : String(100) @title : '{i18n>position}';
    }
    
    entity Users {
    key ID : UUID @cuid;
    fullName : String(100) @title : '{i18n>fullName}' @mandatory;
    originPlanet : String(50) @title : '{i18n>originPlanet}' @mandatory;
    stardustCollection : Integer @title : '{i18n>stardustCollection}';
    wormholeNavigationSkill : Integer @title : '{i18n>wormholeNavigationSkill}';
    spacesuitColour : String(30) @title : '{i18n>spacesuitColour}';
    department : Association to Departments @title : '{i18n>department}';
    position : Association to Positions @title : '{i18n>position}';
}


