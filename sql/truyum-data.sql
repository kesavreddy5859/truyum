insert into menu_item(menu_name,menu_price,menu_active,menu_date_of_launch,menu_category,menu_free_delivery)
	VALUES('Sandwich',99.00,'Yes','15-03-2017','Main Course','Yes');
insert into menu_item(menu_name,menu_price,menu_active,menu_date_of_launch,menu_category,menu_free_delivery)
	VALUES('Burger',129.00,'Yes','23-12-2017','Main Course','No');
insert into menu_item(menu_name,menu_price,menu_active,menu_date_of_launch,menu_category,menu_free_delivery)
	VALUES('Pizza',149.00,'Yes','21-08-2017','Main Course','No');
insert into menu_item(menu_name,menu_price,menu_active,menu_date_of_launch,menu_category,menu_free_delivery)
	VALUES('French Fries',57.00,'No','02-07-2017','Starters','Yes');
insert into menu_item(menu_name,menu_price,menu_active,menu_date_of_launch,menu_category,menu_free_delivery)
	VALUES('Chocolate Brownie',32.00,'Yes','02-11-2017','Desert','Yes');


select * from menu_item;


select * from menu_item
where curdate() < menu_free_delivery and menu_active="Yes";


select menu_item,menu_name,menu_price,menu_active,menu_date_of_launch,menu_category,menu_free_delivery from menu_item
where menu_id=1;
select menu_item,menu_name,menu_price,menu_active,menu_date_of_launch,menu_category,menu_free_delivery from menu_item
where menu_id=2;
select menu_item,menu_name,menu_price,menu_active,menu_date_of_launch,menu_category,menu_free_delivery from menu_item
where menu_id=3;
select menu_item,menu_name,menu_price,menu_active,menu_date_of_launch,menu_category,menu_free_delivery from menu_item
where menu_id=4;
select menu_item,menu_name,menu_price,menu_active,menu_date_of_launch,menu_category,menu_free_delivery from menu_item
where menu_id=5;


update menu_item set menu_name="Dosa",menu_price=50.00,menu_category='Main Course'
where menu_id=4;

insert into user(user_id,user_name)
values(1,'Kesav');
insert into user(user_id,user_name)
values(1,'Vishnu');	


insert into cart(cart_user_id,cart_menu_item_id)
values(1,2);
insert into cart(cart_user_id,cart_menu_item_id)
values(1,5);
insert into cart(cart_user_id,cart_menu_item_id)
values(2,3);




select * from menu_item where menu_item_id=(select cart_menu_item_id from cart where cart_user_id=1);


select sum(price) from menu_item where menu_item_id=(select cart_menu_item_id from cart where cart_user_id=1);


delete * from cart where cart_user_id=1 and cart_menu_item_id=2;
delete * from cart where cart_user_id=1 and cart_menu_item_id=5;


