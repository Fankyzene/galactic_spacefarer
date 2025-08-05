using { cuid ,managed } from '@sap/cds/common';
namespace sap.capire.space;

  entity Departments {
    key ID: UUID @cuid;
    name: String(100) @title : 'Department';
  }

  entity Positions {
    key ID: UUID @cuid;
    title : String(50) @title : 'Position';
    }
    
    entity Users {
    key ID : UUID @cuid;
    fullName : String(100) @title : 'Full name' @mandatory;
    originPlanet : String(50) @title : 'Origin planet' @mandatory;
    stardustCollection : Integer @title : 'Stardust collection';
    wormholeNavigationSkill : Integer @title : 'Wormhole navigation skill';
    spacesuitColour : String(30) @title : 'Spacesuit colour';
    department : Association to Departments @title : 'Department';
    position : Association to Positions @title : 'Position';
}


