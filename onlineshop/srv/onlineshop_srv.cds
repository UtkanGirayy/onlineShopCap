using app.onlineshop from '../db/schema';

service onlineShop {
     entity Categories as projection on onlineshop.Categories;
     entity Courses as projection on onlineshop.Courses;
}