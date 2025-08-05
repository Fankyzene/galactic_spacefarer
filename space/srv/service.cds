using { sap.capire.space as my } from '../db/schema';

service SpacefarerService  {
    entity Departments as projection on my.Departments;
    entity Positions as projection on my.Positions;
    entity Users as projection on my.Users;
}