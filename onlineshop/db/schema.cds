namespace app.onlineshop;

using { Language, managed } from '@sap/cds/common';

entity Categories {
    key ID : UUID;
    name : String(50);
    description : String(100);
    courses : Association to many Courses on courses.category = $self;

}

entity Courses : managed {
    key courseID : UUID;
    key category : Association to Categories;
    courseName : String(50);
    price : String(10);
    language : Language;
}