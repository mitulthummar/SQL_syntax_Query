my SQL  >    ------> prompt
my SQL  >    \sql
my SQL  >    \connect root@localhost:3306
my SQL  >    show databases;----- ex-folder
Student 
-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
* syntax for creating databases *
-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
    create database <DBbname>

    for changin current database 
    use database
    show tables;

for creating table
-------------------
create table <tablename>(col1 datatype(size),col2 datatype(size),col3 datatype(size),.......etc)

example- create table student (rollno int,name varchar(20),address varchar(20));
desc student;

insert database
---------------
inser into <tablename>(col1,col2,col3....)values (val1,val2,val3...);
example- insert into student(rollno,name,address)values(1,"ram","surat",);

select * from <tablename>
*-->all

select*from student;
select name from student;-------> Name only

-------------------------------Inser Value In Table-----------------------------------------------------------------------
insert into salesman_master values (00001,"kiran","A-4 worli","bombay",40002,"mah",3000,100,50,"good");
insert into salesman_master values (00002,"kirtan","B-44 ank","pune",354006,"guj",545,100,50,"good");
insert into salesman_master values (00003,"prashant","W-7 ada","surat",454154,"karnataka",300,100,50,"good");
insert into salesman_master values (00004,"amit","AA-65 assd","vadodara",15510,"jammu",3045,100,50,"good");
insert into salesman_master values (00005,"jayesh","l-415 subhash","ahemedabad",121454,"kashmir",30540,100,50,"good");
insert into salesman_master values (00006,"mitul","o-654 surbhi","bhavnagar",54415,"goa",3400,100,50,"good");
insert into salesman_master values (00007,"hardik","lk-45 karan","surat",400451,"gujrat",54000,100,50,"good");
insert into salesman_master values (00008,"abhay","jh-12 yogicho","vapi",40004,"kashmir",4000,100,50,"good");
insert into salesman_master values (00009,"bhavin","W-45 royal","valsad",40009,"up",300,10,50,"good");
insert into salesman_master values (00010"chirag","s-54 sas","vareli",395006,"mp",340,100,50,"good")2;
select * from sales;
---------------------------------------------------------------------------------------------------------------------------
*Where clause*
select<col> from <tablename> where <expression>
example select* from student where roll=1;
select name ,address from student where name = "ram";
---------------------------------------------22-12-2022---------------------------------------
insert into client_master values ("C00001","ivan Bayross","A-634 sur","q-516 Aadarsh","Mumbai",400054,"Maharastra",15000);
insert into client_master values ("C00002","Mamta muzumdar","l-663 sur","L-516 har","Madras",780001,"Tamilnadu",0);
insert into client_master values ("C00003","Chhaya Bankar","P-163 sur","M-656 fas","Mumbai",400057,"maharastra",5000);
insert into client_master values ("C00004","Ashwini Joshi","H-741 sur","p-456 com","Bangalore",560001,"karnataka",0);
insert into client_master values ("C00005","Hansel Colaco","L-45 sur","I-5456 casr","Mumbai",400060,"Maharastra",2000);
insert into client_master values ("C00006","Deepak Sharma","F-43 sur","Y-546 man","Magalore",560050,"karnataka",0);
-----------------------------------------------------------------------------------------------------------------------------
insert into Product_Master values ("P00001","T-Shirt",5,"Pcs",200,50,350,250);
insert into Product_Master values ("P0345","Shirt",6,"Pcs",150,50,500,350);
insert into Product_Master values ("P06734","Cottan jeans",5,"Pcs"300,510,150,150);
insert into Product_Master values ("P07865","jeans",5,"Pcs",2200,250,2350,2250);
insert into Product_Master values ("P07868","trousers",2,"Pcs",200,50,30,50);
insert into Product_Master values ("P07885","Pull Over",2.5,"Pcs",600,60,50,50);
insert into Product_Master values ("P07965","Denm Shirt",4,"Pcs",400,70,350,250);
insert into Product_Master values ("P07975","lycra Top",5,"Pcs",800,80,350,240);
insert into Product_Master values ("P08865","Skirts",5,"Pcs",900,50,550,350);

-- Exercise on retrieving record from a table --

1.Find out the name of all the client.
    Ans.select name from client_master;

2.Retrieve the entire contents of client_master table.
    Ans.select* from client_master;

3.Retrievethe list of the name ,city,and the state of all the clients.
    Ans.select name,city,state from client_master;

4.list the various product available from the Product_Master.
    Ans.select description from product_master;

5.list all the clients who are locate in mumbai.
    Ans.select city,name from client_master where city="mumbai";

6.find the name of salesman_master who have a salary equal to RS.3000/-.
    Ans.select * from salesman_master where salamt=3000;

-- Delete table description --  23-12-22--
delete from tablename;

-- Delete table--
DROP TABLE tablename;

-- update Table --
-- Exercise on retrieving record from a table --

1.Change The City of client_no'C00005' to 'banglore'.
    Ans. update client_master set client_no='C00005' where city="baglore";

2.Change the Baldue of client_no 'C00001' to RS.1000
    Ans.update client_master set baldue=1000 where client_no='C00001';

3.Change the cost price of "Trousers" to RS 950.
    Ans.update product_master set costprice=950 where description='trousers';

4. change the city of the salesman to Pune.
    Ans. update salesman_master set city="Pune";

-----------------------------28-12-22----------------------------------------
1.common state not repeate not show in table
    ans. select destinct city from client_master;

2.For assending value
    ans. select * from client_master order by name;

3.For Dessending value
    ans.select * from client_master order by name desc;

4. for multy column assending
    ans.select * from client_master order by name,city;

-------------------Quary Delete value---------------------------

1.delete all aslesman from the salesman_master whose salaries are equalto RS.54000;
    ans.delete from salesman_master where salamt=54000;

---------- Rename Table Name----------
syntax:- alter table Table name rename New table name ;

---------- Primary Key-----------------29-12-22
syntax:- <column name ><datatype><(size)> Primary Key

multy column(not repeat colmun name)
syntax:- Primary key (<column name>,<column name>,)

insert into client_master values ("C00001","ivan Bayross","Mumbai",400054,"Maharastra",15000);
insert into client_master values ("C00002","Mamta muzumdar","mumbai",780001,"Tamilnadu",0);
insert into client_master values ("C00003","Chhaya Bankar","Mumbai",400057,"maharastra",5000);
insert into client_master values ("C00004","Ashwini Joshi","Bangalore",560001,"karnataka",0);
insert into client_master values ("C00005","Hansel Colaco","Mumbai",400060,"Maharastra",2000);
insert into client_master values ("C00006","Deepak Sharma","Magalore",560050,"karnataka",0);
insert into client_master values ("C00006","Deepak Sharma","Magalore",560050,"karnataka",0);--> Repeate client_no not insert
-------------------------------------------30-12-2022------ foreign Key-------------------------------------------------------

 create table manufacturers (Mcode int Primary key,name varchar(20));
insert into manufacturers values (1,'Mitul'); 
insert into manufacturers values (2,'Abhay'); 
insert into manufacturers values (3,'Tejas'); 
insert into manufacturers values (4,'Ghanshyam'); 
insert into manufacturers values (5,'Vaidik'); 
 
create table product (pcode int Primary key,name varchar(20),price int,manufacturer int references manufacturers (Mcode));
insert into product values (11,'mouse',250 ,1); 
insert into product values (12,'key board',450 ,1); 
insert into product values (13,'Mobile',10000 ,1); 
insert into product values (001,'chaire',1100 ,2); 
insert into product values (002,'table',11000 ,2); 
insert into product values (01,'cottan',1100 ,3); 
insert into product values (02,'poly',800 ,3); 
insert into product values (00001,'watch',500 ,4); 
insert into product values (1001,'pen',50 ,5); 
----------------------------- 02-01-2023-------------------------------------------------------------------------------------
create table cars(modelno int primary key,name varchar(20),colour varchar(20),price int);
insert into cars values (001,'Creta','Black',1500000); 
insert into cars values (002,'Kia','Red',1800000); 
insert into cars values (003,'Swift','white',800000); 
insert into cars values (004,'vaganar','Black',400000); 

create table showrrom(passing varchar,plateno int,discount_per int,modelno int references cars modelno);
insert into showrrom values ('GJ5',5555,5,1); 
insert into showrrom values ('GJ6',6666,7,2); 
insert into showrrom values ('GJ7',7777,3,3); 
insert into showrrom values ('GJ8',8888,2,4); 
---------------------------------------------- primary key & foreign key-----------------
create table client_master(cilentno varchar(20) primary key,name varchar(20),address1 varchar(20),address2 varchar(20),city varchar(20),pincode int,state varchar(20),baldue int);

create table product_master(productno varchar(20) primary key,description varchar(20),profitper int,unitmeasure varchar(20),qtyonhand int,reorderlvl int ,sellprice int,costprice int);

create table salesman_master(salesmanno varchar(20) primary key,salesmanname varchar(20),address1 varchar(20),address2 varchar(20),city varchar(20),pincode int,state varchar(20),saleamt int,tgttoget int,ytdsales int,remark varchar(20));

insert into salesman_master values ('a00001',"kiran","A-4 worli","varachha","bombay",40002,"mah",3000,100,50,"good");
insert into salesman_master values ('a00002',"kirtan","B-44 ank","varachha","pune",354006,"guj",545,100,50,"good");
insert into salesman_master values ('a00003',"prashant","W-7 ada","varachha","surat",454154,"karnataka",300,100,50,"good");
insert into salesman_master values ('a00004',"amit","AA-65 assd","varachha","vadodara",15510,"jammu",3045,100,50,"good");
insert into salesman_master values ('a00005',"jayesh","l-415 subhash","varachha","ahemedabad",121454,"kashmir",30540,100,50,"good");
insert into salesman_master values ('a00006',"mitul","o-654 surbhi","varachha","bhavnagar",54415,"goa",3400,100,50,"good");
insert into salesman_master values ('a00007',"hardik","lk-45 karan","varachha","surat",400451,"gujrat",54000,100,50,"good");
insert into salesman_master values ('a00008',"abhay","jh-12 yogicho","varachha","vapi",40004,"kashmir",4000,100,50,"good");
insert into salesman_master values ('a00009',"bhavin","W-45 royal","varachha","valsad",40009,"up",300,10,50,"good");
insert into salesman_master values ('a00010'"chirag","s-54 sas","varachha","vareli",395006,"mp",340,100,50,"good")2;

create table sales_order(order_no varchar(20) primary key,cilentno varchar(20) references client_master (client_no),orderdate date,delyaddr varchar(20),salemanno varchar(20) references salesman_master (salesmanno),delytype varchar(20),billyn varchar(20),delydate date,orderstatus varchar(20));
insert into sales_order values('O19001','C00001','2004-06-04','S00001','A','F','N','2002-07-20','inproces');
insert into sales_order values('O19002','C00002','2004-06-25','S00002','B','P','N','2002-06-20','Cancelled');
insert into sales_order values('O46865','C00003','2004-02-18','S00003','C','F','Y','2002-02-20','Fullfiled');
insert into sales_order values('O19003','C00001','2004-04-03','S00001','D','F','Y','2002-04-07','Fullfiled');
insert into sales_order values('O46866','C00004','2020-05-04','S00002','E','P','N','2002-05-22','Cancelled');
insert into sales_order values('O19008','C00005','2024-05-04','S00004','F','F','N','2002-07-26','inproces');

create table sales_order_details(order_no varchar(20) references sales_order (order_no),productno varchar(20) references product_master (productno),qtyordered int,qtydisp int,productrate int);

insert into  sales_order_details values('O19001','P00001',4,4,825);
insert into  sales_order_details values('O19001','P07965',2,1,8400);
insert into  sales_order_details values('O19001','P07885',2,1,5250);
insert into  sales_order_details values('O19002','P00001',10,0,525);
insert into  sales_order_details values('O19005','P07868',3,3,3150);
insert into  sales_order_details values('O19005','P07885',3,1,5250);
insert into  sales_order_details values('O19005','P00001',10,10,525);
insert into  sales_order_details values('O19005','P03645',4,4,1050);
insert into  sales_order_details values('O19003','P03453',1,2,1050);
insert into  sales_order_details values('O19003','P06734',1,1,12000);
insert into  sales_order_details values('O19006','P07965',1,0,8400);
insert into  sales_order_details values('O19006','P07975',4,0,1050);
insert into  sales_order_details values('O19008','P00001',10,5,525);
insert into  sales_order_details values('O19008','P07975',5,3,1050);
---------------------------------------------03-01-2023-------------------------------------------------------------------------
-----------------------------
           Like Quary       
----------------------------
select *from client_master where name  like 'a%';
+----------+---------------+-----------+-----------+-----------+---------+-----------+--------+
| cilentno | name          | address1  | address2  | city      | pincode | state     | baldue |
+----------+---------------+-----------+-----------+-----------+---------+-----------+--------+
| C00004   | Ashwini Joshi | H-741 sur | p-456 com | Bangalore |  560001 | karnataka |      0 |
+----------+---------------+-----------+-----------+-----------+---------+-----------+--------+
select *from client_master where name  like '%r';
+----------+----------------+-----------+-----------+--------+---------+------------+--------+
| cilentno | name           | address1  | address2  | city   | pincode | state      | baldue |
+----------+----------------+-----------+-----------+--------+---------+------------+--------+
| C00002   | Mamta muzumdar | l-663 sur | L-516 har | Madras |  780001 | Tamilnadu  |      0 |
| C00003   | Chhaya Bankar  | P-163 sur | M-656 fas | Mumbai |  400057 | maharastra |   5000 |
+----------+----------------+-----------+-----------+--------+---------+------------+--------+
select *from client_master where name  like '%a_';
+----------+----------------+-----------+-----------+--------+---------+------------+--------+
| cilentno | name           | address1  | address2  | city   | pincode | state      | baldue |
+----------+----------------+-----------+-----------+--------+---------+------------+--------+
| C00002   | Mamta muzumdar | l-663 sur | L-516 har | Madras |  780001 | Tamilnadu  |      0 |
| C00003   | Chhaya Bankar  | P-163 sur | M-656 fas | Mumbai |  400057 | maharastra |   5000 |
+----------+----------------+-----------+-----------+--------+---------+------------+--------+
select *from client_master where name  like '_a%';
+----------+----------------+-----------+-------------+--------+---------+------------+--------+
| cilentno | name           | address1  | address2    | city   | pincode | state      | baldue |
+----------+----------------+-----------+-------------+--------+---------+------------+--------+
| C00002   | Mamta muzumdar | l-663 sur | L-516 har   | Madras |  780001 | Tamilnadu  |      0 |
| C00005   | Hansel Colaco  | L-45 sur  | I-5456 casr | Mumbai |  400060 | Maharastra |   2000 |
+----------+----------------+-----------+-------------+--------+---------+------------+--------+
select *from client_master where name  like '__a%';
+----------+--------------+-----------+---------------+--------+---------+------------+--------+
| cilentno | name         | address1  | address2      | city   | pincode | state      | baldue |
+----------+--------------+-----------+---------------+--------+---------+------------+--------+
| C00001   | ivan Bayross | A-634 sur | q-516 Aadarsh | Mumbai |  400054 | Maharastra |  15000 |
+----------+--------------+-----------+---------------+--------+---------+------------+--------+
select *from client_master where name  like 'ha%';
+----------+---------------+----------+-------------+--------+---------+------------+--------+
| cilentno | name          | address1 | address2    | city   | pincode | state      | baldue |
+----------+---------------+----------+-------------+--------+---------+------------+--------+
| C00005   | Hansel Colaco | L-45 sur | I-5456 casr | Mumbai |  400060 | Maharastra |   2000 |
+----------+---------------+----------+-------------+--------+---------+------------+--------+
select *from client_master where name  like '%y%';
+----------+---------------+-----------+---------------+--------+---------+------------+--------+
| cilentno | name          | address1  | address2      | city   | pincode | state      | baldue |
+----------+---------------+-----------+---------------+--------+---------+------------+--------+
| C00001   | ivan Bayross  | A-634 sur | q-516 Aadarsh | Mumbai |  400054 | Maharastra |  15000 |
| C00003   | Chhaya Bankar | P-163 sur | M-656 fas     | Mumbai |  400057 | maharastra |   5000 |
+----------+---------------+-----------+---------------+--------+---------+------------+--------+
select *from client_master where name  like '% %';
+----------+----------------+-----------+---------------+-----------+---------+------------+--------+
| cilentno | name           | address1  | address2      | city      | pincode | state      | baldue |
+----------+----------------+-----------+---------------+-----------+---------+------------+--------+
| C00001   | ivan Bayross   | A-634 sur | q-516 Aadarsh | Mumbai    |  400054 | Maharastra |  15000 |
| C00002   | Mamta muzumdar | l-663 sur | L-516 har     | Madras    |  780001 | Tamilnadu  |      0 |
| C00003   | Chhaya Bankar  | P-163 sur | M-656 fas     | Mumbai    |  400057 | maharastra |   5000 |
| C00004   | Ashwini Joshi  | H-741 sur | p-456 com     | Bangalore |  560001 | karnataka  |      0 |
| C00005   | Hansel Colaco  | L-45 sur  | I-5456 casr   | Mumbai    |  400060 | Maharastra |   2000 |
+----------+----------------+-----------+---------------+-----------+---------+------------+--------+
 select *from client_master where name  like '_%r%_'; ---> middel (r)
+----------+--------------+-----------+---------------+--------+---------+------------+--------+
| cilentno | name         | address1  | address2      | city   | pincode | state      | baldue |
+----------+--------------+-----------+---------------+--------+---------+------------+--------+
| C00001   | ivan Bayross | A-634 sur | q-516 Aadarsh | Mumbai |  400054 | Maharastra |  15000 |
+----------+--------------+-----------+---------------+--------+---------+------------+--------+
 select *from client_master where name not like 'a%';
+----------+----------------+-----------+---------------+--------+---------+------------+--------+
| cilentno | name           | address1  | address2      | city   | pincode | state      | baldue |
+----------+----------------+-----------+---------------+--------+---------+------------+--------+
| C00001   | ivan Bayross   | A-634 sur | q-516 Aadarsh | Mumbai |  400054 | Maharastra |  15000 |
| C00002   | Mamta muzumdar | l-663 sur | L-516 har     | Madras |  780001 | Tamilnadu  |      0 |
| C00003   | Chhaya Bankar  | P-163 sur | M-656 fas     | Mumbai |  400057 | maharastra |   5000 |
| C00005   | Hansel Colaco  | L-45 sur  | I-5456 casr   | Mumbai |  400060 | Maharastra |   2000 |
+----------+----------------+-----------+---------------+--------+---------+------------+--------+

----------------------------------------04-01-2023------------------------------------------------


  ------------------client_master1--------------------------------------------------------------
    create table client_master(client_no varchar(20) ,name varchar(20),add1 varchar(20),add2 varchar(20),city varchar(20),pincode int,state  varchar(20),baldue int,constraint PK_cmm primary key (client_no));
      
          insert into client_master values(00001,"ivan bayross","mumbai","bandra","mumbai",400054,"gujrat",15000);  
          insert into client_master values(00002," mayur","223indira","surat","gujrat",395006,"gujrat",100000);  
          insert into client_master values(00003," ajay","santlal","surat","gujrat",395007,"gujrat",11000);  
          insert into client_master values(00004," karan","himmatnagar","surat","gujrat",395008,"gujrat",15000);  
          insert into client_master values(00005," dipak","sarthana","surat","gujrat",395009,"gujrat",14000); 

--------------------product_master-------------------------------------------------------------
    create table product_master(productno int,description varchar(20),profitpercent int,unitmeasure varchar(20),qytonhand int,reorderlvl int,sellprice int,costprice int,constraint PK_pmm primary key(productno));

  insert into product_master values(00001,'t-shirt',5,'piece',200,50,250,210),
                                   (00002,'shirt',3,'piece',250,50,350,500),
                                  (00003,'countn jens',2,'piece',230,20,450,120),
                                  (00004,'jens',6,'piece',240,20,650,650),
                                  (00005,'trousesrs',5,'piece',100,50,200,421),
                                  (00006,'pull-over',9,'piece',260,30,650,920),
                                  (00007,'demin-shirt',5,'piece',260,40,450,420),
                                  (00008,'lycra top',9,'piece',600,40,950,236),        
                                  (00009,'skirts',5,'piece',230,50,650,780);


------------------------------------salesman_master--------------------------------------------------------------------------
  create  table  salesman_master(salesmanno varchar(20),salesman_name varchar(20),add1 varchar(20),city varchar(20),pincode  int,state varchar(20),salamt int,tgttoget int,ytdsales int,remarks varchar(20),constraint PK_smm primary key(salesmanno));

insert into salesman_master values("C00001","kiran","A/14 worli","bombay","400002","mah","3000","100","50","good");
insert into salesman_master values("C00002","ramesh","A/85 idira","surat","400452","gujrat","2000","100","50","good");
insert into salesman_master values("C00003","kamlesh","A/14 himmatnagar","goa","452102","rajstan","500","100","50","good");
insert into salesman_master values("C00004","nayan","C/14 worli","kashmir","400002","jammu","4532","100","50","good");
insert into salesman_master values("C00005","abhay","D/14 hirabug","baroda","58002","gujrat","3020","100","50","good");
insert into salesman_master values("C00006","mitul","E/14 yogichok","rajkot","500002","gujrat","3100","100","50","good");
insert into salesman_master values("C00007","kaushik","F/14 rachna","ahemdabad","498002","gujrat","5000","100","50","good");
insert into salesman_master values("C00008","mayur","G/14 west","bombay","402045","mah","5000","100","50","good");
insert into salesman_master values("C0009","janish","H/14 manali","surat","404002","gujrat","5250","100","50","good");
insert into salesman_master values("C00010","jayesh","J/14 gayakvad","bombay","508602","mah","4500","100","50","good");


-----------------------------------------------------sales_order------------------------------------------------
  create table sales_order(order_no varchar(20),client_no varchar(20),orderdate date,salesmanno varchar(20),delytype varchar(20),billyn varchar(20),delydate date,orderstatus varchar(20),constraint pk_so primary key(order_no),constraint fk_so_cm foreign key(client_no) references client_master(client_no),constraint fk_so_sm foreign key(salesmanno) references salesman_master(salesmanno),constraint chk_so check (order_no like 'O%'));
  
      
  insert into sales_order values('A19001','A00001','2004-06-12','C00001','F','N','2002-07-02','in process');
  insert into sales_order values('A19002','A00002','2004-06-25','C00002','P','N','2002-06-27','cencelled');
  insert into sales_order values('A46865','A00003','2004-02-18','C00003','F','Y','2002-02-20','fulfilled');
  insert into sales_order values('A19003','A00001','2004-04-03','C00001','F','Y','2002-04-07','fulfilled');
  insert into sales_order values('A46866','A00004','2004-05-04','C00002','P','N','2002-05-22','cencelled');
  insert into sales_order values('A19008','A00005','2004-05-04','C00004','F','N','2002-07-26','in process');


  Ghanshyam

  create table CLIENT_MASTER (Client_No varchar(6)
 ,Name varchar(20) not null
 ,address1 varchar(20)
 ,address2 varchar(20)
 ,City varchar(20)
 ,Pin_Code int(6)
 ,State varchar(12)
 ,Bal_Due int
 ,constraint pk_cm primary key (Client_No)
 ,constraint chk_cm check (Client_No like 'C%'));
insert into client_master values ("C00001","ivan Bayross","A-634 sur","q-516 Aadarsh","Mumbai",400054,"Maharastra",15000);
insert into client_master values ("C00002","Mamta muzumdar","l-663 sur","L-516 har","Madras",780001,"Tamilnadu",0);
insert into client_master values ("C00003","Chhaya Bankar","P-163 sur","M-656 fas","Mumbai",400057,"maharastra",5000);
insert into client_master values ("C00004","Ashwini Joshi","H-741 sur","p-456 com","Bangalore",560001,"karnataka",0);
insert into client_master values ("C00005","Hansel Colaco","L-45 sur","I-5456 casr","Mumbai",400060,"Maharastra",2000);
insert into client_master values ("C00006","Deepak Sharma","F-43 sur","Y-546 man","Magalore",560050,"karnataka",0);
select* from client_master;

create table salesman_master( salesman_no varchar(6) ,
    salesmanname varchar(20) not null,
    address1 varchar(30),
    address2 varchar(30),
    city varchar(50), 
    pincode int(38),
    state varchar(50),
    salamt int(10),
    tgttoget int(10),
    ytdsale int(10),
    remark varchar(50)
    ,constraint pk_sm primary key (salesman_no)
    ,constraint chk_sm check (salamt > 0 )
    ,constraint chk_sm1 check ( tgttoget > 0));

insert into salesman_master values ('S00001', 'Kiran', 'A/14 worli','borivali','Bombay', 400002, 'Mah', 3000, 100, 50, 'Good'); 
insert into salesman_master values ('S00002', 'Manish', '65 nariman','borivali', 'Bombay', 400001, 'Mah', 3000, 200, 100, 'Good'); 
insert into salesman_master values ('S00003', 'Ravi', 'P-7 Bandra','borivali' ,'Bombay', 400032, 'Mah', 3000, 200, 100, 'Good');
insert into salesman_master values ('S00004', 'Ashish', 'A/5 Juhu','borivali', 'Bombay', 400044, 'Mah', 3500, 200, 150, 'Good');

create table product_MASTER (Pr_No varchar(6) ,Pr_Name varchar(30)not null,profit_per int not null,
unit_measure varchar(50)not null,qty_on_hand int not null ,re_order int not null,Sellprice int,costprice int,constraint pk_pm primary key (Pr_No),constraint chk_pm check(Pr_No like 'P%')
,constraint chk_pm2 check (Sellprice > 0),constraint chk_pm3 check (costprice > 0));
insert into Product_Master values ("P00001","T-Shirt",5,"Pcs",200,50,350,250);
insert into Product_Master values ("P0345","Shirt",6,"Pcs",150,50,500,350);
insert into Product_Master values ("P06734","Cottan jeans",5,"Pcs"300,510,150,150);
insert into Product_Master values ("P07865","jeans",5,"Pcs",2200,250,2350,2250);
insert into Product_Master values ("P07868","trousers",2,"Pcs",200,50,30,50);
insert into Product_Master values ("P07885","Pull Over",2.5,"Pcs",600,60,50,50);
insert into Product_Master values ("P07965","Denm Shirt",4,"Pcs",400,70,350,250);
insert into Product_Master values ("P07975","lycra Top",5,"Pcs",800,80,350,240);
insert into Product_Master values ("P08865","Skirts",5,"Pcs",900,50,550,350);
select* from product_Master;

create table SALES_ORDER(
    Order_No varchar(6) ,
    Client_No varchar(6),
    Order_Date DATE,
    salesman_no varchar(6),
    DELAYTYPE char(1),
    billYN char(1),
    DELAYDATE DATE,
    ORDERSTATUS varchar(10),
    constraint pk_so primary key(Order_No),
    constraint fk_so_cm foreign key (Client_No) references client_master(Client_No),
    constraint fk_so_sm foreign key (salesman_no) references salesman_master(salesman_no),
    constraint chk_so check (Order_No like 'O%'));
insert into SALES_ORDER values('O19001','C00001','2004-06-12','S00001','N','F','2002-07-20','in progr');
insert into SALES_ORDER values('O19002','C00002','2004-06-25','S00002','n','P','2002-06-27','Cancelled');
insert into SALES_ORDER values('O46865','C00003','2004-02-18','S00003','Y','F','2002-02-20','in progr');
insert into SALES_ORDER values('O19003','C00001','2004-04-03','S00001','Y','F','2002-04-07','in progr');
insert into SALES_ORDER values('O46866','C00004','2004-05-20','S00002','N','P','2002-05-22','Cancelled');
insert into SALES_ORDER values('O19008','C00005','2004-05-24','S00004','N','F','2002-07-26','in progr');

create table SALES_ORDER_DETAIL
(Order_No varchar(20),
productno varchar(20), 
QTY_On_Ordered int(20),
QTYDISP int(20),
Product_Rate int(20),
constraint fk_sod_so foreign key (Order_No) references SALES_ORDER(Order_No),
constraint fk_so_pm foreign key (productno) references product_MASTER(productno));
insert into SALES_ORDER_DETAIL values('O19001','P00001',4,4,525);
insert into SALES_ORDER_DETAIL values('O19001','P07965',2,1,8400);
insert into SALES_ORDER_DETAIL values('O19001','P07885',2,1,5250);
insert into SALES_ORDER_DETAIL values('O19002','P00001',10,0,525);
insert into SALES_ORDER_DETAIL values('O19003','P07865',2,2,1050);
insert into SALES_ORDER_DETAIL values('O19003','P06734',1,1,12000);
insert into SALES_ORDER_DETAIL values('O46866','P07965',1,0,8400);
insert into SALES_ORDER_DETAIL values('O46866','P07975',1,0,1050);
insert into SALES_ORDER_DETAIL values('O19008','P00001',10,5,525);
insert into SALES_ORDER_DETAIL values('O19008','P07975',5,3,1050);
insert into SALES_ORDER_DETAIL values('O46865','P07868',3,3,3150);
insert into SALES_ORDER_DETAIL values('O46865','P07885',3,1,5250);
insert into SALES_ORDER_DETAIL values('O46865','P00001',10,10,525);
insert into SALES_ORDER_DETAIL values('O46865','P0345',4,4,1050);

----------------------------------06-01-2023--------------------------------------------
SQL Assignment
1.
create table emp(empid varchar(20),fname varchar(20),lname varchar(20),joindate date,constraint pk_eid primary key (empid));
insert into emp values('E01','Mitul','Thummar','1985-05-05');
insert into emp values('E02','Abhay','Jadav','1990-04-05');
insert into emp values('E03','tejas','Garaniya','1992-01-03');
insert into emp values('E04','Ghanshyam','baria','1987-06-02');
insert into emp values('E05','keyur','dave','1989-02-02');

assending
SELECT * FROM emp WHERE joindate < '1991-05-21';
SELECT lname, joindate FROM emp ORDER BY joindate;

  desc client_master;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| clientno | varchar(6)  | NO   | PRI | NULL    |       |
| name     | varchar(20) | YES  |     | NULL    |       |
| Address1 | varchar(30) | YES  |     | NULL    |       |
| city     | varchar(30) | YES  |     | NULL    |       |
| pincode  | int         | YES  |     | NULL    |       |
| state    | varchar(15) | YES  |     | NULL    |       |
| baldue   | int         | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
 MySQL  localhost:3306 ssl  node_6  SQL >  desc salesman_master;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| salesmanno    | varchar(10) | NO   | PRI | NULL    |       |
| salesman_name | varchar(10) | YES  |     | NULL    |       |
| Address       | varchar(10) | YES  |     | NULL    |       |
| city          | varchar(10) | YES  |     | NULL    |       |
| pincode       | int         | YES  |     | NULL    |       |
| state         | varchar(10) | YES  |     | NULL    |       |
| salamt        | int         | YES  |     | NULL    |       |
| tgtoget       | int         | YES  |     | NULL    |       |
| ytdsale       | int         | YES  |     | NULL    |       |
| remrark       | varchar(10) | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
 MySQL  localhost:3306 ssl  node_6  SQL > desc product_master;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| productno    | varchar(10) | NO   | PRI | NULL    |       |
| description  | varchar(20) | YES  |     | NULL    |       |
| profitpercet | int         | YES  |     | NULL    |       |
| unitmesure   | varchar(10) | YES  |     | NULL    |       |
| qtyonhand    | int         | YES  |     | NULL    |       |
| reorderlvl   | int         | YES  |     | NULL    |       |
| sellprice    | int         | YES  |     | NULL    |       |
| costprice    | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
 MySQL  localhost:3306 ssl  node_6  SQL > desc sales_order;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| orderno     | varchar(10) | NO   | PRI | NULL    |       |
| clientno    | varchar(6)  | YES  | MUL | NULL    |       |
| orderdate   | date        | YES  |     | NULL    |       |
| delyaddr    | varchar(25) | YES  |     | NULL    |       |
| salesmanno  | varchar(10) | YES  | MUL | NULL    |       |
| delytype    | varchar(3)  | YES  |     | NULL    |       |
| billyn      | varchar(3)  | YES  |     | NULL    |       |
| delydate    | date        | YES  |     | NULL    |       |
| orderstatus | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
 MySQL  localhost:3306 ssl  node_6  SQL >  desc sales_order_details;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| orderno     | varchar(10) | YES  | MUL | NULL    |       |
| productno   | varchar(10) | YES  | MUL | NULL    |       |
| qtyordered  | int         | YES  |     | NULL    |       |
| qtydisp     | int         | YES  |     | NULL    |       |
| productrate | int         | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+

join queries:-
1>select cm.name,so.orderno from client_master cm,sales_order so;
2>select cm.name,so.orderno from client_master cm,sales_order so where cm.clientno=so.clientno;

3>select cm.name,so.orderno,sod.productno from client_master cm,sales_order so,sales_order_details sod where cm.clientno=so.clientno and so.orderno=sod.orderno;

4>select cm.name,so.orderno,sod.productno,pm.description 
from client_master cm,sales_order so,sales_order_details sod,product_master pm 
where cm.clientno=so.clientno 
and so.orderno=sod.orderno
and sod.productno=pm.productno;

5>select cm.name,so.orderno,sod.productno,pm.description 
from client_master cm,sales_order so,sales_order_details sod,product_master pm 
where cm.clientno=so.clientno 
and so.orderno=sod.orderno
and sod.productno=pm.productno
and cm.name='Chhaya Bamkar';


Find Trousers:-
select cm.name,pm.description from client_master cm,product_master pm;

D.
select cm.name,so.orderno,sod.productno,pm.description
 from client_master cm,sales_order so,sales_order_details sod,product_master pm
 where cm.clientno=so.clientno
 and so.orderno=sod.orderno
 and pm.description='Trousers';

B.
select pm.description,pm.qtyonhand ,so.delydate,sod.orderno
from product_master pm,sales_order so,sales_order_details sod
where sod.orderno=so.orderno
and sod.productno=pm.productno
and MONTH(delydate) = MONTH(CURRENT_DATE());

C.
select distinct pm.productno ,pm.description
from  sales_order so,sales_order_details sod,product_master pm 
where so.orderno = sod.orderno
and sod.productno=pm.productno;

E.
select distinct (pm.description),sod.qtyordered
from  sales_order so, sales_order_details sod , product_master pm
where sod.Productno = pm.Productno 
and  pm.description ='Pull Overs' 
and sod.qtyordered<5;
F.
select cm.name ,so.orderno,sod.productno,pm.description 
from client_master cm , sales_order so , sales_order_details sod , product_master pm 
where cm.clientno = so.clientno 
and so.orderno = sod.orderno 
and sod.Productno = pm.Productno 
and cm.name in('Ivan Baytoss','Mamta mujmudar'); 

G.
select cm.clientno ,so.orderno,sod.Productno,pm.description 
from client_master cm , sales_order so , sales_order_details sod , product_master pm 
where cm.clientno = so.clientno 
and so.orderno = sod.orderno 
and sod.Productno = pm.Productno 
and cm.clientno in ('C0006','C1003');

----------------------------------------------------------11-01-2023------------------------------------------------------
Aggregate Function
syntax :- select sum(columnname) from tablename;

select sum(qtyonhand) from product_master;
+----------------+
| sum(qtyonhand) |
+----------------+
|           1025 |
+----------------+
 select max(qtyonhand) from product_master;
+----------------+
| max(qtyonhand) |
+----------------+
|            200 |
+----------------+

 MySQL  localhost:3306 ssl  node_6  SQL > select min(qtyonhand) from product_master;
+----------------+
| min(qtyonhand) |
+----------------+
|             70 |
+----------------+

 MySQL  localhost:3306 ssl  node_6  SQL > select avg(qtyonhand) from product_master;
+----------------+
| avg(qtyonhand) |
+----------------+
|       113.8889 |
+----------------+

 MySQL  localhost:3306 ssl  node_6  SQL > select floor(3.144);
+--------------+
| floor(3.144) |
+--------------+
|            3 |
+--------------+
select ceil(3.144);
+-------------+
| ceil(3.144) |
+-------------+
|           4 |
+-------------+



